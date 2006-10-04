unit fmresrtAntique;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow,RadForms, RSqlMaskEdit,ppTypes;

type
  TreSrtantique = class(TRadForm)
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
    ppLabel23: TppLabel;
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
    ppLine51: TppLine;
    ppDBText16: TppDBText;
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
    ppLabel58: TppLabel;
    Label4: TLabel;
    ppLName: TppLabel;
    ppLabel60: TppLabel;
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
    ppLabel17: TppLabel;
    ppLine32: TppLine;
    ppLabel20: TppLabel;
    ppLine22: TppLine;
    ppLabel21: TppLabel;
    ppLine23: TppLine;
    ppLabel22: TppLabel;
    ppLine24: TppLine;
    ppLabel28: TppLabel;
    ppLine26: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine33: TppLine;
    ppLabel31: TppLabel;
    ppDBText6: TppDBText;
    ppLabel32: TppLabel;
    Label3: TLabel;
    meFrom: TRSqlMaskEdit;
    Label5: TLabel;
    meTo: TRSqlMaskEdit;
    ppShape1: TppShape;
    ppLabel33: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel34: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine28: TppLine;
    ppImage1: TppImage;
    ppLabel35: TppLabel;
    ppDBText2: TppDBText;
    spreStrAntique: TADOStoredProc;
    spreStrAntiquegc: TStringField;
    spreStrAntiqueGoods_Code: TStringField;
    spreStrAntiqueLabel: TIntegerField;
    spreStrAntiquegoods_code_1: TStringField;
    spreStrAntiqueitem_code: TStringField;
    spreStrAntiquereceipt_no: TIntegerField;
    spreStrAntiquelabel_1: TIntegerField;
    spreStrAntiqueBprice: TFloatField;
    spreStrAntiqueEprice: TFloatField;
    spreStrAntiqueType: TSmallintField;
    spreStrAntiqueState: TSmallintField;
    spreStrAntiqueNote: TStringField;
    spreStrAntiqueNoeMdrak: TStringField;
    spreStrAntiquereceipt_no_1: TIntegerField;
    spreStrAntiqueDate: TStringField;
    spreStrAntiqueItem_Name: TStringField;
    spreStrAntiqueItem_Code_1: TStringField;
    spreStrAntiquePk_Item: TIntegerField;
    spreStrAntiqueitem_name_1: TStringField;
    spreStrAntiqueclass_code: TSmallintField;
    spreStrAntiqueitem_desc: TStringField;
    spreStrAntiqueitem_unit: TSmallintField;
    spreStrAntiqueItem_Inventory: TIntegerField;
    spreStrAntiqueOrder_Point: TSmallintField;
    spreStrAntiqueInventory_Limit: TSmallintField;
    spreStrAntiquePK_DetailGroups: TSmallintField;
    spreStrAntiquePK_MasterGroups: TSmallintField;
    spreStrAntiquePosition_Code: TStringField;
    spreStrAntiqueItem_Code_2: TStringField;
    spreStrAntiqueAnt_gcode: TStringField;
    spreStrAntiqueAnt_Hprd: TStringField;
    spreStrAntiqueAnt_dloc: TStringField;
    spreStrAntiqueAnt_ddate: TStringField;
    spreStrAntiqueAnt_weight: TStringField;
    spreStrAntiqueAnt_color: TStringField;
    spreStrAntiqueAnt_dim: TStringField;
    spreStrAntiqueAnt_mark: TStringField;
    spreStrAntiqueAnt_Pdate: TStringField;
    spreStrAntiqueAnt_desc: TStringField;
    spreStrAntiqueBPrice_1: TFloatField;
    spreStrAntiqueEprice_1: TFloatField;
    spreStrAntiquerec_no: TIntegerField;
    spreStrAntiquecreator: TStringField;
    spreStrAntiquedate_1: TStringField;
    spreStrAntiquedeliver: TStringField;
    spreStrAntiqueddate: TStringField;
    spreStrAntiqueconfirmer: TStringField;
    spreStrAntiquecdate: TStringField;
    spreStrAntiqueorder_no: TStringField;
    spreStrAntiquedoc_no: TStringField;
    spreStrAntiqueorg: TStringField;
    spreStrAntiqueGetType: TSmallintField;
    spreStrAntiqueOrder_Location: TStringField;
    spreStrAntiqueOrg_Code: TIntegerField;
    spreStrAntiqueF_Code: TStringField;
    spreStrAntiqueF_Date: TStringField;
    spreStrAntiqueGoods_code_2: TLargeintField;
    spreStrAntiqueC1: TStringField;
    spreStrAntiquec2: TStringField;
    spreStrAntiquec3: TLargeintField;
    spreStrAntiquec4: TStringField;
    spreStrAntiqueC5: TStringField;
    spreStrAntiquec6: TIntegerField;
    spreStrAntiquec7: TStringField;
    spreStrAntiqueC8: TStringField;
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
  reSrtantique: TreSrtantique;

  i : integer;
implementation

uses UCommon, fmMfrm;



{$R *.DFM}


procedure TreSrtantique.DoRun(var mes :TMessage);
begin
     i := 1;
     ppRepDate.caption    := Dabdata.disp_date;
     ppLName .caption := label4.caption;

//     paState.Visible :=true;FindSpace
     if(meFrom.Text='  /  /  ') then
       meFrom.Text:='00/01/01';
     if(meTo.Text='  /  /  ') then
       meTo.Text:='99/12/29';
     spreStrAntique.close;
     spreStrAntique.Parameters[1].Value:=meFrom.Text;
     spreStrAntique.Parameters[2].Value:=meTo.Text;
     spreStrAntique.open;
 //    pastate.visible := false;

     ppViewer1.reset;
     //ppViewer1.ZoomSetting := zs100Percent;
     ppViewer1.Report.PrintToDevices;
end;


procedure TreSrtantique.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreSrtantique.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreSrtantique.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 68;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreSrtantique.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreSrtantique.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreSrtantique.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreSrtantique.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreSrtantique.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure TreSrtantique.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreSrtantique.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreSrtantique.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreSrtantique.quFunFormalRowGetText(Sender: TField;
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

procedure TreSrtantique.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i);
  i := i+1;
end;

procedure TreSrtantique.FormShow(Sender: TObject);
begin
   
   ppViewer1.reset;
end;

end.
