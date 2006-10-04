unit fmCourse;

interface

uses
  Windows, Messages, Define ,SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, ADODB, SetForm, RSqlButton,
  RSqlEdit;

type
  TCourse = class(TForm)
    paCourse: TPanel;
    dsqCourse: TDataSource;
    quDelete: TADOQuery;
    quNew: TADOQuery;
    quEdit: TADOQuery;
    dbgCourse: TDBGrid;
    paEdit: TPanel;
    paTemp: TPanel;
    edTitle: TRSqlEdit;
    edRow: TRSqlEdit;
    btCancel: TRSqlButton;
    btOk: TRSqlButton;
    FormInitializer1: TFormInitializer;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edTitleKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dbgCourseEnter(Sender: TObject);
    procedure dbgCourseKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    mode : Smallint;
    RowShow  : Smallint;
    RowField : Smallint;
    NewKey,EditKey,DelKey : Boolean;
    function CheckNoDuplicate(tempStr : string):Boolean;
    function PassPreCondition: Boolean;
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    procedure AnswerToScroll(var mes :TMessage);message F_SCROLL;
  end;

var
  Course: TCourse;
  bk:TBookMark;

implementation

uses DabDmdle, fmVerify, UCommon;

{$R *.DFM}

procedure TCourse.DoDelete(var mes: TMessage);
var
 T1,T2: TStringList;
begin
 if (mode=0) and (not DabData.quCourse.IsEmpty) then
 begin
  RowShow:=DabData.quCoursefield_no.AsInteger;
  Verify:=TVerify.Create(Application);
//  DabData.setcolors(Verify);
  if Verify.ShowModal=mrOk then
  begin
   T1:=TStringList.Create;
   T2:=TStringList.Create;
   T1.Add('field_no');
   T2.Add(inttostr(RowShow));
   T1.Free;
   T2.Free;
   quDelete.Parameters[0].Value:=RowShow;
   DabData.ADOC.BeginTrans;
   try
   quDelete.ExecSQL;
   DabData.ADOC.CommitTrans;
   except
    ShowMessage2('.«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
    DabData.ADOC.RollbackTrans;
   end;
   DabData.quCourse.Close;
   DabData.quCourse.Open;
  end;
 end;
end;

procedure TCourse.DoEdit(var mes: TMessage);
begin
 if (mode=0) and (not DabData.quCourse.IsEmpty) then
 begin
  mode:=2;
  paCourse.Visible:=True;
  RowShow:=DabData.quCoursefield_no.AsInteger;
  edTitle.Text:=DabData.quCoursefield_name.AsString;
  edRow.Text:=DabData.quCourseRowNumber.DisplayText;
  edTitle.SetFocus;
  FormInitializer1.FieldMode :=fmEdit;
  FormInitializer1.Execute;
 end;
end;

procedure TCourse.DoNew(var mes: TMessage);
begin
 if mode=0 then
 begin
  mode:=1;
  paCourse.Visible:=True;

{  DabData.quCourse.Last;
  RowShow:=DabData.quCourseRow.AsInteger+1;
  if RowShow<1 then RowShow:=1;}
  edTitle.Clear;
  edRow.Text:='*';
  edTitle.SetFocus;
  FormInitializer1.FieldMode :=fmInsert;
  FormInitializer1.Execute;
 end;
end;

procedure TCourse.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=3;
  Application.MainForm.Dispatch(mes);
end;

procedure TCourse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  DabData.quCourse.Close;
  Action:=CaFree;
end;

procedure TCourse.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TCourse.FormShow(Sender: TObject);
begin
 DabData.quCourse.Close;
 DabData.quCourse.Open;
 mode:=0;
 Top:=20;
 Left:=243;

 dbgCourse.Color:=clActiveGrid;
end;

procedure TCourse.edTitleKeyPress(Sender: TObject; var Key: Char);
begin
// if (key=#13) and (btOK.Enabled) then btOk.SetFocus;
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
end;

procedure TCourse.btCancelClick(Sender: TObject);
begin
  mode:=0;
  paCourse.Visible:=False;
  dbgCourse.SetFocus;
end;

procedure TCourse.btOkClick(Sender: TObject);
var
 Title : String;
 TmpMode: Smallint;
begin
 RowField:=RowShow;
 Title:=EdTitle.Text;
 if not PassPreCondition then
 begin
  edTitle.SetFocus;
  DabData.quCourse.GotoBookmark(bk);
  DabData.quCourse.FreeBookmark(bk);
  exit;
 end;
 if mode=1 then
 begin
  DabData.quCourse.Last;
  RowShow:=DabData.quCoursefield_no.AsInteger+1;
  if RowShow<1 then RowShow:=1;
  quNew.Parameters[0].Value:=RowShow;
  quNew.Parameters[1].Value:=Title;
  DabData.ADOC.BeginTrans;
  try
  quNew.ExecSQL;
  DabData.ADOC.CommitTrans;
  except DabData.ADOC.RollbackTrans;
  end;
 end
 else if mode=2 then
 begin
  quEdit.Parameters[0].Value:=Title;
  quEdit.Parameters[1].Value:=RowField;
  DabData.ADOC.BeginTrans;
  try
  quEdit.ExecSQL;
  DabData.ADOC.CommitTrans;
  except DabData.ADOC.RollbackTrans;
  end;
 end;
 paCourse.Visible:=False;
 dbgCourse.SetFocus;
 TmpMode:=Mode;
 mode:=0;
// bk:=DabData.quCourse.GetBookmark;
 DabData.quCourse.Close;
 DabData.quCourse.Open;
 if TmpMode=2 then
 begin
  DabData.quCourse.GotoBookmark(bk);
 end;
 DabData.quCourse.FreeBookmark(bk);
end;

procedure TCourse.dbgCourseEnter(Sender: TObject);
begin
// if mode=1 then
// begin
  mode:=0;
  paCourse.Visible:=False;
  dbgCourse.SetFocus;
// end;
end;

procedure TCourse.AnswerToScroll(var mes: TMessage);
begin
{ if mode=2 then
 begin
  RowShow:=DabData.quCoursefield_no.AsInteger;
  edTitle.Text:=DabData.quCoursefield_name.AsString;
  edRow.Text:=DabData.quCourseRowNumber.DisplayText;
  edTitle.SetFocus;
 end;}
end;

function TCourse.CheckNoDuplicate(tempStr : string):Boolean;
var  i :integer;
     StText,StTableField :String;
begin
   if DabData.quCourse.RecordCount = 0 then CheckNoDuplicate := True
   else
   begin
      DabData.quCourse.First;
      StText := DabData.DelSpace(tempStr);
      for i:=1 to DabData.quCourse.RecordCount do
      begin
         StTableField := DabData.DelSpace(DabData.quCoursefield_name.AsString);
         if (StText = StTableField) and
            (not(mode=2)or
             not(DabData.quCoursefield_no.AsInteger = RowField)) then
         begin
            CheckNoDuplicate := False;
            exit;
         end;
         DabData.quCourse.Next;
      end;
      CheckNoDuplicate := True;
   end;
end;

function TCourse.PassPreCondition: Boolean;
begin
  DabData.quCourse.DisableControls;
  PassPreCondition := True;
  bk := DabData.quCourse.GetBookmark;
  if not(CheckNoDuplicate(edTitle.Text)) then
  begin
   ShowMessage2('!⁄‰Ê«‰  ﬂ—«—Ì «” ');
   PassPreCondition := False;
  end;
  DabData.quCourse.EnableControls;
end;

procedure TCourse.dbgCourseKeyPress(Sender: TObject; var Key: Char);
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

end.
