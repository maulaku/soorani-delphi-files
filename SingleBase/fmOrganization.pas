unit fmOrganization;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs
  , define, UCommon, SetForm, DBCtrls, RSqllookup, StdCtrls, RSqlEdit,
  Grids, DBGrids, ExtCtrls, ComCtrls, RSqlButton, Db, ADODB, fcButton,
  fcImgBtn, fcClearPanel, fcButtonGroup;

type
  TOrganization = class(TForm)
    pgOrganization: TPageControl;
    tsPost: TTabSheet;
    tsUnit: TTabSheet;
    tsOrg: TTabSheet;
    paOrg: TPanel;
    dbgOrg: TDBGrid;
    paLookup1: TPanel;
    paUnit: TPanel;
    dbgUnit: TDBGrid;
    lcOrg: TRSqlDbLookup;
    FormInitializer1: TFormInitializer;
    paLookup2: TPanel;
    lcOrg2: TRSqlDbLookup;
    paPost: TPanel;
    dbgPost: TDBGrid;
    lcUnit: TRSqlDbLookup;
    dsOrg: TDataSource;
    quDelOrg: TADOQuery;
    dsUnit: TDataSource;
    quDelUnit: TADOQuery;
    dsPost: TDataSource;
    quDelPost: TADOQuery;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    Bevel1: TBevel;
    fcButtonGroup2: TfcButtonGroup;
    Band3: TfcImageBtn;
    Band2: TfcImageBtn;
    band1: TfcImageBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tsUnitShow(Sender: TObject);
    procedure tsPostShow(Sender: TObject);
    procedure lcOrgClick(Sender: TObject);
    procedure lcUnitClick(Sender: TObject);
    procedure lcOrg2Click(Sender: TObject);
    procedure lcOrgKeyPress(Sender: TObject; var Key: Char);
    procedure pgOrganizationChange(Sender: TObject);
    procedure band1Click(Sender: TObject);
    procedure Band2Click(Sender: TObject);
    procedure Band3Click(Sender: TObject);
    procedure dbgOrgEnter(Sender: TObject);
    procedure dbgOrgExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mode : smallint;
    NewKey,EditKey,DelKey : Boolean;
    procedure DelPost;
    procedure DelUnit;
    procedure DelOrg;
    procedure EditPost;
    procedure EditUnit;
    procedure EditOrg;
    procedure NewPost;
    procedure NewUnit;
    procedure NewOrg;
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  end;

var
  Organization: TOrganization;

implementation

uses DabDmdle, fmVerify, fmOrgInput, fmUnitInput, fmPostInput;

{$R *.DFM}

{ TJob }

procedure TOrganization.DoDelete(var mes: TMessage);
begin
 case (pgOrganization.ActivePageIndex) of
  0 : DelPost;
  1 : DelUnit;
  2 : DelOrg;
 end;
end;

procedure TOrganization.DoEdit(var mes: TMessage);
begin
  case (pgOrganization.ActivePageIndex) of
   0 : EditPost;
   1 : EditUnit;
   2 : EditOrg;
  end;
end;

procedure TOrganization.DoNew(var mes: TMessage);
begin
  case (pgOrganization.ActivePageIndex) of
   0 : NewPost;
   1 : NewUnit;
   2 : NewOrg;
  end;
end;

procedure TOrganization.FormActivate(Sender: TObject);
var
 mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=18;
  Application.MainForm.Dispatch(mes);
end;

procedure TOrganization.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
 DabData.quOrg.Close;
 DabData.quUnit.Close;
 DabData.quPost.Close;
 Action:=caFree;
end;

procedure TOrganization.FormDeactivate(Sender: TObject);
var
 mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TOrganization.FormShow(Sender: TObject);
