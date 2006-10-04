unit fmUsrDef;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids,
  ADODB, SetForm, RSQLComboBox, RSqlEdit, RSqlMaskEdit, RSqllookup,
  SmoothShow, XPMenu,Basefrm;

type
  TUsrDef = class(TBaseForm)
    Panel2: TPanel;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    bbOk: TBitBtn;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    quemp: TADOQuery;
    dsemp: TDataSource;
    quempstr: TStringField;
    quempemp_no: TStringField;
    quempname: TStringField;
    quempfamily: TStringField;
    QuInsertUser: TADOQuery;
    quempemp_photo: TBlobField;
    quupdateuser: TADOQuery;
    FormInitializer1: TFormInitializer;
    Panel5: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Label1: TLabel;
    Panel3: TPanel;
    edpass: TRSqlEdit;
    edstar: TRSqlMaskEdit;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    lbEmp: TLabel;
    dblEmpInf: TRSqlDbLookup;
    cbstat: TRSqlComboBox;
    cbfm: TRSqlComboBox;
    edetar: TRSqlMaskEdit;
    edinfo: TRSqlEdit;
    dsListAcc: TDataSource;
    quListAcc: TADOQuery;
    quDelAcc: TADOQuery;
    quListAccEmp_NO: TStringField;
    quListAccMCode: TIntegerField;
    quListAccextag: TSmallintField;
    quListAccnewtag: TSmallintField;
    quListAccedittag: TSmallintField;
    quListAccdeltag: TSmallintField;
    quListAccprinttag: TSmallintField;
    quListAccsrchtag: TSmallintField;
    quListAccprevtag: TSmallintField;
    quListAccnexttag: TSmallintField;
    quListAccruntag: TSmallintField;
    quListAcclisttag: TSmallintField;
    quListAccmdesc: TStringField;
    quListAccnew: TStringField;
    quListAccedit: TStringField;
    quListAccdel: TStringField;
    quListAccPrint: TStringField;
    quListAccsrch: TStringField;
    quListAccPrev: TStringField;
    quListAccnext: TStringField;
    quListAccrun: TStringField;
    quListAcclist: TStringField;
    procedure bbOkClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edFamilChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edNameKeyPress(Sender: TObject; var Key: Char);
    procedure edStar1KeyPress(Sender: TObject; var Key: Char);
    procedure edEtar1KeyPress(Sender: TObject; var Key: Char);
    procedure edEmZapKeyPress(Sender: TObject; var Key: Char);
    procedure quListAccCalcFields(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure edpassChange(Sender: TObject);
    procedure dblEmpInfClick(Sender: TObject);
    procedure dblEmpInfCloseUp(Sender: TObject);
    procedure dblEmpInfExit(Sender: TObject);
    procedure edetarChange(Sender: TObject);
  private
    { Private declarations }
  public
   mde,syscode :integer;
   empno:string;
    { Public declarations }
  end;

var
  UsrDef: TUsrDef;

implementation

uses DabDmdle, fmAcc, fmListF, define;

{$R *.DFM}

procedure TUsrDef.bbOkClick(Sender: TObject);
begin
if mde=1 then
 begin
  quInsertUser.parameters[0].value:=dblEmpInf.KeyValue;
  quInsertUser.parameters[1].value:=edStar.text;
  quInsertUser.parameters[2].value:=edEtar.text;
  quInsertUser.parameters[3].value:=edPass.text;
  quInsertUser.parameters[4].value:=cbfm.itemindex;
  quInsertUser.parameters[5].value:=cbstat.itemindex;
  quInsertUser.parameters[6].value:=syscode;
  Try
    quInsertUser.ExecSql;
  except
    showmessage2('«‘ﬂ«· œ— À»  ﬂ«—»—');
  end;
 end
else //mde<>1
 begin
  quUpdateUser.parameters[0].value:=edStar.text;
  quUpdateUser.parameters[1].value:=edEtar.text;
  quUpdateUser.parameters[2].value:=edPass.text;
  quUpdateUser.parameters[3].value:=cbfm.itemindex;
  quUpdateUser.parameters[4].value:=cbstat.itemindex;
  quUpdateUser.parameters[5].value:=empno;
  quUpdateUser.parameters[6].value:=syscode;
  Try
    quUpdateUser.ExecSql;
  except
    showmessage2('«‘ﬂ«· œ— À»  ﬂ«—»—');
  end;
 end;
  Close;
end;

procedure TUsrDef.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TUsrDef.BitBtn1Click(Sender: TObject);
var bk:tbookmark;
begin
  bk:=quListAcc.GetBookmark;
  Acc:=TAcc.Create(Application);
  Acc.mde:=2;
  Acc.panel2.visible:=true;
  Acc.quaccess.SQL.Text:='select Access.*,menues.mdesc,menues.syscode,menues.mnum from Access,menues where menues.syscode=:p0 and access.mcode=menues.mcode and access.emp_no=:p1 order by Access.MCode';
  Acc.Loc:=quListAccmdesc.AsString;
  Acc.showmodal;
  Acc.Free;
  quListAcc.Close;
  quListAcc.Parameters[0].value:=empno;
  quListAcc.Parameters[1].Value:=syscode;
  quListAcc.Open;
  quListAcc.GotoBookmark(bk);
  quListAcc.FreeBookmark(bk);
  DbGrid1.SetFocus;

 if quListAcc.recordcount>0 then
  begin
   bitbtn1.Enabled:=true;
   bitbtn3.Enabled:=true;
  end
  else
  begin
   BitBtn1.EnableD:=False;
   BitBtn3.EnableD:=False;
  end;
end;

procedure TUsrDef.FormShow(Sender: TObject);
begin
FormInitializer1.Execute;
QuEmp.Close;
QuEmp.Parameters[0].Value:=syscode;
QuEmp.Open;


 if (mde = 2) then
   begin
     Panel3.Enabled:=True;
     bitbtn2.Enabled:=true;
     bitbtn1.Enabled:=false;
     bitbtn3.Enabled:=false;
     edInfo.Visible := true;
     dblempinf.Visible := false;
     DBGrid1.SetFocus;
        acc:=TAcc.Create(Application);
        acc.quaccess.SQL.Text:='select menues.* from menues where syscode=:p0 and menues.mcode not in (select access.mcode from access where access.emp_no=:p1) and menues.mcode in (select mcode from masters where (masters.emp_no=:p2 and masters.syscode=:p3) or 1=:p4)';
        acc.quaccess.SQL.Text:=acc.quaccess.SQL.Text+' order by Menues.MCode';
        acc.QuAccess.close;
        acc.QuAccess.Prepared;
        acc.QuAccess.Parameters[0].Value:=UsrDef.syscode;
        acc.QuAccess.Parameters[1].Value:=UsrDef.empno;
        if not DabData.master then
        acc.QuAccess.Parameters[2].Value:=dabdata.empno
        else
        acc.QuAccess.Parameters[2].Value:='-';
        acc.QuAccess.Parameters[3].Value:=UsrDef.syscode;
        Acc.quaccess.Parameters[4].DataType:=ftInteger;
        Acc.quaccess.Parameters[4].Direction:=pdInput;
        if DabData.master then
        acc.QuAccess.Parameters[4].Value:=1
        else
        acc.QuAccess.Parameters[4].Value:=0;
        acc.quaccess.Prepared;
        acc.QuAccess.open;
        if acc.QuAccess.ISempty then
        BitBtn2.Enabled:=false
        else
        BitBtn2.Enabled:=true;
        acc.free;
   end;
 if (mde = 1) then
   begin
    Panel3.Enabled:=True;
    bitbtn1.Enabled:=false;
    bitbtn2.Enabled:=false;
    bitbtn3.Enabled:=false;
    quemp.Close;
    quemp.Open;
    dblempinf.SetFocus;
    edstar.text:=DabData.disp_date;
    cbstat.itemindex:=0;
    cbfm.itemindex:=0;
    edetar.text:=inttostr(DabData.salvar)+'/12/29';
   end;
  quListAcc.close;
  quListAcc.Parameters[0].value:=empno; ;//Cdv;
  quListAcc.Parameters[1].value:=syscode;
  quListAcc.Open;
 if quListAcc.recordcount>0 then
  begin
   bitbtn1.Enabled:=true;
   bitbtn3.Enabled:=true;
  end
  else
  begin
   BitBtn1.EnableD:=False;
   BitBtn3.EnableD:=False;
  end;
end;

procedure TUsrDef.edFamilChange(Sender: TObject);
begin
 if (dblEmpInf.Text <> '') and (edpass.text<>'')  then
   bbOk.enabled:=true
 else
   bbOk.enabled:=false;
end;

procedure TUsrDef.BitBtn2Click(Sender: TObject);
begin
  Acc:=TAcc.Create(Application);
  Acc.mde:=1;
  Acc.panel2.visible:=true;
  acc.quaccess.SQL.Text:='select menues.* from menues where syscode=:p0 and menues.mcode not in (select access.mcode from access where access.emp_no=:p1) and menues.mcode in (select mcode from masters where (masters.emp_no=:p2 and masters.syscode=:p3) or 1=:p4)';
  acc.quaccess.SQL.Text:=acc.quaccess.SQL.Text+' order by Menues.MCode';
  acc.QuAccess.close;
  acc.QuAccess.Parameters[0].Value:=UsrDef.syscode;
  acc.QuAccess.Parameters[1].Value:=UsrDef.empno;
  if not DabData.master then
  acc.QuAccess.Parameters[2].Value:=dabdata.empno
  else
  acc.QuAccess.Parameters[2].Value:='-';
  acc.QuAccess.Parameters[3].Value:=UsrDef.syscode;
  Acc.quaccess.Parameters[4].DataType:=ftInteger;
  Acc.quaccess.Parameters[4].Direction:=pdInput;
  if DabData.master then
  acc.QuAccess.Parameters[4].Value:=1
  else
  acc.QuAccess.Parameters[4].Value:=0;
  acc.quaccess.Prepared;
  acc.QuAccess.open;
  Acc.showmodal;
  if acc.QuAccess.ISempty then
    BitBtn2.Enabled:=false
  else
    BitBtn2.Enabled:=true;
  Acc.Free;
  quListAcc.Close;
  quListAcc.Parameters[0].value:=empno;
  quListAcc.Parameters[1].Value:=syscode;
  quListAcc.Open;
 if quListAcc.recordcount>0 then
  begin
   bitbtn1.Enabled:=true;
   bitbtn3.Enabled:=true;
  end
  else
  begin
   BitBtn1.EnableD:=False;
   BitBtn3.EnableD:=False;
  end;

  DbGrid1.SetFocus;
end;


procedure TUsrDef.BitBtn3Click(Sender: TObject);
begin
   if quListAcc.RecordCount>0 then
    begin
      quDelAcc.Parameters[0].value:=empno;
      quDelAcc.Parameters[1].value:=quListAccMCode.asInteger;
      quDelAcc.ExecSQL;
      BitBtn2.Enabled:=True;
    end;
  quListAcc.Close;
  quListAcc.Parameters[0].value:=empno;
  quListAcc.Parameters[1].Value:=syscode;
  quListAcc.Open;
 if quListAcc.recordcount>0 then
  begin
   bitbtn1.Enabled:=true;
   bitbtn3.Enabled:=true;
  end
  else
  begin
   BitBtn1.EnableD:=False;
   BitBtn3.EnableD:=False;
  end;
  DbGrid1.SetFocus;
end;

procedure TUsrDef.edNameKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then  edStar.setfocus;
end;

procedure TUsrDef.edStar1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then  edEtar.setfocus;
end;

procedure TUsrDef.edEtar1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then  edPass.setfocus;
end;

procedure TUsrDef.edEmZapKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (BitBtn2.Enabled) then  BitBtn2.setfocus;
end;

procedure TUsrDef.quListAccCalcFields(DataSet: TDataSet);
begin

if quListAccnewtag.asinteger=0 then quListAccnew.Value:='O'
else if quListAccnewtag.asinteger=1 then quListAccnew.value:='X'
else quListAccnew.value:='-';

if quListAccedittag.asinteger=0 then quListAccedit.Value:='O'
else if quListAccedittag.asinteger=1 then quListAccedit.value:='X'
else quListAccedit.value:='-';

if quListAccdeltag.asinteger=0 then quListAccdel.Value:='O'
else if quListAccdeltag.asinteger=1 then quListAccdel.value:='X'
else quListAccdel.value:='-';

if quListAccprinttag.asinteger=0 then quListAccprint.Value:='O'
else if quListAccprinttag.asinteger=1 then quListAccprint.value:='X'
else quListAccprint.value:='-';

if quListAccsrchtag.asinteger=0 then quListAccsrch.Value:='O'
else if quListAccsrchtag.asinteger=1 then quListAccsrch.value:='X'
else quListAccsrch.value:='-';

if quListAccprevtag.asinteger=0 then quListAccprev.Value:='O'
else if quListAccprevtag.asinteger=1 then quListAccprev.value:='X'
else quListAccprev.value:='-';

if quListAccnexttag.asinteger=0 then quListAccnext.Value:='O'
else if quListAccnexttag.asinteger=1 then quListAccnext.value:='X'
else quListAccnext.value:='-';

if quListAccruntag.asinteger=0 then quListAccrun.Value:='O'
else if quListAccruntag.asinteger=1 then quListAccrun.value:='X'
else quListAccrun.value:='-';

if quListAcclisttag.asinteger=0 then quListAcclist.Value:='O'
else if quListAcclisttag.asinteger=1 then quListAcclist.value:='X'
else quListAcclist.value:='-';

end;

procedure TUsrDef.DBGrid1Enter(Sender: TObject);
begin
 (sender as tdbgrid).color:=$00a8ffff;
end;

procedure TUsrDef.DBGrid1Exit(Sender: TObject);
begin
 (sender as tdbgrid).color:=Cl3dLight;
end;

procedure TUsrDef.edpassChange(Sender: TObject);
begin
if mde=1 then
begin
 if (dblEmpInf.Text <> '') and (edpass.text<>'')  then
   bbOk.enabled:=true
 else
   bbOk.enabled:=false;
end
else
begin
 if (edpass.text<>'')  then
   bbOk.enabled:=true
 else
   bbOk.enabled:=false;
end;
end;

procedure TUsrDef.dblEmpInfClick(Sender: TObject);
begin
 if (dblEmpInf.Text <> '') and (edpass.text<>'')  then
   bbOk.enabled:=true
 else
   bbOk.enabled:=false;
end;

procedure TUsrDef.dblEmpInfCloseUp(Sender: TObject);
begin
 if (dblEmpInf.Text <> '') and (edpass.text<>'')  then
   bbOk.enabled:=true
 else
   bbOk.enabled:=false;
end;

procedure TUsrDef.dblEmpInfExit(Sender: TObject);
begin
 if (dblEmpInf.Text <> '') and (edpass.text<>'')  then
   bbOk.enabled:=true
 else
   bbOk.enabled:=false;
end;

procedure TUsrDef.edetarChange(Sender: TObject);
begin
 if Pos(' ',EdEtar.Text)=0 then
  if EdEtar.Text<EdSTar.Text then
   begin
    EdETar.Text:='';
    ShowMessage('œÊ»«—Â ”⁄Ì ﬂ‰Ìœ');
   end;
end;

end.
