unit fmrepItemRepair;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, ppViewr, Db, ADODB, ppCache, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls,
  ppBands, RSqlEdit, ppVar,define,RadForms,ppTypes;

type
  TrepItemRepair = class(TRadForm)
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
    Label1: TLabel;
    Label2: TLabel;
    quReqItem: TADOQuery;
    dsReqItem: TDataSource;
    edGood_Code: TRSqlEdit;
    edGood_Name: TRSqlEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppShape2: TppShape;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lbDate: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    SpeedButton1: TButton;
    quReqItemReq_no: TIntegerField;
    quReqItemCreator: TStringField;
    quReqItemCreate_Date: TStringField;
    quReqItemOrg_Code: TIntegerField;
    quReqItemOrg_Unit_Code: TSmallintField;
    quReqItemConfirmer: TStringField;
    quReqItemConfirm_date: TStringField;
    quReqItemVerifier: TStringField;
    quReqItemVerify_date: TStringField;
    quReqItemState: TSmallintField;
    quReqItemReq_Type: TSmallintField;
    quReqItemGoods_code: TStringField;
    quReqItemloc_code: TSmallintField;
    quReqItemStateAsset: TStringField;
    quReqItemgoods_code_1: TStringField;
    quReqItemreceipt_no: TIntegerField;
    quReqItemlabel: TIntegerField;
    quReqItemAssetBPrice: TFloatField;
    quReqItemAssetEPrice: TFloatField;
    quReqItemAssetType: TStringField;
    quReqItemItem_Code: TStringField;
    quReqItemMaster_Name: TStringField;
    quReqItemDetail_Name: TStringField;
    quReqItemItem_Name: TStringField;
    quReqItemPosition_code: TStringField;
    quReqItemInventory_Limit: TSmallintField;
    quReqItemOrder_Point: TSmallintField;
    quReqItemItem_Inventory: TIntegerField;
    quReqItemitem_desc: TStringField;
    quReqItemclass_code: TSmallintField;
    quReqItemclass_desc: TStringField;
    quReqItemclass_name: TStringField;
    quReqItemClass_Type: TSmallintField;
    quReqItemppc_code: TStringField;
    quReqItempc_code: TStringField;
    quReqItemps_code: TStringField;
    quReqItemUnit_Item: TStringField;
    quReqItemClass_TypeStr: TStringField;
    quReqItemExpr1: TSmallintField;
    quReqItemExpr2: TSmallintField;
    ppDBPipeline1: TppDBPipeline;
    ppVariable1: TppVariable;
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure edGood_CodeExit(Sender: TObject);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;





var
  repItemRepair: TrepItemRepair;

implementation

uses DabDmdle, fmGoodInfo;

{$R *.DFM}

procedure TrepItemRepair.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TrepItemRepair.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TrepItemRepair.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TrepItemRepair.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepItemRepair.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepItemRepair.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepItemRepair.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepItemRepair.SpeedButton1Click(Sender: TObject);
begin
Goodinfo:=TGoodInfo.Create(Application);
GoodInfo.GF:=2;
Goodinfo.ShowModal;
end;


procedure TrepItemRepair.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TrepItemRepair.DoRun(var mes: TMessage);
begin
 quReqItem.Close;
 if edGood_Code.Text<>'' then
 begin
   quReqItem.Parameters[0].Value:=edGood_Code.Text;
   quReqItem.Parameters[1].Value:=0;
 end
 else
   quReqItem.Parameters[1].Value:=1;
 quReqItem.Open;
 ppViewer.reset;
 lbDate.Caption:=Dabdata.disp_date;
 ppViewer.Report.PrintToDevices;
end;

procedure TrepItemRepair.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TrepItemRepair.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=52;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;

procedure TrepItemRepair.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TrepItemRepair.edGood_CodeExit(Sender: TObject);
begin
 if(edGood_Code.Text='') then
  edGood_Name.Text:='';
end;

procedure TrepItemRepair.ppVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=IntToStr(quReqItem.RecNo);
end;

end.
