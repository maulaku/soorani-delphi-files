unit fmuserm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls,define,db, DBTables,
  Buttons, SetForm, RSQLComboBox, ADODB, ComCtrls, fcButton, fcImgBtn,
  fcClearPanel, fcButtonGroup, SmoothShow ,BaseFrm;

type
  TUserM = class(TBaseForm)
    quuserm: TADOQuery;
    dsuserm: TDataSource;
    quusermnf: TStringField;
    quusermemp_no: TStringField;
    qusystem: TADOQuery;
    dssystem: TDataSource;
    QuMenu: TADOQuery;
    QuMenuMCode: TIntegerField;
    QuMenuMDesc: TStringField;
    DsMenu: TDataSource;
    qudelsystem: TADOQuery;
    qudelmenu: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    DBGrid3: TDBGrid;
    QuNSystem: TADOQuery;
    dsnsystem: TDataSource;
    Panel6: TPanel;
    Label4: TLabel;
    DBGrid5: TDBGrid;
    Panel7: TPanel;
    Label5: TLabel;
    DBGrid6: TDBGrid;
    QuNMenu: TADOQuery;
    QuNMenuMCode: TIntegerField;
    QuNMenuMDesc: TStringField;
    dsnmenu: TDataSource;
    dssystem2: TDataSource;
    qusystem2: TADOQuery;
    quinssys: TADOQuery;
    Panel8: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel9: TPanel;
    Label3: TLabel;
    DBGrid4: TDBGrid;
    Label6: TLabel;
    QuSe: TADOQuery;
    QuSeemp_no: TStringField;
    quusermfamily: TStringField;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    qusystemsyscode: TIntegerField;
    qusystemDescr: TStringField;
    qusystem2syscode: TIntegerField;
    qusystem2Descr: TStringField;
    QuNSystemsyscode: TIntegerField;
    QuNSystemDescr: TStringField;
    fcButtonGroup1: TfcButtonGroup;
    fcButtonGroup1fcImageBtn1: TfcImageBtn;
    fcButtonGroup1fcImageBtn2: TfcImageBtn;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure quusermAfterScroll(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure qusystem2AfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure QuNSystemAfterOpen(DataSet: TDataSet);
    procedure qusystemAfterOpen(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fcButtonGroup1fcImageBtn1Click(Sender: TObject);
    procedure fcButtonGroup1fcImageBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    { Public declarations }
  end;

var
  UserM: TUserM;

implementation

uses DabDmdle, fmUsrDef, fmElam, fmNewUp ;

{$R *.DFM}
procedure TUserM.DoNew(var mes :TMessage);
begin
end;

procedure TUserM.DoEdit(var mes :TMessage);
begin
end;

procedure TUserM.DoPrint(var mes :TMessage);
begin
end;

procedure TUserM.DoDelete(var mes :TMessage);
begin
end;

procedure TUserM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TUserM.FormActivate(Sender: TObject);
var mes:TMessage;
begin
 Top:=2;
 left:=120;
 mes.Msg:=FORM_STATE;
 mes.Lparam:=3;
 Application.MainForm.Dispatch(mes);
end;

procedure TUserM.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TUserM.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TUserM.DBGrid1Enter(Sender: TObject);
begin
 (sender as tdbgrid).color:=$00a8ffff;
end;

procedure TUserM.DBGrid1Exit(Sender: TObject);
begin
 (sender as tdbgrid).color:=Cl3dlight;
end;

procedure TUserM.quusermAfterScroll(DataSet: TDataSet);
begin
QuSystem.Close;
QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
QuSystem.Open;
QunSystem.Close;
QunSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
QunSystem.Open;
  if QuSystem.IsEmpty then
   begin
    SpeedButton2.Enabled:=false;
    SpeedButton6.Enabled:=false;
   end
    else
     begin
      SpeedButton2.Enabled:=true;
      SpeedButton6.Enabled:=true;
     end;

  if QuNSystem.IsEmpty then
   begin
   SpeedButton1.Enabled:=false;
   SpeedButton5.Enabled:=false;
   end
    else
     begin
      SpeedButton1.Enabled:=true;
      SpeedButton5.Enabled:=true;
     end;
end;

procedure TUserM.TabSheet2Show(Sender: TObject);
begin
 QuSystem2.Close;
 QuSystem2.Parameters[0].Value:=QuUserMEmp_No.AsString;
 QuSystem2.Open;
QuMenu.Close;
QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
QuMenu.Open;
QunMenu.Close;
QunMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
QunMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
QunMenu.Parameters[2].Value:=QuUserMEmp_No.AsString;
QunMenu.Parameters[3].Value:=QuSystem2syscode.AsInteger;
QunMenu.Open;
end;

procedure TUserM.qusystem2AfterScroll(DataSet: TDataSet);
begin
QuMenu.Close;
QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
QuMenu.Open;
QunMenu.Close;
QunMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
QunMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
QunMenu.Parameters[2].Value:=QuUserMEmp_No.AsString;
QunMenu.Parameters[3].Value:=QuSystem2syscode.AsInteger;
QunMenu.Open;

  if QuMenu.IsEmpty then
   begin
    SpeedButton4.Enabled:=false;
    SpeedButton8.Enabled:=false;
   end
    else
     begin
      SpeedButton4.Enabled:=true;
      SpeedButton8.Enabled:=true;
     end;

  if QuNMenu.IsEmpty then
   begin
   SpeedButton3.Enabled:=false;
   SpeedButton7.Enabled:=false;
   end
    else
     begin
      SpeedButton3.Enabled:=true;
      SpeedButton7.Enabled:=true;
     end;
end;

procedure TUserM.SpeedButton1Click(Sender: TObject);
begin
if not qunsystem.IsEmpty then
begin
  quinssys.Parameters[0].Value:=quusermemp_no.AsString;
  quinssys.Parameters[1].Value:=qunsystemsyscode.AsInteger;
  quinssys.Parameters[2].Value:=-1;
  quinssys.ExecSQL;
  QuNSystem.close;
  QuNSystem.Prepared;
  QuNSystem.Parameters[0].value:=quusermemp_no.asstring;
  qunsystem.Open;
  QuSystem.Close;
  QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
  QuSystem.Open;
end;
  if QuSystem.IsEmpty then SpeedButton2.Enabled:=false else SpeedButton2.Enabled:=true;
  if QuNSystem.IsEmpty then SpeedButton1.Enabled:=false else SpeedButton1.Enabled:=true;
end;

procedure TUserM.SpeedButton3Click(Sender: TObject);
begin
if not QuNMenu.IsEmpty then
begin
  quinssys.Parameters[0].Value:=quusermemp_no.asstring;
  quinssys.Parameters[1].Value:=QuSystem2syscode.AsInteger;
  quinssys.Parameters[2].Value:=QuNMenuMCode.AsInteger;
  quinssys.ExecSQL;
  QuNMenu.close;
  QuNMenu.Prepared;
  QuNMenu.Parameters[0].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[1].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Parameters[2].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[3].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Open;
  QuMenu.Close;
  QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
  QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
  QuMenu.Open;
end;
  if Qumenu.IsEmpty then SpeedButton4.Enabled:=false else SpeedButton4.Enabled:=true;
  if QuNmenu.IsEmpty then SpeedButton3.Enabled:=false else SpeedButton3.Enabled:=true;
end;

procedure TUserM.SpeedButton2Click(Sender: TObject);
begin
if not qusystem.IsEmpty then
begin
  qudelsystem.Parameters[0].Value:=quusermemp_no.AsString;
  qudelsystem.Parameters[1].Value:=qusystemsyscode.AsInteger;
  qudelsystem.ExecSQL;
  QuNSystem.close;
  QuNSystem.Prepared;
  QuNSystem.Parameters[0].value:=quusermemp_no.asstring;
  qunsystem.Open;
  QuSystem.Close;
  QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
  QuSystem.Open;
end;
  if QuSystem.IsEmpty then SpeedButton2.Enabled:=false else SpeedButton2.Enabled:=true;
  if QuNSystem.IsEmpty then SpeedButton1.Enabled:=false else SpeedButton1.Enabled:=true;
end;

procedure TUserM.SpeedButton4Click(Sender: TObject);
begin
if not QuMenu.IsEmpty then
begin
  qudelmenu.Parameters[0].Value:=quusermemp_no.AsString;
  qudelmenu.Parameters[1].Value:=qusystem2syscode.AsInteger;
  qudelmenu.Parameters[2].Value:=QuMenuMCode.AsInteger;
  qudelmenu.ExecSQL;
  QuNMenu.close;
  QuNMenu.Prepared;
  QuNMenu.Parameters[0].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[1].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Parameters[2].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[3].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Open;
  QuMenu.Close;
  QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
  QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
  QuMenu.Open;
end;
  if Qumenu.IsEmpty then SpeedButton4.Enabled:=false else SpeedButton4.Enabled:=true;
  if QuNmenu.IsEmpty then SpeedButton3.Enabled:=false else SpeedButton3.Enabled:=true;
end;

procedure TUserM.TabSheet1Show(Sender: TObject);
begin
  quuserm.close;
  quuserm.open;
  DBGrid1.SetFocus;
end;

procedure TUserM.QuNSystemAfterOpen(DataSet: TDataSet);
begin
 if QuNSystem.IsEmpty then SpeedButton2.Enabled:=true else SpeedButton2.Enabled:=false;
end;

procedure TUserM.qusystemAfterOpen(DataSet: TDataSet);
begin
 if QuSystem.IsEmpty then SpeedButton1.Enabled:=true else SpeedButton1.Enabled:=false;
end;

procedure TUserM.Edit1Change(Sender: TObject);
begin
 QuSe.Close;
 QuSe.Parameters[0].Value:='%'+Edit1.Text+'%';
 QuSe.Open;
 QuSe.First;
 QuUserm.Locate('Emp_No',QuSeEmp_No.AsString,[]);
end;

procedure TUserM.SpeedButton5Click(Sender: TObject);
begin
if not qunsystem.IsEmpty then
begin
 QuNSystem.close;
 QuNSystem.Prepared;
 QuNSystem.Parameters[0].value:=quusermemp_no.asstring;
 qunsystem.Open;
 While Not(QuNSystem.IsEmpty) do
  begin
   QuNSystem.First;
   quinssys.Parameters[0].Value:=quusermemp_no.AsString;
   quinssys.Parameters[1].Value:=qunsystemsyscode.AsInteger;
   quinssys.Parameters[2].Value:=-1;
   quinssys.ExecSQL;
   QuNSystem.close;
   QuNSystem.Prepared;
   QuNSystem.Parameters[0].value:=quusermemp_no.asstring;
   qunsystem.Open;
  end;

   QuSystem.Close;
   QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
   QuSystem.Open;
end;

  if QuSystem.IsEmpty then
   begin
    SpeedButton2.Enabled:=false;
    SpeedButton6.Enabled:=false;
   end
    else
     begin
      SpeedButton2.Enabled:=true;
      SpeedButton6.Enabled:=true;
     end;

  if QuNSystem.IsEmpty then
   begin
   SpeedButton1.Enabled:=false;
   SpeedButton5.Enabled:=false;
   end
    else
     begin
      SpeedButton1.Enabled:=true;
      SpeedButton5.Enabled:=true;
     end;

end;

procedure TUserM.SpeedButton6Click(Sender: TObject);
begin
if not qusystem.IsEmpty then
begin
 QuSystem.Close;
 QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
 QuSystem.Open;
 While Not(QuSystem.IsEmpty) do
  begin
   QuSystem.First;
   qudelsystem.Parameters[0].Value:=quusermemp_no.AsString;
   qudelsystem.Parameters[1].Value:=qusystemsyscode.AsInteger;
   qudelsystem.ExecSQL;
   QuSystem.Close;
   QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
   QuSystem.Open;
  end;

   QuNSystem.close;
   QuNSystem.Prepared;
   QuNSystem.Parameters[0].value:=quusermemp_no.asstring;
   qunsystem.Open;
   QuSystem.Close;
   QuSystem.Parameters[0].Value:=QuUserMEmp_No.AsString;
   QuSystem.Open;
end;
  if QuSystem.IsEmpty then
   begin
    SpeedButton2.Enabled:=false;
    SpeedButton6.Enabled:=false;
   end
    else
     begin
      SpeedButton2.Enabled:=true;
      SpeedButton6.Enabled:=true;
     end;

  if QuNSystem.IsEmpty then
   begin
   SpeedButton1.Enabled:=false;
   SpeedButton5.Enabled:=false;
   end
    else
     begin
      SpeedButton1.Enabled:=true;
      SpeedButton5.Enabled:=true;
     end;
end;

procedure TUserM.SpeedButton7Click(Sender: TObject);
begin
if not QuNMenu.IsEmpty then
begin
  QuNMenu.Prepared;
  QuNMenu.Parameters[0].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[1].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Parameters[2].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[3].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Open;
  while Not(QuNMenu.IsEmpty) do
   begin
    QuNMenu.First;
    quinssys.Parameters[0].Value:=quusermemp_no.asstring;
    quinssys.Parameters[1].Value:=QuSystem2syscode.AsInteger;
    quinssys.Parameters[2].Value:=QuNMenuMCode.AsInteger;
    quinssys.ExecSQL;
    QuNMenu.close;
    QuNMenu.Prepared;
    QuNMenu.Parameters[0].value:=quusermemp_no.asstring;
    QuNMenu.Parameters[1].value:=QuSystem2syscode.AsInteger;
    QuNMenu.Parameters[2].value:=quusermemp_no.asstring;
    QuNMenu.Parameters[3].value:=QuSystem2syscode.AsInteger;
    QuNMenu.Open;
   end;
  QuMenu.Close;
  QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
  QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
  QuMenu.Open;
end;

  if QuMenu.IsEmpty then
   begin
    SpeedButton4.Enabled:=false;
    SpeedButton8.Enabled:=false;
   end
    else
     begin
      SpeedButton4.Enabled:=true;
      SpeedButton8.Enabled:=true;
     end;

  if QuNMenu.IsEmpty then
   begin
   SpeedButton3.Enabled:=false;
   SpeedButton7.Enabled:=false;
   end
    else
     begin
      SpeedButton3.Enabled:=true;
      SpeedButton7.Enabled:=true;
     end;
end;

procedure TUserM.SpeedButton8Click(Sender: TObject);
begin
if not QuMenu.IsEmpty then
begin
  QuMenu.Close;
  QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
  QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
  QuMenu.Open;
  while Not(QuMenu.IsEmpty) do
   begin
    QuMenu.First;
    qudelmenu.Parameters[0].Value:=quusermemp_no.AsString;
    qudelmenu.Parameters[1].Value:=qusystem2syscode.AsInteger;
    qudelmenu.Parameters[2].Value:=QuMenuMCode.AsInteger;
    qudelmenu.ExecSQL;
    QuMenu.Close;
    QuMenu.Parameters[0].Value:=QuUserMEmp_No.AsString;
    QuMenu.Parameters[1].Value:=QuSystem2syscode.AsInteger;
    QuMenu.Open;
   end;
  QuNMenu.close;
  QuNMenu.Prepared;
  QuNMenu.Parameters[0].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[1].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Parameters[2].value:=quusermemp_no.asstring;
  QuNMenu.Parameters[3].value:=QuSystem2syscode.AsInteger;
  QuNMenu.Open;
end;

  if QuMenu.IsEmpty then
   begin
    SpeedButton4.Enabled:=false;
    SpeedButton8.Enabled:=false;
   end
    else
     begin
      SpeedButton4.Enabled:=true;
      SpeedButton8.Enabled:=true;
     end;

  if QuNMenu.IsEmpty then
   begin
   SpeedButton3.Enabled:=false;
   SpeedButton7.Enabled:=false;
   end
    else
     begin
      SpeedButton3.Enabled:=true;
      SpeedButton7.Enabled:=true;
     end;

end;

procedure TUserM.FormShow(Sender: TObject);
Var
 x : integer;
begin
 SetFocus;
end;

procedure TUserM.fcButtonGroup1fcImageBtn1Click(Sender: TObject);
begin
 PageControl1.ActivePageIndex:=0;
end;

procedure TUserM.fcButtonGroup1fcImageBtn2Click(Sender: TObject);
begin
 PageControl1.ActivePageIndex:=1;
end;

procedure TUserM.FormCreate(Sender: TObject);
begin
 PageControl1.ActivePage:=TabSheet1;
end;

end.
