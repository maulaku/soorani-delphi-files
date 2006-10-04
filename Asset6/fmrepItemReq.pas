unit fmrepItemReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, ppViewr, RSqlMaskEdit, DBCtrls,
  RSqllookup, RSQLComboBox, Db, ADODB, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport,define, Grids, DBGrids, ppPrnabl,
  ppCtrls, ppBands, ppVar, ppModule, raCodMod, RadForms,Variants,ppTypes;

type
  TrepItemReq = class(TRadForm)
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
    dblItem: TRSqlDbLookup;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edToDate: TRSqlMaskEdit;
    Label5: TLabel;
    edFromDate: TRSqlMaskEdit;
    Label4: TLabel;
    Label6: TLabel;
    dblUnit: TRSqlDbLookup;
    Label7: TLabel;
    cbReqType: TRSqlComboBox;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    dsItemReq: TDataSource;
    quItemReq: TADOQuery;
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
    dsDblUnit: TDataSource;
    quDblUnit: TADOQuery;
    quDblUnitUt_Org_Code: TIntegerField;
    quDblUnitUt_Code: TSmallintField;
    quDblUnitUt_Name: TStringField;
    quDblUnitUt_Mast_Code: TSmallintField;
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
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine17: TppLine;
    ppDBText6: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape5: TppShape;
    ppShape2: TppShape;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppDBText1: TppDBText;
    Label8: TLabel;
    dblOrg: TRSqlDbLookup;
    dsDblOrg: TDataSource;
    qudblOrg: TADOQuery;
    qudblOrgOrg_Code: TIntegerField;
    qudblOrgOrg_Name: TStringField;
    qudblOrgOrg_Addr: TStringField;
    qudblOrgOrg_Mast_Code: TIntegerField;
    qudblClassppc_code: TStringField;
    qudblClasspc_code: TStringField;
    qudblClassps_code: TStringField;
    quItemReqReq_No: TIntegerField;
    quItemReqItem_Code: TStringField;
    quItemReqReq_Amount: TIntegerField;
    quItemReqConf_Amount: TIntegerField;
    quItemReqRecieve_Amount: TIntegerField;
    quItemReqr_state: TSmallintField;
    quItemReqitem_type: TSmallintField;
    quItemReqReq_type: TSmallintField;
    quItemReqReq_number: TStringField;
    quItemReqReq_no_1: TIntegerField;
    quItemReqCreator: TStringField;
    quItemReqCreate_Date: TStringField;
    quItemReqOrg_Code: TIntegerField;
    quItemReqOrg_Unit_Code: TSmallintField;
    quItemReqConfirmer: TStringField;
    quItemReqConfirm_date: TStringField;
    quItemReqVerifier: TStringField;
    quItemReqVerify_date: TStringField;
    quItemReqState: TSmallintField;
    quItemReqReq_Type_1: TSmallintField;
    quItemReqGoods_code: TStringField;
    quItemReqLoc_Code: TSmallintField;
    quItemReqItem_Code_1: TStringField;
    quItemReqItem_Name: TStringField;
    quItemReqClass_Code: TSmallintField;
    quItemReqClass_Code_1: TSmallintField;
    quItemReqClass_Name: TStringField;
    quItemReqUT_Code: TSmallintField;
    quItemReqUT_Name: TStringField;
    quItemReqCode: TSmallintField;
    quItemReqUnit_Item_Desc: TStringField;
    quItemReqItem_Unit: TSmallintField;
    quItemReqType: TStringField;
    quItemReqRadif: TIntegerField;
    quItemReqReqType: TStringField;
    quItemReqReqState: TStringField;
    quItemReqItemType: TStringField;
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure quItemReqCalcFields(DataSet: TDataSet);
    procedure cbTypeChange(Sender: TObject);
    procedure dblClassClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure dblOrgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;

var
  repItemReq: TrepItemReq;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TrepItemReq.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TrepItemReq.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TrepItemReq.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TrepItemReq.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepItemReq.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepItemReq.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepItemReq.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepItemReq.quItemReqCalcFields(DataSet: TDataSet);
begin
 Case quItemReqReq_type_1.asinteger of
  0:quItemReqReqType.AsString:='œ—ŒÊ«”  ⁄«œÌ ﬂ«·«';
  1:quItemReqReqType.AsString:='œ—ŒÊ«”  ”«·«‰Â ﬂ«·«';
  2:quItemReqReqType.AsString:='œ—ŒÊ«”  ﬂ«·« ÃÂ   ⁄„Ì— „«·';
 end;

 Case quItemReqState.asinteger of
  0:quItemReqReqState.AsString:=' ‰ŸÌ„ ‘œÂ';
  1:quItemReqReqState.AsString:=' «ÌÌœ ‘œÂ  Ê”ÿ „œÌ— ﬂ· «„Ê— «œ«—Ì';
  2:quItemReqReqState.AsString:='—œ ‘œÂ  Ê”ÿ „œÌ— ﬂ· «„Ê— «œ«—Ì';
  3:quItemReqReqState.AsString:='»——”Ì ‘œÂ';
 end;
 Case quItemReqitem_type.asinteger of
  0:quItemReqItemType.AsString:='«„Ê«·Ì „‰ﬁÊ· „’—›Ì';
  1:quItemReqItemType.AsString:='«„Ê«·Ì „‰ﬁÊ· œ— Õﬂ„ „’—›Ì';
  2:quItemReqItemType.AsString:='«„Ê«·Ì €Ì— „’—›Ì';
 end;
