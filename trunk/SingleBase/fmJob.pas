unit fmJob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs
  , define, UCommon,setform, DBCtrls, RSqllookup, StdCtrls, RSqlEdit,
  Grids, DBGrids, ExtCtrls, ComCtrls, RSqlButton, Db, ADODB, fcButton,
  fcImgBtn, fcClearPanel, fcButtonGroup;

type
  TJob = class(TForm)
    pgJob: TPageControl;
    tsJob: TTabSheet;
    tsSubCategory: TTabSheet;
    tsCategory: TTabSheet;
    paButtons: TPanel;
    paCategory: TPanel;
    dbgCategory: TDBGrid;
    paEdit1: TPanel;
    paLookup1: TPanel;
    paSubCategory: TPanel;
    dbgSub: TDBGrid;
    paEdit2: TPanel;
    edRow1: TRSqlEdit;
    edTitle1: TRSqlEdit;
    edRow2: TRSqlEdit;
    edTitle2: TRSqlEdit;
    lcCategory: TRSqlDbLookup;
    FormInitializer: TFormInitializer;
    btOk: TRSqlButton;
    lbCategory: TLabel;
    Bevel1: TBevel;
    paLookup2: TPanel;
    lbCategory2: TLabel;
    Bevel2: TBevel;
    lcCategory2: TRSqlDbLookup;
    paJob: TPanel;                                 
    dbgJob: TDBGrid;
    paEdit3: TPanel;
    edRow3: TRSqlEdit;
    edTitle3: TRSqlEdit;
    Bevel3: TBevel;
    lbSub: TLabel;
    lcSub: TRSqlDbLookup;
    dsCat: TDataSource;
    quNewCat: TADOQuery;
    quEditCat: TADOQuery;
    quDelCat: TADOQuery;
    btCancel: TRSqlButton;
    quGetMaxCat: TADOQuery;
    quGetMaxCatNewRow: TSmallintField;
    dsSubCat: TDataSource;
    quNewSub: TADOQuery;
    quEditSub: TADOQuery;
    quDelSub: TADOQuery;
    quGetMaxSub: TADOQuery;
    dsJob: TDataSource;
    quNewJob: TADOQuery;
    quEditJob: TADOQuery;
    quDelJob: TADOQuery;
    quGetMaxJob: TADOQuery;
    quGetMaxSubNewRow: TSmallintField;
    quGetMaxJobNewRow: TSmallintField;
    fcButtonGroup2: TfcButtonGroup;
    Band3: TfcImageBtn;
    Band2: TfcImageBtn;
    band1: TfcImageBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure tsSubCategoryShow(Sender: TObject);
    procedure tsJobShow(Sender: TObject);
    procedure lcCategoryClick(Sender: TObject);
    procedure lcSubClick(Sender: TObject);
    procedure lcCategory2Click(Sender: TObject);
    procedure lcCategoryKeyPress(Sender: TObject; var Key: Char);
    procedure pgJobChange(Sender: TObject);
    procedure edTitle3KeyPress(Sender: TObject; var Key: Char);
    procedure edTitle1Change(Sender: TObject);
    procedure edTitle2Change(Sender: TObject);
    procedure band1Click(Sender: TObject);
    procedure Band3Click(Sender: TObject);
    procedure Band2Click(Sender: TObject);
    procedure edTitle3Change(Sender: TObject);
    procedure dbgCategoryExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mode : smallint;
    NewKey,EditKey,DelKey : Boolean;
    procedure DelJob;
    procedure DelSub;
    procedure DelCat;
    procedure EditJob;
    procedure EditSub;
    procedure EditCat;
    procedure NewJob;
    procedure NewSub;
    procedure NewCat;
    procedure OkJob;
    procedure OkSub;
    procedure OkCat;
    function CheckNoDuplicate(tempStr : string;quImport:TADOQuery;FieldText,FieldCode:String;CheckCode:Variant):Boolean;
    function PassPreCondition(quImport:TADOQuery;BaseText,FieldText,FieldCode:String;CheckCode:Variant) : Boolean;
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  end;

var
  Job: TJob;
  bk : TBookMark;

implementation

uses DabDmdle, fmVerify;

{$R *.DFM}

{ TJob }

procedure TJob.DoDelete(var mes: TMessage);
begin
 if mode=0 then
 case (pgJob.ActivePageIndex) of
  0 : DelJob;
  1 : DelSub;
  2 : DelCat;
 end;
end;

procedure TJob.DoEdit(var mes: TMessage);
begin
 if mode=0 then
 begin
