unit fmVisitReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate ,comobj,RSqlMemo, RSqlMaskEdit,
  RSqlEdit, RSQLComboBox, RSqllookup,  SetForm,RadForms,Variants;
type
  TVisitReq = class(TRadForm)
    quVisitGood: TADOQuery;
    dsVisitGood: TDataSource;
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
    btCancel: TButton;
    btOK: TButton;
    btShowGood: TButton;
    Label6: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    quVisitNoLoc_Code: TSmallintField;
    quVisitNoOrg_Code: TSmallintField;
    quVisitNoUnit_Code: TSmallintField;
    quVisitNoState: TSmallintField;
    Label16: TLabel;
    quVisitNoState_Name: TStringField;
    Panel8: TPanel;
    grVisit: TDBGrid;
    Panel11: TPanel;
    cbFilterState: TComboBox;
    dblUnit: TRSqlDbLookup;
    dblLocCode: TRSqlDbLookup;
    dblCreate: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblItem: TRSqlDbLookup;
    cbGoodType: TRSqlComboBox;
    cbNonState: TRSqlComboBox;
    cbMovState: TRSqlComboBox;
    edLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edOperNote: TRSqlEdit;
    edVisitNo: TRSqlEdit;
    edState: TRSqlEdit;
    edNote: TRSqlEdit;
    meVisit: TRSqlMaskEdit;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    dblConfirm: TRSqlDbLookup;
    mmDescr: TRSqlMemo;
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
    procedure meVisitExit(Sender: TObject);
    procedure quVisitGoodAfterScroll(DataSet: TDataSet);
    procedure meCreateExit(Sender: TObject);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure btShowGoodClick(Sender: TObject);
    procedure dblItemEnter(Sender: TObject);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblCostCenterCloseUp(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblLocCodeEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     procedure CheckEscEnter(sender:TObject;Skey:char);
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
     procedure SetDetailFields;
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

  VisitReq: TVisitReq;

  ConfAmont : Smallint ;
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

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//****************************************************************************
//****************************************************************************
procedure TVisitReq.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quVisitNo.RecordCount <> 0 ) then
   begin
      quVisitGood.Close;
      quVisitGood.Parameters[0].Value :=quVisitNoVisit_No.AsInteger   ;
      quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger   ;
      quVisitGood.Open;
      DisableMasterFields();
      SetMasterFields();
   end;
end;
//*****************************************************************************
procedure TVisitReq.DoNew(var mes: TMessage);
begin
   grVisit.TabStop :=false;
   grGood.TabStop  :=false;

   mde := 1;
   case ActiveGrid of
    1 : begin
           EnableMasterFields();
           ClearMasterFields();

           quVisitNo.Close;
           quVisitNo.Open;
           quVisitNo.Last;

           if      quVisitNo.RecordCount = 0 then edVisitNo.Text := '81000000'
              else edVisitNo.Text := IntToStr(quVisitNoVisit_No.AsInteger + 1) ;
           meCreate.Text := Dabdata.disp_date ;
           meConfirm.Text := Dabdata.disp_date ;
           dblUnit.SetFocus;
        end;
    2 : begin
           if Trim(edVisitNo.Text)='' then exit;
           if quVisitGoodState.AsInteger <> 0 then  exit;
           quVisitGood.Close;
           quVisitGood.Parameters[0].Value := quVisitNoVisit_No.AsInteger;
           quVisitGood.Parameters[1].Value := quVisitNoVisit_No.AsInteger;
           quVisitGood.Open;
           quVisitGood.last;
           RealRow := quVisitGoodRow_No   .AsInteger ;
           EnableDetailFields();
           ClearDetailFields();

           cbGoodType.SetFocus;
        end
    end;
end;
//****************************************************************************
procedure TVisitReq.DoEdit(var mes :TMessage);
begin
   grVisit.TabStop       := false;
   grGood.TabStop        := false;
   cbFilterState.TabStop := False;

   mde := 2;
   case ActiveGrid of
    1 : begin
           if quVisitNo.RecordCount = 0 then exit ;
           if quVisitNoState.AsInteger = 1 then
           begin
                Str1 := UUserMsg.SM_Pub_DeleteMode;
                Str2 := UUserMsg.SM_fmAccComiss_Confirm_Only_Register;
                ModalRes := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);
                exit;
           end;

          if quVisitGood.RecordCount =0 then
          begin
             Str1 := '';
             Str2 := SM_fmReqCfm_Item;
             ShowMessage2(Str2);
             SetDefaultMode (1);
             exit;
          end;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           meConfirm.Text := Dabdata.disp_date;
        end;
    2 : begin
{           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           btOk.Enabled := True;
           cbGoodType.SetFocus;}
        end;
    end;
   dblConfirm.KeyValue:=DabData.emp_no;
