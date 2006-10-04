unit fmBillReturnCfm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,  RSqllookup, RSqlEdit,
  RSqlMaskEdit, SetForm, RadForms,Variants;
type
  TBillReturnCfm = class(TRadForm)
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
    quSelectMovGoodsGoods_Code: TStringField;
    quSelectMovGoodsLabel: TIntegerField;
    dsSelectMovGoods: TDataSource;
    quUpdateRequest: TADOQuery;
    quSelectItemFromOtherItemCount: TIntegerField;
    Panel13: TPanel;
    grBill: TDBGrid;
    Panel15: TPanel;
    cbFilterState: TComboBox;
    Label2: TLabel;
    Label10: TLabel;
    Panel16: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
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
    quReqItemsbill_no: TIntegerField;
    quReqItemsbill_type: TSmallintField;
    quReqItemsGoods_Code: TStringField;
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
    quReqItemsStateName: TStringField;
    quOtherItemitem_code: TStringField;
    quOtherItemitem_name: TStringField;
    quOtherItemclass_code: TSmallintField;
    quOtherItemitem_desc: TStringField;
    quOtherItemitem_unit: TSmallintField;
    quOtherItemItem_Inventory: TIntegerField;
    quOtherItemOrder_Point: TSmallintField;
    quOtherItemInventory_Limit: TSmallintField;
    quOtherItemlabel: TIntegerField;
    quOtherItemGoods_Code: TStringField;
    quOtherItemGoodStr: TStringField;
    quOtherItemCode: TSmallintField;
    quOtherItemUnit_Item_Desc: TStringField;
    dblUnit: TRSqlDbLookup;
    dblEmpNo: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblCreator: TRSqlDbLookup;
    dblConfirmer: TRSqlDbLookup;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    edReason: TRSqlEdit;
    edBillNo: TRSqlEdit;
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
    procedure meCreateChange(Sender: TObject);
    procedure meCreateExit(Sender: TObject);
    procedure dblGoodsCloseUp(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure cbReqTypeChange(Sender: TObject);
    procedure edDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dblEmpNoCloseUp(Sender: TObject);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblCreatorCloseUp(Sender: TObject);
    procedure dblGoodsEnter(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblConfirmerClick(Sender: TObject);
    procedure meConfirmExit(Sender: TObject);
    procedure dblConfirmerEnter(Sender: TObject);
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
     procedure CheckFieldsSetMasterokButtons;
//-----------------------------------------------------------------------
     procedure UpdateMaster;
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
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  BillReturnCfm: TBillReturnCfm;


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
procedure TBillReturnCfm.DoScroll(var mes:TMessage);
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
procedure TBillReturnCfm.DoNew(var mes: TMessage);
begin
end;
//****************************************************************************
procedure TBillReturnCfm.DoEdit(var mes :TMessage);
begin
   grBill.TabStop:= false;
   grItems.TabStop:= false;
   cbFilterState.TabStop  := False;

           mde := 2;
           if (quBillListState.AsInteger >2)or (quBillListState.AsInteger=1) then
           begin
              Str1 := '«Œÿ«—';
              Str2 := ' ‰Â« ÕÊ«·Â Â«Ì  ‰ŸÌ„ ‘œÂ ﬁ«»·  €ÌÌ— „Ì »«‘‰œ';
              ShowMessage2(Str2);
              mde:=0 ;exit;
           end;
           if quReqItems.RecordCount =0 then
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
           dblEmpNo.Enabled := false;
           dblConfirmer.KeyValue:=DabData.emp_no;
           meConfirm .Text :=Dabdata.disp_date ;

end;
//*****************************************************************************
procedure TBillReturnCfm.DoDelete(var mes: TMessage);
begin
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TBillReturnCfm.SetDefaultMode(i: integer);
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

         paOkCancel.Visible   := False;

         grItems.TabStop    := True;
         ActiveControl      := grItems;
         ActiveGrid         := 2;
      end;
    end;
end;
//****************************************************************************
procedure TBillReturnCfm.CheckEscEnter(sender: TObject; Skey: char);
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
procedure TBillReturnCfm.SetGridColor(i: integer);
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

//*****************************************************************************
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//***************************************************************************
procedure TBillReturnCfm.UpdateMaster();
var I: integer;
begin
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblConfirmer .KeyValue;
      quMasterUpdate.parameters[1].value := meConfirm.Text;
      quMasterUpdate.parameters[2].value := ConfTag;
      quMasterUpdate.parameters[3].value := StrToInt(edBillNo.Text);
      quMasterUpdate.parameters[4].value := 2;

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

    if confTag = 2 then
    begin
      quReqItems.First;
      for i := 1 to quReqItems.RecordCount do
      begin
         DabData.UpdateMovGoods(quReqItemsgoods_code.AsString ,6);
         quReqItems.Next;
      end;
    end;

   cbFilterState.ItemIndex := confTag ;

   quBillList.Close;
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Open;

   quBillList.Locate('Bill_no',edBillNo.Text,[locaseinsensitive]);
end;
//****************************************************************************
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//****************************************************************************
procedure TBillReturnCfm.CheckFieldsSetMasterokButtons;
begin
   btOk.Enabled     := False;
   btCancel.Enabled := False;
   if
       ( CheckNull(dblConfirmer.Text))           and
         ChkConfirm                              then

    begin
       btOk.Enabled     := True;
       btCancel.Enabled := True;
    end;
end;
//**************************************************************************
procedure TBillReturnCfm.ClearMasterFields;
begin
      edBillNo.Clear ;
      edReason.Clear ;

      //meCreate.Clear ;
      //meConfirm.Clear ;

      dblEmpNo.KeyValue      := -1;
      dblUnit.KeyValue       := -1;
      dblCostCenter.KeyValue := -1;

      //dblCreator.KeyValue     := '';
      //dblConfirmer.KeyValue  := '';
end;
//**************************************************************************
procedure TBillReturnCfm.SetMasterFields();
begin
      edBillNo.Text          :=  quBillListBill_no.AsString;
      edReason .Text         :=  quBillListReason.AsString;

      meCreate.Text          :=  quBillListCreate_Date.AsString;
      meConfirm.Text         :=  quBillListconfirm_date.AsString;

      dblEmpNo.KeyValue      :=  quBillListdelivery_man.AsString;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue      :=  quBillListUnit_code.AsInteger;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := quBillListCost_code.AsInteger; ;

      dblCreator.KeyValue    :=  quBillListCreator.AsString;
      dblConfirmer.KeyValue  :=  quBillListconfirmer.AsString;
end;
//*****************************************************************************
procedure TBillReturnCfm.DisableMasterFields;
begin
      edBillNo.Enabled       := False;
      edReason.Enabled       := False;

      meCreate.Enabled       := False;
      meConfirm.Enabled      := False;

      dblEmpNo.Enabled      := False;
      dblUnit.Enabled       := False;
      dblCostCenter.Enabled := False;
      dblCreator.Enabled    := False;
      dblConfirmer.Enabled  := False;
end;
//*****************************************************************************
procedure TBillReturnCfm.EnableMasterFields;
begin
      qudblEmp.Close;
      qudblEmp.Open;

      //dblCreator.KeyValue    := '';
      //dblConfirmer.KeyValue  := '';
//???      dblTeller.KeyValue     := '';

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue := -1 ;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := -1 ;

      quReqList.Close;
      quReqList.Parameters[0].Value :=3;
      if mde=2 then quReqList.Parameters[1].Value :=quBillListitem_req_no.AsInteger
      else quReqList.Parameters[1].Value :=NULL;
      quReqList.Open;
      dblEmpNo.KeyValue   := -1 ;

      //dblConfirmer.Enabled    := True;
      //meConfirm.Enabled      := True;

//      meConfirm .Color      := clActiveFieldColor;

//      dblConfirmer.Color    := clActiveFieldColor;

      paOkCancel.visible   := True;

     ChkConfirm    := True;
     ChkEmpConfirm := True;

     ChkCreate    := True;
     ChkEmpCreate := True;

     meConfirm.Text   := Dabdata.disp_date;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
//**************************************************************************
//**************************************************************************
//*****************************************************************************
procedure TBillReturnCfm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TBillReturnCfm.FormActivate(Sender: TObject);
var mes:TMessage;
begin                 
   mes.Msg:=FORM_STATE;
   mes.Lparam := 74;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TBillReturnCfm.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TBillReturnCfm.FormShow(Sender: TObject);
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
//???   DabData.quCostCenter.Parameters[1].Value := quBillListrec_code.AsInteger;
   DabData.quCostCenter.Open;

   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
   DabData.quDeployLoc.Parameters[1].Value := quBillListrec_unit_code.AsInteger ;
   DabData.quDeployLoc.Open;

   quReqList.Close;
   quReqList.Parameters[0].Value := 5;
//      if mde=2 then quReqList.Parameters[1].Value :=quBillListitem_req_no.AsInteger
     { else} quReqList.Parameters[1].Value :=NULL;

   quReqList.Open;

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
procedure TBillReturnCfm.meRepayStartChange(Sender: TObject);
begin


end;
//******************************************************************************
procedure TBillReturnCfm.btCancelClick(Sender: TObject);
begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
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
procedure TBillReturnCfm.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TBillReturnCfm.grItemsEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;

   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TBillReturnCfm.quBillListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TBillReturnCfm.grBillEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);


   paOkCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
//****************************************************************************
procedure TBillReturnCfm.quReqItemsAfterScroll(DataSet: TDataSet);
begin

end;
//****************************************************************************
procedure TBillReturnCfm.btOkClick(Sender: TObject);
begin
      if ActiveGrid =1 then
      begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
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
      end;
      SetDefaultMode(1);
end;
//****************************************************************************
procedure TBillReturnCfm.meCreateChange(Sender: TObject);
begin
end;
//****************************************************************************
procedure TBillReturnCfm.meCreateExit(Sender: TObject);
begin
end;
//****************************************************************************
procedure TBillReturnCfm.dblGoodsCloseUp(Sender: TObject);
begin

end;
//****************************************************************************
procedure TBillReturnCfm.dblItemCloseUp(Sender: TObject);
begin
end;
//****************************************************************************
procedure TBillReturnCfm.cbReqTypeChange(Sender: TObject);
begin

end;
//****************************************************************************
procedure TBillReturnCfm.edDescrKeyPress(Sender: TObject; var Key: Char);
begin
  key := DabData.checkkey(Key);
end;
//****************************************************************************
procedure TBillReturnCfm.dblEmpNoCloseUp(Sender: TObject);
begin
//   edReciver.Text := quReqListFLName.AsString;
   dblUnit.KeyValue := quReqListOrg_Unit_Code.AsInteger;

   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := 0;
   DabData.quCostCenter.Parameters[1].Value := 0;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := -1 ;

   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value := 0;
   DabData.quDeployLoc.Parameters[1].Value := 0;
   DabData.quDeployLoc.Open;
//???   dblLocCode.KeyValue := -1 ;

   CheckFieldsSetMasterokButtons();
end;
//****************************************************************************
procedure TBillReturnCfm.dblUnitCloseUp(Sender: TObject);
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
//???   dblLocCode.KeyValue := -1 ;

   CheckFieldsSetMasterokButtons();
end;
//****************************************************************************
procedure TBillReturnCfm.dblCreatorCloseUp(Sender: TObject);
begin
   CheckFieldsSetMasterokButtons();
end;
//****************************************************************************
procedure TBillReturnCfm.dblGoodsEnter(Sender: TObject);
begin
   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := TempItemCode ;
   if mde = 2 then  quOtherItem.Parameters[1].Value := TempGoodsCode
              else  quOtherItem.Parameters[1].Value := '';
   quOtherItem.Open ;
end;
//****************************************************************************
procedure TBillReturnCfm.dblCostCenterEnter(Sender: TObject);
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
//****************************************************************************
procedure TBillReturnCfm.dblConfirmerClick(Sender: TObject);
begin
  CheckFieldsSetMasterokButtons();
end;


procedure TBillReturnCfm.meConfirmExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpConfirm ) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      meConfirm .Text := '  /  /  ';
      meConfirm.SetFocus;
   end

end;

procedure TBillReturnCfm.dblConfirmerEnter(Sender: TObject);
begin
   CheckFieldsSetMasterOkButtons();
end;

procedure TBillReturnCfm.cbFilterStateChange(Sender: TObject);
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
