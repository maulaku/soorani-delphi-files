unit RadSecurity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
   Dialogs,ExtCtrls,StdCtrls,AdoDB,Nb30,PDate,Db,ScktComp;

Var
  NMes,EMes,DMes,PMes,RMes,SMes,OMes : Cardinal;
  HostM : string;
  Fl : boolean;
  
type

  TMessages = class(TPersistent)
   private
    FNewMessage,FEditMessage,FDeleteMessage,FPrintMessage,FRunMessage,FSearchMessage : string;
    FOpenMessage: string;
    function CheckMes (Value : string) : Boolean;
    procedure SetNewMes(Value : string);
    procedure SetEditMes(Value : string);
    procedure SetDeleteMes(Value : string);
    function GetMesNu (s : string) : Cardinal;
    procedure SetPrintMes(Value : string);
    procedure SetRunMes(Value : string);
    procedure SetSearchMes(Value : string);
    procedure SetOpenMes(Value : string);
   published
    property NewMessage : string read FNewMessage write SetNEwMes;
    property EditMessage : string read FEditMessage write SetEditMes;
    property DeleteMessage : string read FDeleteMessage write SetDeleteMes;
    property PrintMessage : string read FPrintMessage write SetPrintMes;
    property RunMessage : string read FRunMessage write SetRunMes;
    property SearchMessage : string read FSearchMessage write SetSearchMes;
    property OpenMessage : string read FOpenMessage write SetOpenMes;
  end;

  TRadSecurity = class(TBevel)
  private
   Ct : boolean;
   Height:integer;
   Ftable:string;
   FAdoConnection : TAdoConnection;
   FMessages : TMessages;
   Fsyscode : integer;
   FDate : string;
   Flag : Boolean;
   FOnNewMessage : TNotifyEvent;
   FOnEditMessage : TNotifyEvent;
   FOnDeleteMessage : TNotifyEvent;
   FOnSearchMessage : TNotifyEvent;
   FOnopenMessage : TNotifyEvent;
   FOnRunMessage : TNotifyEvent;
   FOnPrintMessage : TNotifyEvent;
   FCSocket : TClientSocket;
   function  GetTName (Stext:String;s:integer):String;
   procedure Paint; override;
   procedure WndProc(Var Mes : TMessage);override;
   procedure ExecComp (Connection: TADOConnection; RecordsAffected:  Integer ;  const   Error: Error;  var  EventStatus:  TEventStatus ;  const  Command: _Command;  const  Recordset:  _Recordset);
   procedure SetAdoConnection(Value : TAdoConnection);
   function GetAdoConnection : TAdoConnection;

  public
   FEmp_No,FForm,FConStr : string;

   constructor Create(AOwner : TComponent);override;
   procedure PerformMes (Mes : TMessage;Emp_no,Form,ConStr : string);
   procedure Connect(Sender: TObject;Socket: TCustomWinSocket);
  published
   property AdoConnection  : TADOConnection read GetAdoConnection  Write SetAdoConnection;
   property Messages : TMessages Read FMessages Write FMessages;
   property Syscode : Integer Read FSyscode Write FSyscode;
   property OnNewMessage : TNotifyEvent read FOnNewMessage write FOnNewMessage;
   property OnEditMessage : TNotifyEvent read FOnEditMessage write FOnEditMessage;
   property OnDeleteMessage : TNotifyEvent read FOnDeleteMessage write FOnDeleteMessage;
   property OnSearchMessage : TNotifyEvent read FOnSearchMessage write FOnSearchMessage;
   property OnRunMessage : TNotifyEvent read FOnRunMessage write FOnRunMessage;
   property OnOpenMessage : TNotifyEvent read FOnOpenMessage write FOnOpenMessage;
   property OnPrintMessage : TNotifyEvent read FOnprintMessage write FOnprintMessage;


  end;

 AState = record
  Adap : TAdapterStatus;
  Name : array [1..30] of TNameBuffer;
 end;

procedure Register;

{$R RadSecurity.Res}

implementation


Var
 Adapter : AState ;

function getaddress(sr:string):string;
var
    Ncb : TNCB;
    uRetCode : UCHAR;
    NetName : String[50] ;
    lenum : TLanaEnum;
    i,j : integer ;
    Len : Integer ;
    Str : String ;
    Str2 : string;
    st3:string;
