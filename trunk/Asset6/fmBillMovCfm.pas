unit fmBillMovCfm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,RSqlMaskEdit, RSqllookup,
  RSqlEdit,  SetForm,RadForms,Variants;
type
  TBillmovableCfm = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quBillList: TADOQuery;
    dsBillList: TDataSource;
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    quDetailInsert: TADOQuery;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    quMasterDelete: TADOQuery;
    Label3: TLabel;
    Label7: TLabel;
    quMasterUpdate: TADOQuery;
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
    quSelectItemFromOther: TADOQuery;
    paOkCancel: TPanel;
    btCancel: TButton;
    btOK: TButton;
    grItems: TDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
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
    Panel10: TPanel;
    quReqList: TADOQuery;
    quReqListReq_No: TIntegerField;
    quReqListCreator: TStringField;
    quReqListCreate_Date: TStringField;
    quReqListOrg_Code: TSmallintField;
    quReqListOrg_Unit_Code: TSmallintField;
    quReqListConfirmer: TStringField;
    quReqListConfirm_Date: TStringField;
    quReqListVerifier: TStringField;
    quReqListVerify_Date: TStringField;
    dsReqList: TDataSource;
    quReqListState: TSmallintField;
    quReqListFLName: TStringField;
    quSelectMovGoods: TADOQuery;
    quUpdateMovGood: TADOQuery;
    dsSelectMovGoods: TDataSource;
    quUpdateRequest: TADOQuery;
    quSelectItemFromOtherItemCount: TIntegerField;
    Panel13: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel12: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    quDeployLoc: TADOQuery;
    quDeployLocloc_code: TSmallintField;
    quDeployLocloc_desc: TStringField;
    quDeployLocemp_no: TStringField;
    quDeployLocunit_code: TSmallintField;
    quDeployLocorg_code: TSmallintField;
    quDeployLocdescr: TStringField;
    quCostCenter: TADOQuery;
    quCostCenterUt_Org_Code: TSmallintField;
    quCostCenterUt_Code: TSmallintField;
    quCostCenterUt_Name: TStringField;
    quCostCenterUt_Mast_Code: TSmallintField;
    quOrgUnit: TADOQuery;
    quOrgUnitUt_Org_Code: TSmallintField;
    quOrgUnitUt_Code: TSmallintField;
    quOrgUnitUt_Name: TStringField;
    quOrgUnitUt_Mast_Code: TSmallintField;
    dsOrgUnit: TDataSource;
    dsCostCenter: TDataSource;
    dsDeployLoc: TDataSource;
    quReqNoItem: TADOQuery;
    quReqNoItemitem_Code: TStringField;
    quReqNoItemRecieve_Amount: TIntegerField;
    quCostCenterDutname: TStringField;
    quNumberofMov: TADOQuery;
    quNumberofMovItemCount: TIntegerField;
    quItemsRequest: TADOQuery;
    quItemsRequestReq_No: TIntegerField;
    quItemsRequestItem_Code: TStringField;
    quItemsRequestReq_Amount: TIntegerField;
    quItemsRequestConf_Amount: TIntegerField;
    quItemsRequestRecieve_Amount: TIntegerField;
    quItemsRequestReq_Type: TSmallintField;
    quMasterUp: TADOQuery;
    Panel14: TPanel;
    grBill: TDBGrid;
    Panel15: TPanel;
    cbFilterState: TComboBox;
    Label10: TLabel;
    quSelectMovGoodsbill_no: TIntegerField;
    quSelectMovGoodsbill_type: TSmallintField;
    quSelectMovGoodsGoods_Code: TStringField;
    quSelectMovGoodsItem_Req_No: TIntegerField;
    quSelectMovGoodsItem_Code: TStringField;
    quSelectMovGoodsGoodStr: TStringField;
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
    quBillListFLName: TStringField;
    quBillListStateName: TStringField;
    quOtherItemitem_code: TStringField;
    quOtherItemitem_name: TStringField;
    quOtherItemclass_code: TSmallintField;
    quOtherItemitem_desc: TStringField;
    quOtherItemitem_unit: TSmallintField;
    quOtherItemItem_Inventory: TIntegerField;
    quOtherItemOrder_Point: TSmallintField;
    quOtherItemInventory_Limit: TSmallintField;
    quOtherItemlabel: TIntegerField;
    quOtherItemGoodStr: TStringField;
    quReqItemsbill_no: TIntegerField;
    quReqItemsbill_type: TSmallintField;
    quReqItemsitem_code: TStringField;
    quReqItemsitem_name: TStringField;
    quReqItemsclass_code: TSmallintField;
    quReqItemsitem_desc: TStringField;
    quReqItemsitem_unit: TSmallintField;
    quReqItemsItem_Inventory: TIntegerField;
    quReqItemsOrder_Point: TSmallintField;
    quReqItemsInventory_Limit: TSmallintField;
    quReqItemsLabel: TIntegerField;
    quReqItemsCode: TSmallintField;
    quReqItemsUnit_Item_Desc: TStringField;
    edBillNo: TRSqlEdit;
    edReason: TRSqlEdit;
    dblReqNo: TRSqlDbLookup;
    dblUnit: TRSqlDbLookup;
    dblCreator: TRSqlDbLookup;
    dblConfirmer: TRSqlDbLookup;
    dblUnitSend: TRSqlDbLookup;
    dblSender: TRSqlDbLookup;
    dblCostCenterSend: TRSqlDbLookup;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    dblCostCenter: TRSqlDbLookup;
    quOtherItemGoods_Code: TStringField;
    quReqItemsgoods_code: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure meRepayStartChange(Sender: TObject);
    procedure meRepayStartKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelClick(Sender: TObject);
    procedure grItemsEnter(Sender: TObject);
    procedure quBillListAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure dblGoodsCloseUp(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure cbReqTypeChange(Sender: TObject);
    procedure edDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dblReqNoCloseUp(Sender: TObject);
    procedure dblGoodsEnter(Sender: TObject);
    procedure dblCostCenterSendEnter(Sender: TObject);
    procedure dblLocCodeSendEnter(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblLocCodeEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure meCfmTellerExit(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-------------------  Special Procedures   -----------------------------
//-----------------------------------------------------------------------
     procedure CheckEscEnter(sender:TObject;Skey:char);
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
//-----------------------------------------------------------------------
//--------------------- Master Procedures -------------------------------
//-----------------------------------------------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
//-----------------------------------------------------------------------
     procedure UpdateMaster;
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
     procedure CheckFieldsSetDetailokButtons;
     procedure SetDetailFields;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     function chkExist : Boolean;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
   { Private declarations }
  PROTECTED
//-----------------------------------------------------------------------
    procedure DoScroll(var mes :TMessage);message F_SCROLL;
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  BillmovableCfm: TBillmovableCfm;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : String;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;

  confTag : Byte;
  ChkCreateBill, ChkEmpCreateBill  : Boolean;
  ChkCreate    , ChkEmpCreate      : Boolean;
  ChkConfirm   , ChkEmpConfirm     : Boolean;
  ChkCfmTeller , ChkEmpcfmTeller   : Boolean;

  AllDisabled: Boolean;

  TempItemCode : string[8];
  TempGoodsCode: String[10];
  TempGoodsVar : Variant;
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
procedure TBillmovableCfm.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quBillList.RecordCount <> 0 ) then
   begin
      quReqItems.Close;
      quReqItems.Parameters[0].Value := quBillListBill_no.AsInteger;
      quReqItems.Open;

      DisableMasterFields();
      SetMasterFields();
   end;
end;
//*****************************************************************************
procedure TBillmovableCfm.DoNew(var mes: TMessage);
begin
   grBill.TabStop:= false;
   grItems.TabStop:= false;
   cbFilterState.TabStop  := False;

   mde := 1;
   case ActiveGrid of
    1 : begin
           EnableMasterFields();
           ClearMasterFields();

           quBillList.Close;
           quBillList.Open;
           quBillList.Last;

           if      quBillList.RecordCount = 0 then edBillNo.Text := '81000001'
              else edBillNo.Text := IntToStr(quBillListBill_no.AsInteger + 1) ;
           meCreate.Text := Dabdata.disp_date ;
           ChkCreate     := True;
           ChkEmpCreate  := True;
           btOK.Enabled  := False;
           dblReqNo.SetFocus;
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
procedure TBillmovableCfm.DoEdit(var mes :TMessage);
begin
   grBill.TabStop:= false;
   grItems.TabStop:= false;
   cbFilterState.TabStop  := False;

   mde := 2;
   case ActiveGrid of
    1 : begin
           if quBillList.IsEmpty then exit;
           if quBillListState.AsInteger <> 0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := 'ÕÊ«·Â ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0 ;exit;
           end;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           meConfirm.Text:= Dabdata.disp_date;
           //dblConfirmer.SetFocus;
        end;
    2 : begin
         if quReqItems.IsEmpty then exit;
         {  EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           btOk.Enabled := True;
           dblGoods.SetFocus;}
        end;
    end;
   dblConfirmer.KeyValue := DabData.emp_no;
end;
//*****************************************************************************
procedure TBillmovableCfm.DoDelete(var mes: TMessage);
begin end;
{   case ActiveGrid of
    1 : begin
           if quBillListState.AsInteger <> 0 then
           begin
              ShowMessag('›ﬁÿ œ—ŒÊ«”   ‰ŸÌ„ ‘œÂ ﬁ«»· Õ–› „Ì »«‘œ');
              mde:=0 ;exit;
           end;
           if ( Mde = 0 )  and ( quBillList.RecordCount >=1 ) and
              ( quBillList.RecNo >= 1) then
          begin
             Str1 := UUserMsg.SM_Pub_DeleteMode;
             Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
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
   end;
{        2 : if ( Mde = 0 )  and ( quReqItems.RecordCount >=1 ) and
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
            end;          }
       // end;      //  case

//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TBillmovableCfm.SetDefaultMode(i: integer);
begin
   mde := 0;
   case ActiveGrid of
      1 :
      begin

         paOkCancel.Visible   := False;

         grBill.TabStop       := True;
         ActiveControl        := grBill;
         ActiveGrid           := 1;
      end;
      2 :
      begin
//         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grItems.TabStop    := True;
         ActiveControl      := grItems;
         ActiveGrid         := 2;
      end;
    end;
end;
//****************************************************************************
procedure TBillmovableCfm.CheckEscEnter(sender: TObject; Skey: char);
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
//****************************************************************************
procedure TBillmovableCfm.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grBill.Color   := clActiveGridColor;
          grItems.Color  := clDeactiveGridColor;
       end;
   2 : begin
          grBill.Color   := clDeactiveGridColor;
          grItems.Color  := clActiveGridColor;
       end;
    end; // case
end;
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
//***************************************************************************
procedure TBillmovableCfm.UpdateMaster();
var i: integer;
begin
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblConfirmer.KeyValue;
      quMasterUpdate.parameters[1].value := meConfirm.Text;
      quMasterUpdate.parameters[2].value := 2;
      quMasterUpdate.parameters[3].value := StrToInt(edBillNo.Text);
      quMasterUpdate.parameters[4].value := 1;

      quMasterUpdate.Prepared := True;
      quMasterUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
      //AssignGoodsToBill();
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterUpdate.RowsAffected <>1 ) then
   begin
     Str1 := '«Œÿ‹‹«—';
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   Str1:=edBillNo.Text;

      quReqItems.First;

      for i := 1 to quReqItems.RecordCount do
      begin
         DabData.UpdateMovGoods(quReqItemsgoods_code.AsString ,1);
         quReqItems.Next;
      end;

   cbFilterState.ItemIndex := confTag ;
   quBillList.Close;  // set values to Grid
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Open;

   quBillList.Locate('Bill_no',str1,[locaseinsensitive]);

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//****************************************************************************
procedure TBillmovableCfm.ClearMasterFields;
begin
      edBillNo.Clear ;

      meCreate.Clear ;
      meConfirm.Clear ;

      dblReqNo.KeyValue      := -1;
      dblUnit.KeyValue       := -1;
      dblCostCenter.KeyValue := -1;
//????      dblLocCode.KeyValue    := -1;

      dblunitSend.KeyValue       := -1;
      dblCostCenterSend.KeyValue := -1;
//????      dblLocCodeSend.KeyValue    := -1;

      dblCreator.KeyValue     := '';
      //dblConfirmer.KeyValue  := '';
      dblConfirmer.KeyValue:=DabData.emp_no;
      dblSender .KeyValue := '';
      edReason.Clear;
end;
//**************************************************************************
procedure TBillmovableCfm.SetMasterFields();
begin
      edBillNo.Text          :=  quBillListBill_no.AsString;
      meCreate.Text          :=  quBillListCreate_Date.AsString;
      meConfirm.Text         :=  quBillListconfirm_date.AsString;
      edReason.Text          :=  quBillListReason.AsString;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue      :=  quBillListrec_Unit_code.AsInteger;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := quBillListrec_Cost_code.AsInteger; ;


      dblReqNo.KeyValue      :=  quBillListitem_req_no.AsInteger;

      dblCreator.KeyValue    :=  quBillListCreator.AsString;
      dblConfirmer.KeyValue  :=  quBillListconfirmer.AsString;

      dblSender.KeyValue         :=  quBillListdelivery_man.AsString;
      dblunitSend.KeyValue       :=  quBillListunit_code.AsInteger;
      dblCostCenterSend.KeyValue :=  quBillListCost_code.AsInteger;


//      dblCostCenter.KeyValue :=  quBillListrec_unit_code.AsInteger;

end;
//*****************************************************************************
procedure TBillmovableCfm.DisableMasterFields;
begin
      edBillNo.Enabled       := False;

      meCreate.Enabled      := False;
      meConfirm.Enabled     := False;

      quReqList.Close;
      quReqList.Parameters[0].Value := 5;
      quReqList.Parameters[1].Value := NULL;
      quReqList.Open;

      dblReqNo.Enabled      := False;
      dblUnit.Enabled       := False;
      dblCostCenter.Enabled := False;
      dblCreator.Enabled    := False;
      dblConfirmer.Enabled  := False;

      dblunitSend.Enabled       := False;
      dblCostCenterSend.Enabled := False;
      dblSender .Enabled     := False;
      edReason.Enabled:= false;

end;
//*****************************************************************************
procedure TBillmovableCfm.EnableMasterFields;
begin
      qudblEmp.Close;
      qudblEmp.Open;

      dblCreator.KeyValue    := '';
      //dblConfirmer.KeyValue  := '';
      dblConfirmer.KeyValue:=DabData.emp_no;
      dblSender.KeyValue     := '';

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
//????      dblLocCode.KeyValue := -1 ;

      quOrgUnit.Close;
      quOrgUnit.Parameters[0].Value := OrganizCode;
      quOrgUnit.Open;
      dblunitSend.KeyValue := -1 ;

      quCostCenter.Close;
      quCostCenter.Parameters[0].Value := OrganizCode;
      quCostCenter.Parameters[1].Value := quOrgUnitUt_Code.AsInteger;
      quCostCenter.Open;
      dblCostCenterSend.KeyValue := -1 ;

      quDeployLoc.Close;
      quDeployLoc.Parameters[0].Value := OrganizCode;
      quDeployLoc.Parameters[1].Value := quCostCenterUt_Code.AsInteger;
      quDeployLoc.Open;
//????      dblLocCodeSend.KeyValue := -1 ;

      quReqList.Close;
      quReqList.Parameters[0].Value :=3;
      if mde=2 then quReqList.Parameters[1].Value := quBillListitem_req_no.AsString
      else      quReqList.Parameters[1].Value := NULL;
      quReqList.Open;
      dblReqNo.KeyValue    := -1 ;

//    dblConfirmer .Enabled        := True;
//    dblTeller  .Enabled        := true;
//      meConfirm .Enabled          := True;
//      meCfmTeller.Enabled          := True;

      paOkCancel.visible   := True;

      ChkConfirm    := True;
      ChkEmpConfirm := True;

      ChkCreate    := True;
      ChkEmpCreate := True;

      ChkCfmTeller     := True;
      ChkEmpcfmTeller  := True;

      meConfirm.Text   := Dabdata.disp_date;
//      meCfmTeller.Text := disp_date;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TBillmovableCfm.SetDetailFields();
begin
{   if quReqItems.RecordCount <> 0 then
   begin
      dblGoods.KeyValue     :=  quReqItemsgoods_code.AsString;
      edLabel.Text          :=  quReqItemsLabel.AsString;
      edName.Text           :=  quReqItemsitem_name.AsString ;
      edDescr.Text          :=  quReqItemsitem_desc.AsString ;
      edUnit.Text           :=  quReqItemsitem_unit.AsString ;

      TempItemCode          :=  quReqItemsitem_code.AsString ;
      TempGoodsCode         :=  quReqItemsgoods_code.AsString;
      TempGoodsVar          :=  quReqItemsgoods_code.AsVariant;
   end;}
end;
//*****************************************************************************
procedure TBillmovableCfm.CheckFieldsSetDetailokButtons;
begin
{   btOK.Enabled := False;
   if (CheckNull( dblGoods.Text)) then
        btOK.Enabled := True;
 }
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TBillmovableCfm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TBillmovableCfm.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 140 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TBillmovableCfm.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TBillmovableCfm.FormShow(Sender: TObject);
var l,t:integer;
begin
   
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   mde:=0;
   cbFilterState.ItemIndex := 0 ;

   quBillList.Close;  // set values to Grid
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Open;

   if quBillList.RecordCount <> 0 then
   begin
      quReqItems.Close;  // set values to Grid
      quReqItems.Parameters[0].Value := quBillListBill_No.AsInteger;
      quReqItems.Open;
   end;

   qudblEmp.Close;
   qudblEmp.Open;

   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;

   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
///   DabData.quCostCenter.Parameters[1].Value := quBillListrec_code.AsInteger;
   DabData.quCostCenter.Open;

   quDeployLoc.Close;
   quDeployLoc.Parameters[0].Value := OrganizCode;
   quDeployLoc.Parameters[1].Value := quBillListrec_unit_code.AsInteger;
   quDeployLoc.Open;

   quOrgUnit.Close;
   quOrgUnit.Parameters[0].Value := OrganizCode;
   quOrgUnit.Open;

   quCostCenter.Close;
   quCostCenter.Parameters[0].Value := OrganizCode;
   quCostCenter.Parameters[1].Value := quBillListorg_code.AsInteger;
   quCostCenter.Open;

   quDeployLoc.Close;
   quDeployLoc.Parameters[0].Value := OrganizCode;
   quDeployLoc.Parameters[1].Value := quBillListunit_code.AsInteger;
   quDeployLoc.Open;

   quReqList.Close;
   quReqList.Parameters[0].Value := 5;
   quReqList.Parameters[1].Value := NULL;
   quReqList.Open;

   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkCreate     := False;
   ChkEmpCreate  := True;

   ChkCreateBill     := False;
   ChkEmpCreateBill  := True;

   grBill.SetFocus;
end;
//*****************************************************************************
procedure TBillmovableCfm.meRepayStartChange(Sender: TObject);
begin
{   ChkRepayStart    := RepayStart.CheckDateStr(meRepayStart.Text,Cor_Str);
   ChkEmpRepayStart := ChkRepayStart Or ( meRepayStart.Text ='  /  /  ');}

   CheckFieldsSetDetailokButtons();
end;
procedure TBillmovableCfm.btCancelClick(Sender: TObject);
begin
      Str1 := '«Œÿ‹‹«—';
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Not_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

      if ModalRes <> mrOk then
      begin
        Mde := 0;
        grBill.SetFocus;
        exit;
      end;

      confTag:=3;
      UpdateMaster();
      SetDefaultMode(2);

end;
//******************************************************************************
procedure TBillmovableCfm.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TBillmovableCfm.grItemsEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
//   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TBillmovableCfm.quBillListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TBillmovableCfm.grBillEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

//   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;

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
procedure TBillmovableCfm.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TBillmovableCfm.btOkClick(Sender: TObject);
begin
      Str1 := '«Œÿ‹‹«—';
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

       if ModalRes <> mrOk then
       begin
          Mde := 0;
          grBill.SetFocus;
          exit;
        end;
      confTag := 2;
      UpdateMaster();
      SetDefaultMode(1);
end;
//****************************************************************************
{procedure TItemReq.meConfirmExit(Sender: TObject);
begin
   ChkResult := True;
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
   end
end;
//****************************************************************************
procedure TItemReq.meVerifyExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpVerify) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end
   else
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

   if Not(ChkResult) then
   begin
      meVerify.Text := '  /  /  ';
      meVerify.SetFocus;
   end
end;   }
//****************************************************************************
procedure TBillmovableCfm.dblGoodsCloseUp(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillmovableCfm.dblItemCloseUp(Sender: TObject);
begin
{   edUnit.Text := quOtherItemitem_unit.AsString ;
   CheckFieldsSetDetailokButtons;
}end;
//****************************************************************************
procedure TBillmovableCfm.cbReqTypeChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillmovableCfm.edDescrKeyPress(Sender: TObject; var Key: Char);
begin
  key := DabData.checkkey(Key);
end;
//****************************************************************************
procedure TBillmovableCfm.dblReqNoCloseUp(Sender: TObject);
begin
//   edReceiver.Text   := quReqListFLName.AsString;
   dblUnit.KeyValue := quReqListOrg_Unit_Code.AsInteger;
end;
//****************************************************************************
procedure TBillmovableCfm.dblGoodsEnter(Sender: TObject);
begin
   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := TempItemCode ;
   if mde = 2 then  quOtherItem.Parameters[1].Value := TempGoodsCode
              else  quOtherItem.Parameters[1].Value := '';
   quOtherItem.Open ;
end;
//****************************************************************************
procedure TBillmovableCfm.dblCostCenterSendEnter(Sender: TObject);
begin
   if not(CheckNull(dblunitSend.Text)) then
   begin
      quCostCenter.Close;
      quCostCenter.Parameters[0].Value := 0;
      quCostCenter.Parameters[1].Value := 0;
      quCostCenter.Open;
      dblCostCenterSend.KeyValue := -1 ;
   end
   else
   if (CheckNull(dblunitSend.Text)) then
   begin
      quCostCenter.Close;
      quCostCenter.Parameters[0].Value := OrganizCode;
      quCostCenter.Parameters[1].Value := quOrgUnitUt_Code.AsInteger;
      quCostCenter.Open;
      dblCostCenterSend.KeyValue := -1 ;
   end;

end;
//****************************************************************************
procedure TBillmovableCfm.dblLocCodeSendEnter(Sender: TObject);
begin
   if not(CheckNull(dblCostCenterSend.Text) ) then
   begin
      quDeployLoc.Close;
      quDeployLoc.Parameters[0].Value := 0;
      quDeployLoc.Parameters[1].Value := 0;
      quDeployLoc.Open;
//????      dblLocCodeSend.KeyValue := -1 ;
   end
   else
   if (CheckNull(dblCostCenterSend.Text) ) then
   begin
      quDeployLoc.Close;
      quDeployLoc.Parameters[0].Value := OrganizCode;
      quDeployLoc.Parameters[1].Value := quCostCenterUt_Code.AsInteger;
      quDeployLoc.Open;
//????      dblLocCodeSend.KeyValue := -1 ;
   end
end;
//****************************************************************************


procedure TBillmovableCfm.dblCostCenterEnter(Sender: TObject);
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
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := -1 ;
   end;
end;

procedure TBillmovableCfm.dblLocCodeEnter(Sender: TObject);
begin
   if not(CheckNull(dblCostCenter.Text) ) then
   begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := 0;
      DabData.quDeployLoc.Parameters[1].Value := 0;
      DabData.quDeployLoc.Open;
//????      dblLocCode.KeyValue := -1 ;
   end
   else
   if (CheckNull(dblCostCenter.Text) ) then
   begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
//????      dblLocCode.KeyValue := -1 ;
   end
end;




Function TBillmovableCfm.chkExist : boolean;
var i:integer;
begin
     quItemsRequest  .close;
     quItemsRequest .Parameters[0].Value := dblReqNo .KeyValue ;
     quItemsRequest .open;

     for i:=1 to quitemsRequest.recordcount do
        begin
           quNumberofMov.Close;
           quNumberofMov.Parameters[0].Value := dblUnitSend.KeyValue;
           quNumberofMov.Parameters[1].Value := dblCostCenterSend.KeyValue ;
//????           quNumberofMov.Parameters[2].Value := dblLocCodeSend.KeyValue ;
           quNumberofMov.Parameters[3].Value := quItemsRequestItem_Code.AsString ;
           quNumberofMov.Open ;

           if quNumberofMovItemCount.AsInteger >= quItemsRequestRecieve_Amount.AsInteger  then chkExist:=true
             else begin chkExist:= false; exit; end;
           quItemsRequest.Next;
        end;
end;

procedure TBillmovableCfm.Button1Click(Sender: TObject);
begin
     Str1 := UUserMsg.SM_Ebtal;
     Str2 := UUserMsg.SM_EbtalText;
     ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes = mrOk then
       begin
         Mde := 0;
         BMark := quBillList.GetBookmark();
         quMasterUp.Close;
         try
           DabData.ADOC.BeginTrans;

           quMasterUp.parameters[0].value := 1;
           quMasterUp.parameters[1].value := StrToInt(edBillNo.Text);
           quMasterUp.parameters[2].value := 1;

           quMasterUp.Prepared := True;
           quMasterUp.ExecSql;

           DabData.ADOC.CommitTrans;
           except
           DabData.ADOC.RollbackTrans;
         end;

         if (quMasterUp.RowsAffected <>1 ) then
         begin
            Str1 := '«Œÿ‹‹«—';
            Str2 := UUserMsg.SM_Pub_RetryMsg;
            ShowMessage2(Str2);
         end;
         quBillList.close;
         quBillList.Open;

    //   AssignGoodsToBill();

         quBillList.GotoBookmark(BMark);
         quBillList.FreeBookmark(BMark);
         end;
         mde:=0 ;

end;

procedure TBillmovableCfm.meCfmTellerExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkCfmTeller) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
//    meCfmTeller.Text := '  /  /  ';
//    meCfmTeller .SetFocus;
   end

end;

procedure TBillmovableCfm.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 4 then
  begin
     quBillList.Close;
     quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
     quBillList.Parameters[1].Value := 1;
     quBillList.open;
  end
  else
   begin
     quBillList.Close;
     quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
     quBillList.Parameters[1].Value := NULL;
     quBillList.open;
   end;

   if quBillList.RecordCount = 0 then
   begin
     quReqItems.Close;
     quReqItems.Parameters[0].Value := NULL;
     quReqItems.Open;
     ClearMasterFields();
   end;
end;

end.







