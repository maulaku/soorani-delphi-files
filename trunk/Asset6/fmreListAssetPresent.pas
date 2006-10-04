unit fmreListAssetPresent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RSqlMaskEdit, RSqlEdit, RadForms,ppTypes;

type
  TreListAssetPresent = class(TRadForm)
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
    dsSpecAntique: TDataSource;
    Label3: TLabel;
    meTo: TRSqlMaskEdit;
    meFrom: TRSqlMaskEdit;
    Label2: TLabel;
    mskPreviewPage: TRSqlEdit;
    mskPreviewPercentage: TRSqlEdit;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppRepDate: TppLabel;
    ppLabel10: TppLabel;
    ppLabel15: TppLabel;
    ppBDate: TppLabel;
    ppEDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLabel5: TppLabel;
    ppLine26: TppLine;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLine11: TppLine;
    ppLabel1: TppLabel;
    ppLine21: TppLine;
    ppLabel18: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppLine8: TppLine;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine17: TppLine;
    ppLine27: TppLine;
    ppLine42: TppLine;
    ppLine12: TppLine;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine14: TppLine;
    ppLine23: TppLine;
    ppLine6: TppLine;
    ppLine9: TppLine;
    ppVariable1: TppVariable;
    ppLine15: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBPipeline2: TppDBPipeline;
    ppShape1: TppShape;
    spListAssetPresent: TADOStoredProc;
    spListAssetPresentgoods_Code: TStringField;
    spListAssetPresentItem_Code: TStringField;
    spListAssetPresentItem_Name: TStringField;
    spListAssetPresentLabel: TIntegerField;
    spListAssetPresentClass_Name: TStringField;
    spListAssetPresentState: TSmallintField;
    spListAssetPresentUt_Name: TStringField;
    spListAssetPresentDate: TStringField;
    spListAssetPresentState_Name: TStringField;
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
  reListAssetPresent: TreListAssetPresent;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TreListAssetPresent.DoRun(var mes :TMessage);
begin
     i := 1;
     ppRepDate.caption    := DabData.disp_date;
     ppRepDate.caption    := DabData.Disp_Date;
     ppEDate.Text := meFROM.Text;
     ppBDate.Text := meTo.Text;
     spListAssetPresent.close;

     if(Pos(' ',meFROM.Text)=0) then
          spListAssetPresent.Parameters[1].value := meFROM.Text
     else
          spListAssetPresent.Parameters[1].value := '0';
     if(Pos(' ',meTO.Text)=0)    then
          spListAssetPresent.Parameters[2].value := meTo.Text
     else
          spListAssetPresent.Parameters[2].value := '0';

     spListAssetPresent.Open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
end;


procedure TreListAssetPresent.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreListAssetPresent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreListAssetPresent.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 24;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreListAssetPresent.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreListAssetPresent.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreListAssetPresent.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreListAssetPresent.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TreListAssetPresent.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListAssetPresent.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreListAssetPresent.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreListAssetPresent.quFunFormalRowGetText(Sender: TField;
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

procedure TreListAssetPresent.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TreListAssetPresent.FormShow(Sender: TObject);
begin
   ppViewer1.reset;
end;


procedure TreListAssetPresent.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
end;

procedure TreListAssetPresent.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
        Value := 0 ;
end;

procedure TreListAssetPresent.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
        Value := Value + 1;
end;

end.
