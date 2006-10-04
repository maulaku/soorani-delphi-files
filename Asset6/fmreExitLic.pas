unit fmreExitLic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, RSqlMaskEdit, SetForm, RSQLComboBox, SmoothShow,
  RadForms,ppTypes;

type
  Treexitlic = class(TRadForm)
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
    dsSpecIncon: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
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
    ppLabel20: TppLabel;
    ppDBText14: TppDBText;
    ppLine32: TppLine;
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
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    meSta: TRSqlMaskEdit;
    meFin: TRSqlMaskEdit;
    ppLabel30: TppLabel;
    ppLine22: TppLine;
    ppDBText15: TppDBText;
    ppLabel24: TppLabel;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine5: TppLine;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine35: TppLine;
    ppDBText8: TppDBText;
    ppLine37: TppLine;
    ppDBText10: TppDBText;
    ppLine8: TppLine;
    ppDBText3: TppDBText;
    ppShape1: TppShape;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel33: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppDBText5: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine7: TppLine;
    ppLabel36: TppLabel;
    spreexitLicense: TADOStoredProc;
    spreexitLicenseLicense_no: TIntegerField;
    spreexitLicenseLicense_type: TSmallintField;
    spreexitLicensecom_tr_no: TIntegerField;
    spreexitLicenseSale_com_no: TIntegerField;
    spreexitLicenseMend: TBooleanField;
    spreexitLicenseCreator: TStringField;
    spreexitLicenseCreate_date: TStringField;
    spreexitLicenseConfirmer: TStringField;
    spreexitLicenseConfirm_date: TStringField;
    spreexitLicenseState: TSmallintField;
    spreexitLicenseExiterEmp: TStringField;
    spreexitLicenseExiterName: TStringField;
    spreexitLicenseExitGaurd: TStringField;
    spreexitLicenseExit_date: TStringField;
    spreexitLicenseExit_time: TStringField;
    spreexitLicenseReturn_Gaurd: TStringField;
    spreexitLicenseReturn_date: TStringField;
    spreexitLicenseReturn_time: TStringField;
    spreexitLicensegoods_code: TLargeintField;
    spreexitLicenseReason: TStringField;
    spreexitLicenseItem_name: TStringField;
    spreexitLicenseLabel: TIntegerField;
    spreexitLicenseConfName: TStringField;
    spreexitLicenseExiterEmpName: TStringField;
    spreexitLicenseGaurdName: TStringField;
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
  reexitlic: Treexitlic;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure Treexitlic.DoRun(var mes :TMessage);
begin
     i := 1;
     ppDate.caption      := Dabdata.disp_date;
     ppLSta.Caption    := mesta.Text;
     pplfin.Caption := meFin.Text;
     ppLabel24.Text := OrganizName;

     spreexitLicense.close;
     if trim(mesta.text)<>'/  /' then
       begin
       spreexitLicense.Parameters[1].value := mesta.Text;
       ppstalabel.Visible:= true;
       end
     else
         begin
         spreexitLicense.Parameters[1].value :='00/00/00';
         ppstalabel.visible:= false;
         ppLSta.Caption    := '';
          end;
     if trim(mefin.text)<>'/  /' then
        begin
        spreexitLicense.Parameters[2].value := meFin.Text;
        ppLabel10 .visible:= true
        end
     else
         begin
           spreexitLicense.Parameters[2].value :='99/12/29';
           ppLabel10 .visible:= false;
           ppLfin.Caption    := '';
         end;
     spreexitLicense.open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
end;



procedure Treexitlic.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure Treexitlic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure Treexitlic.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 109;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure Treexitlic.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure Treexitlic.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure Treexitlic.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure Treexitlic.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure Treexitlic.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure Treexitlic.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure Treexitlic.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure Treexitlic.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure Treexitlic.quFunFormalRowGetText(Sender: TField;
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

procedure Treexitlic.ppDBText2GetText(Sender: TObject; var Text: String);
begin
//  Text := inttostr(i div 3);
 // i := i+1;
{   Text:='';
   f := Sender;
   if f.DataSet = nil then exit;
   if not f.DataSet.Active then exit;
   if f.DataSet.RecNo < 1 then exit;
 }  Text := inttostr(spreexitLicense.RecNo);

end;

procedure Treexitlic.FormShow(Sender: TObject);
begin

FormInitializer1.Execute;
end;

procedure Treexitlic.quexitMyGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
if spreexitLicenseExiterEmpName.AsString ='' then Text:= spreexitLicenseExiterName.AsString
else Text:= spreexitLicenseExiterEmpName.AsString;

end;

end.
