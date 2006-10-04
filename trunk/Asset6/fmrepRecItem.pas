unit fmrepRecItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, ppViewr, RSqlMaskEdit, DBCtrls,
  RSqllookup, RSQLComboBox, Db, ADODB, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport,define, Grids, DBGrids, ppPrnabl,
  ppCtrls, ppBands, ppVar, ppModule, raCodMod,RadForms,Variants,ppTypes;

type
  TrepRecItem = class(TRadForm)
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
    ppLine18: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppDBText1: TppDBText;
    ppLabel13: TppLabel;
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
    procedure dblClassClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure ppLabel13Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;

var
  repRecItem: TrepRecItem;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TrepRecItem.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TrepRecItem.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TrepRecItem.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TrepRecItem.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepRecItem.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepRecItem.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepRecItem.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepRecItem.quRecItemCalcFields(DataSet: TDataSet);
begin
 Case quRecItemClass_Type.Value of
 0:quRecItemTypeName.AsString:='«„Ê«·Ì „‰ﬁÊ· „’—›Ì';
 1:quRecItemTypeName.AsString:='«„Ê«·Ì „‰ﬁÊ· œ— Õﬂ„ „’—›Ì';
 2:quRecItemTypeName.AsString:='«„Ê«·Ì €Ì— „’—›Ì';
 3:quRecItemTypeName.AsString:='«„Ê«·Ì €Ì— „‰ﬁÊ·';
 end;
end;

procedure TrepRecItem.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TrepRecItem.DoRun(var mes: TMessage);
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
 if cbType.itemindex<>-1 then s1:=s1+' and Goods_Class.Class_type='+inttostr(cbtype.itemindex);
 if dblClass.text<>'' then s1:=s1+' and Goods_Class.class_code='+inttostr(dblClass.KeyValue);
 if dblItem.text<>'' then s1:=s1+'and item.item_code='+inttostr(dblItem.keyvalue);
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
   quRecItem.SQL.Add('Select Goods_Rec.*,Rec_Item.*,Item.*,Goods_Class.*,Unit_Item.*');
   quRecItem.SQL.Add(' From Goods_Rec left outer join Rec_Item ');
   quRecItem.SQL.Add(' on Goods_Rec.rec_no=rec_item.rec_no');
   quRecItem.SQL.Add(' left outer join Item on Rec_Item.Item_code=Item.Item_code');
   quRecItem.SQL.Add(' left outer join Goods_Class on Item.Class_Code=Goods_Class.Class_Code');
   quRecItem.SQL.Add(' left outer join Unit_Item on Unit_Item.Code=Item.Item_Unit');
   quRecItem.sql.add(s);
   quRecItem.Open;
   ppViewer.reset;
  lbDate.Caption:=Dabdata.disp_date;
  ppViewer.Report.PrintToDevices;
end;

procedure TrepRecItem.cbTypeChange(Sender: TObject);
begin
 if(cbType.Text<>'') then
  begin
   qudblClass.Close;
   qudblClass.Parameters[0].Value:=cbType.ItemIndex;
   qudblClass.Open;
   dblClass.KeyValue:=Null;
   dblItem.KeyValue:=Null;
  end
 else
   dblClass.KeyValue:=Null;
end;

procedure TrepRecItem.dblClassClick(Sender: TObject);
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

procedure TrepRecItem.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=123;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;
procedure TrepRecItem.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;


procedure TrepRecItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TrepRecItem.ppVariable1Calc(Sender: TObject; var Value: Variant);

begin
  Value:=Value+1;
end;

procedure TrepRecItem.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
 Value:=1;
end;

procedure TrepRecItem.ppLabel13Print(Sender: TObject);
var
sum:Double;
begin
 Sum:=(quRecItemex_price.AsFloat)*(quRecItemamount.AsFloat);
 ppLabel13.Caption:=FloatToStr(Sum);
end;

end.