end;

procedure TrepItemReq.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TrepItemReq.DoRun(var mes: TMessage);
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
 s1:=' Where 1=1 ';
 if cbType.itemindex<>-1 then s1:=s1+' and requested_item.item_type='+inttostr(cbtype.itemindex);
 if dblClass.text<>'' then s1:=s1+' and goods_class.class_code='+inttostr(dblClass.KeyValue);
 if dblItem.text<>'' then s1:=s1+'and item.item_code='+inttostr(dblItem.keyvalue);
 if checkdate(edfromdate.text) then s1:=s1+' and item_request.create_date>='+''''+edFromDate.text+'''';
 if checkdate(edtodate.text) then s1:=s1+' and item_request.create_date<='+''''+edToDate.text+'''';
 if dblOrg.text<>'' then s1:=s1+' and item_request.org_code='+inttostr(dblOrg.keyvalue);
 if dblUnit.text<>'' then s1:=s1+' and item_request.org_unit_code='+inttostr(dblUnit.keyvalue);
 if cbReqType.itemindex<>-1 then s1:=s1+' and item_request.req_type='+IntToStr(cbReqType.itemindex);
 result:=s1;
end;
var s:string;
begin
   s:=makewhere;
   quItemReq.Close;
   quItemReq.SQL.Clear;
   quItemReq.SQL.Add('Select Requested_Item.*,Item_Request.*');
   quItemReq.SQL.Add(' ,Item.Item_Code,Item.Item_Name,Item.Class_Code');
   quItemReq.SQL.Add(' ,Goods_Class.Class_Code,Goods_Class.Class_Name');
   quItemReq.SQL.Add(' ,Org_Unit.UT_Code,Org_Unit.UT_Name,Unit_Item.*,Item.Item_Unit');
   quItemReq.SQL.Add(' From Item_Request left outer join Requested_Item');
   quItemReq.SQL.Add(' on Item_Request.Req_No=Requested_Item.Req_No');
   quItemReq.SQL.Add(' left outer join Item');
   quItemReq.SQL.Add(' on Requested_Item.Item_Code=Item.Item_Code');
   quItemReq.SQL.Add(' left outer join Goods_Class on Goods_Class.Class_Code=Item.Class_Code');
   quItemReq.SQL.Add(' left outer join org_Unit on Item_Request.Org_Unit_Code=Org_Unit.UT_Code and Item_Request.Org_Code=Org_Unit.UT_Org_Code');
   quItemReq.SQL.Add(' left outer join Unit_Item On Item.Item_Unit=Unit_Item.Code');
   quItemReq.sql.add(s);
   quItemReq.Open;
   ppViewer.reset;
  lbDate.Caption:=Dabdata.disp_date;
  ppViewer.Report.PrintToDevices;
end;

procedure TrepItemReq.cbTypeChange(Sender: TObject);
begin
 if(cbType.Text<>'') then
  begin
   qudblClass.Close;
   qudblClass.Parameters[0].Value:=cbType.ItemIndex;
   qudblClass.Open;
   //dblClass.KeyValue:=qudblClassclass_code.AsInteger;
  end
 else
   dblClass.KeyValue:=Null;
end;

procedure TrepItemReq.dblClassClick(Sender: TObject);
begin
if (dblClass.Text<>'') then
 begin
  quDblItem.Close;
  quDblItem.Parameters[0].Value:=dblClass.KeyValue;
  quDblItem.Open;
  dblItem.KeyValue:=quDblItemitem_code.AsInteger;
 end
else
  dblItem.KeyValue:=Null;
end;

procedure TrepItemReq.FormShow(Sender: TObject);
begin
  quDblOrg.Close;
  quDblOrg.Open;
end;

procedure TrepItemReq.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=60;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;
procedure TrepItemReq.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;


procedure TrepItemReq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TrepItemReq.ppVariable1Calc(Sender: TObject; var Value: Variant);

begin
  Value:=Value+1;
end;

procedure TrepItemReq.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
 Value:=1;
end;

procedure TrepItemReq.dblOrgClick(Sender: TObject);
begin
 dblUnit.KeyValue:=Null;
 if trim(dblOrg.Text)<>'' then
  begin
   qudblUnit.Close;
   qudblUnit.Parameters[0].Value:=dblOrg.KeyValue;
   qudblUnit.Open;
  end;
end;

end.