//  FormInitializer1.FieldMode:=fmEdit;
  case (pgJob.ActivePageIndex) of
   0 : EditJob;
   1 : EditSub;
   2 : EditCat;
  end;
 end;
end;

procedure TJob.DoNew(var mes: TMessage);
begin
 if mode=0 then
 begin
//  FormInitializer1.FieldMode:=fmInsert;
  case (pgJob.ActivePageIndex) of
   0 : NewJob;
   1 : NewSub;
   2 : NewCat;
  end;
//  FormInitializer1.Execute;
 end;
end;

procedure TJob.FormActivate(Sender: TObject);
var
 mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=19;
  Application.MainForm.Dispatch(mes);
end;

procedure TJob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
 quGetMaxCat.Close;
 quGetMaxSub.Close;
 quGetMaxJob.Close;
 DabData.quCat.Close;
 DabData.quSubCat.Close;
 DabData.quJob.Close;
 Action:=caFree;
end;

procedure TJob.FormDeactivate(Sender: TObject);
var
 mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TJob.FormShow(Sender: TObject);
begin
  Top:=15;
  Left:=230;
  if mode=1 then
  begin
//  FormInitializer1.FieldMode:=fmInsert;
  end
  else
//  FormInitializer1.FieldMode:=fmedit;
  DabData.quCat.Close;
  DabData.quCat.Open;
  DabData.quSubCat.Close;
  DabData.quSubCat.Parameters[0].Value:=DabData.quCatctg_code.Value;
  DabData.quSubCat.Open;
  DabData.quJob.Close;
  DabData.quJob.Parameters[0].Value:=DabData.quCatctg_code.Value;
  DabData.quJob.Parameters[1].Value:=DabData.quSubCatsub_ctg_code.Value;
  DabData.quJob.Open;

  pgJob.ActivePageIndex:=2;
  Mode:=0;
  dbgCategory.SetFocus;
//  FormInitializer1.Execute;
end;

procedure TJob.FormKeyPress(Sender: TObject; var Key: Char);
var
 Msg :  TMessage;
begin
{ if (key='+') and (NewKey) then
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
 end;}
end;

function TJob.CheckNoDuplicate(tempStr : string;quImport:TADOQuery;FieldText,FieldCode:String;CheckCode:Variant):Boolean; //ReModified
var  i :integer;
     StText,StTableField :String;
begin
   if quImport.RecordCount = 0 then CheckNoDuplicate := True
   else
   begin
      quImport.First;
      StText := DabData.DelSpace(tempStr);
      for i:=1 to quImport.RecordCount do
      begin
         StTableField := DabData.DelSpace(quImport.FieldByName(FieldText).Value);
         if (StText = StTableField) and
            (not(mode=2)or
             not(quImport.FieldByName(FieldCode).Value = CheckCode)) then
         begin
            CheckNoDuplicate := False;
            exit;
         end;
         quImport.Next;
      end;
      CheckNoDuplicate := True;
   end;
end;

function TJob.PassPreCondition(quImport:TADOQuery;BaseText,FieldText,FieldCode:String;CheckCode:Variant) : Boolean; //ReModified
begin
  quImport.DisableControls;
  PassPreCondition := True;
  bk := quImport.GetBookmark;
  if not(CheckNoDuplicate(BaseText,quImport,FieldText,FieldCode,CheckCode)) then
  begin
   ShowMessage2('!⁄‰Ê«‰  ﬂ—«—Ì «” ');
   PassPreCondition := False;
  end;
  quImport.EnableControls;
end;

procedure TJob.btCancelClick(Sender: TObject);
begin
 (sender as tdbgrid).color:=clactivegrid;
 Mode:=0;
 paButtons.Hide;
 case (pgJob.ActivePageIndex) of
  0 :
  begin
   paLookup2.Enabled:=True;
   paEdit3.Hide;
   dbgJob.SetFocus;
  end;
  1 :
  begin
   paLookup1.Enabled:=True;
   paEdit2.Hide;
   dbgSub.SetFocus;
  end;
  2 :
  begin
   paEdit1.Hide;
   dbgCategory.SetFocus;
  end;
 end;
end;

procedure TJob.DelCat;
begin
 if not DabData.quCat.IsEmpty then
 begin
  Verify:=TVerify.Create(Application);
 //  DabData.setcolors(Verify);
  if Verify.ShowModal=mrOk then
  begin
   quDelCat.Parameters[0].Value:=DabData.quCatctg_code.Value;
   DabData.ADOC.BeginTrans;
   try
    quDelCat.ExecSQL;
    DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quCat.Close;
   DabData.quCat.Open;
  end;
 end;
