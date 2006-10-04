
unit fmDesignShow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ADODB, StdCtrls, RSqlButton, ExtCtrls, Mask, DBCtrls,RadForms,Define;
Const
 StateStr='State as ''⁄œœ Ê÷Ì⁄  '',Case State WHEN 1 THEN '' ‰ŸÌ„ ‘œÂ'' WHEN 2 THEN '' «ÌÌœ ‘œÂ'' WHEN 3 THEN ''—œ ‘œÂ'' end as Ê÷Ì⁄ ,dbo.GetPDate(InsertDate) as '' «—ÌŒ  ‰ŸÌ„'', ';
 EmpFLName='dbo.getflname(%Emp%,1) as %Emp%Str, ';
 OrgName='dbo.getOrgname(%Org%) as %Org%Str, ';
 UnitName='dbo.getUnitname(-1,%Unit%) as %Unit%Str, ';
type
  TDesignShow = class(TRadForm)
    dsuDesignForm: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    quuDesignTable: TDataSource;
    dsDesignFormField: TADODataSet;
    dsuDesignFormField: TDataSource;
    dsDesignFormFieldFormID: TIntegerField;
    dsDesignFormFieldField_ID: TIntegerField;
    dsDesignFormFieldType: TIntegerField;
    dsDesignFormFieldLeft: TIntegerField;
    dsDesignFormFieldTop: TIntegerField;
    dsDesignFormFieldWidth: TIntegerField;
    dsDesignFormFieldHeight: TIntegerField;
    dsDesignFormFieldCaption: TStringField;
    dsDesignFormFieldTable_Field: TStringField;
    dsDesignForm: TADODataSet;
    dsDesignFormForm_ID: TAutoIncField;
    dsDesignFormLeft: TIntegerField;
    dsDesignFormTop: TIntegerField;
    dsDesignFormWidth: TIntegerField;
    dsDesignFormHeight: TIntegerField;
    dsDesignFormFormName: TStringField;
    dsDesignFormTable_Name: TStringField;
    quDesignTable: TADODataSet;
    dsFlname: TDataSource;
    spFlname: TADOStoredProc;
    spFlnameemp_no: TStringField;
    spFlnameFLName: TStringField;
    spFlnameorg_name: TStringField;
    spFlnameut_name: TStringField;
    spFlnamepost_name: TStringField;
    quUpdateFormSize: TADOQuery;
    dsOrg: TDataSource;
    quOrg: TADOQuery;
    dsDesignFormItem_Code: TStringField;
    dsDesignFormFormCaption: TStringField;
    dsDesignFormSystemID: TSmallintField;
    dsUnit: TDataSource;
    quUnit: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure dsDesignFormAfterScroll(DataSet: TDataSet);
    procedure ShowFormCancelClick(Sender: TObject);
    procedure RSqlButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function ShowUpdateForm:TForm;
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
//    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DesignShow: TDesignShow;

implementation

uses   DabDmdle, UCommon;

{$R *.DFM}

procedure TDesignShow.FormShow(Sender: TObject);
begin
  Top:=0;
  Left:=0;
  dsDesignForm.Close;
  dsDesignForm.Open;
  dsDesignFormField.Close;
  dsDesignFormField.Open;
end;

procedure TDesignShow.DoEdit(var Mes : TMessage);
begin
  ShowUpdateForm;
  quDesignTable.Edit;
end;
procedure TDesignShow.DoNew(var Mes : TMessage);
begin
  ShowUpdateForm;
  quDesignTable.Append;
end;
procedure TDesignShow.DoDelete(var Mes : TMessage);
begin
  quDesignTable.Delete;
end;
procedure TDesignShow.dsDesignFormAfterScroll(DataSet: TDataSet);
var
 OtherFields:String;
 i:Integer;
