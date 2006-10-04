unit fmreListStateAssetUnreasonable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RSqlMaskEdit, raCodMod, RSqlEdit,
  ppStrtch, ppMemo, myChkBox,  RSqllookup,RadForms ,Variants,ppTypes;

type
  TreListStateAssetUnreasonable = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Panel4: TPanel;
    Label1: TLabel;
    ppviewer1: TppViewer;
    Label3: TLabel;
    meTo: TRSqlMaskEdit;
    meFrom: TRSqlMaskEdit;
    Label2: TLabel;
    mskPreviewPage: TMaskEdit;
    mskPreviewPercentage: TMaskEdit;
    dblClass: TRSqlDbLookup;
    Label12: TLabel;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel15: TppLabel;
    ppLabel19: TppLabel;
    ppOstan: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppLine6: TppLine;
    ppLabel5: TppLabel;
    ppLine9: TppLine;
    ppLine23: TppLine;
    ppLabel6: TppLabel;
    ppLine15: TppLine;
    ppLabel7: TppLabel;
    ppLine19: TppLine;
    ppLabel8: TppLabel;
    ppLine24: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLabel9: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLine29: TppLine;
    ppLabel23: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine17: TppLine;
    ppLine42: TppLine;
    ppLine12: TppLine;
    ppVariable1: TppVariable;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppLine25: TppLine;
    ppLine14: TppLine;
    ppLine26: TppLine;
    ppLine30: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    dsSpecAntique: TDataSource;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    spListAssetBig: TADOStoredProc;
    spListAssetBigplaque_no: TStringField;
    spListAssetBigreg_no: TIntegerField;
    spListAssetBigreg_date: TStringField;
    spListAssetBigloc_code: TStringField;
    spListAssetBigground_area: TIntegerField;
    spListAssetBigbuilding_area: TIntegerField;
    spListAssetBigbounds: TStringField;
    spListAssetBigaddress: TStringField;
    spListAssetBiglength: TIntegerField;
    spListAssetBigwidth: TIntegerField;
    spListAssetBigfacility: TStringField;
    spListAssetBigappendix: TStringField;
    spListAssetBigexpert_price: TFloatField;
    spListAssetBigbuy_price: TFloatField;
    spListAssetBigprice_unit: TSmallintField;
    spListAssetBigarea_unit: TSmallintField;
    spListAssetBiglength_unit: TSmallintField;
    spListAssetBigwidth_unit: TSmallintField;
    spListAssetBigowner_doc: TSmallintField;
    spListAssetBigitem_code: TStringField;
    spListAssetBigstate: TSmallintField;
    spListAssetBigdoc_no: TStringField;
    spListAssetBigdoc_date: TStringField;
    spListAssetBigReciever: TStringField;
    spListAssetBigFile_No: TStringField;
    spListAssetBigdoc_Type: TSmallintField;
    spListAssetBigReg_Loc: TStringField;
    spListAssetBigOffice_No: TIntegerField;
    spListAssetBigPrint_No: TLargeintField;
    spListAssetBigReg_Plaque: TStringField;
    spListAssetBigDoc_Desc: TStringField;
    spListAssetBigOwner_Org: TStringField;
    spListAssetBigUser_Org: TStringField;
    spListAssetBigExt_Reciver: TStringField;
    spListAssetBigExit_Date: TStringField;
    spListAssetBigDesc: TStringField;
    spListAssetBigitem_name: TStringField;
    spListAssetBigPlaque_NoStr: TStringField;
    spListAssetBigCounty_Name: TStringField;
    spListAssetBigClass_Name: TStringField;
    spListAssetBigcowner: TStringField;
    spListAssetBigState_Name: TStringField;
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
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);

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
  reListStateAssetUnreasonable: TreListStateAssetUnreasonable;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TreListStateAssetUnreasonable.DoRun(var mes :TMessage);
begin
     i := 1;
     spListAssetBig.close;
     if((dblClass.KeyValue<>null) and (dblClass.KeyValue<>-1)) then
        spListAssetBig.Parameters[0].Value := dabdata.quitemclass_Code.AsString
     else
        spListAssetBig.Parameters[0].Value := 0;
     spListAssetBig.open;
     ppOstan.Text:=OrganizName;
     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
  end;
procedure TreListStateAssetUnreasonable.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreListStateAssetUnreasonable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreListStateAssetUnreasonable.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 26;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreListStateAssetUnreasonable.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreListStateAssetUnreasonable.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreListStateAssetUnreasonable.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreListStateAssetUnreasonable.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TreListStateAssetUnreasonable.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListStateAssetUnreasonable.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListStateAssetUnreasonable.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreListStateAssetUnreasonable.quFunFormalRowGetText(Sender: TField;
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

procedure TreListStateAssetUnreasonable.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TreListStateAssetUnreasonable.FormShow(Sender: TObject);
begin
   Dabdata.quitem.Close;
   Dabdata.quitem.Open;
   ppViewer1.reset;
end;


procedure TreListStateAssetUnreasonable.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[1].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
end;

procedure TreListStateAssetUnreasonable.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
  Value := 0;
end;

procedure TreListStateAssetUnreasonable.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := Value + 1;
end;
procedure TreListStateAssetUnreasonable.ppDBText10GetText(Sender: TObject;
  var Text: String);
var
  Sal1,Sal2:String;
begin
  inherited;
  Sal1:=Copy(spListAssetBigExit_Date.AsString,1,2);
  Sal2:=Copy(spListAssetBigdoc_date.AsString,1,2);
  if((Sal1<>'  ') and (Sal2<>'  ')) then
       Text:=IntToStr(StrToInt(Sal1)-StrToInt(Sal2));
end;

end.
