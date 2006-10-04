unit fmSrtDiskette;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow,RadForms, RSqlMaskEdit,ppTypes;

type
  TreSrtDiskette = class(TRadForm)
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
    dsSpecStr: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
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
    Label2: TLabel;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppLine25: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine12: TppLine;
    ppLabel27: TppLabel;
    ppLabel36: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel37: TppLabel;
    ppLine43: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppDBText15: TppDBText;
    ppLine50: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine52: TppLine;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel2: TppLabel;
    ppLine58: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    Label4: TLabel;
    ppLName: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppLine2: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLine32: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine26: TppLine;
    ppLine33: TppLine;
    ppLabel31: TppLabel;
    ppDBText6: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    Label3: TLabel;
    meFrom: TRSqlMaskEdit;
    Label5: TLabel;
    meTo: TRSqlMaskEdit;
    ppShape1: TppShape;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    spreStrFilms: TADOStoredProc;
    spreStrFilmsgc: TStringField;
    spreStrFilmsGoods_Code: TStringField;
    spreStrFilmsLabel: TIntegerField;
    spreStrFilmsgoods_code_1: TStringField;
    spreStrFilmsitem_code: TStringField;
    spreStrFilmsreceipt_no: TIntegerField;
    spreStrFilmslabel_1: TIntegerField;
    spreStrFilmsBprice: TFloatField;
    spreStrFilmsEprice: TFloatField;
    spreStrFilmsType: TSmallintField;
    spreStrFilmsState: TSmallintField;
    spreStrFilmsNote: TStringField;
    spreStrFilmsNoeMdrak: TStringField;
    spreStrFilmsreceipt_no_1: TIntegerField;
    spreStrFilmsDate: TStringField;
    spreStrFilmsItem_Name: TStringField;
    spreStrFilmsItem_Code_1: TStringField;
    spreStrFilmsPk_Item: TIntegerField;
    spreStrFilmsitem_name_1: TStringField;
    spreStrFilmsclass_code: TSmallintField;
    spreStrFilmsitem_desc: TStringField;
    spreStrFilmsitem_unit: TSmallintField;
    spreStrFilmsItem_Inventory: TIntegerField;
    spreStrFilmsOrder_Point: TSmallintField;
    spreStrFilmsInventory_Limit: TSmallintField;
    spreStrFilmsPK_DetailGroups: TSmallintField;
    spreStrFilmsPK_MasterGroups: TSmallintField;
    spreStrFilmsPosition_Code: TStringField;
    spreStrFilmsItem_Code_2: TStringField;
    spreStrFilmsgoods_code_2: TStringField;
    spreStrFilmssubject: TStringField;
    spreStrFilmstype_1: TSmallintField;
    spreStrFilmsgood_size: TStringField;
    spreStrFilmssize_unit: TSmallintField;
    spreStrFilmsmeasure_unit: TSmallintField;
    spreStrFilmsspecification: TStringField;
    spreStrFilmsBPrice_1: TFloatField;
    spreStrFilmsEprice_1: TFloatField;
    spreStrFilmsrec_no: TIntegerField;
    spreStrFilmscreator: TStringField;
    spreStrFilmsdate_1: TStringField;
    spreStrFilmsdeliver: TStringField;
    spreStrFilmsddate: TStringField;
    spreStrFilmsconfirmer: TStringField;
    spreStrFilmscdate: TStringField;
    spreStrFilmsorder_no: TStringField;
    spreStrFilmsdoc_no: TStringField;
    spreStrFilmsorg: TStringField;
    spreStrFilmsGetType: TSmallintField;
    spreStrFilmsOrder_Location: TStringField;
    spreStrFilmsOrg_Code: TIntegerField;
    spreStrFilmsF_Code: TStringField;
    spreStrFilmsF_Date: TStringField;
    spreStrFilmsGoods_code_3: TLargeintField;
    spreStrFilmsC1: TStringField;
    spreStrFilmsc2: TStringField;
    spreStrFilmsc3: TLargeintField;
    spreStrFilmsc4: TStringField;
    spreStrFilmsC5: TStringField;
    spreStrFilmsc6: TIntegerField;
    spreStrFilmsc7: TStringField;
    spreStrFilmsC8: TStringField;
    spreStrFilmstypecase: TStringField;
    spreStrFilmssizecase: TStringField;
    spreStrFilmsmecase: TStringField;
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
  reSrtDiskette: TreSrtDiskette;

  i : integer;
implementation

uses UCommon, fmMfrm;



{$R *.DFM}


procedure TreSrtDiskette.DoRun(var mes :TMessage);
begin
     i := 1;
     ppRepDate.caption    := Dabdata.disp_date;
     ppLName .caption := label4.caption;

//     paState.Visible :=true;
     if(meFrom.Text='  /  /  ') then
       meFrom.Text:='00/01/01';
     if(meTo.Text='  /  /  ') then
       meTo.Text:='99/12/29';
     spreStrFilms.close;
     spreStrFilms.Parameters[1].Value:=meFrom.Text;
     spreStrFilms.Parameters[2].Value:=meTo.Text;
     spreStrFilms.open;
 //    pastate.visible := false;

     ppViewer1.reset;
//   ppViewer1.ZoomSetting := zs100Percent;
     ppViewer1.Report.PrintToDevices;
end;


procedure TreSrtDiskette.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreSrtDiskette.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreSrtDiskette.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 132;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreSrtDiskette.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreSrtDiskette.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreSrtDiskette.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreSrtDiskette.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreSrtDiskette.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure TreSrtDiskette.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreSrtDiskette.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreSrtDiskette.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreSrtDiskette.quFunFormalRowGetText(Sender: TField;
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

procedure TreSrtDiskette.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TreSrtDiskette.FormShow(Sender: TObject);
begin
   
   ppViewer1.reset;
end;

end.
