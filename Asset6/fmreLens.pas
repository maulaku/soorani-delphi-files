unit fmreLens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RadForms, RSqllookup,ppTypes;

type
  TreSpecLens = class(TRadForm)
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
    ppLine11: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppviewer1: TppViewer;
    ppLine8: TppLine;
    ppLine36: TppLine;
    ppLine42: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    quSpecLens: TADOQuery;
    dsSpecLens: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppTitleBand1: TppTitleBand;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel10: TppLabel;
    ppLocCode: TppLabel;
    ppUnit: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLabel14: TppLabel;
    ppLabel7: TppLabel;
    ppLabel15: TppLabel;
    ppDBText8: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppRepDate: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLine18: TppLine;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ppCostCenter: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppclass: TppLabel;
    ppLine5: TppLine;
    ppLabel12: TppLabel;
    ppLabel24: TppLabel;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    ppLine4: TppLine;
    ppDBText14: TppDBText;
    ppLine32: TppLine;
    ppLabel25: TppLabel;
    Label4: TLabel;
    ppEmp: TppLabel;
    ppLabel23: TppLabel;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblLocCode: TRSqlDbLookup;
    dblEmp: TRSqlDbLookup;
    ppFooterBand1: TppFooterBand;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel26: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    quSpecLensFLName: TStringField;
    quSpecLensItem_name: TStringField;
    quSpecLensRec_no: TIntegerField;
    quSpecLensDate: TStringField;
    quSpecLensbPrice: TFloatField;
    quSpecLensEPrice: TFloatField;
    quSpecLensgoods_code: TStringField;
    quSpecLensfactory_name: TStringField;
    quSpecLensfactory_no: TStringField;
    quSpecLensmodel: TStringField;
    quSpecLenslens_power: TStringField;
    quSpecLensserial: TStringField;
    quSpecLensmake_date: TStringField;
    quSpecLensspecification: TStringField;
    quSpecLensMyGoodCode: TStringField;
    quSpecLensEmp: TStringField;
    quSpecLensgoods_codeStr: TStringField;
    quSpecLensState_Name: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);

    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure quFunFormalRowGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblCostCenterCloseUp(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblLocCodeEnter(Sender: TObject);

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
  reSpecLens: TreSpecLens;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TreSpecLens.DoRun(var mes :TMessage);
begin
// if ((dblUnit.text<>'') and (dblCostCenter.text<>'') and (dblLocCode.text<>'') ) then
   begin
     i := 1;
     ppRepDate.caption    := Dabdata.disp_date;
     ppUnit.Caption       := dblUnit.Text;
     ppLocCode.Caption    := dblLocCode.Text;
     ppCostCenter.Caption := dblCostCenter.Text;
     ppclass.Caption       := label3.caption;
     ppemp.Caption         := dblemp.Text;

{    vMoon := StrToInt(copy(Dabdata.disp_date,4,2));}

     quSpecLens.close;
     quSpecLens.Parameters[0].value := OrganizCode;
     if trim(dblunit.text)<>'' then
           quSpecLens.Parameters[1].value := dblUnit.KeyValue
     else quSpecLens.Parameters[1].value :=0;
     if trim(dblCostCenter.text)<>'' then
       quSpecLens.Parameters[2].value := dblCostCenter.KeyValue
     else quSpecLens.Parameters[2].value :=0;
     if trim(dblLocCode.text)<>'' then
        quSpecLens.Parameters[3].value := dblLocCode.KeyValue
     else quSpecLens.Parameters[3].value :=0;
     if trim(dblemp.text)<>'' then
        quSpecLens.Parameters[4].value := dblemp.KeyValue
     else quSpecLens.Parameters[4].value :=0;

     quSpecLens.open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
  end;
   end;


procedure TreSpecLens.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreSpecLens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreSpecLens.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 73;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreSpecLens.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreSpecLens.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreSpecLens.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreSpecLens.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreSpecLens.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure TreSpecLens.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreSpecLens.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreSpecLens.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreSpecLens.quFunFormalRowGetText(Sender: TField;
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

procedure TreSpecLens.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(quSpecLens.RecNo);
end;

procedure TreSpecLens.FormShow(Sender: TObject);
begin
   
   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;
   DabData.quemp.Close;
   DabData.quemp.open;

   ppViewer1.reset;
end;

procedure TreSpecLens.dblUnitCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := -1 ;

   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value := 0;
   DabData.quDeployLoc.Parameters[1].Value := 0;
   DabData.quDeployLoc.Open;
   dblLocCode.KeyValue := -1 ;
end;

procedure TreSpecLens.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;
end;

procedure TreSpecLens.dblCostCenterEnter(Sender: TObject);
begin
   if not(CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := 0;
      DabData.quCostCenter.Parameters[1].Value := 0;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := -1 ;
   end
   else
   if (CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := -1 ;
   end
end;

procedure TreSpecLens.dblLocCodeEnter(Sender: TObject);
begin
   if not(CheckNull(dblCostCenter.Text) ) then
   begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := 0;
      DabData.quDeployLoc.Parameters[1].Value := 0;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;
   end;
end;

end.
