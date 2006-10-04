unit fmAccComissCfm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate ,comobj, RSqlMaskEdit, RadForms, RSqlButton,
  RSqlMemo, RSqllookup, RSQLComboBox, RSqlEdit,Variants,
  SetForm;
type
  TAccidComissCfm = class(TRadForm)
    quAccidGood: TADOQuery;
    dsAccidGood: TDataSource;
    quDetailUpdate: TADOQuery;
    quAccidNo: TADOQuery;
    dsAccidNo: TDataSource;
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    PaDetailOper: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label11: TLabel;
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
    quAccidNoState: TSmallintField;
    quAccidNoState_Name: TStringField;
    grGood: TDBGrid;
    Panel17: TPanel;
    Panel19: TPanel;
    Panel2: TPanel;
    Panel18: TPanel;
    Label13: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel16: TPanel;
    Panel20: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label25: TLabel;
    Panel5: TPanel;
    grAccid: TDBGrid;
    Panel12: TPanel;
    meApprove: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    edLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edOperNote: TRSqlEdit;
    edCommiss: TRSqlEdit;
    edAccLoc: TRSqlEdit;
    edState: TRSqlEdit;
    edNote: TRSqlEdit;
    meReg: TRSqlMaskEdit;
    meClock: TRSqlMaskEdit;
    meAccDate: TRSqlMaskEdit;
    cbAccType: TRSqlComboBox;
    mmDescr: TRSqlMemo;
    mmEvidence: TRSqlMemo;
    mmRefer: TRSqlMemo;
    dblCreate: TRSqlDbLookup;
    dblConfirm: TRSqlDbLookup;
    dblApprover: TRSqlDbLookup;
    cbGoodType: TRSqlComboBox;
    cbState: TRSqlComboBox;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    dblItem: TRSqlDbLookup;
    cbFilterState: TComboBox;
    meCreate: TRSqlMaskEdit;
    quAccidGoodAccident_Com_No: TIntegerField;
    quAccidGoodGoods_Code: TLargeintField;
    quAccidGoodNew_State: TSmallintField;
    quAccidGoodDescr: TStringField;
    quAccidGoodPlaque_No: TStringField;
    quAccidGoodRow_No: TIntegerField;
    quAccidGoodGoods_Type: TSmallintField;
    quAccidGoodGeneralCode: TLargeintField;
    quAccidGoodItemName: TStringField;
    quAccidGoodLabel: TIntegerField;
    quAccidGoodItemCode: TStringField;
    quAccidGoodState: TSmallintField;
    quAccidGoodTypename: TStringField;
    quAccidGoodNewStateName: TStringField;
    quAccidGoodStateName: TStringField;
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
    procedure cbGoodTypeChange(Sender: TObject);
    procedure btShowGoodClick(Sender: TObject);
    procedure dblItemEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
     procedure HandleDeleteError( ErrCode : HRESULT);
//-----------------------------------------------------------------------
//--------------------- Master Procedures -------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
//-----------------------------------------------------------------------
     procedure UpdateMaster;
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
//-----------------------------------------------------------------------
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
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  AccidComissCfm: TAccidComissCfm;


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
  ConfAmount : integer;

implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//****************************************************************************
//****************************************************************************
procedure TAccidComissCfm.DoScroll(var mes:TMessage);
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
   end;
end;
//*****************************************************************************
procedure TAccidComissCfm.DoNew(var mes: TMessage);
begin
   mde := 1;
   case ActiveGrid of
    1 : begin
           EnableMasterFields();
           ClearMasterFields();

           quAccidNo.Close;
           quAccidNo.Open;
           quAccidNo.Last;

           if      quAccidNo.RecordCount = 0 then edCommiss.Text := '81000000'
              else edCommiss.Text := IntToStr(quAccidNoAccident_Com_No.AsInteger + 1) ;
           meCreate.Text := Dabdata.disp_date ;

           meReg.SetFocus;
        end;
    2 : begin
           if Trim(edCommiss.Text)='' then exit;
           quAccidGood.Close;
           quAccidGood.Open;

           EnableDetailFields();
           ClearDetailFields();

           cbGoodType.SetFocus;
        end
    end;
   dblConfirm.KeyValue:=DabData.emp_no;
   meConfirm.Text:=Dabdata.disp_date;