begin
  Top:=30;
  Left:=85;
  FormInitializer1.FieldMode:=fmInsert;
  FormInitializer1.SearchFocusables:=False;
  FormInitializer1.Execute;
  FormInitializer1.SearchFocusables:=True;

  DabData.quOrg.Close;
  DabData.quOrg.Open;
  DabData.quUnit.Close;
  DabData.quUnit.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  DabData.quUnit.Open;
  DabData.quPost.Close;
  DabData.quPost.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  DabData.quPost.Parameters[1].Value:=DabData.quUnitUt_Code.Value;
  DabData.quPost.Open;

  pgOrganization.ActivePageIndex:=2;
  dbgOrg.SetFocus;
end;

procedure TOrganization.FormKeyPress(Sender: TObject; var Key: Char);
var
 Msg :  TMessage;
begin
 if (key='+') and (NewKey) then
 begin
  Msg.Msg:=F_NEW;
  Dispatch(Msg);
 end
 else if (key='-') and (DelKey) then
 begin
  Msg.Msg:=F_DEL;
  Dispatch(Msg);
 end
 else if (key='*') and (EditKey) then
 begin
  Msg.Msg:=F_EDIT;
  Dispatch(Msg);
 end
 else if key=#27 then
 begin
  if mode=0 then close;
 end;
end;

procedure TOrganization.DelOrg;
begin
 if not DabData.quOrg.IsEmpty then
 begin
  Verify:=TVerify.Create(Application);
  //Dabdata.setcolors(Verify);
  if Verify.ShowModal=mrOk then
  begin
   quDelOrg.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
   DabData.ADOC.BeginTrans;
   try
    quDelOrg.ExecSQL;
    DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quOrg.Close;
   DabData.quOrg.Open;
  end;
 end;
end;

procedure TOrganization.EditOrg;
begin
 if not DabData.quOrg.IsEmpty then
 begin
  OrgInput:=TOrgInput.Create(Application);
 // Dabdata.setcolors(OrgInput);
  OrgInput.Mode:=2;
  OrgInput.ShowModal;
 end;
end;

procedure TOrganization.NewOrg;
begin
 OrgInput:=TOrgInput.Create(Application);
// Dabdata.setcolors(OrgInput);
 OrgInput.Mode:=1;
 OrgInput.ShowModal;
end;

procedure TOrganization.DelUnit;
begin
 if (not DabData.quUnit.IsEmpty) and (lcOrg.Text<>'') then
 begin
  Verify:=TVerify.Create(Application);
  //Dabdata.setcolors(Verify);
  if Verify.ShowModal=mrOk then
  begin
   quDelUnit.Parameters[0].Value:=DabData.quUnitUt_Org_Code.Value;
   quDelUnit.Parameters[1].Value:=DabData.quUnitUt_Code.Value;
   DabData.ADOC.BeginTrans;
   try
    quDelUnit.ExecSQL;
    DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quUnit.Close;
   DabData.quUnit.Open;
  end;
 end;
end;

procedure TOrganization.EditUnit;
begin
 if (not DabData.quUnit.IsEmpty) and (lcOrg.Text<>'') then
 begin
  UnitInput:=TUnitInput.Create(Application);
  //dabdata.setcolors(UnitInput);
  UnitInput.Mode:=2;
  UnitInput.ShowModal;
 end;
end;

procedure TOrganization.NewUnit;
begin
 if (lcOrg.Text<>'') then
 begin
  UnitInput:=TUnitInput.Create(Application);
//  DabData.setcolors(UnitInput);
  UnitInput.Mode:=1;
  UnitInput.ShowModal;
 end;
end;

procedure TOrganization.DelPost;
begin
 if (not DabData.quPost.IsEmpty) and (lcUnit.Text<>'') and (lcOrg2.Text<>'') then
 begin
  Verify:=TVerify.Create(Application);
 // DabData.setcolors(Verify);
  if Verify.ShowModal=mrOk then
  begin
   quDelPost.Parameters[0].Value:=DabData.quPostPt_Org_Code.asinteger;
   quDelPost.Parameters[1].Value:=DabData.quPostPt_Ut_code.asinteger;
   quDelPost.Parameters[2].Value:=DabData.quPostPt_Code.asinteger;
   DabData.ADOC.BeginTrans;
   try
    quDelPost.ExecSQL;
    DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quPost.Close;
   DabData.quPost.Open;
  end;
 end;