end;
//*****************************************************************************
procedure TVisitReq.HandleDeleteError(ErrCode: HRESULT);
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
//***************************************************************************
procedure TVisitReq.UpdateMaster();
var  i : integer;
     TempStr : string;
begin

   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblConfirm.KeyValue;
      quMasterUpdate.parameters[1].value := meConfirm.Text;
      quMasterUpdate.parameters[2].value := ConfAmont;
      quMasterUpdate.parameters[3].value := edVisitNo.Text;

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

    if ConfAmont = 2 then
    begin
      quVisitGood.First;
      for i := 1 to quVisitGood.RecordCount do
      begin
        case quVisitGoodGoods_Type.AsInteger of
           0  : DabData.UpdateMovGoods   ( quVisitGoodGoods_Code.AsString ,
                                             quVisitGoodState.AsInteger);
           1  : DabData.UpdateNonMovGoods( quVisitGoodPlaque_No.AsString ,
                                              quVisitGoodState.AsInteger);
         end;
         quVisitGood.Next;
       end;
   end;

   cbFilterState.ItemIndex := ConfAmont ;
   TempStr := edVisitNo.Text;

   quVisitNo.Close;  // set values to Grid
   quVisitNo.Parameters[0].Value := cbFilterState.ItemIndex;
   quVisitNo.Parameters[1].Value := NULL;
   quVisitNo.Open;

   quVisitNo.Locate ('Visit_no',TempStr,[locaseinsensitive]);
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
procedure TVisitReq.SetDefaultMode(i: integer);
begin
   grVisit.TabStop:=true;
   grGood.TabStop:=true;
   mde := 0 ;
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
procedure TVisitReq.CheckEscEnter(sender: TObject; Skey: char);
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
procedure TVisitReq.ClearMasterFields;
begin
      edVisitNo.Clear ;
      edState.Clear;

      meVisit.Clear ;
      meConfirm.Clear;
      meCreate.Clear ;
      mmDescr.Clear;

      dblUnit.KeyValue       := -1;
      dblCostCenter.KeyValue := -1;
      dblLocCode.KeyValue    := -1;
      dblCreate.KeyValue    := '';
      dblConfirm.KeyValue   := '';
end;
//**************************************************************************
procedure TVisitReq.SetMasterFields();
begin
      edVisitNo.Text        :=  quVisitNoVisit_No.AsString;
      edState.Text          :=  quVisitNoState_Name.AsString;

      meCreate.Text         :=  quVisitNoCreat_Date.AsString;
      meConfirm.Text        :=  quVisitNoConfirm_Date.AsString;
      meVisit.Text          :=  quVisitNoVisit_Date.AsString;
      mmDescr.Text          :=  quVisitNoDescr.AsString;

//      dblOrgUnit.KeyValue  :=  quVisitvi.AsInteger;
      dblCreate.KeyValue    :=  quVisitNoCreator.AsString;
      dblConfirm.KeyValue   :=  quVisitNoConfirmer.AsString;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue      :=  quVisitNoOrg_Code.AsInteger;

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
procedure TVisitReq.DisableMasterFields;
begin
      edVisitNo.Enabled     := False;
      meCreate.Enabled      := False;
      meConfirm.Enabled     := False;
      meVisit.Enabled       := False;
      dblUnit.Enabled       := False;
      dblCostCenter.Enabled := False;
      dblLocCode.Enabled    := False;
      dblCreate.Enabled     := False;
      dblConfirm.Enabled    := False;
      mmDescr.Enabled       := False;

end;
//*****************************************************************************
procedure TVisitReq.EnableMasterFields;
begin
      qudblEmp.Close;
      qudblEmp.Open;

      dblCreate.KeyValue   := '' ;
      dblConfirm.KeyValue  := '' ;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue := -1 ;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := -1 ;

      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;

      dblCreate.Enabled    := False;
//      dblConfirm.Enabled   := True;
      dblUnit.Enabled      := False;
      dblCostCenter.Enabled:= False;
      dblLocCode.Enabled   := False;

      mmDescr.Enabled      := False;
      meCreate.Enabled     := False;
      meConfirm.Enabled    := False;
      meVisit.Enabled      := False;

      paMasterOper.visible := True;
      PaDetailOper.Visible := False;
      paNote.Visible       := False;


     ChkConfirm    := False;
     ChkEmpConfirm := True;

     ChkCreate    := True;
     ChkEmpCreate := True;

     ChkVisit     := True;
     ChkEmpVisit  := True;


