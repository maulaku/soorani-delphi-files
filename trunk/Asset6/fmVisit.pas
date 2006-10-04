
unit fmVisit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate ,comobj,  ppDB, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe,
  ppStrtch, ppMemo, SmoothShow, SetForm, RSqlMemo, RSqlMaskEdit,Variants, 
  RSqlButton, RSqlEdit, RSqllookup, RSQLComboBox,RadForms;
type
  TVisit = class(TRadForm)
    quVisitGood: TADOQuery;
    dsVisitGood: TDataSource;
    quDetailUpdate: TADOQuery;
    quVisitNo: TADOQuery;
    dsVisitNo: TDataSource;
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    grGood: TDBGrid;
    PaDetailOper: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Panel17: TPanel;
    Panel19: TPanel;
    Panel18: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel16: TPanel;
    Panel20: TPanel;
    quDetailInsert: TADOQuery;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    quMasterDelete: TADOQuery;
    quVisitNoVisit_No: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    quMasterUpdate: TADOQuery;
    quDetailDelete: TADOQuery;
    quVisitNoVisit_Date: TStringField;
    quVisitNoDescr: TStringField;
    quVisitNoCreator: TStringField;
    quVisitNoCreat_Date: TStringField;
    quVisitNoConfirmer: TStringField;
    quVisitNoConfirm_Date: TStringField;
    Panel2: TPanel;
    Label13: TLabel;
    paNote: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    paMasterOper: TPanel;
    btShowGood: TButton;
    Label6: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    quVisitNoLoc_Code: TSmallintField;
    quVisitNoOrg_Code: TSmallintField;
    quVisitNoUnit_Code: TSmallintField;
    Panel10: TPanel;
    grVisit: TDBGrid;
    Panel8: TPanel;
    btFail: TButton;
    quVisitNoState: TSmallintField;
    Label16: TLabel;
    quVisitNoState_Name: TStringField;
    Panel11: TPanel;
    cbFilterState: TComboBox;
    quFindLastNo: TADOQuery;
    quFindLastNoVisit_No: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppOrg: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppNo: TppLabel;
    ppVisitDate: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppState: TppLabel;
    ppLoc: TppLabel;
    ppLabel11: TppLabel;
    pplbCost: TppLabel;
    ppLabel13: TppLabel;
    ppUnit: TppLabel;
    ppCost: TppLabel;
    ppLabel23: TppLabel;
    ppDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine16: TppLine;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppDBText2: TppDBText;
    ppLine28: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine17: TppLine;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    pplExiter: TppLabel;
    ppLabel22: TppLabel;
    quReport: TADOQuery;
    dsreport: TDataSource;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppEmp: TppLabel;
    ppDescr: TppMemo;
    ppLabel24: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText3: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppCreator: TppLabel;
    ppCreateDate: TppLabel;
    ppConfirmer: TppLabel;
    ppConfirmDate: TppLabel;
    quReportVisit_No: TIntegerField;
    quReportGoods_Type: TSmallintField;
    quReportRow_No: TIntegerField;
    quReportState: TSmallintField;
    quReportNote: TStringField;
    quReportItemName: TStringField;
    quReportLabel: TIntegerField;
    quReportItemCode: TStringField;
    quReportTypename: TStringField;
    quReportStateName: TStringField;
    quReportGoodCodeStr: TStringField;
    quMaxRow: TADOQuery;
    quMaxRowMaxRow: TIntegerField;
    quMGoods: TADOQuery;
    dsItem: TDataSource;
    quNGoods: TADOQuery;
    quMastOrg: TADOQuery;
    quMastOrgUt_Mast_Code: TSmallintField;
    quReportGeneralCode: TStringField;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblLocCode: TRSqlDbLookup;
    dblCreate: TRSqlDbLookup;
    dblConfirm: TRSqlDbLookup;
    dblItem: TRSqlDbLookup;
    edLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edVisitNo: TRSqlEdit;
    edState: TRSqlEdit;
    edNote: TRSqlEdit;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    meVisit: TRSqlMaskEdit;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    edOperNote: TRSqlEdit;
    mmDescr: TRSqlMemo;
    cbGoodType: TRSqlComboBox;
    cbMovState: TRSqlComboBox;
    cbNonState: TRSqlComboBox;
    quVisitGoodVisit_No: TIntegerField;
    quVisitGoodGoods_Type: TSmallintField;
    quVisitGoodRow_No: TIntegerField;
    quVisitGoodGoods_Code: TLargeintField;
    quVisitGoodPlaque_No: TStringField;
    quVisitGoodState: TSmallintField;
    quVisitGoodNote: TStringField;
    quVisitGoodGeneralCode: TLargeintField;
    quVisitGoodItemName: TStringField;
    quVisitGoodLabel: TIntegerField;
    quVisitGoodItemCode: TStringField;
    quVisitGoodTypename: TStringField;
    quVisitGoodStateName: TStringField;
    quMGoodsBill_no: TIntegerField;
    quMGoodsBill_type: TSmallintField;
    quMGoodscreator: TStringField;
    quMGoodscreate_date: TStringField;
    quMGoodsconfirmer: TStringField;
    quMGoodsconfirm_date: TStringField;
    quMGoodsconf_teller: TStringField;
    quMGoodsconf_date: TStringField;
    quMGoodsitem_req_no: TIntegerField;
    quMGoodsreceiver: TStringField;
    quMGoodsdelivery_man: TStringField;
    quMGoodsOrg_Code: TIntegerField;
    quMGoodsUnit_code: TSmallintField;
    quMGoodsLoc_code: TSmallintField;
    quMGoodsrec_Org_code: TIntegerField;
    quMGoodsrec_Unit_code: TSmallintField;
    quMGoodsrec_Loc_code: TSmallintField;
    quMGoodsState: TSmallintField;
    quMGoodsReason: TStringField;
    quMGoodsbill_no_1: TIntegerField;
    quMGoodsbill_type_1: TSmallintField;
    quMGoodsgoods_code: TStringField;
    quMGoodsgoods_code_1: TStringField;
    quMGoodsitem_code: TStringField;
    quMGoodsreceipt_no: TIntegerField;
    quMGoodslabel: TIntegerField;
    quMGoodsBprice: TFloatField;
    quMGoodsEprice: TFloatField;
    quMGoodsType: TSmallintField;
    quMGoodsState_1: TSmallintField;
    quMGoodsNote: TStringField;
    quNGoodsBill_no: TIntegerField;
    quNGoodsBill_type: TSmallintField;
    quNGoodscreator: TStringField;
    quNGoodscreate_date: TStringField;
    quNGoodsconfirmer: TStringField;
    quNGoodsconfirm_date: TStringField;
    quNGoodsconf_teller: TStringField;
    quNGoodsconf_date: TStringField;
    quNGoodsitem_req_no: TIntegerField;
    quNGoodsreceiver: TStringField;
    quNGoodsdelivery_man: TStringField;
    quNGoodsOrg_Code: TIntegerField;
    quNGoodsUnit_code: TSmallintField;
    quNGoodsLoc_code: TSmallintField;
    quNGoodsrec_Org_code: TIntegerField;
    quNGoodsrec_Unit_code: TSmallintField;
    quNGoodsrec_Loc_code: TSmallintField;
    quNGoodsState: TSmallintField;
    quNGoodsReason: TStringField;
    quNGoodsbill_no_1: TIntegerField;
    quNGoodsbill_type_1: TSmallintField;
    quNGoodsgoods_code: TStringField;
    quNGoodsgoods_code_1: TStringField;
    quNGoodsitem_code: TStringField;
    quNGoodsreceipt_no: TIntegerField;
    quNGoodslabel: TIntegerField;
    quNGoodsBprice: TFloatField;
    quNGoodsEprice: TFloatField;
    quNGoodsType: TSmallintField;
    quNGoodsState_1: TSmallintField;
    quNGoodsNote: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure meRepayStartKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelClick(Sender: TObject);
    procedure grGoodEnter(Sender: TObject);
    procedure quVisitNoAfterScroll(DataSet: TDataSet);
