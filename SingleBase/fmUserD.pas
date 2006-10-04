unit fmUserD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls,define,db, DBTables,
  Buttons, SetForm, RSQLComboBox, ADODB, RSqllookup, SmoothShow, XPMenu,variants,BaseFrm;

type
  TUserD = class(TBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    FormInitializer1: TFormInitializer;
    Panel3: TPanel;
    DBImage1: TDBImage;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    qudeluser: TADOQuery;
    qudeluseraccess: TADOQuery;
    cbsystem: TRSqlDbLookup;
    dssystem: TDataSource;
    qusystem: TADOQuery;
    qusystemsyscode: TIntegerField;
    qusystemDescr: TStringField;
    XPMenu1: TXPMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure cbsystemClick(Sender: TObject);
  private
    { Private declarations }
  public
    empno:string;
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    { Public declarations }
  end;

var
  UserD: TUserD;

implementation

uses DabDmdle, fmUsrDef, fmElam, fmMfrm ;

{$R *.DFM}
procedure TUserD.DoNew(var mes :TMessage);
begin
if not qusystem.IsEmpty then
begin
  UsrDef:=TUsrDef.Create(Application);
  UsrDef.mde:=1;
  UsrDef.syscode:=CbSystem.keyvalue;
  Usrdef.bitbtn5.caption:='·€Ê';
  Usrdef.bbok.Caption:=' «ÌÌœ';
  UsrDef.Caption:='                                                                                        «ÌÃ«œ ﬂ«—»— ÃœÌœ';
  UsrDef.Showmodal;
  UsrDef.Free;
  DabData.quUsers.Close;
  DabData.quUsers.Parameters[0].Value:=CbSystem.keyvalue;
  DabData.quUsers.Open;
end;  
end;

procedure TUserD.DoEdit(var mes :TMessage);
var MyBook :TBookMark;
  NameFamily : String;
begin
  if (DabData.QuUsers.RecordCount>0) then
  begin
  UsrDef:=TUsrDef.Create(Application);
  UsrDef.mde:=2;
  NAmeFamily:=trim(DabData.quUsersfamily.AsString)+' '+trim(DabData.quUsersname.AsString);
  UsrDef.dblEmpInf.Enabled:=false;
  UsrDef.edInfo.Text := NameFamily;
  UsrDef.edInfo.Enabled := False;
  UsrDef.empno:=DabData.quUsersEmp_No.AsString;
  UsrDef.edstar.text:=DabData.quUsers.fieldbyname('star').asstring;
  UsrDef.edEtar.text:=DabData.quUsers.fieldbyname('etar').asstring;
  UsrDef.edpass.text:=DabData.quUsers.fieldbyname('Pwrd').asstring;
  UsrDef.cbfm.itemindex:=DabData.quUsers.fieldbyname('fm').asinteger;
  UsrDef.cbstat.itemindex:=DabData.quUsers.fieldbyname('ptag').asinteger;
  UsrDef.syscode:=DabData.quUserssyscode.AsInteger;
  Usrdef.bitbtn5.caption:='Œ—ÊÃ';
  Usrdef.bbok.Caption:=' «ÌÌœ';
  UsrDef.Showmodal;
  UsrDef.Free;
  MyBook:=DabData.quUsers.GetBookMark;
  DabData.quUsers.Close;
  DabData.quUsers.Parameters[0].Value:=CbSystem.keyvalue;
  DabData.quUsers.Open;
  DabData.quUsers.GoToBookMark(MyBook);
  DabData.quUsers.FreeBookMark(MyBook);
  end;
end;

procedure TUserD.DoPrint(var mes :TMessage);
begin
//*****
end;

procedure TUserD.DoDelete(var mes :TMessage);
var
    ss     :string;
    MyBook :TBookMark;
begin
  ss:=Elam.lbStr.Caption;
  Elam.lbStr.Caption:='¬Ì« „ÿ„∆‰Ìœø';
  Elam.ShowModal;
  if Elam.bbOk.ModalResult=mrok then
   begin
      Try
        DabData.ADOC.BeginTrans;
        qudeluser.Parameters[0].Value:=DabData.quUsersEmp_No.AsString;
        qudeluser.Parameters[1].Value:=DabData.quUsersSysCode.AsInteger;
        qudeluser.ExecSQL;
        qudeluseraccess.Parameters[0].Value:=DabData.quUsersEmp_No.AsString;
        qudeluseraccess.Parameters[1].Value:=DabData.quUsersSysCode.AsInteger;
        qudeluseraccess.ExecSQL;
        DabData.ADOC.CommitTrans;
      except
        Showmessage2('Œÿ« œ— Õ–› ﬂ«—»—');
        DabData.ADOC.RollBackTrans;
      end;
      DabData.quUsers.Prior;
      if DabData.quUsersemp_no.asstring<>'' then
         MyBook:=DabData.quUsers.GetBookMark;
      DabData.quUsers.Close;
      DabData.quUsers.Open;
      if DabData.quUsersemp_no.asstring<>'' then
       begin
         DabData.quUsers.GoToBookMark(MyBook);
         DabData.quUsers.FreeBookMark(MyBook);
       end;
   end;
   Elam.lbStr.Caption:=ss;
//*****
end;

procedure TUserD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TUserD.FormShow(Sender: TObject);
begin
  FormInitializer1.Execute;
{  DBEdit1.Color:=ClDisabledField;
  DBEdit2.Color:=ClDisabledField;
  DBEdit3.Color:=ClDisabledField;
  DBEdit4.Color:=ClDisabledField;}

  empno:= dabdata.empno;
  CbSystem.keyvalue:=Null;
  DabData.quUsers.Close;
  DabData.quUsers.Parameters[0].Value:=CbSystem.keyvalue;
  DabData.quUsers.Open;
  QuSystem.close;
  qusystem.Parameters[0].Value:=empno;
  if DabData.master then  qusystem.Parameters[1].Value:=1
  else  qusystem.Parameters[1].Value:=0;
  QuSystem.open;
  QuSystem.First;
  cbsystem.KeyValue:=QuSystemsyscode.asinteger;
  DabData.quUsers.Close;
  DabData.quUsers.Parameters[0].Value:=CbSystem.keyvalue;
  DabData.quUsers.Open;
end;

procedure TUserD.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=15;
  Application.MainForm.Dispatch(mes);
  Top:=2;
end;

procedure TUserD.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TUserD.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var mes:TMessage;  
begin
  if (Shift=[ssShift]) then
   begin
    if key=117 then
     begin
       mes.Msg:=F_DEL;
       Dispatch(mes);
     end
   end
  else
    if key=117 then
      begin
        mes.Msg:=F_NEW;
        Dispatch(mes);
      end;
  if (Shift=[ssCtrl]) and (key=69) then
   begin
     mes.Msg:=F_EDIT;
     Dispatch(mes);
   end;
end;

procedure TUserD.DBGrid1Enter(Sender: TObject);
begin
 (sender as tdbgrid).color:=$00a8ffff;
end;

procedure TUserD.DBGrid1Exit(Sender: TObject);
begin
 (sender as tdbgrid).color:=Cl3dlight;
end;

procedure TUserD.cbsystemClick(Sender: TObject);
begin
  DabData.quUsers.Close;
  DabData.quUsers.Parameters[0].Value:=CbSystem.keyvalue;
  DabData.quUsers.Open;
end;

end.
