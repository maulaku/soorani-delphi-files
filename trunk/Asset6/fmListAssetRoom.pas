unit fmListAssetRoom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables, DBCtrls, StdCtrls,
  ExtCtrls, Mask, Buttons, ADODB, ppCtrls, ppPrnabl, ppClass,
  ppModule, daDatMod, ppDB, ppDBPipe, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppVar, ppDBBDE, daDataVw, daQuery, daDBBDE,
  daQClass , DabDmdle, SmoothShow, RSqlMaskEdit, RadForms,
  RSqllookup, RSqlEdit, RSQLComboBox,Variants,ppTypes;

type
  TListAssetRoom = class(TRadForm)
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
    ppviewer1: TppViewer;
    dsListAssetRoom: TDataSource;
    ppTitleBand1: TppTitleBand;
    Label12: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    ppLabel15: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLabel5: TppLabel;
    ppLine18: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLabel1: TppLabel;
    ppLabel20: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine3: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText10: TppDBText;
    ppLine42: TppLine;
    ppUnit: TppLabel;
    ppCostCenter: TppLabel;
    ppLocCode: TppLabel;
    ppLabel14: TppLabel;
    ppLabel21: TppLabel;
    Label2: TLabel;
    meFrom: TRSqlMaskEdit;
    Label3: TLabel;
    meTo: TRSqlMaskEdit;
    ppRepDate: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppVariable1: TppVariable;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblLocCode: TRSqlDbLookup;
    ppLabel45: TppLabel;
    ppLabel23: TppLabel;
    ppLabel51: TppLabel;
    ppLabel29: TppLabel;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    spListAssetRoom: TADOStoredProc;
    spListAssetRoomItem_Name: TStringField;
    spListAssetRoomgoods_code: TStringField;
    spListAssetRoomitem_code: TStringField;
    spListAssetRoomreceipt_no: TIntegerField;
    spListAssetRoomlabel: TIntegerField;
    spListAssetRoomBprice: TFloatField;
    spListAssetRoomEprice: TFloatField;
    spListAssetRoomType: TSmallintField;
    spListAssetRoomState: TSmallintField;
    spListAssetRoomNote: TStringField;
    spListAssetRoomuserName: TStringField;
    spListAssetRoomUt_Name: TStringField;
    spListAssetRoomDescr: TStringField;
    spListAssetRoomOrg_Code: TIntegerField;
    spListAssetRoomUnit_Code: TSmallintField;
    spListAssetRoomCost_Code: TSmallintField;
    spListAssetRoomLoc_Code: TSmallintField;
    spListAssetRoomUser_emp_no: TStringField;
    spListAssetRoomGet_Date: TStringField;
    spListAssetRoomDescr_1: TStringField;
    spListAssetRoomState_Name: TStringField;
    spListAssetRoomClass_name: TStringField;
    Label4: TLabel;
    dblemp: TRSqlDbLookup;
    Label5: TLabel;
    dblClass: TRSqlDbLookup;
    Label6: TLabel;
    edLabel: TRSqlEdit;
    Label7: TLabel;
    edItemName: TRSqlEdit;
    cbBClass: TRSqlComboBox;
    cbBEmp: TRSqlComboBox;
    cbBLabel: TRSqlComboBox;
    cbBItem: TRSqlComboBox;
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
  ListAssetRoom: TListAssetRoom;

  i : integer;
implementation

uses UCommon;



{$R *.DFM}


procedure TListAssetRoom.DoRun(var mes :TMessage);
var
  Filter:String;