end;

procedure TOrganization.EditPost;
begin
 if (not DabData.quPost.IsEmpty) and (lcUnit.Text<>'') and (lcOrg2.Text<>'') then
 begin
  PostInput:=TPostInput.Create(Application);
 // DabData.setcolors(PostInput);
  PostInput.Mode:=2;
  PostInput.ShowModal;
 end;
end;

procedure TOrganization.NewPost;
begin
 if (lcUnit.Text<>'') and (lcOrg2.Text<>'') then
 begin
  PostInput:=TPostInput.Create(Application);
  //DabData.setcolors(PostInput);
  PostInput.Mode:=1;
  PostInput.ShowModal;
 end;
end;

procedure TOrganization.tsUnitShow(Sender: TObject);
begin
 if DabData.quOrg.Active then
 begin
  lcOrg.KeyValue:=DabData.quOrgOrg_Code.Value;
  DabData.quUnit.Close;
  DabData.quUnit.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  DabData.quUnit.Open;
 end;
end;

procedure TOrganization.tsPostShow(Sender: TObject);
begin
 if (DabData.quOrg.Active) and (DabData.quUnit.Active) then
 begin
  if lcOrg.KeyValue<>DabData.quOrgOrg_Code.Value then
  begin
   lcOrg.KeyValue:=DabData.quOrgOrg_Code.Value;
   DabData.quUnit.Close;
   DabData.quUnit.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
   DabData.quUnit.Open;
  end;
  lcOrg2.KeyValue:=DabData.quOrgOrg_Code.Value;
  lcUnit.KeyValue:=DabData.quUnitUt_Code.Value;
  DabData.quPost.Close;
  DabData.quPost.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  DabData.quPost.Parameters[1].Value:=DabData.quUnitUt_Code.Value;
  DabData.quPost.Open;
 end;
end;

procedure TOrganization.lcOrgClick(Sender: TObject);
begin
 DabData.quUnit.Close;
 DabData.quUnit.Parameters[0].Value:=lcOrg.KeyValue;
 DabData.quUnit.Open;
end;

procedure TOrganization.lcUnitClick(Sender: TObject);
begin
 DabData.quPost.Close;
 DabData.quPost.Parameters[0].Value:=lcOrg2.KeyValue;
 DabData.quPost.Parameters[1].Value:=lcUnit.KeyValue;
 DabData.quPost.Open;
end;

procedure TOrganization.lcOrg2Click(Sender: TObject);
begin
 DabData.quUnit.Close;
 DabData.quUnit.Parameters[0].Value:=lcOrg2.KeyValue;
 DabData.quUnit.Open;
 DabData.quPost.Close;
 DabData.quPost.Parameters[0].Value:=lcOrg2.KeyValue;
 DabData.quPost.Parameters[1].Value:=lcUnit.KeyValue;
 DabData.quPost.Open;
end;

procedure TOrganization.lcOrgKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
 if Key='*' then Key:=#0;
end;

procedure TOrganization.pgOrganizationChange(Sender: TObject);
begin
 case (pgOrganization.ActivePageIndex) of
  0 : dbgPost.SetFocus;
  1 : dbgUnit.SetFocus;
  2 : dbgOrg.SetFocus;
 end;
// FormInitializer1.Execute;
end;

procedure TOrganization.band1Click(Sender: TObject);
begin
 tsOrg.Show;
end;

procedure TOrganization.Band2Click(Sender: TObject);
begin
  tsunit.Show;
end;

procedure TOrganization.Band3Click(Sender: TObject);
begin
  tspost.Show;
end;

procedure TOrganization.dbgOrgEnter(Sender: TObject);
begin
 (sender as tdbgrid).color:=clactivegrid;
end;

procedure TOrganization.dbgOrgExit(Sender: TObject);
begin
 (sender as tdbgrid).color:=cldeactivegrid;
end;

end.