end;

procedure TJob.EditCat;
begin
 if not DabData.quCat.IsEmpty then
 begin
  Mode:=2;
  paButtons.Show;
  paEdit1.Show;
//  FormInitializer1.Execute;
  edRow1.Text:=DabData.quCatRowNumber.DisplayText;
  edTitle1.Text:=DabData.quCatctg_name.AsString;
  edTitle1.SetFocus;
 end;
end;

procedure TJob.NewCat;
begin
 Mode:=1;
 paButtons.Show;
 paEdit1.Show;
 edRow1.Text:='*';
 edTitle1.Clear;
 edTitle1.SetFocus;
end;

procedure TJob.OkCat;
var
 Title : String;
 Code : Smallint;
begin
 if mode=2 then Code:=DabData.quCatctg_code.AsInteger else Code:=0;
 Title:=edTitle1.Text;
 if not PassPreCondition(DabData.quCat,Title,'Ctg_Name','Ctg_Code',Code) then
 begin
  DabData.quCat.GotoBookmark(bk);
  DabData.quCat.FreeBookmark(bk);
  edTitle1.SetFocus;
  exit;
 end;
 if mode=1 then
 begin
  quGetMaxCat.Close;
  quGetMaxCat.Open;
  Code:=quGetMaxCatNewRow.AsInteger+1;
  if Code<1 then Code:=1;
  quNewCat.Parameters[0].Value := Code;
  quNewCat.Parameters[1].Value := Title;
  DabData.ADOC.BeginTrans;
  try
   quNewCat.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
  quGetMaxCat.Close;
 end
 else if mode=2 then
 begin
  quEditCat.Parameters[0].Value := Title;
  quEditCat.Parameters[1].Value := Code;
  DabData.ADOC.BeginTrans;
  try
   quEditCat.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
 end;
 DabData.quCat.Close;
 DabData.quCat.Open;
 if Mode=2 then DabData.quCat.GotoBookmark(bk)
 else if Mode=1 then DabData.quCat.Last;
 DabData.quCat.FreeBookmark(bk);
 btCancelClick(self);
end;

procedure TJob.DelSub;
begin
 if (not DabData.quSubCat.IsEmpty) and (lcCategory.Text<>'') then
 begin
  Verify:=TVerify.Create(Application);
 // DabData.setcolors(verify);
  if Verify.ShowModal=mrOk then
  begin
   quDelSub.Parameters[0].Value:=DabData.quSubCatctg_code.Value;
   quDelSub.Parameters[1].Value:=DabData.quSubCatsub_ctg_code.Value;
   DabData.ADOC.BeginTrans;
   try
    quDelSub.ExecSQL;
    DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quSubCat.Close;
   DabData.quSubCat.Open;
  end;
 end;
end;

procedure TJob.EditSub;
begin
 if (not DabData.quSubCat.IsEmpty) and (lcCategory.Text<>'') then
 begin
  Mode:=2;
  paLookup1.Enabled:=False;
  paButtons.Show;
  paEdit2.Show;
//  FormInitializer1.Execute;
  edRow2.Text:=DabData.quSubCatRowNumber.DisplayText;
  edTitle2.Text:=DabData.quSubCatsub_ctg_name.AsString;
  edTitle2.SetFocus;
 end;
end;

procedure TJob.NewSub;
begin
 if (lcCategory.Text<>'') then
 begin
  Mode:=1;
  paLookup1.Enabled:=False;
  paButtons.Show;
  paEdit2.Show;
//  FormInitializer1.Execute;
  edRow2.Text:='*';
  edTitle2.Clear;
  edTitle2.SetFocus;
 end;
end;

procedure TJob.OkSub;
var
 Title : String;
 Code : Smallint;
