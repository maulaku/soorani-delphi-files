unit fmrepRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, RadForms, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, ppViewr, RSqlMaskEdit, DBCtrls,
  RSqllookup, RSQLComboBox, Db, ADODB, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport,define, Grids, DBGrids, ppPrnabl,
  ppCtrls, ppBands, ppVar, ppModule, raCodMod,Variants,ppTypes;

type
  TrepRec = class(TRadForm)
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
    quDblItemitem_code: TStringField;
    quDblItemitem_name: TStringField;
    quDblItemclass_code: TSmallintField;
    quDblItemitem_desc: TStringField;
    quDblItemitem_unit: TSmallintField;
    quDblItemItem_Inventory: TIntegerField;
    quDblItemOrder_Point: TSmallintField;
    quDblItemInventory_Limit: TSmallintField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lbDate: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine17: TppLine;
    ppDBText6: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppShape5: TppShape;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLabel11: TppLabel;
    ppLabel20: TppLabel;
    ppLine8: TppLine;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLabel22: TppLabel;
    qudblClassppc_code: TStringField;
    qudblClasspc_code: TStringField;
    qudblClassps_code: TStringField;
    quRecItemrec_no: TIntegerField;
    quRecItemcreator: TStringField;
    quRecItemdate: TStringField;
    quRecItemdeliver: TStringField;
    quRecItemddate: TStringField;
    quRecItemconfirmer: TStringField;
    quRecItemcdate: TStringField;
    quRecItemorder_no: TStringField;
    quRecItemdoc_no: TStringField;
    quRecItemorg: TStringField;
    quRecItemGetType: TSmallintField;
    quRecItemOrder_Location: TStringField;
    quRecItemOrg_Code: TIntegerField;
    quRecItemF_Code: TStringField;
    quRecItemF_Date: TStringField;
    quRecItemrec_no_1: TIntegerField;
    quRecItemitem_code: TStringField;
    quRecItembuy_price: TFloatField;
    quRecItemex_price: TFloatField;
    quRecItemamount: TIntegerField;
    quRecItemPk_Item: TIntegerField;
    quRecItemitem_name: TStringField;
    quRecItemclass_code: TSmallintField;
    quRecItemitem_desc: TStringField;
    quRecItemitem_unit: TSmallintField;
    quRecItemItem_Inventory: TIntegerField;
    quRecItemOrder_Point: TSmallintField;
    quRecItemInventory_Limit: TSmallintField;
    quRecItemPK_DetailGroups: TSmallintField;
    quRecItemPK_MasterGroups: TSmallintField;
    quRecItemPosition_Code: TStringField;
    quRecItemItem_Code_1: TStringField;
    quRecItemclass_code_1: TSmallintField;
    quRecItemclass_desc: TStringField;
    quRecItemclass_name: TStringField;
    quRecItemClass_Type: TSmallintField;
    quRecItemppc_code: TStringField;
    quRecItempc_code: TStringField;
    quRecItemps_code: TStringField;
    quRecItemCode: TSmallintField;
    quRecItemUnit_Item_Desc: TStringField;
    quRecItemOrder_Req_Type: TSmallintField;
    quRecItemOrder_Req_No: TStringField;
    quRecItemState: TSmallintField;
    quRecItemCreator_1: TStringField;
    quRecItemCreate_Date: TStringField;
    quRecItemConfirmer_1: TStringField;
    quRecItemConfirm_Date: TStringField;
    quRecItemCredit_Suplier: TStringField;
    quRecItemCS_Date: TStringField;
    quRecItemService_Desc: TStringField;
    quRecItemItem_Type: TSmallintField;
    quRecItemItem_Class: TSmallintField;
    quRecItemRequest_Refuse_Reason: TStringField;
    quRecItemService_Type_No: TSmallintField;
    quRecItemEstimate_Price: TFloatField;
    quRecItemDeal_Kind: TSmallintField;
    quRecItemInquiry_Date_Rec: TStringField;
    quRecItemRow: TSmallintField;
    quRecItemP_code: TSmallintField;
    quRecItemL_code: TSmallintField;
    quRecItemProPosal_Price: TFloatField;
    quRecItemOrder_type: TSmallintField;
    quRecItemOrder_no_1: TStringField;
    quRecItemV_date: TStringField;
    quRecItemperson_code: TSmallintField;
    quRecItemF_L_name: TStringField;
    quRecItemFather_name: TStringField;
    quRecItemloc: TStringField;
    quRecItemcertificate_no: TIntegerField;
    quRecItemadress: TStringField;
    quRecItemphone_no: TStringField;
    quRecItemfax_no: TStringField;
    quRecItemzip_code: TStringField;
    quRecItemeco_no: TStringField;
    quRecItembudjet_org_grade: TSmallintField;
    quRecItemv_state: TStringField;
    quRecItemLegal_Code: TSmallintField;
    quRecItemCompanyName: TStringField;
    quRecItemV_State_1: TSmallintField;
    quRecItemRec_No_2: TLargeintField;
    quRecItemRec_Date: TStringField;
    quRecItemRec_Location: TStringField;
    quRecItemE_Mail: TStringField;
    quRecItemAddress: TStringField;
    quRecItemPhone_No_1: TStringField;
    quRecItemFax_No_1: TStringField;
    quRecItemZip_Code_1: TStringField;
    quRecItemCommercial_No: TStringField;
    quRecItemBudet_Org_Grade: TSmallintField;
    quRecItemTypeName: TStringField;
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure quRecItemCalcFields(DataSet: TDataSet);
    procedure cbTypeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure ppLabel13Print(Sender: TObject);
    procedure ppLabel22Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;

