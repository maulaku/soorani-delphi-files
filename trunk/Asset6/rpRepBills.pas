unit rpRepBills;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RadForms, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, ppViewr, RSqlMaskEdit, DBCtrls,
  RSqllookup, RSQLComboBox, Db, ADODB, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport,define, Grids, DBGrids, ppPrnabl,
  ppCtrls, ppBands, ppVar, ppModule, raCodMod,Variants,ppTypes;

type
  TRepBills = class(TRadForm)
    ppViewer: TppViewer;
    ppViewer1: TppViewer;
    Panel2: TPanel;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    mskPreviewPage: TMaskEdit;
    mskPreviewPercentage: TMaskEdit;
    Panel1: TPanel;
    dblClass: TRSqlDbLookup;
    Label3: TLabel;
    Label2: TLabel;
    edToDate: TRSqlMaskEdit;
    Label5: TLabel;
    edFromDate: TRSqlMaskEdit;
    Label4: TLabel;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dsRecItem: TDataSource;
    quRecItem: TADOQuery;
    qudblClass: TADOQuery;
    dsDblClass: TDataSource;
    qudblClassclass_code: TSmallintField;
    qudblClassclass_desc: TStringField;
    qudblClassclass_name: TStringField;
    qudblClassClass_Type: TSmallintField;
    dsDblItem: TDataSource;
    quDblItem: TADOQuery;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lbDate: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Label1: TLabel;
    cbState: TRSqlComboBox;
    quRecItemBill_Type: TSmallintField;
    quRecItemBill_No: TIntegerField;
    quRecItemItem_Code: TStringField;
    quRecItemItem_Amount_Number: TIntegerField;
    quRecItemCreator: TStringField;
    quRecItemCreate_Date: TStringField;
    quRecItemConfirmer: TStringField;
    quRecItemConfirm_Date: TStringField;
    quRecItemItem_Req_No: TIntegerField;
    quRecItemState: TSmallintField;
    quRecItemClass_Code: TSmallintField;
    quRecItemItem_Unit: TSmallintField;
    quRecItemItem_Name: TStringField;
    quRecItemConf_Amount: TIntegerField;
    quRecItemClass_Name: TStringField;
    quRecItemUnit_Item_Desc: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    quRecItemCrtName: TStringField;
    quRecItemConfName: TStringField;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppvRow: TppVariable;
    pplbState: TppLabel;
    qudblClassppc_code: TStringField;
    qudblClasspc_code: TStringField;
    qudblClassps_code: TStringField;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    dblItem: TRSqlDbLookup;
    quDblItemPk_Item: TIntegerField;
    quDblItemitem_name: TStringField;
    quDblItemclass_code: TSmallintField;
    quDblItemitem_desc: TStringField;
    quDblItemitem_unit: TSmallintField;
    quDblItemItem_Inventory: TIntegerField;
    quDblItemOrder_Point: TSmallintField;
    quDblItemInventory_Limit: TSmallintField;
    quDblItemPK_DetailGroups: TSmallintField;
    quDblItemPK_MasterGroups: TSmallintField;
    quDblItemPosition_Code: TStringField;
    quDblItemItem_Code: TStringField;
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure dblClassClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure ppvRowCalc(Sender: TObject; var Value: Variant);
    procedure ppvRowReset(Sender: TObject; var Value: Variant);
    procedure pplbStatePrint(Sender: TObject);
  private
    { Private declarations }
    SQL : String ;
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;

var
  RepBills: TRepBills;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TRepBills.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TRepBills.mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
    end;

end; procedure TRepBills.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TRepBills.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TRepBills.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TRepBills.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TRepBills.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TRepBills.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TRepBills.DoRun(var mes: TMessage);
function makewhere:string;
var s1:string;
begin
 s1:='';
 if(dblClass.Text <> '') then
    s1 := s1 + ' AND IT.Class_Code = ' + IntToStr(dblClass.KeyValue) ;
 if(dblItem.Text <> '') then
    s1 := s1 + ' AND BI.Item_Code = ' + dblItem.KeyValue ;
 if(cbState.Text <> '') then
    s1 := s1 + ' AND Bill.State = ' + IntToStr(cbState.ItemIndex + 1) ;
 if(DabData.checkDate(edFromDate.Text)) then
    s1 := s1 + ' AND Bill.Create_Date >'+''''+edFromDate.Text+'''' ;
 if(DabData.checkDate(edToDate.Text)) then
    s1 := s1 + ' AND Bill.Create_Date <'+''''+edToDate.Text +'''' ;

 result:=s1;
end;
var s:string;
begin
    s:=makewhere;
    quRecItem.Close;
    quRecItem.SQL.Text := SQL + S + ' ORDER BY IT.Class_Code , BI.Item_Code ';
    quRecItem.Open;
    ppViewer.reset;
    lbDate.Caption:=Dabdata.disp_date;
    ppViewer.Report.PrintToDevices;
end;

procedure TRepBills.dblClassClick(Sender: TObject);
begin
if (dblClass.Text<>'') then
 begin
  quDblItem.Close;
  quDblItem.Parameters[0].Value:=dblClass.KeyValue;
  quDblItem.Open;
  dblItem.KeyValue:=Null;
 end
else
  dblItem.KeyValue:=Null;
end;

procedure TRepBills.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=127;
  Application.MainForm.Dispatch(mes);
end;
procedure TRepBills.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;


procedure TRepBills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TRepBills.ppVariable1Calc(Sender: TObject; var Value: Variant);

begin
  Value:=Value+1;
end;

procedure TRepBills.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
 Value:=1;
end;

procedure TRepBills.FormShow(Sender: TObject);
begin
    Top := 0 ;
    Left := 0 ;
    SQL := quRecItem.SQL.Text ;
    qudblClass.Close ;
    qudblClass.Open ;
end;

procedure TRepBills.ppvRowCalc(Sender: TObject; var Value: Variant);
begin
    Value := Value + 1 ;
end;

procedure TRepBills.ppvRowReset(Sender: TObject; var Value: Variant);
begin
    Value := 1 ;
end;

procedure TRepBills.pplbStatePrint(Sender: TObject);
begin
    case quRecItemState.Value Of
    1: pplbState.Caption := ' ‰ŸÌ„ ‘œÂ' ;
    2: pplbState.Caption := ' «ÌÌœ ‘œÂ' ;
    3: pplbState.Caption := '—œ ‘œÂ' ;
    end ;
end;

end.