begin
      Str2:=uppercase(sr);
      Ncb.ncb_command := CHAR(NCBENUM);
      Ncb.ncb_buffer  := PChar(@lenum);
      Ncb.ncb_length  := sizeof(lenum);

      uRetCode := Byte(Netbios( @Ncb ));

      //Len :=  StrToInt(lenum.length) - 1 ;
      for i:=0  to BYTE(lenum.length)-1  Do
      begin
        Ncb.ncb_command := Char(NCBRESET);
        Ncb.ncb_lana_num := lenum.lana[i];
        uRetCode := Byte(Netbios( @Ncb ));

        Ncb.ncb_command := Char(NCBASTAT);
        Ncb.ncb_lana_num := lenum.lana[i];

        for j:=1 to Length(str2) do
          Ncb.ncb_callname[j-1] :=str2[j];
        for j:=Length(str2) to 16 do Ncb.ncb_callname[j]:=' ';
        Ncb.ncb_buffer := PCHAR( @Adapter);
        Ncb.ncb_length := sizeof(Adapter);

        uRetCode := Byte(Netbios(@Ncb ));

        if ( uRetCode = 0 ) then
        begin
            st3:='';
            st3:=  Format ('%2x%2x%2x%2x%2x%2x',
            [Byte(Adapter.adap.adapter_address[0]),
                  Byte(Adapter.adap.adapter_address[1]),
                  Byte(Adapter.adap.adapter_address[2]),
                  Byte(Adapter.adap.adapter_address[3]),
                  Byte(Adapter.adap.adapter_address[4]),
                  Byte(Adapter.adap.adapter_address[5])]) ;

        end;
      end;
  result:=st3;
end;

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRadSecurity]);
//  RegisterPropertyEditor(TypeInfo(TAdoConnection),TRadSecurity,'AdoConnection',TClassProperty);
end;

function TMessages.CheckMes(Value: string): Boolean;
begin
 if Value<>'' then
 begin
  if Pos('wm_user',LowerCase(Value))=0 then
   begin
    MessageDlg('Invalid Message',mtError,[mbOk],0);
    Result:=False;
   end
    else
     Result:=True;
 end
  else Result:=True;
end;

function TMessages.GetMesNu(s: string): Cardinal;
Var
 s2 : string;
begin
 if Pos('+',s)>0 then
  begin
   s2:=Copy(s,Pos('+',s)+1,Length(s)-Pos('+',s));
   Result:=strtoint(trim(s2))+Wm_User;
   exit;
  end
   else
    Result:=Wm_User;
end;

procedure TMessages.SetDeleteMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FDeleteMessage:=Value;
   DMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TMessages.SetEditMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FEditMessage:=Value;
   EMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TMessages.SetNewMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FNewMessage:=Value;
   NMes:=GetMesNu(Value);
  end
   else exit;
end;


procedure TMessages.SetOpenMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FOpenMessage:=Value;
   OMes:=GetMesNu(Value);
  end
   else exit;

end;

procedure TMessages.SetPrintMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FPrintMessage:=Value;
   PMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TMessages.SetRunMes(Value: string);
begin
if CheckMes(Value) then
  begin
   FRunMessage:=Value;
   RMes:=GetMesNu(Value);
  end
   else exit;
end;

{ TRadSecurity }

procedure TRadSecurity.Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  Flag:=True;
end;

constructor TRadSecurity.Create(AOwner: TComponent);
begin
  inherited;
  FMessages:=TMessages.Create;
  Parent:=TForm(Owner);
  Constraints.MaxWidth:=50;
  Constraints.MaxHeight:=30;
  Shape:=bsFrame;
  Visible:=False;
  Color:=RGB(176,184,238);
  Paint;
  Ct:=True;
  Width:=50;
  Height:=30;
  FConStr:='';
  HostM:='';
  Flag:=False;
end;

