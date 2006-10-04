unit fmInRequestChangeFamily;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls,InRadForms, DB,define,
  ADODB, Buttons, ToolPanels, FormSize, AdvPageControl, Shader, AdvNavBar,
  AdvTabSet, fcButton, fcImgBtn, fcClearPanel, fcButtonGroup, dxDockControl,
  dxDockPanel, Tilebmp, jpeg, HotSpotImage, AdvToolBtn, asgcombo, ColorCombo,
  Lucombo, dblucomb, cxControls, cxContainer, cxEdit, cxGroupBox, cxImage,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxLabel, cxButtonEdit, cxFilterControl,
  cxDBFilterControl, AdvEdit, DBAdvEd, cxCheckBox, cxHint;

type
  TInRequestChangeFamily = class(TInRadForm)
    gbOkCancel: TGroupBox;
    RadBtOk: TBitBtn;
    RadBtCancel: TBitBtn;
    FormSize1: TFormSize;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    fcButtonGroup1: TfcButtonGroup;
    fcButtonGroup1fcImageBtn1: TfcImageBtn;
    fcButtonGroup1fcImageBtn2: TfcImageBtn;
    AdvTabSheet2: TAdvTabSheet;
    cxGroupBox1: TcxGroupBox;
    dsoRequestChangeFamily: TADODataSet;
    dsoRequestChangeFamilyID: TBytesField;
    dsoRequestChangeFamilyREQUEST_DATE: TDateTimeField;
    dsoRequestChangeFamilyNAME: TStringField;
    dsoRequestChangeFamilyFAMILY: TStringField;
    dsoRequestChangeFamilySSN: TStringField;
    dsoRequestChangeFamilyMELI_CODE: TStringField;
    dsoRequestChangeFamilyLOC_CODE: TStringField;
    dsoRequestChangeFamilyDICTRICT: TStringField;
    dsoRequestChangeFamilyBIRTH_DATE: TDateTimeField;
    dsoRequestChangeFamilyDOCUMENT_DATE: TDateTimeField;
    dsoRequestChangeFamilyFATHER_NAME: TStringField;
    dsoRequestChangeFamilyMOTHER_NAME: TStringField;
    dsoRequestChangeFamilyJOB_NAME: TStringField;
    dsoRequestChangeFamilyPOST: TStringField;
    dsoRequestChangeFamilyWORK_ADDRESS: TStringField;
    dsoRequestChangeFamilyHOME_ADDRESS: TStringField;
    dsoRequestChangeFamilyDESIGNATION: TStringField;
    dsoRequestChangeFamilyRELIGION: TStringField;
    dsoRequestChangeFamilyWORK_PHONE: TStringField;
    dsoRequestChangeFamilyHOME_PHONE: TStringField;
    dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT1: TBooleanField;
    dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT1: TStringField;
    dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT2: TBooleanField;
    dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT2: TStringField;
    dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT3: TBooleanField;
    dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT3: TStringField;
    dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT4: TBooleanField;
    dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT4: TStringField;
    dsoRequestChangeFamilyCHANGE_REASON: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME1: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME2: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME3: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME4: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME5: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME6: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME7: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME8: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME9: TStringField;
    dsoRequestChangeFamilyREQUEST_NAME10: TStringField;
    dsoRequestChangeFamilyOFFICE_REG_DATE: TDateTimeField;
    dsoRequestChangeFamilyOFFICE_REG_NUMBER: TStringField;
    dsoRequestChangeFamilyOFFICE_REG_NAME: TStringField;
    dsoRequestChangeFamilyOFFICE_SET_REG_DATE: TDateTimeField;
    dsoRequestChangeFamilyOFFICE_SET_REG_NUMBER: TStringField;
    dsoRequestChangeFamilyOFFICE_SET_REG_NAME: TStringField;
    dsoRequestChangeFamilyARCHVER_NAME: TStringField;
    dsoRequestChangeFamilyDOCUMENTOR_NAME: TStringField;
    dsoRequestChangeFamilyHAVE_OPPONENT: TBooleanField;
    dsoRequestChangeFamilyDIRECTOR_OFFICE_REG_NAME: TStringField;
    dsoRequestChangeFamilyHAVE_CHAGE_BEFORE: TStringField;
    dsoRequestChangeFamilyEQUAL_REQESTOR_WITH_DOCUMENT: TBooleanField;
    dsoRequestChangeFamilyREMOVED_LOC_FROM_FAMILY: TBooleanField;
    dsoRequestChangeFamilyWORD_NOT_OPPONENT: TStringField;
    dsoRequestChangeFamilyREFERRAL_REG: TStringField;
    dsoRequestChangeFamilySET_FIRST_WORD_TO_REQUEST: TStringField;
    dsoRequestChangeFamilyREQUEST_PAGE: TIntegerField;
    dsoRequestChangeFamilyREQUEST_ROW: TIntegerField;
    dsoRequestChangeFamilyREQUEST_SET_NAME: TStringField;
    dsoRequestChangeFamilyPERSON_IMAGE: TBlobField;
    DataSource1: TDataSource;
    dmIMPersonImage: TcxDBImage;
    edDate: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edName: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    edbirth: TcxButtonEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel8: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxLabel9: TcxLabel;
    edirthDate: TcxMaskEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel13: TcxLabel;
    dAddresswork: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxLabel14: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDefaultEditStyleController1: TcxDefaultEditStyleController;
    cxHintStyleController1: TcxHintStyleController;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxLabel15: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel30: TcxLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxLabel26: TcxLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxLabel27: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel28: TcxLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxLabel29: TcxLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBCheckBox5: TcxDBCheckBox;
    cxLabel34: TcxLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxLabel35: TcxLabel;
    cxDBTextEdit29: TcxDBTextEdit;
    cxLabel36: TcxLabel;
    cxDBTextEdit30: TcxDBTextEdit;
    cxLabel37: TcxLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    cxLabel38: TcxLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    cxLabel39: TcxLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    cxLabel40: TcxLabel;
    cxDBTextEdit34: TcxDBTextEdit;
    procedure FormActivate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RadBtOkClick(Sender: TObject);
    procedure RadBtCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InRequestChangeFamily: TInRequestChangeFamily;
  BirthLoc :String;

