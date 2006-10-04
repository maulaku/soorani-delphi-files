unit fmAccComiss;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate ,comobj, ppStrtch, ppMemo, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  RSqlMaskEdit,   SetForm, RSqllookup, RSqlMemo,
  RSqlEdit, RSQLComboBox, RSqlButton,RadForms,Variants;
type
  TAccidComiss = class(TRadForm)
    quAccidGood: TADOQuery;
    dsAccidGood: TDataSource;
    quDetailUpdate: TADOQuery;
    quAccidNo: TADOQuery;
    dsAccidNo: TDataSource;
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
    Panel6: TPanel;
    Panel7: TPanel;
    Panel16: TPanel;
    Panel20: TPanel;
    quDetailInsert: TADOQuery;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    quMasterDelete: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    quMasterUpdate: TADOQuery;
    quDetailDelete: TADOQuery;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    paMasterOper: TPanel;
    btShowGood: TButton;
    quAccidNoAccident_Com_No: TIntegerField;
    quAccidNoAccident_Type: TSmallintField;
    quAccidNoAccident_Date: TStringField;
    quAccidNoAccident_Time: TStringField;
    quAccidNoAccident_Desc: TStringField;
    quAccidNoAccident_Evidence: TStringField;
    quAccidNoReference_Notion: TStringField;
    quAccidNoCreator: TStringField;
    quAccidNoCreate_Date: TStringField;
    quAccidNoConfirmer: TStringField;
    quAccidNoConfirm_Date: TStringField;
    quAccidNoApprover: TStringField;
    quAccidNoApprove_Date: TStringField;
    quAccidNoAccident_Loc: TStringField;
    Label2: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    paNote: TPanel;
    Panel5: TPanel;
    grAccid: TDBGrid;
    Panel8: TPanel;
    btFail: TButton;
    quAccidNoState: TSmallintField;
    quAccidNoState_Name: TStringField;
    Label25: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    quFindLastNo: TADOQuery;
    quFindLastNoAccident_Com_No: TIntegerField;
    quFindLastNoAccident_Type: TSmallintField;
    quFindLastNoAccident_Date: TStringField;
    quFindLastNoAccident_Time: TStringField;
    quFindLastNoAccident_Desc: TStringField;
    quFindLastNoAccident_Evidence: TStringField;
    quFindLastNoReference_Notion: TStringField;
    quFindLastNoCreator: TStringField;
    quFindLastNoCreate_Date: TStringField;
    quFindLastNoConfirmer: TStringField;
    quFindLastNoConfirm_Date: TStringField;
    quFindLastNoApprover: TStringField;
    quFindLastNoApprove_Date: TStringField;
    quFindLastNoAccident_Loc: TStringField;
    quFindLastNoState: TSmallintField;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppNo: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppState: TppLabel;
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
    ppLabel24: TppLabel;
    ppLine8: TppLine;
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
    ppLine9: TppLine;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLabel22: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    dsreport: TDataSource;
    quReport: TADOQuery;
    ppLabel9: TppLabel;
    ppLine10: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    ppLabel5: TppLabel;
    ppdescr: TppMemo;
    ppClock: TppLabel;
    ppAccDate: TppLabel;
    ppLabel13: TppLabel;
    ppPlace: TppLabel;
    ppLabel27: TppLabel;
    ppAccType: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppShahed: TppLabel;
    ppLine12: TppLine;
    ppLabel33: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine13: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine14: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine15: TppLine;
    meReg: TRSqlMaskEdit;
    meAccDate: TRSqlMaskEdit;
    meCreate: TRSqlMaskEdit;
    quAccidGoodAccident_Com_No: TIntegerField;
    quAccidGoodNew_State: TSmallintField;
    quAccidGoodDescr: TStringField;
    quAccidGoodPlaque_No: TStringField;
    quAccidGoodRow_No: TIntegerField;
    quAccidGoodGoods_Type: TSmallintField;
    quAccidGoodItemName: TStringField;
    quAccidGoodLabel: TIntegerField;
    quAccidGoodItemCode: TStringField;
    quAccidGoodState: TSmallintField;
    quAccidGoodTypename: TStringField;
    quAccidGoodNewStateName: TStringField;
    quAccidGoodStateName: TStringField;
    quAccidGoodGeneralCode: TLargeintField;
    edLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edOperNote: TRSqlEdit;
    edCommiss: TRSqlEdit;
    edAccLoc: TRSqlEdit;
    edState: TRSqlEdit;
    edNote: TRSqlEdit;
    cbAccType: TRSqlComboBox;
    meConfirm: TRSqlMaskEdit;
    meApprove: TRSqlMaskEdit;
    meClock: TRSqlMaskEdit;
    mmDescr: TRSqlMemo;
    mmEvidence: TRSqlMemo;
    mmRefer: TRSqlMemo;
    dblCreate: TRSqlDbLookup;
    dblConfirm: TRSqlDbLookup;
    dblApprover: TRSqlDbLookup;
    dblItem: TRSqlDbLookup;
    cbGoodType: TRSqlComboBox;
    cbNonState: TRSqlComboBox;
    cbMovState: TRSqlComboBox;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    cbFilterState: TComboBox;
    quAccidGoodGoods_Code: TLargeintField;
    quReportAccident_Com_No: TIntegerField;
    quReportGoods_Code: TLargeintField;
    quReportNew_State: TSmallintField;
    quReportDescr: TStringField;
    quReportPlaque_No: TStringField;
    quReportRow_No: TIntegerField;
    quReportGoods_Type: TSmallintField;
    quReportGeneralCode: TLargeintField;
    quReportItemName: TStringField;
    quReportLabel: TIntegerField;
    quReportItemCode: TStringField;
    quReportState: TSmallintField;
    quReportTypename: TStringField;
    quReportNewStateName: TStringField;
    quReportStateName: TStringField;
    quReportGoodCodeStr: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure grGoodEnter(Sender: TObject);
    procedure quAccidNoAfterScroll(DataSet: TDataSet);