begin
  Caption:=dsDesignFormFormCaption.Value;
  OtherFields:='Pk_'+dsDesignFormFormName.Value+' ''ﬂ·Ìœ «’·Ì'',';
  dsDesignFormField.Close;
  dsDesignFormField.Open;
  dsDesignFormField.First;
  while Not(dsDesignFormField.Eof) do
  begin
    if dsDesignFormFieldType.Value=3 then
    begin
      OtherFields:=
        OtherFields+
        StringReplace(EmpFLName,'%Emp%',Trim(dsDesignFormFieldTable_Field.Value),[rfReplaceAll])
        +Trim(dsDesignFormFieldTable_Field.Value)+',';
    end
    else if dsDesignFormFieldType.Value=4 then
    begin
      OtherFields:=
        OtherFields+
        StringReplace(OrgName,'%Org%',Trim(dsDesignFormFieldTable_Field.Value),[rfReplaceAll])
        +Trim(dsDesignFormFieldTable_Field.Value)+',';
    end
    else if dsDesignFormFieldType.Value=5 then
    begin
      OtherFields:=
        OtherFields+
        StringReplace(UnitName,'%Unit%',Trim(dsDesignFormFieldTable_Field.Value),[rfReplaceAll])
        +Trim(dsDesignFormFieldTable_Field.Value)+',';
    end
    else
      OtherFields:=OtherFields+Trim(dsDesignFormFieldTable_Field.Value)+',';
    dsDesignFormField.Next;
  end;
  quDesignTable.Close;
  quDesignTable.CommandText:='Select '+StateStr+Copy(OtherFields,1,Length(OtherFields)-1)+' from '+dsDesignFormTable_Name.Value;
  DBGrid2.Columns.RebuildColumns;
  DBGrid2.Columns.RestoreDefaults;
  quDesignTable.Open;
  DBGrid2.Refresh;
  DBGrid2.Columns.RebuildColumns;
  DBGrid2.Columns[0].Visible:=False;   //State
  DBGrid2.Columns[3].Visible:=False;   //Primery Key
  for i:=1 to DBGrid2.Columns.Count-1 do
  begin
    if Pos('Str',DBGrid2.Columns[i].Field.FieldName)>0 then
    begin
       if dsDesignFormField.Locate('Table_Field',Copy(DBGrid2.Columns[i].Field.FieldName,1,Length(DBGrid2.Columns[i].Field.FieldName)-3 ) ,[loPartialKey])then
       begin
         DBGrid2.Columns[i+1].Visible:=False;
         DBGrid2.Columns[i].Title.Caption:=dsDesignFormFieldCaption.Value;
       end
    end
    else
    begin
       if dsDesignFormField.Locate('Table_Field',DBGrid2.Columns[i].Field.FieldName,[loPartialKey]) then
           DBGrid2.Columns[i].Title.Caption:=' ﬂœ '+dsDesignFormFieldCaption.Value;
    end;
    if DBGrid2.Columns[i].Width>100 then DBGrid2.Columns[i].Width:=100;

  end;

end;
procedure TDesignShow.ShowFormCancelClick(Sender: TObject);
var
  DesForm:TForm;
begin
  DesForm:=nil;
  if Sender is TButton then
    if  TButton(Sender).Parent  is TPanel then
       if TPanel(TButton(Sender).Parent).Parent is TForm then
           DesForm:=TForm(TPanel(TButton(Sender).Parent).Parent);
  if DesForm=nil then begin ShowMessage('Error To Get Pointer Form '); exit; end;
  DesForm.Close;
end;

procedure TDesignShow.RSqlButton3Click(Sender: TObject);
var
  DesForm:TForm;
  tmpBkMark:TBookmark;
begin
  DesForm:=nil;
  quDesignTable.Post;
  if Sender is TButton then
    if  TButton(Sender).Parent  is TPanel then
       if TPanel(TButton(Sender).Parent).Parent is TForm then
           DesForm:=TForm(TPanel(TButton(Sender).Parent).Parent);
  if DesForm=nil then begin ShowMessage('Error To Get Pointer Form '); exit; end;
  quUpdateFormSize.Parameters.ParamByName('Left').Value:=DesForm.Left;
  quUpdateFormSize.Parameters.ParamByName('Top').Value:=DesForm.Top;
  quUpdateFormSize.Parameters.ParamByName('Width').Value:=DesForm.Width;
  quUpdateFormSize.Parameters.ParamByName('Height').Value:=DesForm.Height;
  quUpdateFormSize.Parameters.ParamByName('FormID').Value:=dsDesignFormForm_ID.Value;
  try
    quUpdateFormSize.ExecSQL;
  except
  end;
  tmpBkMark:=quDesignTable.GetBookmark;
  quDesignTable.Close;
  quDesignTable.Open;
  quDesignTable.GotoBookmark(tmpBkMark);
  quDesignTable.FreeBookmark(tmpBkMark);
  DesForm.Close;
end;

procedure TDesignShow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;
function TDesignShow.ShowUpdateForm:TForm;
var
  tmpFrm:TForm;
  tmpDBEdit:TDBEdit;
  tmpDBLookup:TDBLookupComboBox;
  tmpMemo:TDBMemo;
  tmpButton:TRSqlButton;
  tmpPanel:TPanel;
  i:Integer;