end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
procedure TVisitReq.ClearDetailFields;
begin
   cbNonState.ItemIndex   := -1 ;
   cbMovState.ItemIndex   := -1 ;
   cbGoodType.ItemIndex   := -1 ;

   edLabel.Clear;
   edItemName.Clear;
   edOperNote.Clear;
   dblItem.KeyValue      := -1 ;
end;//

//**************************************************************************
procedure TVisitReq.SetDetailFields();
begin
   if quVisitGood.RecordCount <> 0 then
   begin
      cbGoodType.ItemIndex  :=  quVisitGoodGoods_Type.AsInteger;
      edItemName.Text       :=  quVisitGoodItemName.AsString;
      edLabel.Text          :=  quVisitGoodLabel.AsString;
      dblItem.KeyValue      :=  quVisitGoodItemCode.AsString ;
      case  cbGoodType.ItemIndex of
        0 :  cbNonState.ItemIndex  :=  quVisitGoodState.AsInteger;
        1 :  cbMovState.ItemIndex  :=  quVisitGoodState.AsInteger;
      end;  // case
      edOperNote.Text       :=  quVisitGoodNote.AsString;

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
               DabData.qumoveable.Parameters[3].Value := quVisitGoodGoods_code.AsString;
               DabData.qumoveable.Open;

               dblItem.KeyValue      :=  quVisitGoodGoods_code.AsString ;
               cbMovState.Visible := True;
               cbNonState.Visible := False;
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
             DabData.qunonmgood.Parameters[1].Value := quVisitGoodPlaque_no.AsString;
             DabData.qunonmgood.Open;

             dblItem.KeyValue      :=  quVisitGoodPlaque_no.AsString ;
             cbMovState.Visible := False;
             cbNonState.Visible := True;
          end;
         end; // case
      end;
   end
   else
      RealRow  := 0 ;
   edNote.Text := quVisitGoodNote .AsString ;
end;
//*****************************************************************************
//*****************************************************************************
procedure TVisitReq.EnableDetailFields;
begin
   cbGoodType.Enabled    := True;

{   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := DabData.quclassclass_code.AsInteger ;
   if mde = 2 then  quOtherItem.Parameters[1].Value := quVisitGoodItem_Code.AsString
              else  quOtherItem.Parameters[1].Value := '';
   quOtherItem.Parameters[2].Value := quVisitGoodReq_No.AsInteger ;
   quOtherItem.Open ;}
   dblItem.KeyValue := -1 ;

   cbNonState.Enabled     := True;
//   mmDescr.Enabled        := True;

   paMasterOper.visible  := True;
   PaDetailOper.Visible  := True;
   paNote.Visible        := true;

end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TVisitReq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TVisitReq.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 112 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TVisitReq.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TVisitReq.FormShow(Sender: TObject);
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
      quVisitGood.Open;
   end;

   qudblEmp.Close;
   qudblEmp.Open;

   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.open;

   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkCreate    := False;
   ChkEmpCreate := True;

   ChkVisit     := False;
   ChkEmpVisit  := True;

   grVisit.SetFocus;
end;
//******************************************************************************
procedure TVisitReq.btOKClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
    begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Confirm;
      //ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

       {if ModalRes <> mrOk then
       begin
          Mde := 0;
          grVisit.SetFocus;
          exit;
        end; }
            ConfAmont := 2 ;
            UpdateMaster();
    end;
      SetDefaultMode(1);
end;
procedure TVisitReq.btCancelClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Not_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

      if ModalRes <> mrOk then
      begin
        Mde := 0;
        grvisit.SetFocus;
        exit;
      end;

      ConfAmont := 3 ;
      UpdateMaster();
   end;
   SetDefaultMode(1);
end;
//******************************************************************************
procedure TVisitReq.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TVisitReq.grGoodEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   paNote.Visible       := True;
   
end;
//****************************************************************************
procedure TVisitReq.quVisitNoAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TVisitReq.grVisitEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   paNote.Visible       := True;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
//*****************************************************************************
procedure TVisitReq.dblDebtEmpCloseUp(Sender: TObject);
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
//****************************************************************************
procedure TVisitReq.quVisitGoodAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TVisitReq.DeleteDetail;
begin
{   case TempGoodType of
    0 :  DabData.UpdateMovGoods   ( quVisitGoodGoods_code.AsString , 0);
    1 :  DabData.UpdateNonMovGoods( quVisitGoodPlaque_no.AsString  , 0);
   end;
 }
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
   quVisitGood.Open;

   SetDefaultMode(2);