//    procedure btMasterOKClick(Sender: TObject);
    procedure grAccidEnter(Sender: TObject);
    procedure dblDebtEmpCloseUp(Sender: TObject);
//    procedure meRegChange(Sender: TObject);
    procedure quAccidGoodAfterScroll(DataSet: TDataSet);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure btShowGoodClick(Sender: TObject);
    procedure btFailClick(Sender: TObject);
    procedure cbAccTypeEnter(Sender: TObject);
    procedure edNoteEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
     procedure HandleDeleteError( ErrCode : HRESULT);
//-----------------------------------------------------------------------
     function  ConvertGoodStates(Typ,FormalIndex : Smallint):Smallint;
     function  ReplaceGoodStates(Typ,RealIndex : Smallint):Smallint;
//--------------------- Master Procedures -------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
     procedure CheckSetFailButton;
//-----------------------------------------------------------------------
     procedure InsertMaster;
     procedure UpdateMaster(Stat : Smallint);
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
     procedure SetDetailFields;
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

    { Public declarations }
  end;
var

  AccidComiss: TAccidComiss;


  RealRow : Longint;
  Err,CmpResult : integer;
  Str1,Str2,Cor_Str : string;
  CreateDate , ConfirmDate , ApproveDate,AccDate : TPersianDate;

  ChkAcc       , ChkEmpAcc         : Boolean;
  ChkClock     , ChkEmpClock       : Boolean;
  ChkApprove   , ChkEmpApprove     : Boolean;
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

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//****************************************************************************
//****************************************************************************
procedure TAccidComiss.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quAccidNo.RecordCount <> 0 ) then
   begin
      edNote .Text := '';
      quAccidGood.Close;
      quAccidGood.Parameters[0].Value := quAccidNoAccident_Com_No.AsInteger;
      quAccidGood.Parameters[1].Value := quAccidNoAccident_Com_No.AsInteger;
      quAccidGood.Open;
      
      DisableMasterFields();
      SetMasterFields();
      CheckSetFailButton();
   end;
end;
//*****************************************************************************
procedure TAccidComiss.DoNew(var mes: TMessage);
begin
   mde := 1;
   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex := 0;

           quAccidNo.Close;
           quAccidNo.Parameters[0].Value:= 0;
           quAccidNo.Parameters[1].Value := NULL;
           quAccidNo.open;
           quAccidNo.Last;

           quAccidGood.Close;
           quAccidGood.Parameters[0].Value := NULL;
           quAccidGood.Parameters[1].Value := NULL;
           quAccidGood.Open;

           EnableMasterFields();
           ClearMasterFields();

           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;

           if   quFindLastNo.RecordCount = 0 then edCommiss.Text := '81000000'
              else  edCommiss.Text := IntToStr(quFindLastNoAccident_Com_No.AsInteger + 1) ;

           meCreate.Text := Dabdata.disp_date ;

           cbAccType.SetFocus;
        end;
    2 : begin
           if quAccidNo.RecordCount = 0 then exit;
           if quAccidNoState.AsInteger <> 0 then
           begin
              Str1 := UUserMsg.SM_Pub_DeleteMode;
              Str2 := UUserMsg.SM_fmAccComiss_Only_Register;
              ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
              exit;
           end;
           quAccidGood.Close;
           quAccidGood.Open;
           quAccidGood.Last;

           EnableDetailFields();
           ClearDetailFields();

           cbGoodType.SetFocus;
        end
    end;
   dblCreate.KeyValue:=DabData.emp_no;
   meCreate.Text:=Dabdata.disp_date;
