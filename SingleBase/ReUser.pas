unit ReUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, myChkBox, ppStrtch, ppMemo, XPMenu;

type
  Treusers = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ppViewer: TppViewer;
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
    lbProgram: TLabel;
    dsreport: TDataSource;
    qureport: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    qureportSec_ID: TIntegerField;
    qureportSec_MacAdr: TStringField;
    qureportSec_Emp_no: TStringField;
    qureportSec_Form: TStringField;
    qureportSec_Syscode: TIntegerField;
    qureportSec_Date: TStringField;
    qureportSec_Time: TStringField;
    qureportSec_OPID: TSmallintField;
    qureportstr: TStringField;
    ComboBox1: TComboBox;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    qureportSec_Table: TStringField;
    qureportOps_Name: TStringField;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    XPMenu1: TXPMenu;
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
    procedure ppDBText1GetText(Sender: TObject; var Text: String);

  private
    //procedure MakeQuery;
     // MahVar,SalVar:integer;
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
  reusers: Treusers;
  b:integer;

implementation



{$R *.DFM}

procedure Treusers.DoRun(var mes :TMessage);
begin
if (ComboBox1.ItemIndex <> -1 ) then
 begin
     b:=0;
     qureport.close;
     qureport.Parameters[0].value:=ComboBox1.ItemIndex+1;
     qureport.open;
     ppLabel2.text:=combobox1.text;
     ppViewer.reset;
     ppViewer.Report.PrintToDevices;
 end;
 end;


procedure Treusers.DoPrint(var mes :TMessage);
begin
  ppViewer.Print;
end;
procedure Treusers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
 Action:=CaFree;
end;



procedure Treusers.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=6;
   Application.MainForm.Dispatch(mes);
   top:=0;
   left:=0;
   width:=796;
   height:=481;
end;


procedure Treusers.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;




procedure Treusers.spbPreview100PercentClick(Sender: TObject);
begin
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
  panel2.SetFocus;
end;



procedure Treusers.spbPreviewWidthClick(Sender: TObject);
begin
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure Treusers.spbPreviewWholeClick(Sender: TObject);
begin
  mskPreviewPercentage.Text := IntToStr(ppViewer.CalculatedZoom);
end;



procedure Treusers.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer.GotoPage(liPage);
    end;
end;




procedure Treusers.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;



procedure Treusers.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer.AbsolutePageNo);
end;


procedure Treusers.mskPreviewPercentageKeyPress(Sender: TObject;
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
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPercentageKeyPress}

procedure Treusers.ppDBText1GetText(Sender: TObject; var Text: String);
begin
   text:=inttostr(b div 3);
   b:=b+1;
end;

end.