begin
 if mode=2 then Code:=DabData.quSubCatsub_ctg_code.AsInteger else Code:=0;
 Title:=edTitle2.Text;
 if not PassPreCondition(DabData.quSubCat,Title,'Sub_Ctg_Name','Sub_Ctg_Code',Code) then
 begin
  DabData.quSubCat.GotoBookmark(bk);
  DabData.quSubCat.FreeBookmark(bk);
  edTitle2.SetFocus;
  exit;
 end;
 if mode=1 then
 begin
  quGetMaxSub.Close;
  quGetMaxSub.Parameters[0].Value:=DabData.quCatctg_code.Value;
  quGetMaxSub.Open;
  Code:=quGetMaxSubNewRow.AsInteger+1;
  if Code<1 then Code:=1;
  quNewSub.Parameters[0].Value := DabData.quCatctg_code.Value;
  quNewSub.Parameters[1].Value := Code;
  quNewSub.Parameters[2].Value := Title;
  DabData.ADOC.BeginTrans;
  try
   quNewSub.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
  quGetMaxSub.Close;
 end
 else if mode=2 then
 begin
  quEditSub.Parameters[0].Value := Title;
  quEditSub.Parameters[1].Value := DabData.quCatctg_code.Value;
  quEditSub.Parameters[2].Value := Code;
  DabData.ADOC.BeginTrans;
  try
   quEditSub.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
 end;
 DabData.quSubCat.Close;
 DabData.quSubCat.Parameters[0].Value:=DabData.quCatctg_code.Value;
 DabData.quSubCat.Open;
 if Mode=2 then DabData.quSubCat.GotoBookmark(bk)
 else if Mode=1 then DabData.quSubCat.Last;
 DabData.quSubCat.FreeBookmark(bk);
 btCancelClick(self);
end;

procedure TJob.DelJob;
begin
 if (not DabData.quJob.IsEmpty) and (lcSub.Text<>'') and (lcCategory2.Text<>'') then
 begin
  Verify:=TVerify.Create(Application);
//  DabData.SetColors(Verify);
  if Verify.ShowModal=mrOk then
  begin
   quDelJob.Parameters[0].Value:=DabData.quJobctg_code.Value;
   quDelJob.Parameters[1].Value:=DabData.quJobsub_ctg_code.Value;
   quDelJob.Parameters[2].Value:=DabData.quJobjob_code.Value;
   DabData.ADOC.BeginTrans;
   try
    quDelJob.ExecSQL;
    DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quJob.Close;
   DabData.quJob.Open;
  end;
 end;
end;

procedure TJob.EditJob;
begin
 if (not DabData.quJob.IsEmpty) and (lcSub.Text<>'') and (lcCategory2.Text<>'') then
 begin
  Mode:=2;
  paLookup2.Enabled:=False;
  paButtons.Show;
  paEdit3.Show;
//  FormInitializer1.Execute;
  edRow3.Text:=DabData.quJobRowNumber.DisplayText;
  edTitle3.Text:=DabData.quJobjob_name.AsString;
  edTitle3.SetFocus;
 end;
end;

procedure TJob.NewJob;
begin
 if (lcSub.Text<>'') and (lcCategory2.Text<>'') then
 begin
  Mode:=1;
  paLookup2.Enabled:=False;
  paButtons.Show;
  paEdit3.Show;
  edRow3.Text:='*';
  edTitle3.Clear;
  edTitle3.SetFocus;
//  FormInitializer1.Execute;
 end;
end;

procedure TJob.OkJob;
var
 Title : String;
 Code : Smallint;
begin
 if mode=2 then Code:=DabData.quJobjob_code.AsInteger else Code:=0;
 Title:=edTitle3.Text;
 if not PassPreCondition(DabData.quJob,Title,'Job_Name','Job_Code',Code) then
 begin
  DabData.quJob.GotoBookmark(bk);
  DabData.quJob.FreeBookmark(bk);
  edTitle3.SetFocus;
  exit;
 end;
 if mode=1 then
 begin
  quGetMaxJob.Close;
  quGetMaxJob.Parameters[0].Value:=DabData.quCatctg_code.Value;
  quGetMaxJob.Parameters[1].Value:=DabData.quSubCatsub_ctg_code.Value;
  quGetMaxJob.Open;
  Code:=quGetMaxJobNewRow.AsInteger+1;
  if Code<1 then Code:=1;
  quNewJob.Parameters[0].Value := DabData.quCatctg_code.Value;
  quNewJob.Parameters[1].Value := DabData.quSubCatsub_ctg_code.Value;
  quNewJob.Parameters[2].Value := Code;
  quNewJob.Parameters[3].Value := Title;
  DabData.ADOC.BeginTrans;
  try
   quNewJob.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
  quGetMaxJob.Close;
 end
 else if mode=2 then
 begin
  quEditJob.Parameters[0].Value := Title;
  quEditJob.Parameters[1].Value := DabData.quCatctg_code.Value;
  quEditJob.Parameters[2].Value := DabData.quSubCatsub_ctg_code.Value;
  quEditJob.Parameters[3].Value := Code;
  DabData.ADOC.BeginTrans;
  try
   quEditJob.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
 end;
 DabData.quJob.Close;
 DabData.quJob.Parameters[0].Value:=DabData.quCatctg_code.Value;
 DabData.quJob.Parameters[1].Value:=DabData.quSubCatsub_ctg_code.Value;
 DabData.quJob.Open;
 if Mode=2 then DabData.quJob.GotoBookmark(bk)
 else if Mode=1 then DabData.quJob.Last;
 DabData.quJob.FreeBookmark(bk);
 btCancelClick(self);
