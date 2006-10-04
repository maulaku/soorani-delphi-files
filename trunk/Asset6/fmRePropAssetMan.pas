unit fmRePropAssetMan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RadForms, RSqllookup,ppTypes;

type
  TrePropAssetMan = class(TRadForm)
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
    ppLine11: TppLine;
    ppLine16: TppLine;
    ppviewer1: TppViewer;
    ppDBText2: TppDBText;
    dsSpecIncon: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppTitleBand1: TppTitleBand;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLabel10: TppLabel;
    ppLocCode: TppLabel;
    ppUnit: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppRepDate: TppLabel;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppLine18: TppLine;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    ppCostCenter: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    Label4: TLabel;
    ppEmp: TppLabel;
    ppLabel23: TppLabel;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblLocCode: TRSqlDbLookup;
    dblEmp: TRSqlDbLookup;
    ppFooterBand1: TppFooterBand;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape1: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel14: TppLabel;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine10: TppLine;
    ppLabel12: TppLabel;
    ppImage4: TppImage;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppImage5: TppImage;
    ppImage6: TppImage;
    ppImage7: TppImage;
    ppImage8: TppImage;
    ppImage9: TppImage;
    ppImage10: TppImage;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel11: TppLabel;
    ppLine14: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine15: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine23: TppLine;
    ppDBPipeline1: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine32: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    SPrePropAssetMan: TADOStoredProc;
    SPrePropAssetManIsUsesy: TIntegerField;
    SPrePropAssetManIsInUsesy: TIntegerField;
    SPrePropAssetManNotInUsesy: TIntegerField;
    SPrePropAssetManItem_Code: TStringField;
    SPrePropAssetManItem_Name: TStringField;
    SPrePropAssetManItem_Desc: TStringField;
    SPrePropAssetManUser_Emp_No: TStringField;
    SPrePropAssetManClass_Type: TIntegerField;
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
  rePropAssetMan: TrePropAssetMan;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TrePropAssetMan.DoRun(var mes :TMessage);
begin
// if ((dblUnit.text<>'') and (dblCostCenter.text<>'') and (dblLocCode.text<>'') ) then
   begin
     i := 1;
     ppRepDate.caption    := Dabdata.disp_date;
     ppUnit.Caption       := dblUnit.Text;
     ppLocCode.Caption    := dblLocCode.Text;
     ppCostCenter.Caption := dblCostCenter.Text;
     ppemp.Caption         := dblemp.Text;


     SPrePropAssetMan.close;
     SPrePropAssetMan.Parameters[1].value := OrganizCode;
     if trim(dblunit.text)<>'' then
           SPrePropAssetMan.Parameters[2].value := dblUnit.KeyValue
     else SPrePropAssetMan.Parameters[2].value :=0;
     if trim(dblCostCenter.text)<>'' then
       SPrePropAssetMan.Parameters[3].value := dblCostCenter.KeyValue
     else SPrePropAssetMan.Parameters[3].value :=0;
     if trim(dblLocCode.text)<>'' then
        SPrePropAssetMan.Parameters[4].value := dblLocCode.KeyValue
     else SPrePropAssetMan.Parameters[4].value :=0;
     if trim(dblemp.text)<>'' then
        SPrePropAssetMan.Parameters[5].value := dblemp.KeyValue
     else SPrePropAssetMan.Parameters[5].value :=0;

     SPrePropAssetMan.open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
  end;
   end;


procedure TrePropAssetMan.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TrePropAssetMan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TrePropAssetMan.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 45;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TrePropAssetMan.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TrePropAssetMan.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TrePropAssetMan.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TrePropAssetMan.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TrePropAssetMan.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure TrePropAssetMan.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TrePropAssetMan.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TrePropAssetMan.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TrePropAssetMan.quFunFormalRowGetText(Sender: TField;
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

procedure TrePropAssetMan.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(SPrePropAssetMan.RecNo);
end;

procedure TrePropAssetMan.FormShow(Sender: TObject);
begin
   
   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;

   DabData.quemp.Close;
   DabData.quemp.open;
   ppViewer1.reset;
end;

procedure TrePropAssetMan.dblUnitCloseUp(Sender: TObject);
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

procedure TrePropAssetMan.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;
end;

procedure TrePropAssetMan.dblCostCenterEnter(Sender: TObject);
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

procedure TrePropAssetMan.dblLocCodeEnter(Sender: TObject);
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