end;
//****************************************************************************
procedure TAccidComissCfm.DoEdit(var mes :TMessage);
begin
   case ActiveGrid of
    1 : begin
           if quAccidNo.RecordCount = 0 then exit;
           if quAccidNoState.AsInteger <> 0 then
           begin
                Str1 := UUserMsg.SM_Pub_DeleteMode;
                Str2 := UUserMsg.SM_fmAccComiss_Confirm_Only_Register;
                ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
                exit;
           end;
           if quAccidGood.RecordCount = 0 then
           begin
                Str1 := UUserMsg.SM_Pub_DeleteMode;
                Str2 := UUserMsg.SM_fmReqCfm_Item;
                ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
                exit;
            end;
           grAccid.TabStop  := False;
           grGood.TabStop   := False;
           cbfilterState.TabStop := False;
           mde := 2;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           //dblConfirm.SetFocus;
        end;
{    2 : begin
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           btOk.Enabled := True;
           cbGoodType.SetFocus;
        end;                   }
    end;
   dblConfirm.KeyValue:=DabData.emp_no;
   meConfirm.Text:=Dabdata.disp_date;
end;
//*****************************************************************************
procedure TAccidComissCfm.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;
procedure TAccidComissCfm.UpdateMaster();
var TempStr :  string;
begin

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
      quMasterUpdate.parameters[13].value := ConfAmount;
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

   cbFilterState.ItemIndex := ConfAmount ;
   TempStr := edCommiss.Text ;

   quAccidNo.Close;  // set values to Grid
   quAccidNo.Parameters[0].Value := cbFilterState.ItemIndex;
   quAccidNo.Parameters[1].Value := NULL;
   quAccidNo.Open;

   quAccidNo.Locate ('Accident_Com_no',TempStr,[locaseinsensitive]);

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

end; }
//****************************************************************************
procedure TAccidComissCfm.SetDefaultMode(i: integer);
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
//------------------------ Master  Region ------------------------------------
//**************************************************************************
procedure TAccidComissCfm.ClearMasterFields;
begin
      edCommiss.Clear ;
      edState.Clear ;
      edAccLoc.Clear ;
      cbAccType.ItemIndex := -1 ;

      meReg.Clear ;
      meCreate.Clear;
      //meConfirm.Clear;
      meAccDate.Clear ;
      meClock.Clear ;
      meReg.Clear;
      meApprove.Clear;
      mmDescr.Clear;
      mmRefer.Clear;
      mmEvidence.Clear;

      dblCreate.KeyValue    := '';
      //dblConfirm.KeyValue   := '';
      dblApprover.KeyValue  := '';
end;
//**************************************************************************
procedure TAccidComissCfm.SetMasterFields();
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
procedure TAccidComissCfm.DisableMasterFields;
begin
      edCommiss.Enabled     := False;
      meAccDate.Enabled     := False;
      meConfirm.Enabled     := False;
      meClock.Enabled       := False;
      meCreate.Enabled      := False;
      meReg.Enabled         := False;
      meApprove.Enabled     := False;
      dblCreate.Enabled     := False;
      dblConfirm.Enabled    := False;
      dblApprover.Enabled   := False;
      cbAccType.Enabled     := False;
      edAccLoc.Enabled      := False;
      mmDescr.Enabled       := False;
      mmRefer.Enabled       := False;
      mmEvidence.Enabled    := False;

end;
//*****************************************************************************
procedure TAccidComissCfm.EnableMasterFields;
begin

      qudblEmp.Close;
      qudblEmp.Open;

      dblCreate.KeyValue   := '' ;

      paMasterOper.visible := True;
      PaDetailOper.Visible := False;
      paNote.Visible       := False;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
procedure TAccidComissCfm.ClearDetailFields;
begin
   cbState.ItemIndex      := -1 ;
   cbGoodType.ItemIndex   := -1 ;

   edLabel.Clear;
   edItemName.Clear;
   edOperNote.Clear;
   edNote.Clear;
   dblItem.KeyValue      := -1 ;
end;//