//    procedure btMasterOKClick(Sender: TObject);
    procedure grVisitEnter(Sender: TObject);
    procedure dblDebtEmpCloseUp(Sender: TObject);
//    procedure meVisitChange(Sender: TObject);
    procedure quVisitGoodAfterScroll(DataSet: TDataSet);
    procedure meConfirmExit(Sender: TObject);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure btShowGoodClick(Sender: TObject);
    procedure dblItemEnter(Sender: TObject);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblCostCenterCloseUp(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblLocCodeEnter(Sender: TObject);
    procedure btFailClick(Sender: TObject);
    procedure edNoteEnter(Sender: TObject);
    procedure dblUnitEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     procedure CheckEscEnter(sender:TObject;Skey:char);
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
     procedure HandleDeleteError( ErrCode : HRESULT);
     procedure CheckSetFailButton;
//-----------------------------------------------------------------------
//--------------------- Master Procedures -------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
//-----------------------------------------------------------------------
     procedure InsertMaster;
     procedure UpdateMaster(stat: integer);
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
     procedure SetDetailFields;
//-----------------------------------------------------------------------
     function  ConvertGoodStates(Typ,FormalIndex : Smallint):Smallint;
     function  ReplaceGoodStates(Typ,RealIndex : Smallint):Smallint;
//-----------------------------------------------------------------------
     procedure InsertDetail;
     procedure UpdateDetail;
     procedure DeleteDetail;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
   { Private declarations }
  PROTECTED
//-----------------------------------------------------------------------
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    procedure DoScroll(var mes :TMessage);message F_SCROLL;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  Visit: TVisit;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Longint;
  Err,CmpResult : integer;
  Str1,Str2,Cor_Str : string;

  ChkVisit     , ChkEmpVisit       : Boolean;
  ChkCreate    , ChkEmpCreate      : Boolean;
  ChkConfirm   , ChkEmpConfirm     : Boolean;

  TempItemCode  : string[8];
  TempGoodsCode : String[10];
  TempPlaqueNo  : String[10];
  TempGoodType  : Smallint;


  ActiveGrid : Integer;
  IsClear    : Boolean;
  BMark      : TBookmark;
  ModalRes   : Integer;
  ChkResult  : Boolean;

implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon,  fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//****************************************************************************
//****************************************************************************
procedure TVisit.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quVisitNo.RecordCount <> 0 ) then
   begin
      quVisitGood.Close;
      quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger   ;
      quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger   ;
     { if trim(dblCostCenter.Text)<>'' then
       begin
        quVisitGood.Parameters[2].Value := dabdata.quCostCenterUt_Mast_Code.Value;
        quVisitGood.Parameters[3].Value := dabdata.quCostCenterUt_Code.Value;
       end
      else
       begin
        quVisitGood.Parameters[2].Value := null;
        quVisitGood.Parameters[3].Value := null;
       end;}
      quVisitGood.Open;

      edNote.Text := quVisitGoodNote .AsString ;
      DisableMasterFields();
      SetMasterFields();
      CheckSetFailButton();
   end;
end;
//*****************************************************************************
procedure TVisit.DoNew(var mes: TMessage);
begin
   FormInitializer1.Execute;
   mde := 1;
   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex := 0;

           quVisitNo.Close;
           quVisitNo.Parameters[0].Value:= 0;
           quVisitNo.Parameters[1].Value := NULL;
           quVisitNo.open;
           quVisitNo.Last;

           quVisitGood.Close;
           quVisitGood.Parameters[0].Value := null;
           quVisitGood.Parameters[1].Value := null;
           {quVisitGood.Parameters[2].Value := null;
           quVisitGood.Parameters[3].Value := null;}
           quVisitGood.Open;

           EnableMasterFields();
           ClearMasterFields();

           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;

           if      quFindLastNo.RecordCount = 0 then edVisitNo.Text := '81000000'
              else edVisitNo.Text := IntToStr(quFindLastNoVisit_No.AsInteger + 1) ;

           meCreate.Text := Dabdata.disp_date ;
           //meConfirm.Text := Dabdata.disp_date ;
           dblUnit.SetFocus;
        end;
    2 : begin
           if Trim(edVisitNo.Text)='' then exit;
           if quVisitNoState.AsInteger <> 0 then
           begin
              Str1 := UUserMsg.SM_Pub_DeleteMode;
              Str2 := UUserMsg.SM_fmVisit_Only_Register;
              ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
              exit;
           end;
           quVisitGood.Close;
           quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger;
           quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger;
           quVisitGood.Open;
           quVisitGood.last;
           RealRow := quVisitGoodRow_No.AsInteger ;
           EnableDetailFields();
           ClearDetailFields();

           cbGoodType.SetFocus;
        end
    end;