end;

procedure TJob.btOkClick(Sender: TObject);
begin
 case (pgJob.ActivePageIndex) of
  0 : OkJob;
  1 : OkSub;
  2 : OkCat;
 end;
end;



procedure TJob.tsSubCategoryShow(Sender: TObject);
begin
 if DabData.quCat.Active then
 begin
  lcCategory.KeyValue:=DabData.quCatctg_code.Value;
  DabData.quSubCat.Close;
  DabData.quSubCat.Parameters[0].Value:=DabData.quCatctg_code.Value;
  DabData.quSubCat.Open;
 end;
end;

procedure TJob.tsJobShow(Sender: TObject);
begin
 if (DabData.quCat.Active) and (DabData.quSubCat.Active) then
 begin
  if lcCategory.KeyValue<>DabData.quCatctg_code.Value then
  begin
   lcCategory.KeyValue:=DabData.quCatctg_code.Value;
   DabData.quSubCat.Close;
   DabData.quSubCat.Parameters[0].Value:=DabData.quCatctg_code.Value;
   DabData.quSubCat.Open;
  end;
  lcCategory2.KeyValue:=DabData.quCatctg_code.Value;
  lcSub.KeyValue:=DabData.quSubCatsub_ctg_code.Value;
  DabData.quJob.Close;
  DabData.quJob.Parameters[0].Value:=DabData.quCatctg_code.Value;
  DabData.quJob.Parameters[1].Value:=DabData.quSubCatsub_ctg_code.Value;
  DabData.quJob.Open;
 end;
end;

procedure TJob.lcCategoryClick(Sender: TObject);
begin
 DabData.quSubCat.Close;
 DabData.quSubCat.Parameters[0].Value:=lcCategory.KeyValue;
 DabData.quSubCat.Open;
end;

procedure TJob.lcSubClick(Sender: TObject);
begin
 DabData.quJob.Close;
 DabData.quJob.Parameters[0].Value:=lcCategory2.KeyValue;
 DabData.quJob.Parameters[1].Value:=lcSub.KeyValue;
 DabData.quJob.Open;
end;

procedure TJob.lcCategory2Click(Sender: TObject);
begin
 DabData.quSubCat.Close;
 DabData.quSubCat.Parameters[0].Value:=lcCategory2.KeyValue;
 DabData.quSubCat.Open;
 DabData.quJob.Close;
 DabData.quJob.Parameters[0].Value:=lcCategory2.KeyValue;
 DabData.quJob.Parameters[1].Value:=lcSub.KeyValue;
 DabData.quJob.Open;
end;

procedure TJob.lcCategoryKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
 if Key='*' then Key:=#0;
end;

procedure TJob.pgJobChange(Sender: TObject);
begin
// FormInitializer1.Execute;
 btCancelClick(Self);
end;

procedure TJob.edTitle3KeyPress(Sender: TObject; var Key: Char);
begin
// key:=DabData.CheckKey(key);
end;

procedure TJob.edTitle1Change(Sender: TObject);
begin
  if  edTitle1.text <> '' then
   btok.enabled:=true
  else
   btok.enabled:=false;
end;

procedure TJob.edTitle2Change(Sender: TObject);
begin
  if edTitle2.text <> '' then
   btok.enabled:=true
  else
   btok.enabled:=false;
end;

procedure TJob.band1Click(Sender: TObject);
begin
 tsCategory.Show;
end;

procedure TJob.Band3Click(Sender: TObject);
begin
 tsjob.Show;
end;

procedure TJob.Band2Click(Sender: TObject);
begin
 tsSubCategory.Show;
end;

procedure TJob.edTitle3Change(Sender: TObject);
begin
 if edTitle3.text <> '' then
    btok.enabled:=true
 else
    btok.enabled:=false;
end;


procedure TJob.dbgCategoryExit(Sender: TObject);
begin
 (sender as tdbgrid).color:=cldeactivegrid;
end;

end.


