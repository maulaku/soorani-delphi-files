unit fmreListSmallAsset;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RSqlMaskEdit, RadForms,
  RSqllookup,Variants,ppTypes;

type
  TreListSmallAsset = class(TRadForm)
    Panel1: TPanel;
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
    Panel4: TPanel;
    Label1: TLabel;
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBPipeline1: TppDBPipeline;
    ppviewer1: TppViewer;
    dsSpecAntique: TDataSource;
    ppTitleBand1: TppTitleBand;
    ppRepDate: TppLabel;
    Label12: TLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    ppLabel15: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLabel5: TppLabel;
    ppLine26: TppLine;
    ppLine17: TppLine;
    ppLine27: TppLine;
    ppLine42: TppLine;
    ppLine12: TppLine;
    DataSource1: TDataSource;
    Label3: TLabel;
    meTo: TRSqlMaskEdit;
    meFrom: TRSqlMaskEdit;
    Label2: TLabel;
    ppBDate: TppLabel;
    ppEDate: TppLabel;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine14: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine20: TppLine;
    dblClass: TRSqlDbLookup;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    spListSmallAsset: TADOStoredProc;
    spListSmallAssetut_org_code: TIntegerField;
    spListSmallAssetItem_Code: TStringField;
    spListSmallAssetItem_Name: TStringField;
    spListSmallAssetLabel: TIntegerField;
    spListSmallAssetCreate_Date: TStringField;
    spListSmallAssetbPrice: TFloatField;
    spListSmallAssetGoods_Code: TStringField;
    spListSmallAssetePrice: TFloatField;
    spListSmallAssetUt_code: TSmallintField;
    spListSmallAssetUt_Name: TStringField;
    spListSmallAssetJa: TStringField;
    spListSmallAssetFLName: TStringField;
    spListSmallAssetItem_Desc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);

    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure quFunFormalRowGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure dblCostCenterCloseUp(Sender: TObject);

  private

    //procedure MakeQuery;

    { Private declarations }
  public
    dec:integer;
    inc:integer;
    res:integer;
    amt:integer;
    fin:integer;
    Prog_Code : Integer ;
    Prog_Sal : Smallint ;

  protected
    procedure DoRun(var mes :TMessage);message RUN_CMD;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    { Public declarations }
  end;

var
  reListSmallAsset: TreListSmallAsset;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TreListSmallAsset.DoRun(var mes :TMessage);
begin
 ///if ((dblUnit.text<>'') and (dblCostCenter.text<>'') and (dblLocCode.text<>'') ) then
   begin
     i := 1;
     ppRepDate.caption    := Dabdata.disp_date;
     ppRepDate.caption    := Dabdata.Disp_Date;
     spListSmallAsset.close;
     if((dblClass.KeyValue<>null) and (dblClass.KeyValue<>-1)) then
        spListSmallAsset.Parameters[1].value := dblClass.KeyValue
     else
        spListSmallAsset.Parameters[1].value := null;
     if(meFrom.Text<>'  /  /  ') then
     begin
        spListSmallAsset.Parameters[2].value := meFrom.Text;
        ppEDate.text:=meFrom.Text;
     end
     else
        spListSmallAsset.Parameters[2].value := null;
     if(meTo.Text<>'  /  /  ') then
     begin
        spListSmallAsset.Parameters[3].value := meTo.Text;
        ppBDate.text:=meTo.Text;
     end
     else
        spListSmallAsset.Parameters[3].value := null;
     spListSmallAsset.open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
  end;
   end;


procedure TreListSmallAsset.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreListSmallAsset.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreListSmallAsset.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 21;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreListSmallAsset.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreListSmallAsset.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreListSmallAsset.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreListSmallAsset.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TreListSmallAsset.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListSmallAsset.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListSmallAsset.mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPercentageKeyPress}

procedure TreListSmallAsset.quFunFormalRowGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var F :Tfield;
begin
   Text:='';
   f := Sender;
   if f.DataSet = nil then exit;
   if not f.DataSet.Active then exit;
   if f.DataSet.RecNo < 1 then exit;
   Text := inttostr(f.DataSet.RecNo);
end;

procedure TreListSmallAsset.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TreListSmallAsset.FormShow(Sender: TObject);
begin

   DabData.quGoods.Close;
   DabData.quGoods.Open;
   ppViewer1.reset;
end;


procedure TreListSmallAsset.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
end;

end.
