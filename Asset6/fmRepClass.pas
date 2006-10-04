unit fmRepClass;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RadForms, Forms, Dialogs,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, Db,
  ADODB, ExtCtrls, ppViewr, ppBands, ppPrnabl, ppCtrls, StdCtrls, Mask,
  Buttons, ppVar,Define, DBCtrls, RSqllookup, RSQLComboBox,ppTypes;

type
  TRepClass = class(TRadForm)
    quClass: TADOQuery;
    dsClass: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    quClassType: TStringField;
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
    cbType: TRSqlComboBox;
    quClassClass_Code: TSmallintField;
    quClassClass_Desc: TStringField;
    quClassClass_Type: TSmallintField;
    ppShape5: TppShape;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lbDate: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    quClassClass_Name: TStringField;
    procedure quClassCalcFields(DataSet: TDataSet);
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
  private
    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoRun(var mes :TMessage);message RUN_CMD;
   procedure DoPrint(var mes :TMessage);message F_PRINT;
  end;

var
  RepClass: TRepClass;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TRepClass.DoPrint(var mes: TMessage);
begin
 ppViewer.Print;
end;

procedure TRepClass.DoRun(var mes: TMessage);
begin
  if (cbType.Text<>'') then
   begin
    quClass.close;
    quClass.SQL.Clear;
    quClass.SQL.Add('Select Class_Code,LTrim(RTrim(Class_Name)) Class_Name,LTrim(RTrim(Class_Desc)) Class_Desc,Class_Type');
    quClass.SQL.Add(' From Goods_Class Where Class_Type='+inttostr(cbType.ItemIndex));
    quClass.SQL.Add('order by class_type');
    quClass.Open;
   end
  else
   begin
    quClass.close;
    quClass.SQL.Clear;
    quClass.SQL.Add('Select Class_Code,LTrim(RTrim(Class_Name)) Class_Name,LTrim(RTrim(Class_Desc)) Class_Desc,Class_Type');
    quClass.SQL.Add(' From Goods_Class');
    quClass.SQL.Add('order by class_type');
    quClass.Open;
   end;
  ppViewer.reset;
  lbDate.Caption:=Dabdata.disp_date;
  ppViewer.Report.PrintToDevices;
end;

procedure TRepClass.quClassCalcFields(DataSet: TDataSet);
begin
Case quClassClass_Type.AsInteger of
  0: quClassType.Value:='«„Ê«·Ì „‰ﬁÊ· „’—›Ì';
  1: quClassType.Value:='«„Ê«·Ì „‰ﬁÊ· œ— Õﬂ„ „’—›Ì';
  2: quClassType.Value:='«„Ê«·Ì €Ì— „’—›Ì';
  3: quClassType.Value:='«„Ê«·Ì €Ì— „‰ﬁÊ·';
 end;
end;
procedure TRepClass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TRepClass.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=47;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;


procedure TRepClass.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TRepClass.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure TRepClass.mskPreviewPercentageKeyPress(Sender: TObject;
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

end; procedure TRepClass.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TRepClass.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TRepClass.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;

procedure TRepClass.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TRepClass.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure TRepClass.FormShow(Sender: TObject);
begin
  Top := 0 ;
  Left := 0 ;
end;



end.