//*****************************************************************************
procedure TAccidComissCfm.EnableDetailFields;
begin
   cbGoodType.Enabled    := True;
   cbState.Enabled       := True;
   edOperNote.Enabled    := True;
   dblItem.KeyValue      := -1 ;


   paMasterOper.visible  := True;
   PaDetailOper.Visible  := True;
  // paNote.Visible        := False;

end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TAccidComissCfm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TAccidComissCfm.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 146 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TAccidComissCfm.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TAccidComissCfm.FormShow(Sender: TObject);
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
end;
//******************************************************************************
procedure TAccidComissCfm.btOKClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes <> mrOk then
     begin
        Mde := 0;
        grAccid.SetFocus;
        exit;
     end;
//      case mde of
//        1 : InsertMaster();
          ConfAmount := 2;
          UpdateMaster();
{        3 : DeleteMaster();}
//      end;  // end case
         SetDefaultMode(1);
   end
{   else
   if ActiveGrid = 2 then
   begin
      case mde of
      1 : InsertDetail();
      2 : UpdateDetail();
      3 : DeleteDetail();
      end;  // end case
      SetDefaultMode(2);
   end;
   }
end;
//******************************************************************************
procedure TAccidComissCfm.btCancelClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Not_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

      if ModalRes <> mrOk then
      begin
        Mde := 0;
        grAccid.SetFocus;
        exit;
      end;
      ConfAmount := 3 ;
      UpdateMaster();
   end;
   SetDefaultMode(1);
end;
//******************************************************************************
procedure TAccidComissCfm.grGoodEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;

end;
//****************************************************************************
procedure TAccidComissCfm.quAccidNoAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TAccidComissCfm.grAccidEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
//*****************************************************************************
procedure TAccidComissCfm.dblDebtEmpCloseUp(Sender: TObject);
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
end;
procedure TAccidComissCfm.DeleteDetail;
begin

   case TempGoodType of
    0 :  DabData.UpdateMovGoods   ( quAccidGoodGoods_code.AsString , 0);
    1 :  DabData.UpdateNonMovGoods( quAccidGoodPlaque_no.AsString  , 0);
   end;

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


procedure TAccidComissCfm.DeleteMaster;
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

procedure TAccidComissCfm.SetGridColor(i: integer);
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

procedure TAccidComissCfm.DoDelete(var mes: TMessage);
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



procedure TAccidComissCfm.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
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
           if ( mde = 2 ) and ( TempGoodType = 0 )
                 then DabData.qumoveable.Parameters[1].Value := quAccidGoodGoods_code.AsString
                 else DabData.qumoveable.Parameters[1].Value := 0;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := -1;
           edLabel.Clear;
           edItemName.Clear;
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
           if ( mde = 2 ) and ( TempGoodType = 1 )
                 then  DabData.qunonmgood.Parameters[1].Value := quAccidGoodPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[1].Value := 0;
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := -1;
           edLabel.Clear;
           edItemName.Clear;
       end
   end; // case
end;

procedure TAccidComissCfm.btShowGoodClick(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          SetFormColor(ShowMvGood);
          ShowMvgood.ShowModal();

          dblItem.KeyValue := DabData.qumoveablegoods_code.AsString;
          edLabel.Text  :=  DabData.qumoveablelabel.AsString ;
          edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
          SetFormColor(ShowNonMGood);
          ShowNonMgood.ShowModal();

          dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
          edLabel.Clear ;
          edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;

       end;
   end;   // case
end;

procedure TAccidComissCfm.dblItemEnter(Sender: TObject);
begin
   if not(CheckNull(cbGoodType.Text)) then
   begin
      dblItem.KeyField   := '';
      dblItem.ListField  := '';
      dblItem.ListSource := DabData.dsMoveable;
      dblItem.KeyField   := 'Goods_CodeStr';
      dblItem.ListField  := 'Goods_CodeStr';

      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 40 ;
      DabData.qumoveable.Parameters[1].Value := 0 ;
      DabData.qumoveable.Open;

      dblItem.KeyValue   := -1;
    end;
end;

procedure TAccidComissCfm.cbFilterStateChange(Sender: TObject);
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

end.