procedure TMessages.SetSearchMes(Value: string);
begin
if CheckMes(Value) then
  begin
   FSearchMessage:=Value;
   SMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TRadSecurity.ExecComp(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
var i:integer;
    Mes:TMessage;
begin
 if ((pos('insert',lowercase(Command.CommandText))<>0) and (TForm(Owner).ActiveMDIChild<>nil)) then
  begin
   Mes.Msg:=NMes;
   FTable:= GetTName(trim(lowercase(Command.CommandText)),1);
   PerformMes(Mes,FEmp_No,Trim(TForm(Owner).ActiveMDIChild.Caption),FAdoConnection.ConnectionString);
  end
 else if ((pos('update',lowercase(Command.CommandText))<>0) and (TForm(Owner).ActiveMDIChild<>nil)) then
  begin
   Mes.Msg:=EMes;
   FTable:= GetTName(trim(lowercase(Command.CommandText)),2);
   PerformMes(Mes,FEmp_No,Trim(TForm(Owner).ActiveMDIChild.Caption),FAdoConnection.ConnectionString);
  end
 else if ((pos('delete',lowercase(Command.CommandText))<>0) and (TForm(Owner).ActiveMDIChild<>nil)) then
  begin
   Mes.Msg:=DMes;
   FTable:= GetTName (trim(lowercase(Command.CommandText)),3);
   PerformMes(Mes,FEmp_No,Trim(TForm(Owner).ActiveMDIChild.Caption),FAdoConnection.ConnectionString);
  end;
end;

function TRadSecurity.GetAdoConnection: TAdoConnection;
begin
 Result:=FAdoConnection;
end;

function TRadSecurity.GetTName(Stext: String;s:integer): String;
var
  i:Integer;
  found : boolean;
begin
  found:=false;
  case s of
  1:
   begin
    Result:=Trim(Copy(LowerCase(Stext),(Pos('into',LowerCase(SText))+4),length(Stext)));
    i:=1;
    While ((i<= Length(Result)) and (not Found))  do
    begin
     if ((stext[i]<>' ') and (stext[i]<>'(')) then
      inc(i)
     else
      found:=true;
    end;
   end;
  2:
   begin
    Result:=Trim(Copy(LowerCase(Stext),(Pos('update',LowerCase(SText))+6),length(Stext)));
    i:=1;
    While ((i<= Length(Result)) and (not Found))  do
    begin
     if (stext[i]<>' ') then
      inc(i)
     else
      found:=true;
    end;
   end;
  3:
   begin
    Result:=Trim(Copy(LowerCase(Stext),(Pos('from',LowerCase(SText))+4),length(Stext)));
    i:=1;
    While ((i<= Length(Result)) and (not Found))  do
    begin
     if (stext[i]<>' ')  then
      inc(i)
     else
      found:=true;
    end;
   end;
  end;//case
 result:=copy(result,1,i);
end;

procedure TRadSecurity.Paint;
Var
 W,H : integer;
 Rec : TRect;
 La : TLabel;
begin
 inherited;
 Width := 50;
 Height := 30;
 Rec:=ClientRect;
 Rec.Left:=Rec.Left+3;
 Rec.Top:=Rec.Top+3;
 Rec.Right:=Rec.Right-3;
 Rec.Bottom:=Rec.Bottom-3;
 Canvas.Brush.Color:=Color;
 Canvas.Font.Color:=clBlue;
 Canvas.FillRect(Rec);
 La:=TLabel.Create(Self);
 La.AutoSize:=True;
 La.Caption:='Security';
 W:=La.Width;
 H:=La.Height;
 La.Free;
 Canvas.TextOut((Width-W) div 2 ,(Height-H) div 2,'Security');
 Shape:=bsFrame;
 Style:=bsRaised;
 Visible:=False;
end;

procedure TRadSecurity.PerformMes(Mes: TMessage;Emp_no,Form,ConStr : string);
Var
 Qu,QuIns : TAdoQuery;
begin
 if Ct then
  begin
   Qu:=TAdoQuery.Create(Self);
   Qu.ConnectionString:=ConStr;
   Qu.SQL.Clear;
   Qu.SQL.Add('select * from sysobjects where [name] ='+''''+'Security'+''''+' '+' and xtype='+''''+'U'+'''');
   Qu.Close;
   Qu.Open;
   if Qu.IsEmpty then
    begin
     //Create Tables;
     QuIns:=TAdoQuery.Create(Self);
     QuIns.ConnectionString:=ConStr;
     QuIns.SQL.Clear;
     QuIns.SQL.Add('CREATE TABLE [dbo].[Security] (');
     QuIns.SQL.Add('[Sec_ID] [int] NOT NULL ,');
     QuIns.SQL.Add('[Sec_MacAdr] [varchar] (50) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,');
     QuIns.SQL.Add('[Sec_Emp_no] [char] (10) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,');
     QuIns.SQL.Add('[Sec_Form] [varchar] (100) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,');
     QuIns.SQL.Add('[Sec_Syscode] [int] NULL ,');
     QuIns.SQL.Add('[Sec_Date] [char] (8) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,');
     QuIns.SQL.Add('[Sec_Time] [char] (5) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL ,');
     QuIns.SQL.Add('[Sec_OPID] [smallint] NULL ,');
     QuIns.SQL.Add('[Sec_Table] [varchar] (50) COLLATE SQL_Latin1_General_CP1256_CI_AS NULL');
     QuIns.SQL.Add(') ON [PRIMARY]');
     QuIns.ExecSQl;

     QuIns.Sql.Clear;
     QuIns.SQL.Add('CREATE TABLE [dbo].[Operation_Id] (');
     QuIns.SQL.Add('[Ops_Id] [smallint] NOT NULL ,');
     QuIns.SQL.Add('[Ops_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1256_CI_AS NOT NULL');
     QuIns.SQL.Add(') ON [PRIMARY]');
     QuIns.ExecSQl;

     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(1)+','+''''+'œ—Ã —ﬂÊ—œ'+''''+')');
     QuIns.ExecSQl;
     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(2)+','+''''+'«’·«Õ —ﬂÊ—œ'+''''+')');
     QuIns.ExecSQl;
     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(3)+','+''''+'Õ–› —ﬂÊ—œ'+''''+')');
     QuIns.ExecSQl;
     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(4)+','+''''+'ê“«—‘êÌ—Ì'+''''+')');
     QuIns.ExecSQl;
     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(5)+','+''''+'ç«Å ê“«—‘'+''''+')');
     QuIns.ExecSQl;
     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(6)+','+''''+'Ã” ÃÊ'+''''+')');
     QuIns.ExecSQl;
     QuIns.SQl.Clear;
     QuIns.SQL.Add('insert into Operation_Id Values('+inttostr(7)+','+''''+'»«“ ﬂ—œ‰ ›—„'+''''+')');
     QuIns.ExecSQl;

     QuIns.Free;
     Qu.Free;
     Ct:=False;
    end
     else Ct:=False;
  end;

 Femp_no:=Emp_no;
 FForm:=Form;
 FConStr:=ConStr;
 Self.Perform(Mes.Msg,Mes.WParam,Mes.LParam);
