unit fmPostInput;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RSqlEdit, RSqlButton, SetForm, DBCtrls, RSqllookup,
  Db, ADODB, UCommon, RSQLComboBox,variants;

type
  TPostInput = class(TForm)
    paFields: TPanel;
    paButtons: TPanel;
    btOk: TRSqlButton;
    btCancel: TRSqlButton;
    edPostName: TRSqlEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    lcMaster: TRSqlDbLookup;
    FormInitializer1: TFormInitializer;
    dslcPost: TDataSource;
    qulcMaster: TADOQuery;
    quNew: TADOQuery;
    quEdit: TADOQuery;
    quGetMax: TADOQuery;
    quGetMaxNewRow: TIntegerField;
    paFields2: TPanel;
    Label3: TLabel;
    Bevel3: TBevel;
    lcCat: TRSqlDbLookup;
    Label4: TLabel;
    Bevel4: TBevel;
    lcSub: TRSqlDbLookup;
    Label5: TLabel;
    Bevel5: TBevel;
    lcJob: TRSqlDbLookup;
    Label6: TLabel;
    Bevel6: TBevel;
    cbType: TRSqlComboBox;
    dsCat: TDataSource;
    dsSub: TDataSource;
    dsJob: TDataSource;
    Label7: TLabel;
    Bevel7: TBevel;
    edCode: TRSqlEdit;
    quPostOrg: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure edPostNameKeyPress(Sender: TObject; var Key: Char);
    procedure lcCatClick(Sender: TObject);
    procedure lcSubClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mode : smallint;
  end;

var
  PostInput: TPostInput;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TPostInput.FormShow(Sender: TObject);
begin
 qulcMaster.Close;
 if mode=1 then
 begin
  qulcMaster.Parameters[0].Value:=-1;
  qulcMaster.Parameters[1].Value:=DabData.quOrgOrg_Code.Value;
  qulcMaster.Parameters[2].Value:=DabData.quUnitUt_Code.Value;
 end
 else if mode=2 then
 begin
  qulcMaster.Parameters[0].Value:=DabData.quPostPt_Code.Value;
  qulcMaster.Parameters[1].Value:=DabData.quPostPt_Org_Code.Value;
  qulcMaster.Parameters[2].Value:=DabData.quPostPt_Ut_code.Value;
 end;
 qulcMaster.Open;
 if Mode=1 then
 begin
  FormInitializer1.FieldMode:=fmInsert;
  edPostName.Clear;
  lcMaster.KeyValue:=NULL;
  edCode.Clear;
  lcCat.KeyValue:=NULL;
  lcSub.KeyValue:=NULL;
  lcJob.KeyValue:=NULL;
  cbType.ItemIndex:=-1;
  DabData.quCat.Close;
  DabData.quCat.Open;
 end
 else if Mode=2 then
 begin
  FormInitializer1.FieldMode:=fmEdit;
  edPostName.Text:=DabData.quPostpost_name.AsString;
  lcMaster.KeyValue:=DabData.quPostPt_Mast_Code.AsVariant;
  edCode.Text:=DabData.quPostpost_code.AsString;
  DabData.quCat.Close;
  DabData.quCat.Open;
  DabData.quSubCat.Close;
  DabData.quSubCat.Parameters[0].Value:=DabData.quPostPt_Category_Code.Value;
  DabData.quSubCat.Open;
  DabData.quJob.Close;
  DabData.quJob.Parameters[0].Value :=DabData.quPostPt_Category_Code.Value;
  DabData.quJob.Parameters[1].Value :=DabData.quPostPt_Sub_Code.Value;
  DabData.quJob.Open;
  lcCat.KeyValue:=DabData.quPostPt_Category_Code.Value;
  lcSub.KeyValue:=DabData.quPostPt_Sub_Code.Value;
  lcJob.KeyValue:=DabData.quPostPt_Job_Code.Value;
  cbType.ItemIndex:=DabData.quPostpost_type.AsInteger;
 end;
 FormInitializer1.Execute;
