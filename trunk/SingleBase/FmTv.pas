unit FmTv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,Monitor, ScktComp, Db, ADODB;

type
  TTV = class(TForm)
    ServerSocket1: TServerSocket;
    Shape35: TShape;
    Shape4: TShape;
    Shape12: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape6: TShape;
    Label8: TLabel;
    Shape7: TShape;
    Label9: TLabel;
    Shape8: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape9: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape21: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape47: TShape;
    Shape49: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape54: TShape;
    Shape55: TShape;
    Shape3: TShape;
    Shape13: TShape;
    Shape17: TShape;
    Shape22: TShape;
    Shape20: TShape;
    Shape34: TShape;
    Shape39: TShape;
    Label16: TLabel;
    QuRel: TADOQuery;
    QuRelsyscode: TSmallintField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Mon : TMonitor;
  end;

var
  TV: TTV;

implementation

uses define, DabDmdle, SendBox;

{$R *.DFM}

procedure TTV.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=11;
  Application.MainForm.Dispatch(mes);
  Top:=0;
  left:=0;
  Width:=795;
  Height:=481;
end;

procedure TTV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Mon.Terminate;
//  Mon.Free;
  DabData.DelServer;
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TTV.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;


procedure TTV.Button1Click(Sender: TObject);
Var
 Th : TMonitor;
 c : PChar;
begin
  Connect(TV,Shape6,Shape12,4);
  {Connect(TV,Shape64,Shape60,1);
  Connect(TV,Shape64,Shape1,1);
  Connect(TV,Shape13,Shape63,1);
   }
 Mon.LinkShape(Self,Shape6,Shape6,1);
 Mon.NewTask(PChar('1'));
end;

procedure TTV.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
Var
 SysCode,Op : integer;
 s,s2,Tn : string;
begin
 s:=Socket.ReceiveText;
 if Copy(s,1,1)='1' then
  SysCode:=1;
 if Copy(s,1,1)='2' then
  SysCode:=2;
 if Copy(s,1,1)='3' then
  SysCode:=3;
 if Copy(s,1,1)='4' then
  SysCode:=4;
 if Copy(s,1,1)='5' then
  SysCode:=5;
 if Copy(s,1,1)='6' then
  SysCode:=6;
 if Copy(s,1,1)='7' then
  SysCode:=7;
 if Copy(s,1,1)='8' then
  SysCode:=8;
 if Copy(s,1,1)='9' then
  SysCode:=9;
 if Copy(s,1,2)='10' then
  SysCode:=10;
 s2:=Copy(s,Pos('-',s)+1,Length(s));
 Tn:=Copy(s2,1,Pos('-',s2)-1);
 s2:=Copy(s2,Pos('-',s2)+1,Length(s2));
 Op:=strtoint(s2);

 QuRel.Close;
 QuRel.Parameters[0].Value:=Tn;
 QuRel.Open;
 QuRel.First;
 While Not(QuRel.Eof) do
  begin

   if QuRelSysCode.AsInteger=1 then
    begin
     if SysCode=7 then
      begin
       Mon.LinkShape(Self,Shape9,Shape10,Op);
       Mon.NewTask(PChar('1'));
      end;
    end;

   QuRel.Next;
  end;

end;

procedure TTV.FormShow(Sender: TObject);
begin
 DabData.SetServer;
 Mon:=TMonitor.Create(True);
 Mon.Flag:=True;
 Mon.Priority:=tpLowest;
 Mon.Resume;
end;

end.