end;


procedure TVisitReq.DeleteMaster;
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

procedure TVisitReq.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grVisit.Color    := clActiveGridColor;
          grGood.Color     := clDeactiveGridColor;
          edNote.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grVisit.Color    := clDeactiveGridColor;
          grGood.Color     := clActiveGridColor;
          edNote.Color     := clActiveGridColor;
       end;
    end; // case
end;

procedure TVisitReq.DoDelete(var mes: TMessage);
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


{procedure TVisit.btOkClick(Sender: TObject);
begin
   case mde of
      1 : InsertMaster();
      2 : UpdateMaster();
      3 : DeleteMaster();
    end;  // end case
//?   paMasterOper.Visible := True;
    SetDefaultMode(1);
end;}

{procedure TVisit.meVerifyChange(Sender: TObject);
begin
   ChkVerify    := VerifyDate.CheckDateStr( meVerify.Text,Cor_Str);
   ChkEmpVerify := ChkVerify Or ( meVerify.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();
end;}

procedure TVisitReq.meCreateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpCreate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end;
{   else
      if CreateDate.CompareStrDates( meCreate.Text,meConfirm.Text,CmpResult,Err) then
      if ( ChkConfirm ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if CreateDate.CompareStrDates( meCreate.Text,meVerify.Text,CmpResult,Err) then
      if ( ChkVerify ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;}

   if Not(ChkResult) then
   begin
      meCreate.Text := '  /  /  ';
      meCreate.SetFocus;
   end
end;


procedure TVisitReq.meVisitExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpVisit) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end;
{   else
      if VerifyDate.CompareStrDates( meVerify.Text , meReqDate.Text,CmpResult,Err) then
      if ( ChkVerify ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if VerifyDate.CompareStrDates( meVerify.Text , meCreate.Text,CmpResult,Err) then
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
      if ConfirmDate.CompareStrDates( meVerify.Text , meConfirm.Text,CmpResult,Err) then
      if ( ChkConfirm ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;
       }
   if Not(ChkResult) then
   begin
      meVisit.Text := '  /  /  ';
      meVisit.SetFocus;
   end
end;

procedure TVisitReq.cbGoodTypeChange(Sender: TObject);
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
                 then DabData.qumoveable.Parameters[1].Value := quVisitGoodGoods_code.AsString
                 else DabData.qumoveable.Parameters[1].Value := 0;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := -1;
           edLabel.Clear;
           edItemName.Clear;
           cbMovState.Visible := True;
           cbNonState.Visible := False;
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
                 then  DabData.qunonmgood.Parameters[1].Value := quVisitGoodPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[1].Value := 0;
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := -1;
           edLabel.Clear;
           edItemName.Clear;
           cbMovState.Visible := False;
           cbNonState.Visible := True;
       end
   end; // case
end;

procedure TVisitReq.btShowGoodClick(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          setformColor(ShowMvGood);
          ShowMvgood.ShowModal();

          dblItem.KeyValue  := DabData.qumoveablegoods_code.AsString;
          edLabel.Text      :=  DabData.qumoveablelabel.AsString ;
          edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
          setformColor(ShowNonMGood);
          ShowNonMgood.ShowModal();

          dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
          edLabel.Clear ;
          edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;

       end;
   end;   // case
end;

procedure TVisitReq.dblItemEnter(Sender: TObject);
begin
   if not(CheckNull(cbGoodType.Text)) then
   begin
      dblItem.KeyField   := '';
      dblItem.ListField  := '';
      dblItem.ListSource := DabData.dsMoveable;
      dblItem.KeyField   := 'Goods_CodeStr';
      dblItem.ListField  := 'Goods_CodeStr';

      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 5 ;
      DabData.qumoveable.Parameters[1].Value := 0 ;
      DabData.qumoveable.Open;

      dblItem.KeyValue   := -1;
    end;
end;

procedure TVisitReq.dblUnitCloseUp(Sender: TObject);
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

procedure TVisitReq.dblCostCenterCloseUp(Sender: TObject);
begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocCode.KeyValue := -1 ;
end;

procedure TVisitReq.dblCostCenterEnter(Sender: TObject);
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
   if ((CheckNull(dblUnit.Text)))and (mde <> 2) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := -1 ;
   end
end;

procedure TVisitReq.dblLocCodeEnter(Sender: TObject);
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

procedure TVisitReq.cbFilterStateChange(Sender: TObject);
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
     quVisitGood.Open;
     ClearMasterFields();
   end;
end;

end.