end;

procedure TPostInput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 qulcMaster.Close;
 quPostOrg.Close;
 quGetMax.Close;
 DabData.quCat.Close;
 DabData.quSubCat.Close;
 DabData.quJob.Close;
 Action:=caFree;
end;

procedure TPostInput.btOkClick(Sender: TObject);
var
 Title,PostCode : String;
 Code : Integer;
begin
 if mode=2 then Code:=DabData.quPostPt_Code.AsInteger else Code:=0;
 Title:=edPostName.Text;
 PostCode:=edCode.Text;
 quPostOrg.Close;
 quPostOrg.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
 quPostOrg.Open;
// if not PassPreCondition(quPostOrg,PostCode,'Post_Code','Pt_Code',Code,Mode,'!ﬂœ  ﬂ—«—Ì «” ') then
// begin
  quPostOrg.Close;
  edCode.SetFocus;
 // exit;
// end;
 quPostOrg.Close;
{ if not PassPreCondition(DabData.quPost,Title,'Post_Name','Pt_Code',Code,Mode) then
 begin
  DabData.quPost.GotoBookmark(bk);
  DabData.quPost.FreeBookmark(bk);
  edPostName.SetFocus;
  exit;
 end;}
 if mode=1 then
 begin
  quGetMax.Close;
  quGetMax.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  quGetMax.Open;
  Code:=quGetMaxNewRow.AsInteger+1;
  if Code<1 then Code:=1;
  quNew.Parameters[0].Value := DabData.quOrgOrg_Code.Value;
  quNew.Parameters[1].Value := DabData.quUnitUt_Code.Value;
  quNew.Parameters[2].Value := Code;
  quNew.Parameters[3].Value := Title;
  quNew.Parameters[4].Value := lcCat.KeyValue;
  quNew.Parameters[5].Value := lcSub.KeyValue;
  quNew.Parameters[6].Value := lcJob.KeyValue;
  quNew.Parameters[7].Value := cbType.ItemIndex;
  quNew.Parameters[8].Value := 1;
  quNew.Parameters[9].Value := edCode.Text;
  quNew.Parameters[10].Value := lcMaster.KeyValue;
  DabData.ADOC.BeginTrans;
  try
   quNew.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
  quGetMax.Close;
 end
 else if mode=2 then
 begin
  quEdit.Parameters[0].Value := Title;
  quEdit.Parameters[1].Value := lcCat.KeyValue;
  quEdit.Parameters[2].Value := lcSub.KeyValue;
  quEdit.Parameters[3].Value := lcJob.KeyValue;
  quEdit.Parameters[4].Value := cbType.ItemIndex;
  quEdit.Parameters[5].Value := edCode.Text;
  quEdit.Parameters[6].Value := lcMaster.KeyValue;
  quEdit.Parameters[7].Value := DabData.quOrgOrg_Code.Value;
  quEdit.Parameters[8].Value := DabData.quUnitUt_Code.Value;
  quEdit.Parameters[9].Value := Code;
  DabData.ADOC.BeginTrans;
  try
   quEdit.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
 end;
 DabData.quPost.Close;
 DabData.quPost.Open;
 Close;
end;

procedure TPostInput.edPostNameKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
 if (Sender is TRSqlDbLookup) and (Key='*') then Key:=#0; 
end;

procedure TPostInput.lcCatClick(Sender: TObject);
begin
 DabData.quSubCat.Close;
 DabData.quSubCat.Parameters[0].Value:=lcCat.KeyValue;
 DabData.quSubCat.Open;
 DabData.quJob.Close;
 lcSub.KeyValue:=NULL;
 lcJob.KeyValue:=NULL;
end;

procedure TPostInput.lcSubClick(Sender: TObject);
begin
 DabData.quJob.Close;
 DabData.quJob.Parameters[0].Value:=lcCat.KeyValue;
 DabData.quJob.Parameters[1].Value:=lcSub.KeyValue;
 DabData.quJob.Open;
 lcJob.KeyValue:=NULL;
end;

end.