end;

procedure TRadSecurity.SetAdoConnection(value: TAdoConnection);
Var
 Qu : TAdoQuery;
begin
  FAdoConnection:=Value;
  FAdoconnection.OnExecuteComplete:=ExecComp;
{  if FAdoConnection<>nil then
  begin
  Qu:=TADOQuery.Create(Self);
  Qu.ConnectionString:=FAdoConnection.ConnectionString;
  Qu.SQL.Clear;
  Qu.SQL.Add('Select * from TvHost');
  Qu.Close;
  Qu.Open;
  Qu.First;
  HostM:=Qu.Fields[0].AsString;
  Qu.Free;
  FCSocket:=TClientSocket.Create(Self);
  FCSocket.Host:=HostM;
  FCSocket.Port:=2002;
  FCSocket.Active:=True;
  end;}
end;



procedure TRadSecurity.WndProc(var Mes: TMessage);
Var
  Op_SysCode,Op_Id,Sec_Id :integer;
  Op_Emp_no,Op_Mac_Adr,Op_Form,Op_Date,Op_Time :String;
  Ti : TDateTime;
  Hs : string;
  Qu,QuSel : TAdoQuery;
  Cn : PChar;
  Cns : Cardinal;
  Perdate:TFar_date;
  y,m,d:word;
  Buf : array [1..500] of Char;
  i,j : integer;
  BufS : string;