implementation

uses DabDmdle, fmNameMain, fmlocspc, fmRequestChangeFamily;

{$R *.dfm}

procedure TInRequestChangeFamily.RadBtOkClick(Sender: TObject);
begin
  inherited;
  if Not(ErrorToSetRecord) then
  begin
    NameMain.dsoNamesv15_cnt.Value := DabData.FName  + ' ' + DabData.FName;
    NameMain.dsoNamesv15.Value := DabData.FName  + ' ' + DabData.FName;
    NameMain.dsoNamesv01.Value := '0';
    NameMain.dsoNamesv02.Value := '0';
    NameMain.dsoNamesv03.Value := '0';
    NameMain.dsoNamesv09.Value := '0';
    NameMain.dsoNamesv10.Value := '0';
    NameMain.dsoNamesv14.Value := '0';
    NameMain.dsoNamesv15.Value := '0';
    NameMain.dsoNames.Post;
    Close;
  end
  else
    ErrorToSetRecord:=False;
end;

procedure TInRequestChangeFamily.RadBtCancelClick(Sender: TObject);
begin
  inherited;
  NameMain.dsoNames.Cancel;
  Close;
end;

procedure TInRequestChangeFamily.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  GeoLoc := TGeoLoc.Create(Application);
  if (edbirth.text <> '') then
    GeoLoc.LocCode := BirthLoc
   else
    GeoLoc.LocCode := '00000000000000';

  GeoLoc.showmodal;
  BirthLoc := GeoLoc.LocCode;
  if (BirthLoc <> '00000000000000') then
     edbirth.text := GeoLoc.CityName
   else
         GeoLoc.LocCode := '00000000000000';
  GeoLoc.free;

end;

procedure TInRequestChangeFamily.FormActivate(Sender: TObject);
begin
  inherited;
  cxDBTextEdit9.BiDiMode := bdRightToLeft;
end;

end.
