unit fmopform;

interface

uses Windows, SysUtils, Classes,  Controls, Buttons, StdCtrls,
  DBCtrls, ExtCtrls, Grids, DBGrids,forms,db, DBTables,dialogs, ADODB,
  SetForm, RSqllookup, RSqlButton, RSqlEdit,Messages, SmoothShow, XPMenu,variants,BaseFrm;

type
  Topform = class(TBaseForm)
    Panel2: TPanel;
    QuAccess: TADOQuery;
    dsaccess: TDataSource;
    QuUp: TADOQuery;
    QuSystem: TADOQuery;
    dssystem: TDataSource;
    FormInitializer1: TFormInitializer;
    QuAccessMCode: TIntegerField;
    QuAccessSysCode: TIntegerField;
    QuAccessMDesc: TStringField;
    QuAccessMNum: TStringField;
    QuAccessExTag: TSmallintField;
    QuAccessNewTag: TSmallintField;
    QuAccessEditTag: TSmallintField;
    QuAccessDelTag: TSmallintField;
    QuAccessPrintTag: TSmallintField;
    QuAccessSrchTag: TSmallintField;
    QuAccessPrevTag: TSmallintField;
    QuAccessNextTag: TSmallintField;
    QuAccessRunTag: TSmallintField;
    QuAccessListTag: TSmallintField;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    cbsystem: TRSqlDbLookup;
    Sg: TStringGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    SpeedButton3: TSpeedButton;
    Panel10: TPanel;
    SpeedButton6: TSpeedButton;
    Panel12: TPanel;
    SpeedButton8: TSpeedButton;
    Panel13: TPanel;
    Edit1: TEdit;
    RSqlEdit1: TRSqlEdit;
    Label1: TLabel;
    QuSystemsyscode: TIntegerField;
    QuSystemDescr: TStringField;
    bbOk: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QuAccessAfterScroll(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure cbsystemClick(Sender: TObject);
    procedure SgSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SgKeyPress(Sender: TObject; var Key: Char);
    procedure SgMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RSqlEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    { Private declarations }
  public
   DefCdVar:Longint;
   mde:integer;
   Cmpn:string[4];
   LL:array[1.. 50] of string;
   R,C : integer;
   MCodes : Array of integer;
   procedure EnDisItem(ss:string);
   procedure InitIt;
   procedure ClearL;
    { Public declarations }
  end;

var
  opform: Topform;

implementation

uses DabDmdle, fmUserD, fmUsrDef, define;

{$R *.DFM}

procedure Topform.InitIt;
begin

  end;


procedure Topform.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure Topform.ClearL;
begin
end;
procedure Topform.EnDisItem(ss:string);
begin
{  if ss[1]='1' then chNewTag.Enabled:=true
  else chNewTag.Enabled:=false;

  if ss[2]='1' then chEditTag.Enabled:=true
  else chEditTag.Enabled:=false;

  if ss[3]='1' then chDelTag.Enabled:=true
  else chDelTag.Enabled:=false;

  if ss[4]='1' then chNextTag.Enabled:=true
  else chNextTag.Enabled:=false;

  if ss[5]='1' then chPrevTag.Enabled:=true
  else chPrevTag.Enabled:=false;

  if ss[6]='1' then chSrchTag.Enabled:=true
  else chSrchTag.Enabled:=false;

//  if ss[7]='1' then chListTag.Enabled:=true
//  else chListTag.Enabled:=false;

  if ss[8]='1' then chPrintTag.Enabled:=true
  else chPrintTag.Enabled:=false;

  if ss[9]='1' then chRunTag.Enabled:=true
  else chRunTag.Enabled:=false;}
end;

procedure Topform.FormShow(Sender: TObject);
begin
  FormInitializer1.Execute;
  QuSystem.close;
  QuSystem.Parameters[0].Value:=DabData.empno;
  if DabData.master then  qusystem.Parameters[1].Value:=1
  else  qusystem.Parameters[1].Value:=0;
  QuSystem.open;
  QuAccess.close;
  QuAccess.Prepared;
  QuAccess.Parameters[0].Value:=0;
  QuAccess.Parameters[1].Value:=DabData.empno;
  QuAccess.Parameters[2].Value:=cbsystem.KeyValue;
  QuAccess.open;
  bbOk.Enabled:=False;
  Sg.Cells[0,0]:='                                              „‰‹‹‹‹ÊÂ‹‹‹«Ì ”Ì‹‹‹‹” „';
end;

procedure Topform.QuAccessAfterScroll(DataSet: TDataSet);
begin
{chruntag.Checked:=False;chruntag.enabled:=True;
chedittag.Checked:=False;chedittag.enabled:=True;
chnewtag.Checked:=False;chnewtag.enabled:=True;
chprevtag.Checked:=False;chprevtag.enabled:=True;
chprinttag.Checked:=False;chprinttag.enabled:=True;
chsrchtag.Checked:=False;chsrchtag.enabled:=True;
chnexttag.Checked:=False;chnexttag.enabled:=True;
chdeltag.Checked:=False;chdeltag.enabled:=True;

if mde=1 then
begin
end
else
begin
 chRuntag.checked:=Boolean(quaccessruntag.asInteger);
 chedittag.checked:=Boolean(quaccessedittag.asinteger);
 chnewtag.checked:=Boolean(QuAccessnewtag.asinteger);
 chprevtag.checked:=Boolean(QuAccessprevtag.asinteger);
 chdeltag.checked:=Boolean(QuAccessdeltag.asinteger);
 chprinttag.checked:=Boolean(QuAccessprinttag.asinteger);
 chsrchtag.checked:=Boolean(QuAccesssrchtag.asinteger);
 chnexttag.checked:=Boolean(QuAccessnexttag.asinteger);
end;
}
end;

procedure Topform.DBGrid1Enter(Sender: TObject);
begin
 (sender as tdbgrid).color:=ClActiveGrid;
end;

procedure Topform.DBGrid1Exit(Sender: TObject);
begin
 (sender as tdbgrid).color:=CldeActiveGrid;

end;

procedure Topform.cbsystemClick(Sender: TObject);
Var
a1,a2,a3,a4,a5,a6,a7,a8 : Boolean;
begin
  QuAccess.close;
  QuAccess.Prepared;
  QuAccess.Parameters[0].Value:=cbsystem.KeyValue;
  QuAccess.Parameters[1].Value:=dabdata.empno;
  QuAccess.Parameters[2].Value:=cbsystem.KeyValue;
  QuAccess.open;

  Sg.RowCount:=2;
  Sg.FixedRows:=1;
  Sg.RePaint;

  QuAccess.First;
  SetLength(MCodes,QuAccess.RecordCount);
  R:=1;
  C:=1;
  While Not(QuAccess.Eof) do
   begin
    Sg.Cells[0,R]:=QuAccessMDesc.AsString;
    a1:=Boolean(QuAccessnewtag.asinteger);
    a2:=Boolean(quaccessedittag.asinteger);
    a3:=Boolean(QuAccessdeltag.asinteger);
    a6:=Boolean(QuAccessprinttag.asinteger);
    a8:=Boolean(quaccessruntag.asInteger);
    if a1 then Sg.Cells[1,R]:=' X' else Sg.Cells[1,R]:='';
    if a2 then Sg.Cells[2,R]:=' X' else Sg.Cells[2,R]:='';
    if a3 then Sg.Cells[3,R]:=' X' else Sg.Cells[3,R]:='';
    if a6 then Sg.Cells[4,R]:=' X' else Sg.Cells[4,R]:='';
    if a8 then Sg.Cells[5,R]:=' X' else Sg.Cells[5,R]:='';

    MCodes[R-1]:=QuAccessMCode.AsInteger;
    R:=R+1;
    Sg.RowCount:=Sg.RowCount+1;
    QuAccess.Next;
   end;
  Sg.RowCount:=Sg.RowCount-1;

  if QuAccess.RecordCount<=0 then bbOk.Enabled:=False else bbOk.Enabled:=True;
  Sg.Repaint;
end;

procedure Topform.SgSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 R:=ARow;
 C:=ACol;
end;

procedure Topform.SgKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key = #32) and (C<>0) and (QuAccess.RecordCount>0)) then
 begin
  if Sg.Cells[C,R]=' X' then
   Sg.Cells[C,R]:='' else
    Sg.Cells[C,R]:=' X';
 end;
end;

procedure Topform.SgMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button=mbLeft then
if (C<>0) and (QuAccess.RecordCount>0) then
 begin
  if Sg.Cells[C,R]=' X' then
   Sg.Cells[C,R]:='' else
    Sg.Cells[C,R]:=' X';
 end;
end;

procedure Topform.RSqlEdit1Change(Sender: TObject);
Var
  i : integer;
begin
if CbSystem.KeyValue<>Null then
begin
 QuAccess.Locate('MDesc',RSqlEdit1.Text,[loPartialKey]);
 for i:=1 to Sg.RowCount-1 do
  if MCodes[i-1]=QuAccessMCode.AsInteger then Sg.Row:=i;
end;
end;

procedure Topform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure Topform.FormActivate(Sender: TObject);
Var
 Mes : TMessage;
begin
 Mes.Msg:=FORM_STATE;
 Mes.Lparam:=9;
 Application.MainForm.Dispatch(Mes);
 Width:=785;
 Height:=471;
 Left:=0;
 Top:=0;
end;

procedure Topform.bbOkClick(Sender: TObject);
Var
 i : integer;
begin
 Panel13.Visible:=True;
 Panel13.Refresh;
 for i:=1 to Sg.RowCount-1 do
  begin
   QuUp.Parameters[7].Value:=MCodes[i-1];
   QuUp.Parameters[0].Value:=1;

   if Sg.Cells[1,i]=' X' then c:=1 else c:=0;
   QuUp.Parameters[1].Value:=c;

   if Sg.Cells[2,i]=' X' then c:=1 else c:=0;
   QuUp.Parameters[2].Value:=c;

   if Sg.Cells[3,i]=' X' then c:=1 else c:=0;
   QuUp.Parameters[3].Value:=c;

   if Sg.Cells[4,i]=' X' then c:=1 else c:=0;
   QuUp.Parameters[4].Value:=c;

   if Sg.Cells[5,i]=' X' then c:=1 else c:=0;
   QuUp.Parameters[5].Value:=c;

   QuUp.Parameters[6].Value:=2;

   DabData.ADOC.BeginTrans;

   try
   QuUp.ExecSQL;
   Dabdata.adoc.CommitTrans;
   except
   DabData.ADOC.RollbackTrans;
   end;
  quaccess.close;
  quaccess.Prepared;
  quaccess.Parameters[0].Value:=cbsystem.KeyValue;
  quaccess.Parameters[1].Value:=dabdata.empno;
  quaccess.Parameters[2].Value:=cbsystem.KeyValue;
  quaccess.open;
  if QuAccess.RecordCount<=0 then bbOk.Enabled:=False else bbOk.Enabled:=True;
  end;
Close;

end;

end.