end;
//****************************************************************************
procedure TAccidComiss.DoEdit(var mes :TMessage);
begin
    if quAccidNo.RecordCount = 0 then exit;
    if quAccidNoState.AsInteger <> 0 then
     begin
        Str1 := UUserMsg.SM_Pub_DeleteMode;
        Str2 := UUserMsg.SM_fmVisit_Only_Register;
        ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
        exit;
    end;
   mde := 2;
   case ActiveGrid of
    1 : begin
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           cbAccType.SetFocus;
        end;
    2 : begin
           EnableDetailFields();
           cbGoodTypeChange(nil);
           FormInitializer1.FieldMode:=fmEdit;
           FormInitializer1.Execute;
           FormInitializer1.FieldMode:=fmInsert;
           ClearDetailFields();
           SetDetailFields();
           btOK.Enabled:=true;
           cbGoodType.SetFocus;
        end;
    end;
   dblCreate.KeyValue:=DabData.emp_no;
   meCreate.Text:=Dabdata.disp_date;
end;
//*****************************************************************************
procedure TAccidComiss.HandleDeleteError(ErrCode: HRESULT);
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
procedure TAccidComiss.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := StrToInt(edCommiss.Text);
      quMasterInsert.parameters[1].value := cbAccType.ItemIndex;
      quMasterInsert.parameters[2].value := meAccDate.Text;
      quMasterInsert.parameters[3].value := meClock.Text;
      if  CheckNull(mmDescr.Text)
          then   quMasterInsert.parameters[4].value  := mmDescr.Text
          else   quMasterInsert.parameters[4].value  := NULL;
      if  CheckNull(mmEvidence.Text)
          then   quMasterInsert.parameters[5].value  := mmEvidence.Text
          else   quMasterInsert.parameters[5].value  := NULL;
      if  CheckNull(mmRefer.Text)
          then   quMasterInsert.parameters[6].value  := mmRefer.Text
          else   quMasterInsert.parameters[6].value  := NULL;
      quMasterInsert.parameters[7].value  := dblCreate.KeyValue;
      quMasterInsert.parameters[8].value  := meCreate.Text;
      if CheckNull( dblConfirm.Text )
           then   quMasterInsert.parameters[9].value := dblConfirm.KeyValue
           else   quMasterInsert.parameters[9].value := NULL;
      if ChkConfirm
           then   quMasterInsert.parameters[10].value := meConfirm.Text
           else   quMasterInsert.parameters[10].value := NULL;
      if  CheckNull(dblApprover.Text)
           then   quMasterInsert.parameters[11].value := dblApprover.KeyValue
           else   quMasterInsert.parameters[11].value := NULL;
      if ChkApprove
           then   quMasterInsert.parameters[12].value := meApprove.Text
           else   quMasterInsert.parameters[12].value := NULL;
      quMasterInsert.parameters[13].value := edAccLoc.Text;
      quMasterInsert.parameters[14].value := 0;

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
    quAccidNo.close;
    quAccidNo.Parameters[0].Value := cbFilterState.ItemIndex;
    quAccidNo.Parameters[1].Value := NULL;
    quAccidNo.Open;
    quAccidNo.Last;

    SetDefaultMode(1);
end;
//***************************************************************************
procedure TAccidComiss.UpdateMaster( Stat : Smallint );
var Tmp : string;
begin
   BMark := quAccidNo.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := cbAccType.ItemIndex;
      quMasterUpdate.parameters[1].value := meAccDate.Text;
      quMasterUpdate.parameters[2].value := meClock.Text;
      if  CheckNull(mmDescr.Text)
          then   quMasterUpdate.parameters[3].value  := mmDescr.Text
          else   quMasterUpdate.parameters[3].value  := NULL;
      if  CheckNull(mmEvidence.Text)
          then   quMasterUpdate.parameters[4].value  := mmEvidence.Text
          else   quMasterUpdate.parameters[4].value  := NULL;
      if  CheckNull(mmRefer.Text)
          then   quMasterUpdate.parameters[5].value  := mmRefer.Text
          else   quMasterUpdate.parameters[5].value  := NULL;
      quMasterUpdate.parameters[6].value  := dblCreate.KeyValue;
      quMasterUpdate.parameters[7].value  := meCreate.Text;
      if CheckNull( dblConfirm.Text )
           then   quMasterUpdate.parameters[8].value := dblConfirm.KeyValue
           else   quMasterUpdate.parameters[8].value := NULL;
      if ChkConfirm
           then   quMasterUpdate.parameters[9].value := meConfirm.Text
           else   quMasterUpdate.parameters[9].value := NULL;
      if  CheckNull(dblApprover.Text)
           then   quMasterUpdate.parameters[10].value := dblApprover.KeyValue
           else   quMasterUpdate.parameters[10].value := NULL;
      if ChkApprove
           then   quMasterUpdate.parameters[11].value := meApprove.Text
           else   quMasterUpdate.parameters[11].value := NULL;
      quMasterUpdate.parameters[12].value := edAccLoc.Text;
      quMasterUpdate.parameters[13].value := Stat;
      quMasterUpdate.parameters[14].value := StrToInt(edCommiss.Text);

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

   Tmp := edCommiss.Text ;

   quAccidNo.close;
   quAccidNo.Parameters[0].Value := cbFilterState.ItemIndex;
   quAccidNo.Parameters[1].Value := NULL;
   quAccidNo.Open;

   quAccidNo.Locate('Accident_Com_No',Tmp,[locaseinsensitive]);
