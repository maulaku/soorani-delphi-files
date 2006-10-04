unit fmPrintSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RADFORMS, Menus, ppEndUsr, ppDB, ppDBPipe, ppBands, ppVar,
  ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, StdCtrls, Buttons, dbcgrids, DB, ADODB, ExtCtrls, DBCtrls, Mask,
  Grids, DBGrids, ppModule, raCodMod, Filter, SetForm, define,UCommon,
  dxfDesigner,ppTypes;

type
  TPrintSetting = class(TRadForm)
    ActiveDataSet: TADODataSet;
    DataSource1: TDataSource;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    ActiveDataSetID: TSmallintField;
    ActiveDataSetFormID: TStringField;
    ActiveDataSetSystemID: TSmallintField;
    ActiveDataSetEmp_ID: TStringField;
    ActiveDataSetPost: TStringField;
    ActiveDataSetToLine: TBooleanField;
    ActiveDataSetTop: TFloatField;
    ActiveDataSetLeft: TFloatField;
    ActiveDataSetHeight: TFloatField;
    ActiveDataSetwidth: TFloatField;
    ADODataSet2emp_no: TStringField;
    ADODataSet2FLName: TStringField;
    ADODataSet2org_name: TStringField;
    ADODataSet2ut_name: TStringField;
    ADODataSet2post_name: TStringField;
    ADODataSet3: TADODataSet;
    DataSource3: TDataSource;
    ADODataSet3ID: TIntegerField;
    ADODataSet3desc: TStringField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppTitleBand1: TppTitleBand;
    PanelLeft: TPanel;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    ActiveDBGrid: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel3: TPanel;
    shPage: TShape;
    Shape1: TShape;
    dxfDesigner1: TdxfDesigner;
    Shape2: TShape;
    Panel4: TPanel;
    dbFormName: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioGroup3: TRadioGroup;
    thereRoundLine: TRadioGroup;
    SignatureAsset: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ActiveDataSetAfterScroll(DataSet: TDataSet);
    procedure SignatureAssetClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure shPageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbFormNameClick(Sender: TObject);
    procedure RadBtOkClick(Sender: TObject);
    procedure RadBtCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
//    procedure DoRun(var mes :TMessage);message RUN_CMD;
//    procedure DoPrint(var mes :TMessage);message F_PRINT;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintSetting: TPrintSetting;

implementation

uses fmVerify, DabDmdle;

{$R *.dfm}

procedure TPrintSetting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:= caFree;
end;
procedure TPrintSetting.DoNew(var Mes : TMessage);
begin
  if ActiveControl is TDBGrid then
  begin
    ActiveDBGrid:=TDBGrid(ActiveControl);
    ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet);
    ActiveDataSet.Append;
    ActiveDBGrid.Options:=[dgEditing,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
//    ActiveDBGrid.Height:=ActiveDBGrid.Height-gbOkCancel.Height;
//    gbOkCancel.Parent:=ActiveDBGrid.Parent;
//    gbOkCancel.Align:=ActiveDBGrid.Align;
//    gbOkCancel.Visible:=true;
    Height:=Height+10;
  end
end;
procedure TPrintSetting.DoEdit(var Mes : TMessage);
begin
  if ActiveControl is TDBGrid then
  begin
    ActiveDBGrid:=TDBGrid(ActiveControl);
    ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet);
    ActiveDBGrid.Options:=[dgEditing,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
//    ActiveDBGrid.Height:=ActiveDBGrid.Height-gbOkCancel.Height;
//    gbOkCancel.Parent:=ActiveDBGrid.Parent;
//    gbOkCancel.Align:=ActiveDBGrid.Align;
//    gbOkCancel.Visible:=true;
    Height:=Height+10;
  end
end;
procedure TPrintSetting.DoDelete(var Mes : TMessage);
begin
  if ActiveControl is TDBGrid then
  begin
    ActiveDBGrid:=TDBGrid(ActiveControl);
    ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet);
    Verify:=TVerify.Create(Self);
    if Verify.ShowModal=mrOk then
      ActiveDataSet.Delete;
  end
end;

procedure TPrintSetting.BitBtn1Click(Sender: TObject);
var
 RoundLine:Boolean;
 pagetype:TPageType;
 RoundShape:TppShape;
begin
  inherited;
  case thereRoundLine.ItemIndex of
    0: RoundLine:=True;
    1: RoundLine:=False;
  end;
  case RadioGroup1.ItemIndex of
    0: pagetype:= pgA5;
    1: pagetype:=pgA4;
    2: pagetype:=pgA3;
    3: pagetype:=PgCustom;
  end;
  RoundShape:=SetPrintPage(RoundLine,pagetype,ppReport1);
  ppReport1.Print;
  if RoundShape<>nil then 
    RoundShape.Free;
