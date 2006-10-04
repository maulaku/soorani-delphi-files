unit fmAcc;

interface

uses Windows, SysUtils, Classes,  Controls, Buttons, StdCtrls,
  DBCtrls, ExtCtrls, Grids, DBGrids,forms,db, DBTables,dialogs, ADODB,Graphics,
  RSqlEdit, SmoothShow, XPMenu,BaseFrm;

type
  TAcc = class(TBaseForm)
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    bbOk: TBitBtn;
    Panel5: TPanel;
    quaccess: TADOQuery;
    dsaccess: TDataSource;
    quaccessMCode: TIntegerField;
    quaccessSysCode: TIntegerField;
    quaccessMDesc: TStringField;
    quaccessMNum: TStringField;
    quaccessExTag: TSmallintField;
    quaccessNewTag: TSmallintField;
    quaccessEditTag: TSmallintField;
    quaccessDelTag: TSmallintField;
    quaccessPrintTag: TSmallintField;
    quaccessSrchTag: TSmallintField;
    quaccessPrevTag: TSmallintField;
    quaccessNextTag: TSmallintField;
    quaccessRunTag: TSmallintField;
    quaccessListTag: TSmallintField;
    quins: TADOQuery;
    QuUp: TADOQuery;
    Sg: TStringGrid;
    Panel12: TPanel;
    SpeedButton8: TSpeedButton;
    Panel10: TPanel;
    SpeedButton6: TSpeedButton;
    Panel7: TPanel;
    SpeedButton3: TSpeedButton;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    SpeedButton9: TSpeedButton;
    Label1: TLabel;
    Panel13: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    RSqlEdit1: TRSqlEdit;
    procedure BitBtn5Click(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure lbMenuSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormShow(Sender: TObject);
    procedure quaccessAfterScroll(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure SgSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SgKeyPress(Sender: TObject; var Key: Char);
    procedure SgMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RSqlEdit1Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
   Rec : TRect;
   MCodes : Array of integer;
   DefCdVar:Longint;
   R,C : integer;
   loc : string;
   mde:integer;
   Cmpn:string[4];
   LL:array[1.. 50] of string;
   procedure EnDisItem(ss:string);
   procedure InitIt;
   procedure ClearL;
    { Public declarations }
  end;

var
  Acc: TAcc;

implementation

uses DabDmdle, fmUserD, fmUsrDef, define;

{$R *.DFM}

procedure TAcc.InitIt;
begin

  end;


procedure TAcc.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TAcc.bbOkClick(Sender: TObject);
var
 c : smallint;
 i : integer;
begin
 Panel13.Visible:=True;
 Panel13.Refresh;
 if mde=1 then
  begin
  DabData.ADOC.BeginTrans;
  Try
  for i:=1 to Sg.RowCount-1 do
   begin
    if Sg.Cells[0,i]=' X' then
    begin
    quins.Parameters[0].Value:=UsrDef.empno;
    quins.Parameters[1].Value:=MCodes[i-1];
    quins.Parameters[2].Value:=1;

    if Sg.Cells[2,i]='---' then c:=2
     else if Sg.Cells[2,i]=' X' then c:=1 else c:=0;
    quins.Parameters[3].Value:=c;

    if Sg.Cells[3,i]='---' then c:=2
     else if Sg.Cells[3,i]=' X' then c:=1 else c:=0;
    quins.Parameters[4].Value:=c;

    if Sg.Cells[4,i]='---' then c:=2
     else if Sg.Cells[4,i]=' X' then c:=1 else c:=0;
    quins.Parameters[5].Value:=c;

    if Sg.Cells[5,i]='---' then c:=2
     else if Sg.Cells[5,i]=' X' then c:=1 else c:=0;
    quins.Parameters[6].Value:=c;

    if Sg.Cells[6,i]='---' then c:=2
     else if Sg.Cells[6,i]=' X' then c:=1 else c:=0;
    quins.Parameters[7].Value:=c;

    quins.Parameters[8].Value:=2;
    quins.ExecSQL;
    end;
    end;

    dabdata.adoc.CommitTrans;
    except
    DabData.ADOC.RollbackTrans;
    end;

   acc.QuAccess.close;
   acc.QuAccess.Prepared;
   acc.QuAccess.Parameters[0].Value:=UsrDef.syscode;
   acc.QuAccess.Parameters[1].Value:=UsrDef.empno;
   acc.QuAccess.Parameters[2].Value:=dabdata.empno;
   acc.QuAccess.Parameters[3].Value:=UsrDef.syscode;
   acc.QuAccess.open;
  end
  else
  begin
  DabData.ADOC.BeginTrans;
  Try
  for i:=1 to Sg.RowCount-1 do
   begin
    if Sg.Cells[0,i]=' X' then
    begin
    QuUp.Parameters[0].Value:=1;

    if Sg.Cells[2,i]='---' then c:=2
     else if Sg.Cells[2,i]=' X' then c:=1 else c:=0;
    QuUp.Parameters[1].Value:=c;

    if Sg.Cells[3,i]='---' then c:=2
     else if Sg.Cells[3,i]=' X' then c:=1 else c:=0;
    QuUp.Parameters[2].Value:=c;

    if Sg.Cells[4,i]='---' then c:=2
     else if Sg.Cells[4,i]=' X' then c:=1 else c:=0;
    QuUp.Parameters[3].Value:=c;

    if Sg.Cells[5,i]='---' then c:=2
     else if Sg.Cells[5,i]=' X' then c:=1 else c:=0;
    QuUp.Parameters[4].Value:=c;

    if Sg.Cells[6,i]='---' then c:=2
     else if Sg.Cells[6,i]=' X' then c:=1 else c:=0;
    QuUp.Parameters[5].Value:=c;

    QuUp.Parameters[6].Value:=2;
    QuUp.Parameters[7].Value:=UsrDef.empno;
    QuUp.Parameters[8].Value:=MCodes[i-1];
    QuUp.ExecSQL;
    end;
   end;

   dabdata.adoc.CommitTrans;
   except
   DabData.ADOC.RollbackTrans;
   end;
  end;
Close;
end;

procedure TAcc.ClearL;
begin
end;
procedure TAcc.lbMenuSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 if mde=1 then
  begin
//  if lbMenu.cells[2,Arow]<>'' then
//   EnDisItem(lbMenu.cells[2,Arow])
//  else
//   EnDisItem('000000000');
  end;

end;

procedure TAcc.EnDisItem(ss:string);
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

procedure TAcc.FormShow(Sender: TObject);
Var
a1,a2,a3,a4,a5,a6,a7,a8 : Boolean;
begin
 Sg.Repaint;
if mde=1 then
 begin
  QuAccess.close;
  QuAccess.Prepared;
  QuAccess.Parameters[0].Value:=UsrDef.syscode;
  QuAccess.Parameters[1].Value:=UsrDef.empno;
  QuAccess.Parameters[2].Value:=dabdata.empno;
  QuAccess.Parameters[3].Value:=UsrDef.syscode;
  QuAccess.open;

  if QuAccess.IsEmpty then
   begin
    Sg.Visible:=False;
    Panel1.Visible:=False;
    Panel6.Visible:=False;
    Panel3.Visible:=False;
    Panel7.Visible:=False;
    Panel10.Visible:=False;
    Panel12.Visible:=False;
   end
  else
  begin
  Sg.RowCount:=2;
  Sg.FixedRows:=1;
  Sg.RePaint;

  QuAccess.First;
  SetLength(MCodes,QuAccess.RecordCount);
  R:=1;
  C:=1;
  While Not(QuAccess.Eof) do
   begin
    Sg.Cells[1,R]:=QuAccessMDesc.AsString;
    a1:=Boolean(QuAccessnewtag.asinteger);
    a2:=Boolean(quaccessedittag.asinteger);
    a3:=Boolean(QuAccessdeltag.asinteger);
    a6:=Boolean(QuAccessprinttag.asinteger);
    a8:=Boolean(quaccessruntag.asInteger);

    if Not(a1) then Sg.Cells[2,R]:='---';
    if Not(a2) then Sg.Cells[3,R]:='---';
    if Not(a3) then Sg.Cells[4,R]:='---';
    if Not(a6) then Sg.Cells[5,R]:='---';
    if Not(a8) then Sg.Cells[6,R]:='---';


    MCodes[R-1]:=QuAccessMCode.AsInteger;
    R:=R+1;
    Sg.RowCount:=Sg.RowCount+1;
    QuAccess.Next;
   end;
  Sg.RowCount:=Sg.RowCount-1;

  if QuAccess.RecordCount<=0 then bbOk.Enabled:=False else bbOk.Enabled:=True;
  Sg.Repaint;
  Sg.Cells[1,0]:='                                             ãäÜÜÜÜæåÜÜÜÇí ÓíÜÜÜÜÓÊã';
  end;
 end
 else
 begin
  quaccess.close;
  quaccess.Prepared;
  quaccess.Parameters[1].Value:=UsrDef.EmpNo;
  quaccess.Parameters[0].Value:=UsrDef.syscode;
  quaccess.open;
  if QuAccess.IsEmpty then
   begin
    Sg.Visible:=False;
    Panel1.Visible:=False;
    Panel6.Visible:=False;
    Panel3.Visible:=False;
    Panel7.Visible:=False;
    Panel10.Visible:=False;
    Panel12.Visible:=False;
   end
  else
  begin //Mde=2
  Sg.RowCount:=2;
  Sg.FixedRows:=1;
  Sg.RePaint;

  QuAccess.First;
  SetLength(MCodes,QuAccess.RecordCount);
  R:=1;
  C:=1;
  While Not(QuAccess.Eof) do
   begin
    Sg.Cells[1,R]:=QuAccessMDesc.AsString;

    if QuAccessnewtag.asinteger=2 then
     Sg.Cells[2,R]:='---' else
      if QuAccessnewtag.asinteger=1 then
        Sg.Cells[2,R]:=' X' else
          Sg.Cells[2,R]:=' O';

    if QuAccessedittag.asinteger=2 then
     Sg.Cells[3,R]:='---' else
      if QuAccessedittag.asinteger=1 then
        Sg.Cells[3,R]:=' X' else
          Sg.Cells[3,R]:=' O';

    if QuAccessdeltag.asinteger=2 then
     Sg.Cells[4,R]:='---' else
      if QuAccessdeltag.asinteger=1 then
        Sg.Cells[4,R]:=' X' else
          Sg.Cells[4,R]:=' O';


    if QuAccessprinttag.asinteger=2 then
     Sg.Cells[5,R]:='---' else
      if QuAccessprinttag.asinteger=1 then
        Sg.Cells[5,R]:=' X' else
          Sg.Cells[5,R]:=' O';

    if QuAccessruntag.asinteger=2 then
     Sg.Cells[6,R]:='---' else
      if QuAccessruntag.asinteger=1 then
        Sg.Cells[6,R]:=' X' else
          Sg.Cells[6,R]:=' O';

    Sg.Cells[0,R]:=' X';

    MCodes[R-1]:=QuAccessMCode.AsInteger;
    R:=R+1;
    Sg.RowCount:=Sg.RowCount+1;
    QuAccess.Next;
   end;
  Sg.RowCount:=Sg.RowCount-1;

  if QuAccess.RecordCount<=0 then bbOk.Enabled:=False else bbOk.Enabled:=True;
  Sg.Repaint;
  Sg.Cells[1,0]:='                                             ãäÜÜÜÜæåÜÜÜÇí ÓíÜÜÜÜÓÊã';
  end;
 RSqlEdit1.Text:=Loc;
 sg.Col:=1;
 Sg.SetFocus;
 end;
 if QuAccess.RecordCount<=0 then bbOk.Enabled:=False else bbOk.Enabled:=True;

end;

procedure TAcc.quaccessAfterScroll(DataSet: TDataSet);
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
 if quaccessrunTag.Asinteger=1 then chRunTag.Enabled:=true
 else chRunTag.Enabled:=false;
 if quaccesseditTag.Asinteger=1 then cheditTag.Enabled:=true
 else cheditTag.Enabled:=false;
 if quaccessnewTag.Asinteger=1 then chnewTag.Enabled:=true
 else chnewTag.Enabled:=false;
 if quaccessprevTag.Asinteger=1 then chprevTag.Enabled:=true
 else chprevTag.Enabled:=false;
 if quaccessdelTag.Asinteger=1 then chdelTag.Enabled:=true
 else chdelTag.Enabled:=false;
 if quaccessprintTag.Asinteger=1 then chprintTag.Enabled:=true
 else chprintTag.Enabled:=false;
 if quaccesssrchTag.Asinteger=1 then chsrchTag.Enabled:=true
 else chsrchTag.Enabled:=false;
 if quaccessnextTag.Asinteger=1 then chnextTag.Enabled:=true
 else chnextTag.Enabled:=false;
end
else
begin
 if quaccessrunTag.Asinteger=2 then chRuntag.enabled:=False
 else chRuntag.checked:=Boolean(quaccessruntag.asInteger);

 if quaccesseditTag.Asinteger=2 then chedittag.enabled:=False
 else chedittag.checked:=Boolean(quaccessedittag.asinteger);

 if QuAccessnewTag.Asinteger=2 then chnewtag.enabled:=False
 else chnewtag.checked:=Boolean(QuAccessnewtag.asinteger);

 if QuAccessprevTag.Asinteger=2 then chprevtag.enabled:=False
 else chprevtag.checked:=Boolean(QuAccessprevtag.asinteger);

 if QuAccessdelTag.Asinteger=2 then chdeltag.enabled:=False
 else chdeltag.checked:=Boolean(QuAccessdeltag.asinteger);

 if QuAccessprintTag.Asinteger=2 then chprinttag.enabled:=False
 else chprinttag.checked:=Boolean(QuAccessprinttag.asinteger);

 if QuAccesssrchTag.Asinteger=2 then chsrchtag.enabled:=False
 else chsrchtag.checked:=Boolean(QuAccesssrchtag.asinteger);

 if QuAccessnextTag.Asinteger=2 then chnexttag.enabled:=False
 else chnexttag.checked:=Boolean(QuAccessnexttag.asinteger);

end;}

end;

procedure TAcc.DBGrid1Enter(Sender: TObject);
begin
 (sender as tdbgrid).color:=ClActiveGrid;
end;

procedure TAcc.DBGrid1Exit(Sender: TObject);
begin
 (sender as tdbgrid).color:=CldeActiveGrid;

end;

procedure TAcc.SgSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 R:=ARow;
 C:=ACol;
end;

procedure TAcc.SgKeyPress(Sender: TObject; var Key: Char);
begin
if ((Key = #32) and (C=0) and (QuAccess.RecordCount>0)) then
 begin
  if Sg.Cells[C,R]=' X' then
   Sg.Cells[C,R]:='' else
    Sg.Cells[C,R]:=' X';
 end;
if ((Key = #32) and (C>=2) and (QuAccess.RecordCount>0) and (Sg.Cells[C,R]<>'---')) then
 begin
  if Sg.Cells[C,R]='' then
   Sg.Cells[C,R]:=' X' else
    if Sg.Cells[C,R]=' X' then
      Sg.Cells[C,R]:=' O' else
        Sg.Cells[C,R]:=' X';
 end;
end;

procedure TAcc.SgMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if Button=mbLeft then
if (C=0) and (QuAccess.RecordCount>0) then
 begin
  if Sg.Cells[C,R]=' X' then
   Sg.Cells[C,R]:='' else
    Sg.Cells[C,R]:=' X';
 end;
if Button=mbLeft then
if (C>=2) and (QuAccess.RecordCount>0) and (Sg.Cells[C,R]<>'---') then
 begin
  if Sg.Cells[C,R]='' then
   Sg.Cells[C,R]:=' X' else
    if Sg.Cells[C,R]=' X' then
      Sg.Cells[C,R]:=' O' else
        Sg.Cells[C,R]:=' X';
 end;
end;

procedure TAcc.RSqlEdit1Change(Sender: TObject);
Var
 i : integer;
begin
QuAccess.Locate('MDesc',RSqlEdit1.Text,[loPartialKey]);
for i:=1 to Sg.RowCount-1 do
 if MCodes[i-1]=QuAccessMCode.AsInteger then Sg.Row:=i;
end;

procedure TAcc.SpeedButton9Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  Sg.Cells[0,i]:=' X';
end;

procedure TAcc.SpeedButton1Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[2,i]<>'---' then
   Sg.Cells[2,i]:=' X';
end;

procedure TAcc.SpeedButton2Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[3,i]<>'---' then
   Sg.Cells[3,i]:=' X';
end;

procedure TAcc.SpeedButton3Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[4,i]<>'---' then
   Sg.Cells[4,i]:=' X';
end;

procedure TAcc.SpeedButton4Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[5,i]<>'---' then
   Sg.Cells[5,i]:=' X';
end;

procedure TAcc.SpeedButton5Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[6,i]<>'---' then
   Sg.Cells[6,i]:=' X';
end;

procedure TAcc.SpeedButton6Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[5,i]<>'---' then
   Sg.Cells[5,i]:=' X';
end;

procedure TAcc.SpeedButton7Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[8,i]<>'---' then
   Sg.Cells[8,i]:=' X';
end;

procedure TAcc.SpeedButton8Click(Sender: TObject);
Var
 i : integer;
begin
 for i:=1 to Sg.RowCount-1 do
  if Sg.Cells[6,i]<>'---' then
   Sg.Cells[6,i]:=' X';
end;

end.