begin
 if ((Mes.Msg=NMes) or (Mes.Msg=EMes) or (Mes.Msg=DMes) or (Mes.Msg=PMes) or
      (Mes.Msg=RMes) or (Mes.Msg=SMes) or (Mes.Msg=OMes)) then
  begin
   Op_Emp_No:=Femp_no;
   Op_Form:=FForm;
   Op_Syscode:=Syscode;

   QuSel:=TADOQuery.Create(Self);
   QuSel.ConnectionString:=FConStr;
   QuSel.SQL.Text:='Select GetDate() as DT';
   QuSel.Close;
   QuSel.Open;

   Ti:=QuSel.Fields[0].AsDateTime;

   Hs:=timetostr(Ti);
   Hs:=Copy(Hs,1,5);
   Op_Time:=Hs;
   Perdate:=TFar_date.Create(Self);
   Op_Date:=PerDate.Disp_Date(Ti);
   PerDate.Free;

   // New
   if Mes.Msg=NMes then
    begin
     Op_Id:=1;
    end;

   // Edit
   if Mes.Msg=EMes then
    begin
     Op_Id:=2;
    end;

   // Delete
   if Mes.Msg=DMes then
    begin
     Op_Id:=3;
    end;

   // Run
   if Mes.Msg=RMes then
    begin
     Op_Id:=4;
    end;

   // Print
   if Mes.Msg=PMes then
    begin
     Op_Id:=5;
    end;

   // Search
   if Mes.Msg=SMes then
    begin
     Op_Id:=6;
    end;

   // Open
   if Mes.Msg=OMes then
    begin
     Op_Id:=7;
    end;

  GetMem(Cn,100);
  Cns:=100;
  GetComputerName(Cn,Cns);
  Op_Mac_Adr:=GetAddress(Cn);
  Dispose(Cn);

  //Insert Query
  QuSel:=TAdoQuery.Create(Self);
  QuSel.ConnectionString:=FConStr;
  QuSel.SQL.Text:='Select Sec_Id from Security order by Sec_Id';
  QuSel.Close;
  QuSel.Open;
  QuSel.Last;
  if Not(QuSel.IsEmpty) then Sec_Id:=QuSel.Fields[0].Value+1
   else Sec_Id:=1;
  QuSel.Free;
  Qu:=TAdoQuery.Create(Self);
  Qu.ConnectionString:=FConStr;
  Qu.SQL.Text:='insert into Security Values('+inttostr(Sec_Id)+','+''''+Op_Mac_Adr+''''+','+''''+Op_Emp_No+''''+','+''''+Op_Form+''''+','+inttostr(Op_SysCode)+','+''''+Op_Date+''''+','+''''+Op_Time+''''+','+inttostr(Op_Id)+','+''''+FTable+''''+')';
  Qu.ExecSQL;
  Qu.Free;

  BufS:=inttostr(SysCode)+'-'+FTable+'-'+inttostr(Op_Id);
  for i:=1 to Length(BufS) do
   begin
    Buf[i]:=BufS[i];
   end;
  Buf[i]:=#0;

  Qu:=TADOQuery.Create(Self);
  Qu.ConnectionString:=FAdoConnection.ConnectionString;
  Qu.SQL.Clear;
  Qu.SQL.Add('Select * from TvHost');
  Qu.Close;
  Qu.Open;
  Qu.First;
  FCSocket:=TClientSocket.Create(Self);
  for j:=0 to Qu.RecordCount-1  do
  Begin
   HostM:=Qu.Fields[0].AsString;
   FCSocket.Active:=False;
   FCSocket.OnConnect:=Connect;
   FCSocket.Host:=HostM;
   FCSocket.Port:=2002;
   FCSocket.Active:=True;
   repeat
    Application.ProcessMessages;
   until flag;
   FCSocket.Socket.SendBuf(Buf,i-1);
   flag:=False;
  Qu.Next;
  end;//for
  Qu.Free;
  FCSocket.Free;

  if Mes.Msg=NMes then
   if Assigned(FOnNewMessage) then
    FOnNewMessage(Self);

  if Mes.Msg=EMes then
   if Assigned(FOnEditMessage) then
    FOnEditMessage(Self);

   if Mes.Msg=DMes then
    if Assigned(FOnDeleteMessage) then
     FOnDeleteMessage(Self);

   if Mes.Msg=SMes then
    if Assigned(FOnSearchMessage) then
     FOnSearchMessage(Self);

   if Mes.Msg=pMes then
    if Assigned(FOnPrintMessage) then
     FOnPrintMessage(Self);

   if Mes.Msg=RMes then
    if Assigned(FOnRunMessage) then
     FOnRunMessage(Self);


  end;
  inherited;
end;

end.