end;

procedure TPrintSetting.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dxfDesigner1.Active:=False;
end;

procedure TPrintSetting.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dxfDesigner1.Active:=True;
end;

procedure TPrintSetting.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if
    (
     (DBEdit1.Text<>'') and
     (DBEdit2.Text<>'') and
     (DBEdit3.Text<>'') and
     (DBEdit4.Text<>'')
     )
  then
  begin
    Shape1.Top:=StrToInt(DBEdit2.Text);
    Shape1.Left:=StrToInt(DBEdit3.Text);
    Shape1.Height:=StrToInt(DBEdit4.Text);
    Shape1.Width:=StrToInt(DBEdit5.Text);
  end;

end;

procedure TPrintSetting.Shape1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Shift=[ssLeft] then
  begin
    ActiveDataSet.Edit;
    DBEdit2.Text:=IntToStr(Shape1.Top);
    DBEdit3.Text:=IntToStr(Shape1.Left);
    DBEdit4.Text:=IntToStr(Shape1.Height);
    DBEdit5.Text:=IntToStr(Shape1.Width);
    ActiveDataSet.Post;
  end;
end;

procedure TPrintSetting.ActiveDataSetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBEdit2Exit(nil);
end;

procedure TPrintSetting.SignatureAssetClick(Sender: TObject);
begin
  inherited;
  if thereRoundLine.ItemIndex=0 then
    Shape2.Visible:=True
  else
    Shape2.Visible:=False;
end;

procedure TPrintSetting.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  case RadioGroup1.ItemIndex of
   0:
   begin
     shPage.Height:=Round( 9.26*29.6);
     shPage.Width:=Round(9.26*21);
   end;
   1:
   begin
     shPage.Height:=Round(9.26*29.6/2);
     shPage.Width:=Round(9.26*21);
   end;
   2:
   begin
     shPage.Height:=Round(9.26*29.6);
     shPage.Width:=Round(9.26*21*2);
   end;
  end;
end;

procedure TPrintSetting.shPageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Shift=[ssLeft] then
  begin
   RadioGroup1.ItemIndex:=3;
  end;

end;

procedure TPrintSetting.dbFormNameClick(Sender: TObject);
begin
  inherited;
  ActiveDataSet.Parameters.ParamByName('FormID').Value:=dbFormName.KeyValue;
  ActiveDataSet.Close;
  ActiveDataSet.Open;

end;

procedure TPrintSetting.RadBtOkClick(Sender: TObject);
begin
  inherited;
  case RadioGroup1.ItemIndex of
    0: WriteIntoIniFile('Print','PageType','A4');
    1: WriteIntoIniFile('Print','PageType','A5');
    2: WriteIntoIniFile('Print','PageType','A3');
    3:
    begin
      WriteIntoIniFile('Print','PageType','Custom');
      WriteIntoIniFile('Print','PageHeigth',IntToStr(shPage.Height));
      WriteIntoIniFile('Print','PageWidth',IntToStr(shPage.Width));
    end;
  end;
  if SignatureAsset.ItemIndex=0 then
    WriteIntoIniFile('Print','SignatureAsset','True')
  else
    WriteIntoIniFile('Print','SignatureAsset','False');
  if thereRoundLine.ItemIndex=0 then
    WriteIntoIniFile('Print','RoundLine','True')
  else
    WriteIntoIniFile('Print','RoundLine','False');
  if RadioGroup3.ItemIndex=0 then
    WriteIntoIniFile('Print','Default','True')
  else
    WriteIntoIniFile('Print','Default','False');
   Close;
end;

procedure TPrintSetting.RadBtCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPrintSetting.FormShow(Sender: TObject);
var
 PageType:String;
begin
  inherited;
  dbFormName.KeyValue:=1;
  dbFormNameClick(nil);
  if ReadFromIniFile('Print','Default','False')='True' then
    RadioGroup3.ItemIndex:=0
  else
    RadioGroup3.ItemIndex:=1;
  if ReadFromIniFile('Print','RoundLine','True')='True' then
    thereRoundLine.ItemIndex:=0
  else
    thereRoundLine.ItemIndex:=1;
  PageType:=ReadFromIniFile('Print','PageType','A4');
  if PageType='A4' then
    RadioGroup1.ItemIndex:=0
  else if PageType='A5' then
    RadioGroup1.ItemIndex:=1
  else if PageType='A3' then
    RadioGroup1.ItemIndex:=2
  else
  begin
    RadioGroup1.ItemIndex:=3;
    shPage.Height:=StrToInt(ReadFromIniFile('Print','PageHeigth','29.6'));
    shPage.Width:=StrToInt(ReadFromIniFile('Print','PageWidth','21'));
  end;
end;

end.
