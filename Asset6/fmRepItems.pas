unit fmRepItems;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RadForms, Forms, Dialogs,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, Db,
  ADODB, ExtCtrls, ppViewr, ppBands, ppPrnabl, ppCtrls, StdCtrls, Mask,
  Buttons, ppVar,Define, DBCtrls, RSqllookup, RSQLComboBox,Variants,ppTypes;

type
  TrepItems = class(TRadForm)
    quItem: TADOQuery;
    dsItem: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    quItemType: TStringField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lbDate: TppLabel;
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
    quItemRadif: TIntegerField;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cbType: TRSqlComboBox;
    dblClass: TRSqlDbLookup;
    QudblClass: TADOQuery;
    dsClass: TDataSource;
    QudblClassclass_code: TSmallintField;
    QudblClassclass_desc: TStringField;
    QudblClassclass_name: TStringField;
    QudblClassClass_Type: TSmallintField;
    quItemClass_Code_1: TSmallintField;
    quItemItem_Code: TStringField;
    quItemClass_Name: TStringField;
    quItemItem_Name: TStringField;
    quItemUnit_Item_Desc: TStringField;
    quItemClass_Type: TStringField;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    quItemClass_Code: TSmallintField;
    QudblClassppc_code: TStringField;
    QudblClasspc_code: TStringField;
    QudblClassps_code: TStringField;
    procedure quItemCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTypeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;

var
  repItems: TrepItems;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TrepItems.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TrepItems.DoRun(var mes: TMessage);
begin
  if(dblClass.KeyValue<>Null) AND (cbType.Text<>'') then
   begin
    quItem.close;
    quItem.SQL.Clear;
    quItem.SQL.Add(' select Goods_Class.Class_Code,Item.Class_Code,Item.Item_Code,LTrim(RTrim(Goods_Class.Class_Name)) Class_Name ,LTrim(RTrim(Item.Item_Name)) Item_Name,LTrim(RTrim(Unit_Item.Unit_Item_Desc)) Unit_Item_Desc');
    quItem.SQL.Add(' ,LTrim(RTrim(Goods_Class.Class_Type)) Class_Type');
    quItem.SQL.Add(' From Goods_Class left outer join Item');
    quItem.SQL.Add(' ON Item.Class_code=Goods_Class.Class_Code');
    quItem.SQL.Add(' Left Outer Join Unit_Item On Item.Item_Unit=Unit_Item.Code');
    QuItem.SQL.Add(' Where Goods_Class.Class_Type='+inttostr(cbType.ItemIndex)+' And Goods_Class.Class_Code='+VartoStr(dblClass.KeyValue));
    quItem.SQL.Add(' Order By Class_Type');
    quItem.Open;
   end;
  if(dblClass.KeyValue=Null) AND (cbType.Text<>'') then
   begin
    quItem.close;
    quItem.SQL.Clear;
    quItem.SQL.Add(' select Goods_Class.Class_Code,Item.Class_Code,Item.Item_Code,LTrim(RTrim(Goods_Class.Class_Name)) Class_Name ,LTrim(RTrim(Item.Item_Name)) Item_Name,LTrim(RTrim(Unit_Item.Unit_Item_Desc)) Unit_Item_Desc');
    quItem.SQL.Add(' ,LTrim(RTrim(Goods_Class.Class_Type)) Class_Type');
    quItem.SQL.Add(' From Goods_Class left outer join Item');
    quItem.SQL.Add(' ON Item.Class_code=Goods_Class.Class_Code');
    quItem.SQL.Add(' Left Outer Join Unit_Item On Item.Item_Unit=Unit_Item.Code');
    QuItem.SQL.Add(' Where Goods_Class.Class_Type='+inttostr(cbType.ItemIndex));
    quItem.SQL.Add(' Order By Class_Type');
    quItem.Open;
   end
  else if(dblClass.KeyValue=Null) AND (cbType.Text='') then
   begin
    quItem.Close;
    quItem.SQL.Clear;
    quItem.SQL.Add(' select Goods_Class.Class_Code,Item.Class_Code,Item.Item_Code,LTrim(RTrim(Goods_Class.Class_Name)) Class_Name ,LTrim(RTrim(Item.Item_Name)) Item_Name,LTrim(RTrim(Unit_Item.Unit_Item_Desc)) Unit_Item_Desc');
    quItem.SQL.Add(' ,LTrim(RTrim(Goods_Class.Class_Type)) Class_Type');
    quItem.SQL.Add(' From Goods_Class left outer join Item');
    quItem.SQL.Add(' ON Item.Class_code=Goods_Class.Class_Code');
    quItem.SQL.Add(' Left Outer Join Unit_Item On Item.Item_Unit=Unit_Item.Code');
    quItem.SQL.Add(' Order By Class_Type');
    quItem.Open;
   end;
  ppViewer.reset;
  lbDate.Caption:=Dabdata.disp_date;
  ppViewer.Report.PrintToDevices;
end;

procedure TrepItems.quItemCalcFields(DataSet: TDataSet);
begin
 Case quItemClass_Type.AsInteger of    //Class_Type.AsInteger of
  0: quItemType.Value:='«„Ê«·Ì „‰ﬁÊ· „’—›Ì';
  1: quItemType.Value:='«„Ê«·Ì „‰ﬁÊ· œ— Õﬂ„ „’—›Ì';
  2: quItemType.Value:='«„Ê«·Ì €Ì— „’—›Ì';
  3: quItemType.Value:='«„Ê«·Ì €Ì— „‰ﬁÊ·';
 end;
 if QuItem.RecNo=-1 then
  quItemRadif.Value:=1 else
  quItemRadif.Value:=quItem.recno;
end;
procedure TrepItems.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TrepItems.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=47;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;


procedure TrepItems.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TrepItems.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TrepItems.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TrepItems.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TrepItems.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepItems.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TrepItems.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepItems.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TrepItems.FormShow(Sender: TObject);
begin
  Top := 0 ;
  Left := 0 ;
end;

procedure TrepItems.cbTypeChange(Sender: TObject);
begin
 QudblClass.Close;
 if(cbType.Text <> '') then
 begin
      QudblClass.Parameters[0].Value:=cbType.ItemIndex;
      QudblClass.Open;
 end;
 dblClass.KeyValue := NULL ;
 //dblClass.KeyValue:=QudblClassclass_code.AsInteger;
end;

end.
