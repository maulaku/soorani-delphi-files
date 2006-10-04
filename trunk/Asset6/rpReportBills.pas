unit rpReportBills;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RadForms, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, ppViewr, RSqlMaskEdit, DBCtrls,
  RSqllookup, RSQLComboBox, Db, ADODB, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport,define, Grids, DBGrids, ppPrnabl,
  ppCtrls, ppBands, ppVar, ppModule, raCodMod, RSqlEdit,ppTypes;

type
  TReportBills = class(TRadForm)
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
    cbType: TRSqlComboBox;
    dblClass: TRSqlDbLookup;
    Label2: TLabel;
    Label1: TLabel;
    ppReport1: TppReport;
    dsItemReq: TDataSource;
    quBills: TADOQuery;
    qudblClass: TADOQuery;
    dsDblClass: TDataSource;
    qudblClassclass_code: TSmallintField;
    qudblClassclass_desc: TStringField;
    qudblClassclass_name: TStringField;
    qudblClassClass_Type: TSmallintField;
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
    Label3: TLabel;
    Label4: TLabel;
    meFromDate: TRSqlMaskEdit;
    meToDate: TRSqlMaskEdit;
    Label5: TLabel;
    edBillNo: TRSqlEdit;
    quBillsBill_Type: TSmallintField;
    quBillsBill_No: TIntegerField;
    quBillsItem_Code: TStringField;
    quBillsItem_Amount_Number: TIntegerField;
    quBillsCreator: TStringField;
    quBillsCreate_Date: TStringField;
    quBillsItem_Req_No: TIntegerField;
    quBillsreceiver: TStringField;
    quBillsState: TSmallintField;
    quBillsItem_Name: TStringField;
    quBillsItem_Unit: TSmallintField;
    quBillsClass_Code: TSmallintField;
    quBillsConf_Amount: TIntegerField;
    quBillsUnit_Item_Desc: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
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
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    quBillsST: TStringField;
    ppDBText8: TppDBText;
    quBillsCreatorName: TStringField;
    quBillsRecieverName: TStringField;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    Row: TppVariable;
    qudblClassppc_code: TStringField;
    qudblClasspc_code: TStringField;
    qudblClassps_code: TStringField;
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure quBillsCalcFields(DataSet: TDataSet);
    procedure RowCalc(Sender: TObject; var Value: Variant);
    procedure RowReset(Sender: TObject; var Value: Variant);
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
  ReportBills: TReportBills;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TReportBills.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TReportBills.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TReportBills.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TReportBills.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TReportBills.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TReportBills.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TReportBills.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;





procedure TReportBills.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TReportBills.DoRun(var mes: TMessage);
function makewhere:string;
var s1:string;
begin
 s1 := '' ;
 if cbType.itemindex<>-1 then s1:=s1+ ' AND Bill.State ='+IntToStr(cbType.itemindex + 1) ;

 if dblClass.text<>'' then s1:=s1+' AND BI.Bill_No NOT IN (SELECT Bill_No FROM Bill_Items LEFT OUTER JOIN Item IT ON'+
                                ' BI.Item_Code = IT.Item_Code WHERE IT.Class_Code = '+ IntToStr(dblClass.KeyValue)+ ')';
 if DabData.checkDate(meFromDate.Text) then
    s1:= s1+ ' AND Bill.Create_Date > '+''''+ meFromDate.Text + '''';

 if DabData.checkDate(meToDate.Text) then
    s1:= s1+ ' AND Bill.Create_Date < '+'''' + meToDate.Text+'''' ;

 if(edBillNo.text <> '') then
    s1 := s1 + ' AND BI.Bill_No = '+edBillNo.Text ;
    S1 := s1 + ' ORDER BY BI.Bill_No ' ;

 result:=s1;
end;
var s:string;
begin
   s:=makewhere;
    quBills.Close ;
    quBills.SQL.Text := SQL + S ;
    quBills.Open ;
   ppViewer.reset;
  lbDate.Caption:=Dabdata.disp_date;
  ppViewer.Report.PrintToDevices;
end;

procedure TReportBills.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=129;
  Application.MainForm.Dispatch(mes);
end;
procedure TReportBills.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;


procedure TReportBills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TReportBills.ppVariable1Calc(Sender: TObject; var Value: Variant);

begin
  Value:=Value+1;
end;

procedure TReportBills.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
 Value:=1;
end;



procedure TReportBills.FormShow(Sender: TObject);
begin
  Top := 0 ;
  Left := 0 ;

  SQL := quBills.SQL.Text ;
  qudblClass.Close ;
  qudblClass.Open ;
end;

procedure TReportBills.quBillsCalcFields(DataSet: TDataSet);
begin
    case quBillsState.Value Of
    1: quBillsST.Value := ' ‰ŸÌ„ ‘œÂ' ;
    2: quBillsST.Value := ' «ÌÌœ ‘œÂ' ;
    3: quBillsST.Value := '—œ ‘œÂ' ;
    end;
end;

procedure TReportBills.RowCalc(Sender: TObject; var Value: Variant);
begin
    Value := Value + 1 ;
end;

procedure TReportBills.RowReset(Sender: TObject; var Value: Variant);
begin
    Value := 1 ;
end;

end.
