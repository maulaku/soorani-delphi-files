unit Monitor;

interface

uses
  Classes,Contnrs,PipeTh,Messages,Forms,Graphics,Extctrls;

type
  TMember = class
   Thr : TPipe;
   IsIdle : boolean;
   Value : PChar;
  end;


  TMonitor = class(TThread)
  private
   ProcessAr : array [1..10] of TMember;
   WaitingQu : TQueue;
    Form : TForm;
    HObj,TObj : TShape;
    State : smallint;
   function EmptyPlace : integer;
   procedure FreeThr (Var Mes : TMessage);message Wm_User+5005;
  protected
    procedure Execute; override;
  public
   Id : Cardinal;
   Flag : boolean;
   procedure LinkShape (Frm : TForm;SShape,DShape:TShape;Op : smallint);
   procedure PushInWaiting(Value : PChar);
   function PopFromWaiting : PChar;
   procedure NewTask(Task : PChar);
  end;

implementation

{ Important: Methods and properties of objects in VCL can only be used in a
  method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TMonitor.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TMonitor }


function TMonitor.EmptyPlace: integer;
Var
 i : integer;
begin
 if Flag then
  begin
   WaitingQu:=TQueue.Create;
   for i:=1 to 10 do
    begin
     if ProcessAr[i]=nil then
      begin
       ProcessAr[i]:=TMember.Create;
       ProcessAr[i].Value:='';
       ProcessAr[i].IsIdle:=True;
      end;
    end;
   Flag:=False;
  end;

 for i:=1 to 10 do
  begin
   if ProcessAr[i].IsIdle then
    begin
     Result:=i;
     exit;
    end;
  end;
 Result:=-1;
end;

procedure TMonitor.Execute;
Var
 Pl : Integer;
begin
 repeat
  Pl:=EmptyPlace;
  if ((Pl<>-1) and (WaitingQu.Count>0)) then
   begin
    ProcessAr[Pl].Value:=PChar(WaitingQu.Pop);
    ProcessAr[Pl].IsIdle:=False;
    //Assign a New Thread ...
    ProcessAr[Pl].Thr:=TPipe.Create(True);
    ProcessAr[Pl].Thr.Priority:=tpHigher;
    ProcessAr[Pl].Thr.LinkShape(Form,HObj,TObj,State);
    ProcessAr[Pl].Thr.Resume;
   end;
 until Terminated;
end;

procedure TMonitor.FreeThr(var Mes: TMessage);
Var
 i : integer;
begin
 for i:=1 to 10 do
  begin
   if ProcessAr[i].Thr<>nil then
    begin
     if ProcessAr[i].Thr.ThreadID=Id then
      begin
       ProcessAr[i].Thr.Terminate;
       ProcessAr[i].IsIdle:=True;
       ProcessAr[i].Thr.Free;
       exit;
      end;
    end;
  end;
end;

procedure TMonitor.LinkShape(Frm: TForm; SShape, DShape: TShape;
  Op: smallint);
begin
 Form:=Frm;
 HObj:=SShape;
 TObj:=DShape;
 State:=Op;
end;

procedure TMonitor.NewTask(Task : PChar);
Var
 i : integer;
begin

 i:=EmptyPlace;
 if i=-1 then
  begin
   WaitingQu.Push(Task);
  end
   else
    begin
     ProcessAr[i].Value:=Task;
     ProcessAr[i].IsIdle:=False;
    //Assign a New Thread ...
     ProcessAr[i].Thr:=TPipe.Create(True);
     ProcessAr[i].Thr.Priority:=tpHigher;
     ProcessAr[i].Thr.LinkShape(Form,HObj,TObj,State);
     ProcessAr[i].Thr.Resume;
    end;
end;


function TMonitor.PopFromWaiting: PChar;
begin
 if WaitingQu.Count>0 then
  begin
   Result:=PChar(WaitingQu.Pop);
  end
   else
    begin
     Result:=nil;
    end;
end;

procedure TMonitor.PushInWaiting(Value : PChar);
begin
 // Create the Queue just one time
 if WaitingQu=nil then
  WaitingQu:=TQueue.Create;

 WaitingQu.Push(Value);
end;

end.
