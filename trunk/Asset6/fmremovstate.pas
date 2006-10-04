unit fmreMovState;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, RSqlMaskEdit, SetForm, RSQLComboBox, SmoothShow,
  RadForms,Variants,ppTypes;

type
  TreMovstate = class(TRadForm)
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
    dsSpecIncon: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppDBText8: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDate: TppLabel;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
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
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine14: TppLine;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine32: TppLine;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    pplState: TppLabel;
    ppstalabel: TppLabel;
    ppLSta: TppLabel;
    pplFin: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel12: TppLabel;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
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
    cbState: TRSqlComboBox;
    ppLabel30: TppLabel;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText15: TppDBText;
    ppShape1: TppShape;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel24: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine11: TppLine;
    spremovgoods: TADOStoredProc;
    spremovgoodsgoods_code: TStringField;
    spremovgoodsitem_code: TStringField;
    spremovgoodsreceipt_no: TIntegerField;
    spremovgoodslabel: TIntegerField;
    spremovgoodsBprice: TFloatField;
    spremovgoodsEprice: TFloatField;
    spremovgoodsType: TSmallintField;
    spremovgoodsState: TSmallintField;
    spremovgoodsNote: TStringField;
    spremovgoodsItem_Name: TStringField;
    spremovgoodsItem_desc: TStringField;
    spremovgoodsdate: TStringField;
    spremovgoodsclass_code: TSmallintField;
    spremovgoodsBill_No: TIntegerField;
    spremovgoodsBill_Type: TSmallintField;
    spremovgoodsLCode: TSmallintField;
    spremovgoodsEmpNo: TStringField;
    spremovgoodsCCode: TSmallintField;
    spremovgoodsOCode: TIntegerField;
    spremovgoodsUCode: TSmallintField;
    spremovgoodsLoc_desc: TStringField;
    spremovgoodsCName: TStringField;
    spremovgoodsUName: TStringField;
    spremovgoodsfname: TStringField;
    spremovgoodsLName: TStringField;
    spremovgoodsFlName: TStringField;
    spremovgoodstypename: TStringField;
    spremovgoodssale_price: TLargeintField;
    spremovgoodsClass_name: TStringField;
    spremovgoodsgStr: TStringField;
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
  reMovstate: TreMovstate;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TreMovstate.DoRun(var mes :TMessage);
begin
     i := 1;
     ppDate.caption      := Dabdata.disp_date;
     pplState.Caption    := cbstate.Text    ;
     ppLSta.Caption    := mesta.Text;
     pplfin.Caption := meFin.Text;


     spremovgoods.close;
     if trim(cbstate.text)<>'' then
           begin
           spremovgoods.Parameters[1].value := cbstate.itemindex;
           spremovgoods.Parameters[2].value := 0;
           end
     else begin
          spremovgoods.Parameters[1].value :=NULL;
          spremovgoods.Parameters[2].value :=1;
          pplState.Caption  :=' „«„Ì Ê÷⁄Ì  Â«'
          end;
     if trim(mesta.text)<>'/  /' then
       begin
         spremovgoods.Parameters[3].value := mesta.Text;
         ppstalabel.visible:= true;
         ppLSta.visible  := true;
       end
     else
         begin
         spremovgoods.Parameters[3].value :='00/00/00';
         ppstalabel.visible:= false;
         ppLSta.visible  := false;
          end;
     if trim(mefin.text)<>'/  /' then
        begin
        spremovgoods.Parameters[4].value := meFin.Text;
        ppLabel10 .visible:= true;
        ppLfin.visible    := true;
        end

     else
         begin
           spremovgoods.Parameters[4].value :='99/12/29';
           ppLabel10 .visible:= false;
           ppLfin.visible    := false;
         end;
     spremovgoods.open;

     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
end;



procedure TreMovstate.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TreMovstate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TreMovstate.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 105;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TreMovstate.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TreMovstate.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TreMovstate.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreMovstate.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TreMovstate.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure TreMovstate.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreMovstate.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TreMovstate.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TreMovstate.quFunFormalRowGetText(Sender: TField;
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

procedure TreMovstate.ppDBText2GetText(Sender: TObject; var Text: String);
begin
//  Text := inttostr(i div 3);
 // i := i+1;
{   Text:='';
   f := Sender;
   if f.DataSet = nil then exit;
   if not f.DataSet.Active then exit;
   if f.DataSet.RecNo < 1 then exit;
 }  Text := inttostr(spremovgoods.RecNo);

end;

procedure TreMovstate.FormShow(Sender: TObject);
begin

FormInitializer1.Execute;
end;

end.
