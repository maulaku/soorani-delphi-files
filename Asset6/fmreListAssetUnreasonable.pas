unit fmreListAssetUnreasonable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RSqlMaskEdit, raCodMod, RSqlEdit,
  ppStrtch, ppMemo, myChkBox,  RSqllookup,RadForms,Variants,ppTypes;

type
  TreListAssetUnreasonable = class(TRadForm)
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
    Label12: TLabel;
    dblClass: TRSqlDbLookup;
    Label4: TLabel;
    ppDBPipeline1: TppDBPipeline;
    dsSpecAntique: TDataSource;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel15: TppLabel;
    ppLabel19: TppLabel;
    ppOstan: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel22: TppLabel;
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
    ppLabel6: TppLabel;
    ppLine14: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel9: TppLabel;
    ppLine19: TppLine;
    ppLabel10: TppLabel;
    ppLabel18: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel21: TppLabel;
    ppLine23: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLabel23: TppLabel;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLabel24: TppLabel;
    ppLine33: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine38: TppLine;
    ppLabel30: TppLabel;
    ppLine39: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine41: TppLine;
    ppLabel33: TppLabel;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel34: TppLabel;
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
    ppLine18: TppLine;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine40: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine43: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppShape1: TppShape;
    spListAssetBig: TADOStoredProc;
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
  reListAssetUnreasonable: TreListAssetUnreasonable;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TreListAssetUnreasonable.DoRun(var mes :TMessage);
begin
     i := 1;
     spListAssetBig.close;
     if((dblClass.KeyValue<>null) and (dblClass.KeyValue<>-1)) then
        spListAssetBig.Parameters[1].Value := dabdata.quitemclass_Code.AsString
     else
        spListAssetBig.Parameters[1].Value := 0;
     spListAssetBig.open;
     ppOstan.Text:=OrganizName;
     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
  end;
procedure TreListAssetUnreasonable.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreListAssetUnreasonable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreListAssetUnreasonable.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 25;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreListAssetUnreasonable.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreListAssetUnreasonable.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreListAssetUnreasonable.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreListAssetUnreasonable.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TreListAssetUnreasonable.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListAssetUnreasonable.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListAssetUnreasonable.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreListAssetUnreasonable.quFunFormalRowGetText(Sender: TField;
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

procedure TreListAssetUnreasonable.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TreListAssetUnreasonable.FormShow(Sender: TObject);
begin
   DabData.quItem.Close;
   DabData.quItem.Open;
   ppViewer1.reset;
end;


procedure TreListAssetUnreasonable.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
end;

procedure TreListAssetUnreasonable.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
  Value := 1;
end;

procedure TreListAssetUnreasonable.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value := Value + 1;
end;

end.