begin
// if ((dblUnit.text<>'') and (dblCostCenter.text<>'') and (dblLocCode.text<>'') ) then
//   begin
     Filter:='';
     if dblClass.KeyValue<>null then
        Filter:='Class_Name='''+dblClass.Text+''' ';
     if dblemp.KeyValue<>Null then
        if cbBEmp.ItemIndex=0 then
           Filter:=Filter+'and user_emp_no='+VarToStr(dblemp.KeyValue)+' '
        else
           Filter:=Filter+'or user_emp_no='+VarToStr(dblemp.KeyValue)+' ';
     if edItemName.Text<>'' then
        if cbBItem.ItemIndex=0 then
           Filter:=Filter+'and item_Name like ''%'+edItemName.Text+'%'' '
        else
           Filter:=Filter+'or item_Name like ''%'+edItemName.Text+'%'' ';
     if edLabel.Text<>'' then
        if cbBLabel.ItemIndex=0 then
           Filter:=Filter+'and label='+edLabel.Text+' '
        else
           Filter:=Filter+'or label='+edLabel.Text+' ';
     if
        ((Pos('and',Filter)=1) or
        (Pos('or',Filter)=1)) then
       Filter:=Copy(Filter,Pos(' ',Filter),length(Filter));

     i := 1;
     ppRepDate.caption    := Dabdata.Disp_Date;
//     ppMoon.Caption       := cbMoon.Text;

     ppRepDate.caption    := Dabdata.Disp_Date;
     ppUnit.Caption       := dblUnit.text;
     ppLocCode.Caption    := dblLocCode.Text;
     ppCostCenter.Caption := dblCostCenter.Text;
//     ppclass.Caption      := label3.caption;


     spListAssetRoom.close;

     spListAssetRoom.Parameters[1].value := OrganizCode;
     if trim(dblunit.text)<>'' then
         spListAssetRoom.Parameters[2].value := dblUnit.KeyValue
     else spListAssetRoom.Parameters[2].value :=-1;
     if trim(dblCostCenter.text)<>'' then
       spListAssetRoom.Parameters[3].value := dblCostCenter.KeyValue
     else spListAssetRoom.Parameters[3].value :=-1;
     if trim(dblLocCode.text)<>'' then
        spListAssetRoom.Parameters[4].value := dblLocCode.KeyValue
     else spListAssetRoom.Parameters[4].value :=1;
//     if trim(dblemp.text)<>'' then
//        spListAssetRoom.Parameters[5].value := dblemp.KeyValue
     spListAssetRoom.Parameters[5].value :=-1;

     spListAssetRoom.open;

     spListAssetRoom.Filter:= Filter ;
     spListAssetRoom.Filtered:=True;
     ppViewer1.reset;
     ppViewer1.Report.PrintToDevices;
//  end
//  else

   end;


procedure TListAssetRoom.DoPrint(var mes :TMessage);
begin
  ppViewer1.Print;
end;

procedure TListAssetRoom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
{ recredit:=nil;}
 Action:=CaFree;
end;

procedure TListAssetRoom.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg := FORM_STATE;
   mes.Lparam := 20;
   Application.MainForm.Dispatch(mes);
   Left := 0;
   Top := 0;
end;


procedure TListAssetRoom.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TListAssetRoom.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
  panel2.SetFocus;
end;



procedure TListAssetRoom.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TListAssetRoom.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;



procedure TListAssetRoom.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);
      ppViewer1.GotoPage(liPage);
    end;
end;

procedure TListAssetRoom.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TListAssetRoom.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
  mskPreviewPage.text:=inttostr(ppViewer1.AbsolutePageNo);
end;

procedure TListAssetRoom.mskPreviewPercentageKeyPress(Sender: TObject;
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

procedure TListAssetRoom.quFunFormalRowGetText(Sender: TField;
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

procedure TListAssetRoom.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TListAssetRoom.FormShow(Sender: TObject);
begin
   cbBClass.ItemIndex:=0;
   cbBEmp.ItemIndex:=0;
   cbBLabel.ItemIndex:=0;
   cbBItem.ItemIndex:=0;
   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;

   DabData.quClass.Close;
   DabData.quClass.Open;

   DabData.quemp.Close;
   DabData.quemp.open;
   
   ppViewer1.reset;   
end;

procedure TListAssetRoom.dblUnitCloseUp(Sender: TObject);
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

procedure TListAssetRoom.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;
end;

procedure TListAssetRoom.dblCostCenterEnter(Sender: TObject);
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

procedure TListAssetRoom.dblLocCodeEnter(Sender: TObject);
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

procedure TListAssetRoom.ppVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
  Value:=0;
end;

procedure TListAssetRoom.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
  Value:=Value+1;
end;

end.
