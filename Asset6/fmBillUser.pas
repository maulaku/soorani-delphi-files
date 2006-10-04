unit fmBillUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,   RSqlButton, RSqlEdit, SetForm,
   RSQLComboBox, RSqllookup, RSqlMaskEdit,RadForms,Variants ; //, ControlSubClass;
type
  TBillUser = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quBillList: TADOQuery;
    dsBillList: TDataSource;
    Panel9: TPanel;
    PaDetailOper: TPanel;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    Label3: TLabel;
    Label7: TLabel;
    qudblEmpemp_no: TStringField;
    qudblEmpname: TStringField;
    qudblEmpfamily: TStringField;
    qudblEmpfather_name: TStringField;
    qudblEmpbirth_certificate_no: TStringField;
    qudblEmpbirth_date: TStringField;
    qudblEmpsex: TSmallintField;
    qudblEmpnationality_code: TSmallintField;
    qudblEmpbirth_loc_code: TStringField;
    qudblEmpcer_loc_code: TStringField;
    qudblEmpnational_card_no: TStringField;
    qudblEmpis_married: TSmallintField;
    qudblEmpnum_of_child: TSmallintField;
    qudblEmpreligion: TSmallintField;
    qudblEmphealth_state: TStringField;
    qudblEmpsoldiery: TSmallintField;
    qudblEmpedu_degree: TSmallintField;
    qudblEmpimmunity_reason: TStringField;
    qudblEmplast_school_name: TStringField;
    qudblEmplast_school_loc_code: TStringField;
    qudblEmplast_diploma_date: TStringField;
    qudblEmpwriting: TStringField;
    qudblEmpemp_type: TSmallintField;
    qudblEmporg_code: TIntegerField;
    qudblEmpunit_code: TSmallintField;
    qudblEmpisargary_state: TSmallintField;
    qudblEmpemployed_emp_law: TSmallintField;
    qudblEmpemp_state: TSmallintField;
    qudblEmpcomment: TStringField;
    qudblEmpemp_photo: TBlobField;
    qudblEmpdiploma_name: TStringField;
    qudblEmppost_no: TIntegerField;
    qudblEmpjob_lev: TSmallintField;
    qudblEmpIn_First: TFloatField;
    qudblEmpemp_code: TStringField;
    qudblEmpFLName: TStringField;
    dsOtherItem: TDataSource;
    quOtherItem: TADOQuery;
    paOkCancel: TPanel;
    grItems: TDBGrid;
    Panel12: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    Label20: TLabel;
    Label6: TLabel;
    Panel8: TPanel;
    Label1: TLabel;
    Panel17: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel18: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel11: TPanel;
    quReqNoItem: TADOQuery;
    quReqNoItemitem_Code: TStringField;
    quReqNoItemRecieve_Amount: TIntegerField;
    quSelectMovGoods: TADOQuery;
    quUpdateMovGood: TADOQuery;
    quOtherItemitem_code: TStringField;
    quOtherItemitem_name: TStringField;
    quOtherItemclass_code: TSmallintField;
    quOtherItemitem_desc: TStringField;
    quOtherItemitem_unit: TStringField;
    quOtherItemlabel: TIntegerField;
    quOtherItemGoodStr: TStringField;
    quUpdateRequest: TADOQuery;
    Panel13: TPanel;
    grBill: TDBGrid;
    Panel15: TPanel;
    quFindLastNo: TADOQuery;
    quFindLastNoBill_no: TIntegerField;
    quSelectMovGoodsLabel: TIntegerField;
    Label10: TLabel;
    Panel16: TPanel;
    Label2: TLabel;
    paNote: TPanel;
    Label4: TLabel;
    Panel10: TPanel;
    Panel20: TPanel;
    quReqItemsBill_no: TIntegerField;
    quReqItemsBill_Type: TSmallintField;
    quReqItemsOrg_Code: TIntegerField;
    quReqItemsUnit_Code: TSmallintField;
    quReqItemsCost_Code: TSmallintField;
    quReqItemsLoc_Code: TSmallintField;
    quReqItemsUser_Emp_No: TStringField;
    quReqItemsGet_Date: TStringField;
    quReqItemsDescr: TStringField;
    quReqItemsLoc_desc: TStringField;
    quReqItemsUt_Name: TStringField;
    quReqItemsFLName: TStringField;
    quReqItemsLabel: TIntegerField;
    quBillListBill_no: TIntegerField;
    quBillListBill_type: TSmallintField;
    quBillListcreator: TStringField;
    quBillListcreate_date: TStringField;
    quBillListconfirmer: TStringField;
    quBillListconfirm_date: TStringField;
    quBillListitem_req_no: TIntegerField;
    quBillListreceiver: TStringField;
    quBillListdelivery_man: TStringField;
    quBillListOrg_Code: TIntegerField;
    quBillListUnit_code: TSmallintField;
    quBillListCost_code: TSmallintField;
    quBillListrec_Org_code: TIntegerField;
    quBillListrec_Unit_code: TSmallintField;
    quBillListrec_Cost_code: TSmallintField;
    quBillListState: TSmallintField;
    quBillListReason: TStringField;
    quBillListStateName: TStringField;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    edLabel: TRSqlEdit;
    edGoods: TRSqlEdit;
    edDescr: TRSqlEdit;
    edBillNo: TRSqlEdit;
    edReqNo: TRSqlEdit;
    edNote: TRSqlEdit;
    dblUnit: TRSqlDbLookup;
    dblCreator: TRSqlDbLookup;
    dblConfirmer: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblCostUser: TRSqlDbLookup;
    dblLocUser: TRSqlDbLookup;
    dblEmpUser: TRSqlDbLookup;
    meGetDate: TRSqlMaskEdit;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    cbFilterState: TComboBox;
    quReqItemsGoods_Code: TStringField;
    quOtherItemItem_Inventory: TIntegerField;
    quOtherItemOrder_Point: TSmallintField;
    quOtherItemInventory_Limit: TSmallintField;
    quOtherItemGoods_Code: TStringField;
    quSelectMovGoodsGoods_Code: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure meRepayStartExit(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure grItemsEnter(Sender: TObject);
    procedure quBillListAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblGoodsEnter(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure dblCostUserCloseUp(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-------------------  Special Procedures   -----------------------------
//-----------------------------------------------------------------------
     procedure SetDefaultMode(i: integer);
//-----------------------------------------------------------------------
//--------------------- Master Procedures -------------------------------
//-----------------------------------------------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
    procedure SetDetailFields;
//-----------------------------------------------------------------------
     procedure UpdateDetail;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
   { Private declarations }
  PROTECTED
//-----------------------------------------------------------------------
    procedure DoScroll(var mes :TMessage);message F_SCROLL;
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    procedure SetGridColor(i: integer);
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  BillUser: TBillUser;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : String;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;

  ChkCreateBill, ChkEmpCreateBill  : Boolean;
  ChkCreate    , ChkEmpCreate      : Boolean;
  ChkConfirm   , ChkEmpConfirm     : Boolean;
  ChkCfmTeller , ChkEmpcfmTeller   : Boolean;

  AllDisabled: Boolean;

  TempItemCode : string[8];
  TempGoodsCode: String[10];
  TempGoodsVar : string[10];
  ChkResult    : Boolean;
  IsClear      : Boolean;
  ActiveGrid   : Integer;
  BMark        : TBookmark;

implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TBillUser.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quBillList.RecordCount <> 0 ) then
   begin
      quReqItems.Close;
      quReqItems.Parameters[0].Value := quBillListBill_no.AsInteger;
      quReqItems.Parameters[1].Value := quBillListBill_type.AsInteger;
      quReqItems.Open;

      DisableMasterFields();
      SetMasterFields();
   end;
end;
//*****************************************************************************
procedure TBillUser.DoNew(var mes: TMessage);
begin
   grBill.TabStop:= false;
   grItems.TabStop:= false;
   cbFilterState.TabStop  := False;

   mde := 1;
   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex := 0;

           quBillList.Close;
           quBillList.Parameters[0].Value:= 0;
           quBillList.Parameters[1].Value := NULL;
           quBillList.open;
           quBillList.Last;


           quReqItems.Close;
           quReqItems.Parameters[0].Value := NULL;
           quReqItems.Open;

           EnableMasterFields();
           ClearMasterFields();

           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;

           if      quFindLastNo.RecordCount = 0 then edBillNo.Text := '81000000'
              else edBillNo.Text := IntToStr(quFindLastNoBill_no.AsInteger + 1) ;
//           meCreateBill.Text  := disp_date ;
           meCreate.Text := Dabdata.disp_date ;
           ChkCreate     := True;
           ChkEmpCreate  := True;
           edReqNo.SetFocus;
        end;
    2 : begin
           mde := 0;
{           if Trim(edBillNo.Text)='' then exit;
           quReqItems.Close;
           quReqItems.Open;

           EnableDetailFields();
           ClearDetailFields();

           dblGoods.SetFocus;}
        end
    end;
end;
//****************************************************************************
procedure TBillUser.DoEdit(var mes :TMessage);
begin
   grBill.TabStop         := False;
   grItems.TabStop        := False;
   cbFilterState.TabStop  := False;

   mde := 2;
   case ActiveGrid of
    1 : begin
        end;
    2 : begin
           if ( quBillListState.AsInteger   = 2)  then
           begin
              EnableDetailFields();
              ClearDetailFields();
              SetDetailFields();
              if dblCostUser.Enabled
                 then  dblCostUser.SetFocus
                 else  dblLocUser.SetFocus;
           end
           else
           begin
              ShowMessage2('Ã“∆Ì«  ÕÊ«·Â  «ÌÌœ ‘œÂ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ');
              mde:=0;exit;
           end;
        end;
    end;
end;
//*****************************************************************************
procedure TBillUser.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
    1 :begin
           if quBillListState.AsInteger <> 0 then
           begin
              Str1 := '«Œÿ«—';
              Str2 := '›ﬁÿ œ—ŒÊ«”   ‰ŸÌ„ ‘œÂ ﬁ«»· Õ–› „Ì »«‘œ';
              ShowMessage2(Str2);
              mde:=0;exit;
           end;
        if ( Mde = 0 )  and ( quBillList.RecordCount >=1 ) and
           ( quBillList.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := '¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœ';
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grBill.SetFocus;
             exit;
          end;
          quSelectItemFromOther.Close;
          quSelectItemFromOther.Parameters[0].Value := quBillListBill_No.AsString;
          quSelectItemFromOther.Open;
          if quSelectItemFromOtherItemCount.AsInteger > 0 then
          begin
             Str1 := UUserMsg.SM_Pub_DeleteMode;
             Str2 := UUserMsg.SM_fmLonTyp_DeleteErrorRelatedRow;
             ShowMessage2(Str2);
             Mde := 0;
             grBill.SetFocus;
             exit;
          end;  // if quSelectFromRelatedToDelete.RecordCount > 0 then
          mde :=3;
          DeleteMaster ();
        end;
        end;
 {
        2 :
            if ( Mde = 0 )  and ( quReqItems.RecordCount >=1 ) and
                ( quReqItems.RecNo >= 1) then
            begin
               Str1 := UUserMsg.SM_Pub_DeleteMode;
               Str2 := UUserMsg.SM_fmLonTyp_ConfirmDelRec;
               ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

               if ModalRes <> mrOk then
               begin
                  Mde := 0;
                  grItems.SetFocus;
                  exit;
               end;
                  DeleteDetail();
            end;
  }

   //     end;      //  case
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TBillUser.SetDefaultMode(i: integer);
begin
   mde := 0;
   case ActiveGrid of
      1 :
      begin
         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grBill.TabStop       := True;
         ActiveControl        := grBill;
         ActiveGrid           := 1;
      end;
      2 :
      begin
         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grItems.TabStop    := True;
         ActiveControl      := grItems;
         ActiveGrid         := 2;
      end;
    end;
end;
//*****************************************************************************
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//**************************************************************************
procedure TBillUser.ClearMasterFields;
begin
      edBillNo.Clear ;

      meCreate.Clear ;
      meConfirm.Clear ;

      edReqNo.Clear ;
      dblUnit.KeyValue       := null;
      dblCostCenter.KeyValue := null;

      dblCreator.KeyValue     := '';
      dblConfirmer.KeyValue  := '';
end;
//**************************************************************************
procedure TBillUser.SetMasterFields();
begin
      edBillNo.Text          :=  quBillListBill_no.AsString;

      meCreate.Text          :=  quBillListCreate_Date.AsString;
      meConfirm.Text         :=  quBillListconfirm_date.AsString;

      edReqNo.Text           :=  quBillListitem_req_no.AsString;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue      :=  quBillListrec_Unit_code.AsInteger;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := quBillListrec_Cost_code.AsInteger; ;

      dblCreator.KeyValue    :=  quBillListCreator.AsString;
      dblConfirmer.KeyValue  :=  quBillListconfirmer.AsString;
end;
//*****************************************************************************
procedure TBillUser.DisableMasterFields;
begin
      edBillNo.FieldType:=ftDisplay;
      edReqNo.FieldType:=ftDisplay;
      meCreate.FieldType:=ftDisplay;
      meConfirm.FieldType:=ftDisplay;
      dblUnit.FieldType:=ftDisplay;
      dblCostCenter.FieldType:=ftDisplay;
      dblCreator.FieldType:=ftDisplay;
      dblConfirmer.FieldType:=ftDisplay;
      FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TBillUser.EnableMasterFields;
begin
      qudblEmp.Close;
      qudblEmp.Open;

      dblCreator.KeyValue    := '';
      dblConfirmer.KeyValue  := '';

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue := null ;
      dblUnit.FieldType:=ftDisplay;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;

      edReqNo.Text          := quBillListitem_req_no.AsString   ;

      dblUnit.FieldType:=ftNonRequired;
      dblCostCenter.FieldType:=ftNonRequired;
      dblCreator.FieldType:=ftNonRequired;
      edReqNo.FieldType:=ftNonRequired;
      meCreate.FieldType:=ftNonRequired;


      paOkCancel.visible   := True;
      PaDetailOper.Visible := False;


      ChkCreate    := True;
      ChkEmpCreate := True;

      meCreate.Text   := Dabdata.disp_date;
      FormInitializer1.Execute;
end;
//*****************************************************************************
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
procedure TBillUser.UpdateDetail();
var BMark : TBookmark;
begin

   BMark := quReqItems.GetBookmark;
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      if(dblCostUser.Text<>'') then
              quDetailUpdate.parameters[0].value := dblCostUser.KeyValue;
      quDetailUpdate.parameters[1].value := dblLocUser.KeyValue;
      quDetailUpdate.parameters[2].value := dblEmpUser.KeyValue;
      quDetailUpdate.parameters[3].value := meGetDate.Text;
      quDetailUpdate.parameters[4].value := edDescr.Text;
      quDetailUpdate.parameters[5].value := edGoods.Text;
      quDetailUpdate.parameters[6].value := StrToInt(edBillNo.Text);
      quDetailUpdate.parameters[7].value := quBillListBill_type.AsInteger;

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

   quReqItems.close;
   quReqItems.Open;

   quReqItems.GotoBookmark(BMark);
   quReqItems.FreeBookmark(BMark);
end;
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TBillUser.ClearDetailFields;
begin
   dblCostUser.KeyValue     := NULL ;
   dblLocUser.KeyValue      := NULL ;
   dblEmpUser.KeyValue      := NULL ;
   edLabel.clear;
   edDescr.Clear;
   edGoods.Clear;
   meGetDate.Clear;
end;//
//**************************************************************************
procedure TBillUser.SetDetailFields();
begin
   if quReqItems.RecordCount <> 0 then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := quBillListrec_Unit_code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostUser.KeyValue := quReqItemsCost_Code.AsInteger;

      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := quReqItemsCost_Code.AsInteger;
      DabData.quDeployLoc.Open;
      dblLocUser.KeyValue := quReqItemsLoc_Code.AsInteger;

      edLabel.Text          :=  quReqItemsLabel.AsString;
      edGoods.Text          :=  quReqItemsGoods_Code.AsString;
      edDescr.Text          :=  quReqItemsDescr.AsString ;
      edNote.Text           :=  quReqItemsDescr.AsString ;
      dblEmpUser.KeyValue   :=  quReqItemsUser_Emp_No.AsString ;
      meGetDate.Text        :=  quReqItemsGet_Date.AsString ;
      if meGetDate.Text <> '  /  /  '
             then   ChkCreate := True
             else   ChkCreate := False;
   end;
end;
//*****************************************************************************
//*****************************************************************************
procedure TBillUser.EnableDetailFields;
begin
   meGetDate.FieldType:=ftNonRequired;
   if quBillListrec_Cost_code.AsInteger <> 0
      then
        begin
          dblCostUser.FieldType:=ftDisplay;
        end
      else
        begin
          dblCostUser.FieldType:=ftNonRequired;
        end;
   if quReqItemsCost_Code.AsInteger <>  0
      then
         begin
            dblLocUser.FieldType:=ftNonRequired;
         end
      else
         begin
            dblLocUser.FieldType:=ftDisplay;
         end;

   dblCostUser.FieldType:=ftNonRequired;
   dblLocUser.FieldType:=ftNonRequired;
   dblEmpUser.FieldType:=ftNonRequired;
   edDescr.FieldType:=ftNonRequired;
   PaDetailOper.Visible  := True;
   paOkCancel.visible    := True;
   paNote.Visible        := False;

   ChkCreate             := False;
   ChkEmpCreate          := True;
   FormInitializer1.Execute;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TBillUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TBillUser.FormActivate(Sender: TObject);
var mes:TMessage;
begin                 
   mes.Msg:=FORM_STATE;
   mes.Lparam := 66 ;
   Application.MainForm.Dispatch(mes);


   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TBillUser.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TBillUser.FormShow(Sender: TObject);
var l,t:integer;
begin
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   mde:=0;
   cbFilterState.ItemIndex := 2 ;

   quBillList.Close;
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Parameters[2].Value := 0;
   quBillList.Parameters[3].Value := NULL;
   quBillList.open;


   if quBillList.RecordCount <> 0 then
   begin
      quReqItems.Close;  // set values to Grid
      quReqItems.Parameters[0].Value := quBillListBill_No.AsInteger;
      quReqItems.Parameters[1].Value := quBillListBill_type.AsInteger;
      quReqItems.Open;
   end;

   qudblEmp.Close;
   qudblEmp.Open;

   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;

   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := quBillListrec_Unit_code.AsInteger;
   DabData.quCostCenter.Open;


   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkCreate    := False;
   ChkEmpCreate := True;

   ChkCreateBill     := False;
   ChkEmpCreateBill  := True;

   grBill.SetFocus;

end;
//*****************************************************************************
procedure TBillUser.meRepayStartExit(Sender: TObject);
begin
{   ChkResult := True;
   if  Not(ChkEmpRepayStart) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end
   else
      if ( RepayStart.CompareStrDates(meRepayStart.Text,meRegDate.Text,CmpResult,Err)) and ChkResult then
      if ( CmpResult = null) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_PayDate;
         UFmShMsg.ShowMsgForm( Self,Str1,Str2,'',True,False);
      end
   else
      if (RepayStart.CompareStrDates( meRepayStart.Text,meRepaySDate.Text,CmpResult,Err)) and ChkResult then
      if ( CmpResult = null) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_LoanCommDate;
         ShowMessage2(Str2);
      end
   else
      if StrToInt(Trim(Copy(meRepayStart.Text,4,2))) < StrToInt(Trim(quDebtRepayD_Moon.AsString)) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmLonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmDebtReg_RepayStartDate_Less_RepayDate;
         ShowMessage2(Str2);
      end;

   if Not(ChkResult) then
   begin
      meRepayStart.Text := '  /  /  ';
      meRepayStart.SetFocus;
   end}
end;
//******************************************************************************
procedure TBillUser.btCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TBillUser.grItemsEnter(Sender: TObject);
begin
   if mde=1 then
   begin
      mde := 0;
      quBillList.Close;
      quBillList.Open;
   end;
   ActiveGrid := 2 ;
   DisableMasterFields();
   SetGridColor(2);
   mde:=0;
   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;
   paNote.Visible       := True;
end;
//****************************************************************************
procedure TBillUser.quBillListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TBillUser.grBillEnter(Sender: TObject);
begin
   if mde=1 then
   begin
      mde := 0;
      quBillList.Close;
      quBillList.Open;
   end;
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;
   paNote.Visible       := True;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
{//***************************************************************************
procedure TBillStor.meReqDateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpReqDate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      meReqDate.Text := '  /  /  ';
      meReqDate.SetFocus;
   end
end;    }
//****************************************************************************
procedure TBillUser.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TBillUser.btOkClick(Sender: TObject);
begin
   if ActiveGrid = 2 then
   begin
      case mde of
        2 : UpdateDetail();
      end;  // end case
//?   paMasterOper.Visible := True;
      SetDefaultMode(2);
    end;
end;
//****************************************************************************
//****************************************************************************
procedure TBillUser.dblUnitCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := null ;

end;
//****************************************************************************
procedure TBillUser.dblGoodsEnter(Sender: TObject);
begin
   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := TempItemCode ;
   if mde = 2 then  quOtherItem.Parameters[1].Value := TempGoodsCode
              else  quOtherItem.Parameters[1].Value := '';
   quOtherItem.Open ;
end;
//****************************************************************************
procedure TBillUser.dblCostCenterEnter(Sender: TObject);
begin
   if mde = 2 then exit;
   if not(CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := 0;
      DabData.quCostCenter.Parameters[1].Value := 0;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;
   end
   else
   if (CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;
   end
end;


procedure TBillUser.cbFilterStateChange(Sender: TObject);
begin
  case  cbFilterState.ItemIndex of
  8: begin
             quBillList.Close;
             quBillList.Parameters[0].Value := NULL;
             quBillList.Parameters[1].Value := 1;
             quBillList.Parameters[2].Value := NULL;
             quBillList.Parameters[3].Value := 1;
             quBillList.open;
       end;
   0..3 : begin
             quBillList.Close;
             quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
             quBillList.Parameters[1].Value := NULL;
             quBillList.Parameters[2].Value := 0;
             quBillList.Parameters[3].Value := NULL;
             quBillList.open;
           end;
   4..7 : begin
             quBillList.Close;
             quBillList.Parameters[0].Value := cbFilterState.ItemIndex-4;
             quBillList.Parameters[1].Value := NULL;
             quBillList.Parameters[2].Value := 1;
             quBillList.Parameters[3].Value := NULL;
             quBillList.open;
           end;
     end; // case
   if quBillList.RecordCount = 0 then
   begin
     quReqItems.Close;
     quReqItems.Parameters[0].Value := NULL;
     quReqItems.Open;
     ClearMasterFields();
   end;
end;

procedure TBillUser.dblCostUserCloseUp(Sender: TObject);
begin
   if not(CheckNull(dblCostUser.Text)) then exit;
   dblLocUser.FieldType:=ftNonRequired;
   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
   DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
   DabData.quDeployLoc.Open;
   dblLocUser.KeyValue := NULL;
   FormInitializer1.Execute;
end;
procedure TBillUser.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grBill.Color   := clActiveGridColor;
          grItems.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grBill.Color   := clDeactiveGridColor;
          grItems.Color     := clActiveGridColor;
       end;
    end; // case
end;

end.