var
  repRec: TrepRec;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TrepRec.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TrepRec.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TrepRec.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TrepRec.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepRec.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepRec.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepRec.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepRec.quRecItemCalcFields(DataSet: TDataSet);
begin
 Case quRecItemClass_Type.Value of
 0:quRecItemTypeName.AsString:='«„Ê«·Ì „‰ﬁÊ· „’—›Ì';
 1:quRecItemTypeName.AsString:='«„Ê«·Ì „‰ﬁÊ· œ— Õﬂ„ „’—›Ì';
 2:quRecItemTypeName.AsString:='«„Ê«·Ì €Ì— „’—›Ì';
 3:quRecItemTypeName.AsString:='«„Ê«·Ì €Ì— „‰ﬁÊ·';
 end;
end;

procedure TrepRec.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TrepRec.DoRun(var mes: TMessage);
function makewhere:string;
function checkdate(s:string):boolean;
function isnum(a:char):boolean;
begin
 if (s<='9') and (a>='0') then result:=true else result:=false;
end;

var i:integer;
begin
 result:=false;
 for i:=1 to length(s) do
  if isnum(s[i]) then result:=true;
end;
var s1:string;
begin
 s1:=' where Order_Request.order_req_type=1 ';
 if cbType.itemindex<>-1 then s1:=s1+' and Goods_Class.Class_type='+inttostr(cbtype.itemindex);
 if dblClass.text<>'' then s1:=s1+' and Goods_Class.class_code='+inttostr(dblClass.KeyValue);
 if checkdate(edfromdate.text) then s1:=s1+' and Goods_Rec.date>='+''''+edFromDate.text+'''';
 if checkdate(edtodate.text) then s1:=s1+' and Goods_Rec.date<='+''''+edToDate.text+'''';
 s1:=s1+' order by Goods_Class.Class_Type,Goods_Class.Class_Code,Rec_Item.Item_Code';
 result:=s1;
end;
var s:string;
begin
   s:=makewhere;
   quRecItem.Close;
   quRecItem.SQL.Clear;
   quRecItem.SQL.Add('Select Goods_Rec.*,Rec_Item.*,Item.*,Goods_Class.*,Unit_Item.*,Order_Request.*');
   quRecItem.SQL.Add(' ,InQuiry_Winer.*,Person_Supliet.*,Legal_Suplier.*');
   quRecItem.SQL.Add(' From Goods_Rec left outer join Rec_Item ');
   quRecItem.SQL.Add(' on Goods_Rec.rec_no=rec_item.rec_no');
   quRecItem.SQL.Add(' left outer join Item on Rec_Item.Item_code=Item.Item_code');
   quRecItem.SQL.Add(' left outer join Goods_Class on Item.Class_Code=Goods_Class.Class_Code');
   quRecItem.SQL.Add(' left outer join Unit_Item on Unit_Item.Code=Item.Item_Unit');
   quRecItem.SQL.Add(' left outer join Order_Request on Order_Request.Order_req_no=Goods_rec.order_no ');
   quRecItem.SQL.Add(' left outer join InQuiry_Winer on InQuiry_Winer.Order_no=goods_rec.order_no');
   quRecItem.SQL.Add(' left outer join Person_Supliet on Person_Supliet.Person_code=InQuiry_Winer.P_Code');
   quRecItem.SQL.Add(' left outer join Legal_Suplier on Legal_Suplier.Legal_code=InQuiry_Winer.L_Code');
   //quRecItem.SQL.Add(' where Order_Request.order_req_type=1');
   quRecItem.sql.add(s);
   quRecItem.Open;
   ppViewer.reset;
  lbDate.Caption:=Dabdata.disp_date;
  ppViewer.Report.PrintToDevices;
end;

procedure TrepRec.cbTypeChange(Sender: TObject);
begin
 if(cbType.Text<>'') then
  begin
   qudblClass.Close;
   qudblClass.Parameters[0].Value:=cbType.ItemIndex;
   qudblClass.Open;
   dblClass.KeyValue:=Null;
  end
 else
   dblClass.KeyValue:=Null;
end;

procedure TrepRec.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=125;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;
procedure TrepRec.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;


procedure TrepRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TrepRec.ppVariable1Calc(Sender: TObject; var Value: Variant);

begin
  Value:=Value+1;
end;

procedure TrepRec.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
 Value:=1;
end;

procedure TrepRec.ppLabel13Print(Sender: TObject);
var
sum:Double;
begin
 Sum:=(quRecItemex_price.AsFloat)*(quRecItemamount.AsFloat);
 ppLabel13.Caption:=FloatToStr(Sum);
end;

procedure TrepRec.ppLabel22Print(Sender: TObject);
begin
 if Not(quRecItemP_code.IsNull) then
   ppLabel22.Text:=quRecItemF_L_name.AsString;
 if Not(quRecItemL_code.IsNull) then
   ppLabel22.Text:=quRecItemCompanyName.AsString;
end;
end.
