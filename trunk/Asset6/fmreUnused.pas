unit fmreUnused;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, RSqlMaskEdit, SetForm, RSQLComboBox, RSqllookup;

type
  Treunused = class(TForm)
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
    Label1: TLabel;
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBPipeline1: TppDBPipeline;
    ppLine11: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppviewer1: TppViewer;
    ppLine36: TppLine;
    ppLine42: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    quexit: TADOQuery;
    dsSpecIncon: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppDate: TppLabel;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppDBText4: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine14: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine32: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    Label2: TLabel;
    Label3: TLabel;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppstalabel: TppLabel;
    ppLSta: TppLabel;
    pplFin: TppLabel;
    ppLabel4: TppLabel;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    meSta: TRSqlMaskEdit;
    meFin: TRSqlMaskEdit;
    FormInitializer1: TFormInitializer;
    ppLabel30: TppLabel;
    ppLine22: TppLine;
    ppDBText15: TppDBText;
    ppLabel24: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLine4: TppLine;
    ppLine35: TppLine;
    ppDBText8: TppDBText;
    ppLine37: TppLine;
    ppDBText10: TppDBText;
    ppLine8: TppLine;
    ppDBText3: TppDBText;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblLocCode: TRSqlDbLookup;
    quexitBill_no: TIntegerField;
    quexitBill_Type: TSmallintField;
    quexitGoods_Code: TLargeintField;
    quexitOrg_Code: TIntegerField;
    quexitUnit_Code: TSmallintField;
    quexitCost_Code: TSmallintField;
    quexitLoc_Code: TSmallintField;
    quexitUser_Emp_No: TStringField;
    quexitGet_Date: TStringField;
    quexitDescr: TStringField;
    quexitlabel: TIntegerField;
    quexitItem_name: TStringField;
    quexitclass_code: TSmallintField;
    quexitFLUser: TStringField;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
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
    procedure quexitMyGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dblUnitClick(Sender: TObject);
    procedure dblCostCenterCloseUp(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblLocCodeEnter(Sender: TObject);

  private

    //procedure MakeQuery;

      MahVar,SalVar:integer;
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
  reunused: Treunused;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure Treunused.DoRun(var mes :TMessage);
var vYear,vMoon : integer;
begin
     i := 1;
     ppDate.caption      := Dabdata.disp_date;
     ppLSta.Caption    := mesta.Text;
     pplfin.Caption := meFin.Text;

     quExit.close;
     if trim(mesta.text)<>'/  /' then
       begin
       quExit.Parameters[0].value := mesta.Text;
       ppstalabel.Visible:= true;
       end
     else
         begin
         quExit.Parameters[0].value :='00/00/00';
         ppstalabel.visible:= false;
         ppLSta.Caption    := '';
          end;
     if trim(mefin.text)<>'/  /' then
        begin
        quExit.Parameters[1].value := meFin.Text;
        ppLabel10 .visible:= true
        end
     else
         begin
           quExit.Parameters[1].value :='99/12/29';
           ppLabel10 .visible:= false;
           ppLfin.Caption    := '';
         end;
     quExit.open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
end;



procedure Treunused.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure Treunused.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure Treunused.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 109;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure Treunused.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure Treunused.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure Treunused.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure Treunused.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure Treunused.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure Treunused.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure Treunused.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure Treunused.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure Treunused.quFunFormalRowGetText(Sender: TField;
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

procedure Treunused.ppDBText2GetText(Sender: TObject; var Text: String);
begin
//  Text := inttostr(i div 3);
 // i := i+1;
{   Text:='';
   f := Sender;
   if f.DataSet = nil then exit;
   if not f.DataSet.Active then exit;
   if f.DataSet.RecNo < 1 then exit;
 }  Text := inttostr(quExit.RecNo);

end;

procedure Treunused.FormShow(Sender: TObject);
begin
FormInitializer1.Execute;
end;

procedure Treunused.quexitMyGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
//if  quexitExiterEmpName.AsString ='' then Text:= quexitExiterName.AsString
//else Text:= quexitExiterEmpName.AsString;

end;

procedure Treunused.dblUnitClick(Sender: TObject);
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

procedure Treunused.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;

end;

procedure Treunused.dblCostCenterEnter(Sender: TObject);
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

procedure Treunused.dblLocCodeEnter(Sender: TObject);
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