begin
  spFlname.Close;
  spFlname.Open;
  quOrg.Close;
  quOrg.Open;
  quUnit.Close;
  quUnit.Open;
  i:=1;
  tmpFrm:=TForm.Create(Self);
  tmpFrm.Width:=dsDesignFormWidth.Value;
  tmpFrm.Height:=dsDesignFormHeight.Value;
  tmpFrm.Position:=poOwnerFormCenter;
  tmpFrm.BiDiMode:=bdRightToLeft;
  dsDesignFormField.Close;
  dsDesignFormField.Open;
  dsDesignFormField.First;
  while Not(dsDesignFormField.Eof) do
  begin
    if (dsDesignFormFieldType.Value=1) or (dsDesignFormFieldType.Value=2) then
    begin
      tmpDBEdit:=TDBEdit.Create(tmpFrm);
      tmpDBEdit.Parent:=tmpFrm;
      tmpDBEdit.Left:=dsDesignFormFieldLeft.Value;
      tmpDBEdit.Top:=dsDesignFormFieldTop.Value;
      tmpDBEdit.Width:=dsDesignFormFieldWidth.Value;
      tmpDBEdit.Height:=dsDesignFormFieldHeight.Value;
      tmpDBEdit.DataSource:=quuDesignTable;
      tmpDBEdit.DataField:=Trim(dsDesignFormFieldTable_Field.Value);
      tmpDBEdit.Tag:=i;
      CreateLabel(TWinControl(tmpDBEdit),dsDesignFormFieldCaption.Value);
    end
    else if (dsDesignFormFieldType.Value=3) or (dsDesignFormFieldType.Value=4)or (dsDesignFormFieldType.Value=5) then
    begin
      tmpDBLookup:=TDBLookupComboBox.Create(tmpFrm);
      if dsDesignFormFieldType.Value=3 then
      begin
        tmpDBLookup.ListSource:=dsFlname;
        tmpDBLookup.KeyField:='emp_no';
        tmpDBLookup.ListField:='FLName';
      end
      else if dsDesignFormFieldType.Value=4 then
      begin
        tmpDBLookup.ListSource:=dsOrg;
        tmpDBLookup.KeyField:='Org_Code';
        tmpDBLookup.ListField:='Org_Name';
      end
      else if dsDesignFormFieldType.Value=5 then
      begin
        tmpDBLookup.ListSource:=dsUnit;
        tmpDBLookup.KeyField:='Ut_Code';
        tmpDBLookup.ListField:='Ut_Name';
      end;
      tmpDBLookup.Parent:=tmpFrm;
      tmpDBLookup.Left:=dsDesignFormFieldLeft.Value;
      tmpDBLookup.Top:=dsDesignFormFieldTop.Value;
      tmpDBLookup.Width:=dsDesignFormFieldWidth.Value;
      tmpDBLookup.Height:=dsDesignFormFieldHeight.Value;
      tmpDBLookup.DataSource:=quuDesignTable;
      tmpDBLookup.DataField:=Trim(dsDesignFormFieldTable_Field.Value);
      tmpDBLookup.Tag:=i;
      CreateLabel(tmpDBLookup,dsDesignFormFieldCaption.Value);
    end
    else if dsDesignFormFieldType.Value=6 then
    begin
      tmpMemo:=TDBMemo.Create(tmpFrm);
      tmpMemo.Parent:=tmpFrm;
      tmpMemo.Left:=dsDesignFormFieldLeft.Value;
      tmpMemo.Top:=dsDesignFormFieldTop.Value;
      tmpMemo.Width:=dsDesignFormFieldWidth.Value;
      tmpMemo.Height:=dsDesignFormFieldHeight.Value;
      tmpMemo.DataSource:=quuDesignTable;
      tmpMemo.DataField:=Trim(dsDesignFormFieldTable_Field.Value);
      tmpMemo.Tag:=i;
      tmpMemo.ReadOnly:=False;
      tmpMemo.Text:='Test';
      tmpMemo.Enabled:=True;
      tmpMemo.MaxLength:=250;
      CreateLabel(TWinControl(tmpMemo),dsDesignFormFieldCaption.Value);
    end;
    dsDesignFormField.Next;
    inc(i);
  end;
  tmpPanel:=TPanel.Create(tmpFrm);
  tmpPanel.Parent:=tmpFrm;
  tmpPanel.Align:=alBottom;
  tmpPanel.Height:=30;
  tmpButton:=TRSqlButton.Create(tmpFrm);
  tmpButton.Parent:=tmpPanel;
  tmpButton.Left:=10;
  tmpButton.Top:=5;
  tmpButton.OnClick:=RSqlButton3Click;
  tmpButton.Caption:=' «ÌÌœ';
//  tmpButton.ButtonType:=btOk;
  tmpButton:=TRSqlButton.Create(tmpFrm);
  tmpButton.Parent:=tmpPanel;
  tmpButton.Left:=100;
  tmpButton.OnClick:=ShowFormCancelClick;
  tmpButton.Top:=5;
  tmpButton.Caption:='·€Ê';
//  tmpButton.ButtonType:=btCancel;
  tmpFrm.ShowModal;
  Result:=tmpFrm;
end;

end.