end;
{//***************************************************************************
procedure TVisit.UpdateDetail;
var Str1,Str2 : String;
    BMark : TBookMark;
begin
   quDetailUpdate.Close;
   Bmark := quAccidGood.GetBookmark;

   try
      DabData.ADOC.BeginTrans;

{      quDetailUpdate.parameters[0].value := meRepayStart.Text;
      quDetailUpdate.parameters[1].value := '1';
      quDetailUpdate.parameters[2].value := StrToFloat(edRemain.Text);
      quDetailUpdate.parameters[3].value := edCommiss.Text;
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

   quAccidGood.close;
   quAccidGood.Open;


   quAccidGood.GotoBookmark(Bmark);
   quAccidGood.FreeBookmark(Bmark);

end;}
//****************************************************************************
procedure TAccidComiss.SetDefaultMode(i: integer);
begin
   mde := 0 ;
   case ActiveGrid of
      1 :
      begin
         paMasterOper.Visible := False;
         PaDetailOper.Visible := False;

         grAccid.TabStop    := True;
         ActiveControl      := grAccid;
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
//**************************************************************************
procedure TAccidComiss.ClearMasterFields;
begin
      edCommiss.Clear ;
      edState.Clear ;
      edAccLoc.Clear ;
      cbAccType.ItemIndex := -1 ;

      meReg.Clear ;
      meConfirm.Clear;
      //meCreate.Clear;
      meAccDate.Clear ;
      meClock.Clear ;
      meReg.Clear;
      meApprove.Clear;
      mmDescr.Clear;
      mmRefer.Clear;
      mmEvidence.Clear;

      //dblCreate.KeyValue    := null;
      dblConfirm.KeyValue   := null;
      dblApprover.KeyValue  := null;
end;
//**************************************************************************
procedure TAccidComiss.SetMasterFields();
begin
      if quAccidNo.RecordCount = 0 then exit;
      edCommiss.Text        :=  quAccidNoAccident_Com_No.AsString;
      edState.Text          :=  quAccidNoState_Name.AsString;
      edAccLoc.Text         :=  quAccidNoAccident_Loc.AsString;

      meCreate.Text         :=  quAccidNoCreate_Date.AsString;
      meConfirm.Text        :=  quAccidNoConfirm_Date.AsString;
      meAccDate.Text        :=  quAccidNoAccident_Date.AsString;
      meClock.Text          :=  quAccidNoAccident_Time.AsString;
      meReg.Text            :=  quAccidNoAccident_Date.AsString;
      meApprove.Text        :=  quAccidNoApprove_Date.AsString;

      mmDescr.Text          :=  quAccidNoAccident_Desc.AsString;
      mmEvidence.Text       :=  quAccidNoAccident_Evidence.AsString;
      mmRefer.Text          :=  quAccidNoReference_Notion.AsString;

      dblCreate.KeyValue    :=  quAccidNoCreator.AsString;
      dblConfirm.KeyValue   :=  quAccidNoConfirmer.AsString;
      dblApprover.KeyValue  :=  quAccidNoApprover.AsString;
      cbAccType.ItemIndex   :=  quAccidNoAccident_Type.AsInteger;

end;
//*****************************************************************************
procedure TAccidComiss.DisableMasterFields;
begin
      edCommiss.FieldType :=ftDisplay;
      meAccDate.FieldType :=ftDisplay;
      meConfirm.FieldType :=ftDisplay;
      meClock.FieldType :=ftDisplay;
      meCreate.FieldType :=ftDisplay;
      meReg.FieldType :=ftDisplay;
      meApprove.FieldType :=ftDisplay;
      dblCreate.FieldType :=ftDisplay;
      dblConfirm.FieldType :=ftDisplay;
      dblApprover.FieldType :=ftDisplay;
      cbAccType.FieldType :=ftDisplay;
      edAccLoc.FieldType :=ftDisplay;
      mmDescr.FieldType :=ftDisplay;
      mmRefer.FieldType :=ftDisplay;
      mmEvidence.FieldType :=ftDisplay;
      FormInitializer1.Execute;


end;
//*****************************************************************************
procedure TAccidComiss.EnableMasterFields;
begin
      grAccid.TabStop:= false;
      grGood .TabStop:= false;
      cbFilterState.TabStop  := False;

      qudblEmp.Close;
      qudblEmp.Open;

      //dblCreate.KeyValue   := null ;
      dblConfirm.KeyValue  := null ;

     // dblCreate.Enabled    := True;
      dblConfirm.FieldType :=ftDisplay;
      dblApprover.FieldType :=ftDisplay;
      mmDescr.FieldType :=ftNonRequired ;
      mmEvidence.FieldType :=ftNonRequired ;
      mmRefer.FieldType :=ftNonRequired ;
      //meCreate.Enabled     := True;
      meConfirm.FieldType :=ftDisplay;
      meAccDate.FieldType :=ftRequired ;
      meClock.FieldType :=ftRequired ;
      meReg.FieldType :=ftRequired ;
      meApprove.FieldType :=ftDisplay ;
      cbAccType.FieldType :=ftRequired ;
//      edCommiss.Enabled    := True;
      edAccLoc.FieldType :=ftRequired ;

      paMasterOper.visible := True;
      PaDetailOper.Visible := False;
      PaNote.Visible       := False;
      FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
procedure TAccidComiss.ClearDetailFields;
begin
   cbMovState.ItemIndex   := -1 ;
   cbNonState.ItemIndex   := -1 ;
   cbGoodType.ItemIndex   := -1 ;

   edLabel.Clear;
   edItemName.Clear;
   edOperNote.Clear;
   edNote.Clear;
   dblItem.KeyValue        := null ;
end;//

//**************************************************************************
procedure TAccidComiss.SetDetailFields();
begin
   if quAccidGood.RecordCount <> 0 then
   begin
      cbGoodType.ItemIndex  :=  quAccidGoodGoods_Type.AsInteger;
      edItemName.Text       :=  quAccidGoodItemName.AsString;
      edLabel.Text          :=  quAccidGoodLabel.AsString;
      dblItem.KeyValue      :=  quAccidGoodItemCode.AsString ;
      case  cbGoodType.ItemIndex of
        0 :  cbMovState.ItemIndex  := ReplaceGoodStates(0,quAccidGoodNew_State.AsInteger);
        1 :  cbNonState.ItemIndex  := ReplaceGoodStates(1,quAccidGoodNew_State.AsInteger);
      end;  // case
      edOperNote.Text       :=  quAccidGoodDescr.AsString;
      edNote.Text           :=  quAccidGoodDescr.AsString;
      TempGoodsCode         :=  quAccidGoodGoods_Code.AsString ;
      TempPlaqueNo          :=  quAccidGoodPlaque_no.AsString ;
      TempItemCode          :=  quAccidGoodItemCode.AsString ;
      TempGoodType          :=  quAccidGoodGoods_type.AsInteger;
      RealRow               :=  quAccidGoodRow_No.AsInteger;
      if mde = 2 then
      begin
          case TempGoodType of
           0  :
             begin
                if dblItem.ListSource <> DabData.dsMoveable then
                begin
                  dblItem.KeyField   := null;
                  dblItem.ListField  := null;
                  dblItem.ListSource := DabData.dsMoveable;
                  dblItem.KeyField   := 'Goods_CodeStr';
                  dblItem.ListField  := 'Goods_CodeStr';
               end;

               DabData.qumoveable.Close;
               DabData.qumoveable.Parameters[0].Value := 0;
               DabData.qumoveable.Parameters[1].Value := 1;
               DabData.qumoveable.Parameters[2].Value := 2;
               DabData.qumoveable.Parameters[3].Value := quAccidGoodGoods_code.AsString;
               DabData.qumoveable.Open;

               dblItem.KeyValue      :=  quAccidGoodGoods_code.AsString ;
             end;
    1 : begin
             if dblItem.ListSource <> DabData.dsnonmgood then
             begin
                dblItem.KeyField   := null;
                dblItem.ListField  := null;
                dblItem.ListSource := DabData.dsnonmgood;
                dblItem.KeyField   := 'Plaque_NoStr';
                dblItem.ListField  := 'Plaque_NoStr';
             end;
             DabData.qunonmgood.Close;
             DabData.qunonmgood.Parameters[0].Value := 0;
             DabData.qunonmgood.Parameters[1].Value := 1;
             DabData.qunonmgood.Parameters[2].Value := 4;
             DabData.qunonmgood.Parameters[3].Value := quAccidGoodPlaque_no.AsString;
             DabData.qunonmgood.Parameters[4].Value := NULL;
             DabData.qunonmgood.Open;

             dblItem.KeyValue      :=  quAccidGoodPlaque_no.AsString ;
          end;
         end; // case
      end;
   end
   else
      RealRow  := 0 ;
end;
//*****************************************************************************
procedure TAccidComiss.InsertDetail();
var  str1,Str2 : string;
begin
   quDetailInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quDetailInsert.parameters[0].value := StrToInt(edCommiss.Text);
      case cbGoodType.ItemIndex of
        0 : begin
              quDetailInsert.parameters[1].value := dblItem.KeyValue;
              quDetailInsert.parameters[2].value := ConvertGoodStates(0,cbMovState.ItemIndex);
              quDetailInsert.parameters[4].value := NULL;
            end;
        1 : begin
              quDetailInsert.parameters[1].value := NULL;
              quDetailInsert.parameters[2].value := ConvertGoodStates(1,cbNonState.ItemIndex);;
              quDetailInsert.parameters[4].value := dblItem.KeyValue;
            end;
       end; // case
      quDetailInsert.parameters[3].value := edOperNote.Text;
      quDetailInsert.parameters[5].value := RealRow + 1;
      quDetailInsert.parameters[6].value := cbGoodType.ItemIndex;

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

{    case cbGoodType.ItemIndex of
     0 : Dabdata.UpdateMovGoods   ( dblItem.Keyvalue,3);
     1 : Dabdata.UpdateNonMovGoods( dblItem.Keyvalue,3);
    end; // case}

    quAccidGood.close;
    quAccidGood.Parameters[0].Value := StrToInt(edCommiss.Text);
    quAccidGood.Parameters[1].Value := StrToInt(edCommiss.Text);
    quAccidGood.Open;
    quAccidGood.Last;
end;
//*****************************************************************************
procedure TAccidComiss.EnableDetailFields;
begin
   cbGoodType.FieldType :=ftRequired;
{   case  mde of
    1 :  dblItem.FieldType :=ftRequired ;
    2 :  dblItem.FieldType :=ftDisplay ;
   end; // case}
   dblItem.FieldType :=ftRequired;
   cbNonState.FieldType :=ftDisplay ;
   cbMovState.FieldType :=ftDisplay ;
   if mde = 2 then
      case quAccidGoodGoods_Type.AsInteger of
        0 :  begin
               cbMovState.Visible    := True;
               cbNonState.Visible    := False;
               cbMovState.FieldType :=ftRequired;
             end;
        1 :  begin
               cbNonState.Visible    := True;
               cbMovState.Visible    := False;
               cbNonState.FieldType :=ftRequired;
             end;
      end;  // case

   edOperNote.FieldType :=ftNonRequired;
//   dblItem.KeyValue      := -1 ;


   paNote.Visible        := False;
   PaDetailOper.Visible  := True;
   paMasterOper.visible  := True;
   FormInitializer1.Execute;

end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TAccidComiss.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TAccidComiss.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 56 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TAccidComiss.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TAccidComiss.FormShow(Sender: TObject);
var l,t:integer;
begin
   
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   mde:=0;
   cbFilterState.ItemIndex := 0 ;


   quAccidNo.Close;  // set values to Grid
   quAccidNo.Parameters[0].Value := cbFilterState.ItemIndex;
   quAccidNo.Parameters[1].Value := NULL;
   quAccidNo.Open;

   if quAccidNo.RecordCount <> 0 then
   begin
      quAccidGood.Close;  // set values to Grid
      quAccidGood.Parameters[0].Value := quAccidNoAccident_Com_No.AsInteger;
      quAccidGood.Parameters[1].Value := quAccidNoAccident_Com_No.AsInteger;
      quAccidGood.Open;
   end;
   qudblEmp.Close;
   qudblEmp.Open;

   DisableMasterFields();
   cbAccType.ItemIndex := -1;

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkCreate    := False;
   ChkEmpCreate := True;

   ChkApprove     := False;
   ChkEmpApprove  := True;

   grAccid.SetFocus;
   cbNonState.Left  := 5; 
end;
//******************************************************************************
procedure TAccidComiss.btOKClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      case mde of
        1 : InsertMaster();
        2 : UpdateMaster(0);
        3 : DeleteMaster();
      end;  // end case
      SetDefaultMode(1);
      DisableMasterFields;
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
procedure TAccidComiss.btCancelClick(Sender: TObject);
begin
//?   paMasterOper.Visible := True;
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TAccidComiss.grGoodEnter(Sender: TObject);
begin
   if (mde=1)and(ActiveGrid = 1) then
   begin
      mde := 0;
      quAccidNo.Close;
      quAccidNo.Open;
   end;

   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   paNote.Visible       := True;
   CheckSetFailButton();
   DisableMasterFields;
end;
//******************************************************************************
procedure TAccidComiss.quAccidNoAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TAccidComiss.grAccidEnter(Sender: TObject);
begin
   if (mde=1) and(ActiveGrid = 1) then
   begin
      mde := 0;
      quAccidNo.Close;
      quAccidNo.Open;
   end;

   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   paNote.Visible       := True;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton();
end;
//*****************************************************************************
procedure TAccidComiss.dblDebtEmpCloseUp(Sender: TObject);
begin
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
   if  Trim( dblItem.Text ) = '' then
   begin
      edLabel.Clear ;
      edItemName.Clear;
   end;
end;
//*****************************************************************************
procedure TAccidComiss.UpdateDetail();
begin
   BMark := quAccidGood.GetBookmark();
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      case cbGoodType.ItemIndex of
        0 : begin
              quDetailUpdate.parameters[0].value := dblItem.KeyValue;
              quDetailUpdate.parameters[1].value := ConvertGoodStates(0,cbMovState.ItemIndex);
              quDetailUpdate.parameters[3].value := NULL;
            end;
        1 : begin
              quDetailUpdate.parameters[0].value := NULL;
              quDetailUpdate.parameters[1].value := ConvertGoodStates(1,cbNonState.ItemIndex);
              quDetailUpdate.parameters[3].value := dblItem.KeyValue;
            end
       end; // case
      quDetailUpdate.parameters[2].value := edOperNote.Text;
      quDetailUpdate.parameters[4].value := cbGoodType.ItemIndex;
      quDetailUpdate.parameters[5].value := StrToInt(edCommiss.Text);
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


   quAccidGood.close;
   quAccidGood.Open;

   quAccidGood.GotoBookmark(BMark);
   quAccidGood.FreeBookmark(BMark);

{   if  TempGoodType = cbGoodType.ItemIndex then
   begin
       case TempGoodType of
        0 :  DabData.UpdateMovGoods   ( dblItem.keyValue , 3 );
        1 :  DabData.UpdateNonMovGoods( dblItem.keyValue , 3 );
       end;
   end
   else
   if  TempGoodType <> cbGoodType.ItemIndex then
   case cbGoodType.ItemIndex of
    0 : begin
           DabData.UpdateMovGoods    ( dblItem.keyValue , 3 );
           DabData.UpdatenonMovGoods ( TempPlaqueNo , 0);
        end;
    1 : begin
           DabData.UpdateNonMovGoods ( dblItem.keyValue , 3 );
           DabData.UpdateMovGoods    ( TempGoodsCode , 0);
        end;
   end ;  // case}
end;
//****************************************************************************
procedure TAccidComiss.quAccidGoodAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TAccidComiss.DeleteDetail;
begin

{   case TempGoodType of
    0 :  DabData.UpdateMovGoods   ( quAccidGoodGoods_code.AsString , 0);
    1 :  DabData.UpdateNonMovGoods( quAccidGoodPlaque_no.AsString  , 0);
   end;}

   quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := StrToInt(edCommiss.Text);
      quDetailDelete.parameters[1].value := quAccidGoodRow_No.AsInteger;

      quDetailDelete.Prepared := True;
      quDetailDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
     on FK : EOleException  do HandleDeleteError(FK.Errorcode);
   end;

   if (quDetailDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quAccidGood.close;
   quAccidGood.Open;

   SetDefaultMode(2);
end;


procedure TAccidComiss.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt( edCommiss.Text );

      quMasterDelete.Prepared := True;
      quMasterDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
     on FK : EOleException  do
     begin
     HandleDeleteError(FK.Errorcode);
     mde:=0;exit;
     end;
   end;

   if (quMasterDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quAccidNo.close;
   quAccidNo.Open;

   SetDefaultMode(1);

end;

procedure TAccidComiss.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grAccid.Color    := clActiveGridColor;
          grGood.Color     := clDeactiveGridColor;
          edNote.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grAccid.Color    := clDeactiveGridColor;
          grGood.Color     := clActiveGridColor;
          edNote.Color     := clActiveGridColor;
       end;
    end; // case
end;

procedure TAccidComiss.DoDelete(var mes: TMessage);
begin
   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( quAccidNo.RecordCount >=1 ) and
           ( quAccidNo.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grAccid.SetFocus;
             exit;
          end;

          mde :=3;
          DeleteMaster ();
        end;

        2 : if ( Mde = 0 )  and ( quAccidGood.RecordCount >=1 ) and
                ( quAccidGood.RecNo >= 1) then
            begin
              if quAccidNoState.AsInteger <> 0 then
              begin
                 Str1 := UUserMsg.SM_Pub_DeleteMode;
                 Str2 := UUserMsg.SM_fmAccComiss_Only_Register;
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



procedure TAccidComiss.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
           dblItem.FieldType :=ftRequired;
           cbMovState.Visible := True;
           cbNonState.Visible := False;
           cbNonState.FieldType :=ftDisplay;
           cbMovState.FieldType :=ftRequired;

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
                 then DabData.qumoveable.Parameters[3].Value := quAccidGoodGoods_code.AsString
                 else DabData.qumoveable.Parameters[3].Value := -1;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := null;
           edLabel.Clear;
           edItemName.Clear;
        end;
    1 : begin
           dblItem.FieldType :=ftRequired;
           cbNonState.Visible := True;
           cbMovState.Visible := False;
           cbMovState.FieldType :=ftDisplay;
           cbNonState.FieldType :=ftRequired;

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
           DabData.qunonmgood.Parameters[0].Value := 1;
           DabData.qunonmgood.Parameters[0].Value := 4;
           if ( mde = 2 ) and ( TempGoodType = 1 )
                 then  DabData.qunonmgood.Parameters[1].Value := quAccidGoodPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[1].Value := 0;
           DabData.qunonmgood.Parameters[0].Value := NULL;
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := null;
           edLabel.Clear;
           edItemName.Clear;
       end
   end; // case
   FormInitializer1.Execute;
end;

procedure TAccidComiss.btShowGoodClick(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          setformColor(ShowMvGood);
          ShowMvgood.ShowModal();

          if ShowMvgood.modalresult = Mrok then
          begin
             dblItem.KeyValue := DabData.qumoveablegoods_code.AsString;
             edLabel.Text  :=  DabData.qumoveablelabel.AsString ;
             edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
          end;
          ShowMvgood.Free;
          ShowMvgood:=nil;
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
end;

function TAccidComiss.ConvertGoodStates(Typ,
  FormalIndex: Smallint): Smallint;
begin
  if typ=0 then
      case FormalIndex of
       0 :  ConvertGoodStates := 2;
       1 :  ConvertGoodStates := 10;
       2 :  ConvertGoodStates := 9;
      end // case
  else
  if typ=1 then
      case FormalIndex of
       0 :  ConvertGoodStates := 4;
       1 :  ConvertGoodStates := 5;
       2 :  ConvertGoodStates := 6;
      end; // case
end;

function TAccidComiss.ReplaceGoodStates(Typ,
  RealIndex: Smallint): Smallint;
begin
  if typ=0 then
      case RealIndex of
       2 :  ReplaceGoodStates := 0;
       10:  ReplaceGoodStates := 1;
       9 :  ReplaceGoodStates := 2;
      end // case
  else
  if typ=1 then
      case  RealIndex of
       4 :  ReplaceGoodStates := 0;
       5 :  ReplaceGoodStates := 1;
       6 :  ReplaceGoodStates := 2;
      end; // case
end;

procedure TAccidComiss.btFailClick(Sender: TObject);
begin
  if ( quaccidNoState.AsInteger = 0) and ( ActiveGrid = 1) then
  begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_fmAccComiss_FailCom;
     ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes <> mrOk then
     begin
        grAccid.SetFocus;
        exit;
     end;
     cbFilterState.ItemIndex := 1;
     UpdateMaster (1);
  end
end;

procedure TAccidComiss.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if ( quAccidNo.RecordCount <> 0)and( quAccidNoState.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;

procedure TAccidComiss.cbAccTypeEnter(Sender: TObject);
begin
  btFail.Enabled := False;
end;
procedure TAccidComiss.edNoteEnter(Sender: TObject);
begin
    CheckSetFailButton();
end;

procedure TAccidComiss.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 6 then
  begin
     quAccidNo.Close;
     quAccidNo.Parameters[0].Value := cbFilterState.ItemIndex;
     quAccidNo.Parameters[1].Value := 1;
     quAccidNo.open;
  end
  else
   begin
     quAccidNo.Close;
     quAccidNo.Parameters[0].Value:= cbFilterState.ItemIndex;
     quAccidNo.Parameters[1].Value := NULL;
     quAccidNo.open;
   end;

   if quAccidNo.RecordCount = 0 then
   begin
     quAccidGood.Close;
     quAccidGood.Parameters[0].Value := NULL;
     quAccidGood.Parameters[1].Value := NULL;
     quAccidGood.Open;
     ClearMasterFields();
   end;

end;

procedure TAccidComiss.DoPrint(var mes: TMessage);
begin
   quReport.close;
   quReport.Parameters[0].Value:= edCommiss.Text;
   quReport.Parameters[1].Value:= edCommiss.Text;
   quReport.open;

   if quAccidNoState.AsInteger <> 2 then
  begin
        Str1 := '«Œÿ«—';
        Str2 := '›ﬁÿ ’Ê— Ã·”Â Â«Ì  ’ÊÌ» ‘œÂ ﬁ«»· ç«Å Â” ‰œ';
        ShowMessage2(Str2);
        exit;
   end;

   ppNo.text     :=  edCommiss.Text;
   ppDate.Text   :=  Dabdata.disp_date;
   ppDescr.Text  :=  mmdescr.Text ;
   ppState.Text  :=  ' ’ÊÌ» ‘œÂ';

   ppShahed.text     :=  mmEvidence.Text;
   ppClock.text      :=  meClock.Text;
   ppPlace.Text      :=  edAccLoc.Text  ;
   ppAccDate.Text    :=  meAccDate.Text ;
   ppAccType.Text    :=  cbAccType.Text ;



   ppReport1.Print;
end;

procedure TAccidComiss.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(qureport.RecNo);
end;


end.