end;
//****************************************************************************
procedure TVisit.DoEdit(var mes :TMessage);
begin
    if quVisitNoState.AsInteger <> 0 then
     begin
        Str1 := UUserMsg.SM_Pub_DeleteMode;
        Str2 := UUserMsg.SM_fmVisit_Only_Register;
        ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
        exit;
    end;

   grVisit.TabStop := false;
   grGood.TabStop  := false;
   cbFilterState.TabStop := False;

   mde := 2;
   case ActiveGrid of
    1 : begin
           if quVisitNoState.AsInteger <> 0 then exit;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           dblUnit.SetFocus;
        end;
    2 : begin
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           cbGoodType.SetFocus;
        end;
    end;
    FormInitializer1.FieldMode := fmEdit;
    FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TVisit.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;
//*****************************************************************************
procedure TVisit.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := edVisitNo.Text;
      quMasterInsert.parameters[1].Value := OrganizCode;
//      quMasterInsert.parameters[2].value := dblUnit.KeyValue;
      quMasterInsert.parameters[2].value := dblCostCenter.KeyValue;
      quMasterInsert.parameters[3].value := dblLocCode.KeyValue;
      quMasterInsert.parameters[4].value := meVisit.Text;
      if  CheckNull(mmDescr.Text)
          then   quMasterInsert.parameters[5].value  := mmDescr.Text
          else   quMasterInsert.parameters[5].value  := NULL;
      quMasterInsert.parameters[6].value := dblCreate.KeyValue;
      quMasterInsert.parameters[7].value := meCreate.Text;
      if CheckNull( dblConfirm.Text )
           then   quMasterInsert.parameters[8].value := dblConfirm.KeyValue
           else   quMasterInsert.parameters[8].value := NULL;
      if  ChkConfirm
           then   quMasterInsert.parameters[9].value := meConfirm.Text
           else   quMasterInsert.parameters[9].value := NULL;
      quMasterInsert.parameters[10].value := 0;

      quMasterInsert.Prepared := True;
      quMasterInsert.ExecSql;

      DabData.ADOC.CommitTrans;
    end;
    except
       DabData.ADOC.RollbackTrans;
    end;  //exception..
    if (quMasterInsert.RowsAffected <> 1) then
    begin
       Str1 := UUserMsg.SM_Pub_InsertMode;
       Str2 := UUserMsg.SM_Pub_RetryMsg;
       ShowMessage2(Str2);
    end;
    quVisitNo.close;
    quVisitNo.Parameters[0].Value := cbFilterState.ItemIndex;
    quVisitNo.Parameters[1].Value := NULL;
    quVisitNo.Open;
    quVisitNo.Last;

    SetDefaultMode(1);
end;
//***************************************************************************
procedure TVisit.UpdateMaster(stat: integer);
var TmpInt : String;
begin

   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblUnit.KeyValue;
      quMasterUpdate.parameters[1].value := dblCostCenter.KeyValue;
      quMasterUpdate.parameters[2].value := dblLocCode.KeyValue;
      quMasterUpdate.parameters[3].value := meVisit.Text;
      if  CheckNull(mmDescr.Text)
          then   quMasterUpdate.parameters[4].value  := mmDescr.Text
          else   quMasterUpdate.parameters[4].value  := NULL;
      quMasterUpdate.parameters[5].value := dblCreate.KeyValue;
      quMasterUpdate.parameters[6].value := meCreate.Text;
      if CheckNull( dblConfirm.Text )
           then   quMasterUpdate.parameters[7].value := dblConfirm.KeyValue
           else   quMasterUpdate.parameters[7].value := NULL;
      if  ChkConfirm
           then   quMasterUpdate.parameters[8].value := meConfirm.Text
           else   quMasterUpdate.parameters[8].value := NULL;
      quMasterUpdate.parameters[9].value := stat;
      quMasterUpdate.parameters[10].value := edVisitNo.Text;

      quMasterUpdate.Prepared := True;
      quMasterUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterUpdate.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;

   TmpInt := edVisitNo.Text;

   quVisitNo.close;
   quVisitNo.Parameters[0].Value := cbFilterState.ItemIndex;
   quVisitNo.Parameters[1].Value := NULL;
   quVisitNo.Open;

   quVisitno.Locate('Visit_No',TmpInt,[locaseinsensitive]);
end;
{//***************************************************************************
procedure TVisit.UpdateDetail;
var Str1,Str2 : String;
    BMark : TBookMark;
begin
   quDetailUpdate.Close;
   Bmark := quVisitGood.GetBookmark;

   try
      DabData.ADOC.BeginTrans;

{      quDetailUpdate.parameters[0].value := meRepayStart.Text;
      quDetailUpdate.parameters[1].value := '1';
      quDetailUpdate.parameters[2].value := StrToFloat(edRemain.Text);
      quDetailUpdate.parameters[3].value := edVisitNo.Text;
      quDetailUpdate.parameters[4].value := StrToInt(edInstNum.Text);}
{
      quDetailUpdate.Prepared := True;
      quDetailUpdate.ExecSql;
      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;
   if (quDetailUpdate.RowsAffected <> 1) then
   begin                                   //?
      Str1 := UUserMsg.SM_Pub_UpdateMode;
      Str2 := UUserMsg.SM_Pub_RetryMsg;
      ShowMessage2(Str2);
   end;

   mde := 0;

   quVisitGood.close;
   quVisitGood.Open;


   quVisitGood.GotoBookmark(Bmark);
   quVisitGood.FreeBookmark(Bmark);

end;}
//****************************************************************************
procedure TVisit.SetDefaultMode(i: integer);
begin
   grVisit.TabStop:=true;
   grGood.TabStop:=true;
   mde := 0 ;
   PaNote.Visible       := True;
   case ActiveGrid of
      1 :
      begin
         paMasterOper.Visible := False;
         PaDetailOper.Visible := False;

         grVisit.TabStop    := True;
         ActiveControl      := grVisit;
         ActiveGrid         := 1;
      end;
      2 :
      begin
         paMasterOper.Visible := False;
         PaDetailOper.Visible := False;

         grGood.TabStop     := True;
         ActiveControl      := grGood;
         ActiveGrid         := 2;
      end;

    end;
end;
//****************************************************************************
procedure TVisit.CheckEscEnter(sender: TObject; Skey: char);
const
   CodeEnter = #13;
   CodeESC   = #27;
begin
   if  ((SKey = CodeEnter) or (SKey = CodeESC)) then
   begin
      if SKey = CodeEnter then
      begin
         if btOK.Enabled = True then  btOKClick(Sender);
      end
     else if SKey = CodeESC then  btCancelClick(Sender);
   end;  // Main If
end;
//------------------------ Master  Region ------------------------------------
//****************************************************************************
procedure TVisit.ClearMasterFields;
begin
      edVisitNo.Clear ;
      edState.Clear ;

      meVisit.Clear ;
      meConfirm.Clear;
      meCreate.Clear ;
      mmDescr.Clear;

      dblUnit.KeyValue       := null;
      dblCostCenter.KeyValue := null;
      dblLocCode.KeyValue    := null;
      //dblCreate.KeyValue    := '';
      //dblConfirm.KeyValue   := '';
end;
//**************************************************************************
procedure TVisit.SetMasterFields();
begin

      edVisitNo.Text        :=  quVisitNoVisit_No.AsString;
      edState.Text          :=  quVisitNoState_Name.AsString;

      meCreate.Text         :=  quVisitNoCreat_Date.AsString;
      meConfirm.Text        :=  quVisitNoConfirm_Date.AsString;
      meVisit.Text          :=  quVisitNoVisit_Date.AsString;
      mmDescr.Text          :=  quVisitNoDescr.AsString;

//      dblOrgUnit.KeyValue  :=  quVisitvi.AsInteger;
      dblCreate.KeyValue    :=  quVisitNoCreator.AsString;
      //dblConfirm.KeyValue   :=  quVisitNoConfirmer.AsString;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      quMastOrg.Close;
      quMastOrg.Parameters[0].Value := OrganizCode;
      quMastOrg.Parameters[1].Value := quVisitNoUnit_Code.AsInteger;
      quMastOrg.Open;

      dblUnit.KeyValue      :=   quMastOrgUt_Mast_Code.AsInteger;
      dblCostCenter.KeyValue      :=  quVisitNoUnit_Code.AsInteger;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := quVisitNoUnit_Code.AsInteger; ;

      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := dblCostCenter.KeyValue;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := quVisitNoLoc_Code.AsInteger;

end;
//*****************************************************************************
procedure TVisit.DisableMasterFields;
begin
      edVisitNo.FieldType := ftDisplay;
      meCreate.FieldType := ftDisplay;
      meConfirm.FieldType := ftDisplay;
      meVisit.FieldType := ftDisplay;
      dblUnit.FieldType := ftDisplay;
      dblCostCenter.FieldType := ftDisplay;
      dblLocCode.FieldType := ftDisplay;
      dblCreate.FieldType := ftDisplay;
      dblConfirm.FieldType := ftDisplay;
      mmDescr.FieldType := ftDisplay;
      FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TVisit.EnableMasterFields;
begin
      grVisit.TabStop:= false;
      grGood .TabStop:= false;
      cbFilterState.TabStop  := False;

      qudblEmp.Close;
      qudblEmp.Open;

      //dblCreate.KeyValue   := '' ;
      //dblConfirm.KeyValue  := '' ;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue := null ;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;

      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := null ;

      //dblCreate.Enabled    := True;
      dblConfirm.FieldType := ftDisplay;
      dblUnit.FieldType := ftRequired;
      dblCostCenter.FieldType := ftRequired;
      dblLocCode.FieldType := ftRequired;

      mmDescr.FieldType := ftNonRequired;
//      meCreate.Enabled     := True;
      meConfirm.FieldType := ftDisplay;
      meVisit.FieldType := ftRequired;


      paMasterOper.visible := True;
      PaDetailOper.Visible := False;
      PaNote.Visible       := False;

      ChkCreate    := False;
      ChkEmpCreate := True;

      ChkVisit     := False;
      ChkEmpVisit  := True;
      FormInitializer1.Execute;

end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
procedure TVisit.ClearDetailFields;
begin
   cbNonState.ItemIndex   := -1 ;
   cbMovState.ItemIndex   := -1 ;
   cbGoodType.ItemIndex   := -1 ;

   edLabel.Clear;
   edItemName.Clear;
   edOperNote.Clear;
   dblItem.KeyValue      := null ;
end;//

//**************************************************************************
procedure TVisit.SetDetailFields();
begin
   if quVisitGood.RecordCount <> 0 then
   begin
      cbGoodType.ItemIndex  :=  quVisitGoodGoods_Type.AsInteger;
      edItemName.Text       :=  quVisitGoodItemName.AsString;
      edLabel.Text          :=  quVisitGoodLabel.AsString;
      dblItem.KeyValue      :=  quVisitGoodItemCode.AsString ;
      case  cbGoodType.ItemIndex of
        0 :  cbMovState.ItemIndex  := ReplaceGoodStates(0,quVisitGoodState.AsInteger);
        1 :  cbNonState.ItemIndex  := ReplaceGoodStates(1,quVisitGoodState.AsInteger);
      end;  // case
      edNote.Text       :=  quVisitGoodNote.AsString;

      TempGoodsCode         :=  quVisitGoodGoods_Code.AsString ;
      TempPlaqueNo          :=  quVisitGoodPlaque_no.AsString ;
      TempItemCode          :=  quVisitGoodItemCode.AsString ;
      TempGoodType          :=  quVisitGoodGoods_type.AsInteger;
      RealRow               :=  quVisitGoodRow_no.AsInteger;
      if mde = 2 then
      begin
          case TempGoodType of
           0  :
             begin
                if dblItem.ListSource <> DabData.dsMoveable then
                begin
                  dblItem.KeyField   := '';
                  dblItem.ListField  := '';
                  dblItem.ListSource := DabData.dsMoveable;
                  dblItem.KeyField   := 'Goods_CodeStr';
                  dblItem.ListField  := 'Goods_CodeStr';
               end;

               DabData.qumoveable.Close;
               DabData.qumoveable.Parameters[0].Value := 0;
               DabData.qumoveable.Parameters[1].Value := 1;
               DabData.qumoveable.Parameters[2].Value := 2;
               DabData.qumoveable.Parameters[3].Value := quVisitGoodGoods_code.AsString;
               DabData.qumoveable.Parameters[2].Value := NULL;
               DabData.qumoveable.Parameters[5].Value := OrganizCode;
               DabData.qumoveable.Parameters[6].Value := dblUnit.KeyValue;
               DabData.qumoveable.Parameters[7].Value := dblCostCenter.KeyValue;
               DabData.qumoveable.Open;

               dblItem.KeyValue      :=  quVisitGoodGoods_code.AsString ;
             end;
    1 : begin
             if dblItem.ListSource <> DabData.dsnonmgood then
             begin
                dblItem.KeyField   := '';
                dblItem.ListField  := '';
                dblItem.ListSource := DabData.dsnonmgood;
                dblItem.KeyField   := 'Plaque_NoStr';
                dblItem.ListField  := 'Plaque_NoStr';
             end;
             DabData.qunonmgood.Close;
             DabData.qunonmgood.Parameters[0].Value := 0;
             DabData.qunonmgood.Parameters[1].Value := 1;
             DabData.qunonmgood.Parameters[2].Value := 4;
             DabData.qunonmgood.Parameters[3].Value := quVisitGoodPlaque_no.AsString;
             DabData.qunonmgood.Parameters[2].Value := NULL;
             DabData.qunonmgood.Open;

             dblItem.KeyValue      :=  quVisitGoodPlaque_no.AsString ;
          end;
         end; // case
      end;
   end
   else
      RealRow  := 0 ;
//   edNote.Text := quVisitGoodNote .AsString ;
end;
//*****************************************************************************
procedure TVisit.InsertDetail();
var  str1,Str2 : string;
begin
   quDetailInsert.Close;
   quDetailInsert.Close;
   quMaxRow.Close;
   quMaxRow.Parameters[0].Value:=StrToInt(edVisitNo.Text);
   quMaxRow.Open;
   try
   begin
      DabData.ADOC.BeginTrans;

      quDetailInsert.parameters[0].value := StrToInt(edVisitNo.Text);
      quDetailInsert.parameters[1].value := cbGoodType.ItemIndex;
      quDetailInsert.parameters[2].value := quMaxRowMaxRow.AsInteger;
      case cbGoodType.ItemIndex of
        0 : begin
               quDetailInsert.parameters[3].value := dblItem.KeyValue;
               quDetailInsert.parameters[4].value := NULL;
               quDetailInsert.parameters[5].value := ConvertGoodStates(0,cbMovState.ItemIndex);
            end;
        1 : begin
               quDetailInsert.parameters[3].value := NULL;
               quDetailInsert.parameters[4].value := dblItem.KeyValue;
               quDetailInsert.parameters[5].value := ConvertGoodStates(1,cbNonState.ItemIndex);
            end;
       end; // case
      quDetailInsert.parameters[6].value := edOperNote.Text;

      quDetailInsert.Prepared := True;
      quDetailInsert.ExecSql;

      DabData.ADOC.CommitTrans;
   end;
   except
       DabData.ADOC.RollbackTrans;
   end;  //exception..
    if (quDetailInsert.RowsAffected <> 1) then
    begin
       Str1 := UUserMsg.SM_Pub_InsertMode;
       Str2 := UUserMsg.SM_Pub_RetryMsg;
       ShowMessage2(Str2);
    end;

    quVisitGood.close;
    quVisitGood.Parameters[0].Value := StrToInt(edVisitNo.Text);
    quVisitGood.Parameters[1].Value := StrToInt(edVisitNo.Text);
    {if trim(dblCostCenter.Text)<>'' then
       begin
        quVisitGood.Parameters[2].Value := dabdata.quCostCenterUt_Mast_Code.Value;
        quVisitGood.Parameters[3].Value := dabdata.quCostCenterUt_Code.Value;
       end
    else
       begin
        quVisitGood.Parameters[2].Value := -1;
        quVisitGood.Parameters[3].Value := -1;
       end; }
    quVisitGood.Open;
    quVisitGood.Last;
end;
//*****************************************************************************
//*****************************************************************************
procedure TVisit.EnableDetailFields;
begin
{   case  mde of
    1 : begin  dblItem.Enabled := False;  btok.Enabled := False ; end;
    2 : begin  dblItem.Enabled := True;   btok.Enabled := True ; end;
   end; // case}

   cbGoodType.FieldType := ftRequired;

   cbNonState.FieldType := ftDisplay;
   cbMovState.FieldType := ftDisplay;

   if mde = 2 then
      case quVisitGoodGoods_Type.AsInteger of
        0 :  begin
               cbMovState.Visible    := True;
               cbNonState.Visible    := False;
               cbMovState.FieldType := ftRequired;
             end;
        1 :  begin
               cbNonState.Visible    := True;
               cbMovState.Visible    := False;
               cbNonState.FieldType := ftRequired;
             end;
      end;  // case

   paMasterOper.visible  := True;
   PaDetailOper.Visible  := True;
   PaNote.Visible        := False;
   FormInitializer1.FieldMode:= fmInsert;
   FormInitializer1.Execute;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TVisit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TVisit.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 46 ;
   Application.MainForm.Dispatch(mes);
   SetDefaultMode(1);
end;
//*************************************************************************
procedure TVisit.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TVisit.FormShow(Sender: TObject);
var l,t:integer;
begin
   
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   mde:=0;
   cbFilterState.ItemIndex := 0 ;

   quVisitNo.Close;  // set values to Grid
   quVisitNo.Parameters[0].Value := cbFilterState.ItemIndex;
   quVisitNo.Parameters[1].Value := NULL;
   quVisitNo.Open;

   if quVisitNo.RecordCount <> 0 then
   begin
      quVisitGood.Close;  // set values to Grid
      quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger;
      quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger;
      {if trim(dblCostCenter.Text)<>'' then
       begin
        quVisitGood.Parameters[2].Value := dabdata.quCostCenterUt_Mast_Code.Value;
        quVisitGood.Parameters[3].Value := dabdata.quCostCenterUt_Code.Value;
       end
      else
       begin
        quVisitGood.Parameters[2].Value := -1;
        quVisitGood.Parameters[3].Value := -1;
       end;}
      quVisitGood.Open;
   end;

   qudblEmp.Close;
   qudblEmp.Open;

   DabData.quOrgUnit.Close;
   //DabData.quOrgUnit.open;

   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkCreate    := False;
   ChkEmpCreate := True;

   ChkVisit     := False;
   ChkEmpVisit  := True;

   cbNonState.Left := 5;
   cbMovState.Left := 5;
   grVisit.SetFocus;
   dblCreate.KeyValue:=DabData.emp_no;
   //dblConfirm.KeyValue:=DabData.emp_no;
end;
//******************************************************************************
procedure TVisit.btOKClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      case mde of
        1 : InsertMaster();
        2 : UpdateMaster(0);
        3 : DeleteMaster();
      end;  // end case
      SetDefaultMode(1);
   end
   else
   if ActiveGrid = 2 then
   begin
      case mde of
      1 : InsertDetail();
      2 : UpdateDetail();
      3 : DeleteDetail();
      end;  // end case
      SetDefaultMode(2);
   end;
end;
//******************************************************************************
procedure TVisit.btCancelClick(Sender: TObject);
begin
//?   paMasterOper.Visible := True;
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TVisit.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TVisit.grGoodEnter(Sender: TObject);
begin
   if (mde=1)and(ActiveGrid = 1) then
   begin
      mde := 0;
      quVisitNo.Close;
      quVisitNo.Open;
   end;


   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   CheckSetFailButton();
    if ( mde = 0) and (quVisitNo.RecordCount <> 0 ) then
   begin
      quVisitGood.Close;
      quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger   ;
      quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger   ;
      {if trim(dblCostCenter.Text)<>'' then
       begin
        quVisitGood.Parameters[2].Value := dabdata.quCostCenterUt_Mast_Code.Value;
        quVisitGood.Parameters[3].Value := dabdata.quCostCenterUt_Code.Value;
       end
      else
       begin
        quVisitGood.Parameters[2].Value := -1;
        quVisitGood.Parameters[3].Value := -1;
       end;}
      quVisitGood.Open;
   end;//if ( mde = 0)
end;
//******************************************************************************
procedure TVisit.quVisitNoAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TVisit.grVisitEnter(Sender: TObject);
begin
   if (mde=1)and(ActiveGrid = 1) then
   begin
      mde := 0;
      quVisitNo.Close;
      quVisitNo.Open;
   end;
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton();
end;
//*****************************************************************************
procedure TVisit.dblDebtEmpCloseUp(Sender: TObject);
begin
  if Trim(dblItem.Text) = '' then
  begin
      edLabel.Clear   ;
      edItemName.Clear ;
      exit;
  end;
  case cbGoodType.ItemIndex of
    0 : begin
           edLabel.Text  :=  DabData.qumoveablelabel.AsString ;
           edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
        end;
    1 : begin
           edLabel.Clear ;
           edItemName.Text   :=  DabData.qunonmgooditem_name.AsString ;
        end;
   end; // case
end;
//*****************************************************************************
procedure TVisit.UpdateDetail();
begin
   BMark := quVisitGood.GetBookmark();
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := cbGoodType.ItemIndex;
      case cbGoodType.ItemIndex of
        0 : begin
              quDetailUpdate.parameters[1].value := dblItem.KeyValue;
              quDetailUpdate.parameters[2].value := NULL;
              quDetailUpdate.parameters[3].value := ConvertGoodStates(0,cbMovState.ItemIndex);
            end;
        1 : begin
              quDetailUpdate.parameters[1].value := NULL;
              quDetailUpdate.parameters[2].value := dblItem.KeyValue;
              quDetailUpdate.parameters[3].value := ConvertGoodStates(1,cbNonState.ItemIndex);
            end
       end; // case
      quDetailUpdate.parameters[4].value := edOperNote.Text;
      quDetailUpdate.parameters[5].value := StrToInt(edVisitNo.Text);
      quDetailUpdate.parameters[6].value := RealRow ;

      quDetailUpdate.Prepared := True;
      quDetailUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quDetailUpdate.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;


   quVisitGood.close;
   quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger;
   quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger;
   {if trim(dblCostCenter.Text)<>'' then
       begin
        quVisitGood.Parameters[2].Value := dabdata.quCostCenterUt_Mast_Code.Value;
        quVisitGood.Parameters[3].Value := dabdata.quCostCenterUt_Code.Value;
       end
   else
       begin
        quVisitGood.Parameters[2].Value := -1;
        quVisitGood.Parameters[3].Value := -1;
       end;}
   quVisitGood.Open;

   quVisitGood.GotoBookmark(BMark);
   quVisitGood.FreeBookmark(BMark);

end;
//****************************************************************************
procedure TVisit.quVisitGoodAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TVisit.DeleteDetail;
begin
   quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := StrToInt(edVisitNo.Text);
      quDetailDelete.parameters[1].value := quVisitGoodRow_No   .AsInteger ;
      quDetailDelete.Prepared := True;
      quDetailDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
     on FK : EOleException  do begin
                               HandleDeleteError(FK.Errorcode);
                               exit;
                               end;
   end;

   if (quDetailDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quVisitGood.close;
   quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger;
   quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger;
   {if trim(dblCostCenter.Text)<>'' then
       begin
        quVisitGood.Parameters[2].Value := dabdata.quCostCenterUt_Mast_Code.Value;
        quVisitGood.Parameters[3].Value := dabdata.quCostCenterUt_Code.Value;
       end
   else
       begin
        quVisitGood.Parameters[2].Value := -1;
        quVisitGood.Parameters[3].Value := -1;
       end;}
   quVisitGood.Open;

   SetDefaultMode(2);
end;


procedure TVisit.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt( edVisitNo.Text );

      quMasterDelete.Prepared := True;
      quMasterDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
     on FK : EOleException  do
     begin
       HandleDeleteError(FK.Errorcode);
       exit;
     end;
   end;

   if (quMasterDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quVisitNo.close;
   quVisitNo.Open;

   SetDefaultMode(1);

end;

procedure TVisit.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grVisit.Color    := clActiveGridColor;
          grGood.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grVisit.Color    := clDeactiveGridColor;
          grGood.Color     := clActiveGridColor;
       end;
    end; // case
end;

procedure TVisit.DoDelete(var mes: TMessage);
begin
   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( quVisitNo.RecordCount >=1 ) and
           ( quVisitNo.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grVisit.SetFocus;
             exit;
          end;

          mde :=3;
          DeleteMaster ();
        end;

        2 : if ( Mde = 0 )  and ( quVisitGood.RecordCount >=1 ) and
                ( quVisitGood.RecNo >= 1) then
            begin
                if quVisitNoState.AsInteger <> 0 then
                  begin
                        Str1 := UUserMsg.SM_Pub_DeleteMode;
                        Str2 := UUserMsg.SM_fmVisit_Only_Register;
                        ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
                        exit;
                  end;
               Str1 := UUserMsg.SM_Pub_DeleteMode;
               Str2 := UUserMsg.SM_fmLonTyp_ConfirmDelRec;
               ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

               if ModalRes <> mrOk then
               begin
                  Mde := 0;
                  grGood.SetFocus;
                  exit;
               end;

                  DeleteDetail();
            end;
        end;      //  case
end;

procedure TVisit.meConfirmExit(Sender: TObject);
begin
{   ChkResult := True;
   if  Not(ChkEmpConfirm) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end
   else
      if ConfirmDate.CompareStrDates( meConfirm.Text , meReqDate.Text,CmpResult,Err) then
      if ( ChkReqDate ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if ConfirmDate.CompareStrDates( meConfirm.Text , meCreate.Text,CmpResult,Err) then
      if ( ChkCreate ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end
   else
   begin
      if ConfirmDate.CompareStrDates( meConfirm.Text , meVerify.Text,CmpResult,Err) then
      if ( ChkVerify ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;

   if Not(ChkResult) then
   begin
      meConfirm.Text := '  /  /  ';
      meConfirm.SetFocus;
   end}
end;


procedure TVisit.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
           dblItem.FieldType := ftRequired;
           if dblItem.ListSource <> DabData.dsMoveable then
           begin
              dblItem.KeyField   := '';
              dblItem.ListField  := '';
              dblItem.ListSource := DabData.dsMoveable;
              dblItem.KeyField   := 'Goods_CodeStr';
              dblItem.ListField  := 'Goods_CodeStr';
           end;
           DabData.qumoveable.Close;
           DabData.qumoveable.Parameters[0].Value := 0;
           DabData.qumoveable.Parameters[1].Value := 1;
           DabData.qumoveable.Parameters[2].Value := 2;
           if ( mde = 2 ) and ( TempGoodType = 0 )
                 then DabData.qumoveable.Parameters[3].Value := quVisitGoodGoods_code.AsString
                 else DabData.qumoveable.Parameters[3].Value := -1;
           DabData.qumoveable.Parameters[4].Value := NULL ;
           DabData.qumoveable.Parameters[5].Value := OrganizCode;
           DabData.qumoveable.Parameters[6].Value := dblUnit.KeyValue;
           DabData.qumoveable.Parameters[7].Value := dblCostCenter.KeyValue;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := null;
           edLabel.Clear;
           edItemName.Clear;
           cbMovState.Visible := True ;
           cbNonState.Visible := False ;
           cbMovState.FieldType := ftRequired;
        end;
    1 : begin
           dblItem.Enabled := True;
           if dblItem.ListSource <> DabData.dsnonmgood then
           begin
              dblItem.KeyField   := '';
              dblItem.ListField  := '';
              dblItem.ListSource := DabData.dsnonmgood;
              dblItem.KeyField   := 'Plaque_NoStr';
              dblItem.ListField  := 'Plaque_NoStr';
           end;
           DabData.qunonmgood.Close;
           DabData.qunonmgood.Parameters[0].Value := 0;
           DabData.qunonmgood.Parameters[1].Value := 1;
           DabData.qunonmgood.Parameters[2].Value := 4;
           if ( mde = 2 ) and ( TempGoodType = 1 )
                 then  DabData.qunonmgood.Parameters[3].Value := quVisitGoodPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[3].Value := 0;
           DabData.qunonmgood.Parameters[4].Value := 'xx';
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := null;
           edLabel.Clear;
           edItemName.Clear;
           cbMovState.Visible := False ;
           cbNonState.Visible := True ;
           cbNonState.FieldType := ftRequired;
       end
   end; // case
   FormInitializer1.Execute;
end;

procedure TVisit.btShowGoodClick(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          setformColor(ShowMvGood);
          ShowMvgood.ShowModal();
          if ShowMvgood.ModalResult = Mrok then
          begin
             dblItem.KeyValue  := DabData.qumoveablegoods_code.AsString;
             edLabel.Text      :=  DabData.qumoveablelabel.AsString ;
             edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
          end;
          ShowMvgood.Free;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
          setformColor(ShowNonMGood);
          ShowNonMgood.ShowModal();

          if ShowNonMgood.ModalResult = MrOK then
          begin
             dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
             edLabel.Clear ;
             edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;
          end;
          ShowNonMgood.Free;
       end;
   end;   // case
   if Trim(dblItem.Text) = '' then
   begin
       edLabel.Clear   ;
       edItemName.Clear ;
       exit;
   end;

end;

procedure TVisit.dblItemEnter(Sender: TObject);
begin
{   if not(CheckNull(cbGoodType.Text)) then
   begin
      dblItem.KeyField   := '';
      dblItem.ListField  := '';
      dblItem.ListSource := DabData.dsMoveable;
      dblItem.KeyField   := 'Goods_CodeStr';
      dblItem.ListField  := 'Goods_CodeStr';

      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 20 ;
      DabData.qumoveable.Open;

      dblItem.KeyValue   := null;
    end;}
end;


procedure TVisit.dblUnitCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := null ;

   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value := 0;
   DabData.quDeployLoc.Parameters[1].Value := 0;
   DabData.quDeployLoc.Open;
   dblLocCode.KeyValue := null ;

end;

procedure TVisit.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := null ;
end;

procedure TVisit.dblCostCenterEnter(Sender: TObject);
begin
   if not(CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := 0;
      DabData.quCostCenter.Parameters[1].Value := 0;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;
   end
   else
   if ((CheckNull(dblUnit.Text)))and (mde <> 2) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;
   end
end;


procedure TVisit.dblLocCodeEnter(Sender: TObject);
begin
   if not(CheckNull(dblCostCenter.Text) ) then
   begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := 0;
      DabData.quDeployLoc.Parameters[1].Value := 0;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := null ;
   end;
end;


procedure TVisit.btFailClick(Sender: TObject);
begin
  if (quVisitNoState.AsInteger = 0) and ( ActiveGrid = 1) then
  begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_fmVisit_FailVisit;
     ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes <> mrOk then
     begin
        grVisit.SetFocus;
        exit;
     end;
     cbFilterState.ItemIndex := 1 ;
     UpdateMaster (1);
  end
end;

function TVisit.ConvertGoodStates(Typ, FormalIndex: Smallint):Smallint;
begin
  if typ=0 then
      case FormalIndex of
       0 :  ConvertGoodStates := 0;
       1 :  ConvertGoodStates := 2;
       2 :  ConvertGoodStates := 1;
       3 :  ConvertGoodStates := 10;
       4 :  ConvertGoodStates := 9;
      end // case
  else
  if typ=1 then
      case FormalIndex of
       0 :  ConvertGoodStates := 4;
       1 :  ConvertGoodStates := 5;
       2 :  ConvertGoodStates := 6;
      end; // case
end;

function TVisit.ReplaceGoodStates(Typ, RealIndex: Smallint): Smallint;
begin
  if typ=0 then
      case RealIndex of
       0 :  ReplaceGoodStates := 0;
       2 :  ReplaceGoodStates := 1;
       1 :  ReplaceGoodStates := 2;
       10:  ReplaceGoodStates := 3;
       9 :  ReplaceGoodStates := 4;
      end // case
  else
  if typ=1 then
      case  RealIndex of
       4 :  ReplaceGoodStates := 0;
       5 :  ReplaceGoodStates := 1;
       6 :  ReplaceGoodStates := 2;
      end; // case
end;

procedure TVisit.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if ( quVisitNo.RecordCount <> 0 )and ( quVisitNoState.AsInteger = 0) and ( ActiveGrid = 1) then
       btFail.Enabled := True ;
end;

procedure TVisit.edNoteEnter(Sender: TObject);
begin
   CheckSetFailButton();
end;

procedure TVisit.dblUnitEnter(Sender: TObject);
begin
   btFail.Enabled := False;
end;

procedure TVisit.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 4 then
  begin
     quVisitNo.Close;
     quVisitNo.Parameters[0].Value := cbFilterState.ItemIndex;
     quVisitNo.Parameters[1].Value := 1;
     quVisitNo.open;
  end
  else
   begin
     quVisitNo.Close;
     quVisitNo.Parameters[0].Value:= cbFilterState.ItemIndex;
     quVisitNo.Parameters[1].Value := NULL;
     quVisitNo.open;
   end;

   if quVisitNo.RecordCount = 0 then
   begin
     quVisitGood.Close;
     quVisitGood.Parameters[0].Value := NULL;
     quVisitGood.Parameters[1].Value := NULL;
     {quVisitGood.Parameters[2].Value := null;
     quVisitGood.Parameters[3].Value := null;}
     quVisitGood.Open;
     ClearMasterFields();
   end;
end;

procedure TVisit.DoPrint(var mes: TMessage);
begin
   if quvisitNo.RecordCount = 0 then exit;

   quReport.close;
   quReport.Parameters[0].Value:= edVisitNo.Text;
   quReport.Parameters[1].Value:= edVisitNo.Text;
   quReport.open;

   if quVisitNoState.AsInteger<> 2 then
   begin
        Str1 := '«Œÿ«—';
        Str2 := '›ﬁÿ ÕÊ«·Â Â«Ì  «ÌÌœ ‘œÂ ﬁ«»· ç«Å „Ì »«‘‰œ';
        ShowMessage2(Str2);
        exit;
   end;

   ppOrg.text    :=  OrganizName;
   ppNo.text     :=  edVisitNo.Text;
   ppEmp.text    :=  dabdata.qudeploylocFLName.asstring;;
   ppDate.Text   :=  Dabdata.disp_date;
   ppState.Text  := ' «ÌÌœ ‘œÂ';
   ppUnit.text   :=  dblunit.Text;
   ppCost.text   :=  dblCostCenter.Text;
   ppLoc.text    :=  dblLocCode.Text;

   ppDescr.Text      := mmdescr.Text ;
   ppVisitDate.Text  := mevisit.Text ;

   ppCreator.Text    := dblcreate.Text ;
   ppCreateDate.Text := mecreate.Text ;
   ppConfirmer.Text  := dblconfirm.Text ;
   ppConfirmDate.Text:= meConfirm.Text ;

   ppReport1.Print;
end;

procedure TVisit.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  text := inttostr(qureport.Recno);
end;

end.
