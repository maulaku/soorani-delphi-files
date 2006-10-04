unit fmReqver;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate, Fard, SmoothShow,RadForms,Variants;
type
  TItemVerify = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quReqList: TADOQuery;
    dsVisitNo: TDataSource;
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    grItems: TDBGrid;
    PaDetailOper: TPanel;
    edUnit: TEdit;
    edReqVal: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    edReqNo: TEdit;
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
    Label7: TLabel;
    meCreate: TMaskEdit;
    meConfirm: TMaskEdit;
    Label10: TLabel;
    Label12: TLabel;
    dblCreate: TDBLookupComboBox;
    dblConfirm: TDBLookupComboBox;
    quMasterUpdate: TADOQuery;
    quDetailDelete: TADOQuery;
    cbReqType: TComboBox;
    dblOrgUnit: TDBLookupComboBox;
    dblClass: TDBLookupComboBox;
    dblItem: TDBLookupComboBox;
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
    quReqListReq_No: TIntegerField;
    quReqListCreator: TStringField;
    quReqListCreate_Date: TStringField;
    quReqListOrg_Code: TSmallintField;
    quReqListOrg_Unit_Code: TSmallintField;
    quReqListConfirmer: TStringField;
    quReqListConfirm_Date: TStringField;
    quReqListVerifier: TStringField;
    quReqListVerify_Date: TStringField;
    dsOtherItem: TDataSource;
    quOtherItem: TADOQuery;
    quSelectItemFromOther: TADOQuery;
    quSelectItemFromOtherItemCount: TIntegerField;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    edcfmVal: TEdit;
    edRecieveVal: TEdit;
    paMasterOper: TPanel;
    btOK: TButton;
    btCancel: TButton;
    Label2: TLabel;
    dblVerify: TDBLookupComboBox;
    Label8: TLabel;
    meVerify: TMaskEdit;
    quCheck: TADOQuery;
    quCheckNCount: TIntegerField;
    paState: TPanel;
    Label11: TLabel;
    chkAccept: TCheckBox;
    chkFail: TCheckBox;
    Label9: TLabel;
    edState: TEdit;
    quReqListState: TSmallintField;
    quReqListStateName: TStringField;
    Label13: TLabel;
    MeReqDate: TMaskEdit;
    Label14: TLabel;
    quGetDefference: TADOQuery;
    quGetDefferenceDifferent: TIntegerField;
    quGetDefferenceLastAmount: TIntegerField;
    quGetDefferenceExistMoveGoods: TIntegerField;
    Panel24: TPanel;
    Panel25: TPanel;
    grRequest: TDBGrid;
    Panel26: TPanel;
    Panel27: TPanel;
    cbFilterState: TComboBox;
    quOtherItemitem_code: TStringField;
    quOtherItemitem_name: TStringField;
    quOtherItemclass_code: TSmallintField;
    quOtherItemitem_desc: TStringField;
    quOtherItemitem_unit: TSmallintField;
    quOtherItemItem_Inventory: TIntegerField;
    quOtherItemOrder_Point: TSmallintField;
    quOtherItemInventory_Limit: TSmallintField;
    quOtherItemCode: TSmallintField;
    quOtherItemUnit_Item_Desc: TStringField;
    quReqItemsReq_No: TIntegerField;
    quReqItemsItem_Code: TStringField;
    quReqItemsReq_Amount: TIntegerField;
    quReqItemsConf_Amount: TIntegerField;
    quReqItemsRecieve_Amount: TIntegerField;
    quReqItemsreq_type: TSmallintField;
    quReqItemsr_state: TSmallintField;
    quReqItemsitem_type: TSmallintField;
    quReqItemsReq_number: TStringField;
    quReqItemsItem_Name: TStringField;
    quReqItemsClass_Name: TStringField;
    quReqItemsItem_Unit: TSmallintField;
    quReqItemsCode: TSmallintField;
    quReqItemsUnit_Item_Desc: TStringField;
    quReqItemsTypeName: TStringField;
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
    procedure cbDebtTypeChange(Sender: TObject);
    procedure quReqListAfterScroll(DataSet: TDataSet);
//    procedure btMasterOKClick(Sender: TObject);
    procedure grRequestEnter(Sender: TObject);
    procedure dblDebtEmpCloseUp(Sender: TObject);
    procedure meReqDateChange(Sender: TObject);
    procedure meReqDateExit(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure btMasOKClick(Sender: TObject);
    procedure dblOrgUnitCloseUp(Sender: TObject);
    procedure meCreateChange(Sender: TObject);
    procedure meConfirmChange(Sender: TObject);
    procedure meVerifyChange(Sender: TObject);
    procedure meCreateExit(Sender: TObject);
    procedure meConfirmExit(Sender: TObject);
    procedure meVerifyExit(Sender: TObject);
    procedure dblClassCloseUp(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure edReqValChange(Sender: TObject);
    procedure cbReqTypeChange(Sender: TObject);
    procedure edReqValKeyPress(Sender: TObject; var Key: Char);
    procedure edcfmValKeyPress(Sender: TObject; var Key: Char);
    procedure edRecieveValKeyPress(Sender: TObject; var Key: Char);
    procedure edcfmValChange(Sender: TObject);
    procedure edRecieveValChange(Sender: TObject);
    procedure dblConfirmCloseUp(Sender: TObject);
    procedure edRecieveValExit(Sender: TObject);
    procedure edcfmValExit(Sender: TObject);
    procedure chkAcceptClick(Sender: TObject);
    procedure chkFailClick(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
     procedure CheckEscEnter(sender:TObject;Skey:char);
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
     function  CheckRecieveAmount( InputAmount : Integer;RecieveItemCode : string):Boolean;
//-----------------------------------------------------------------------
//--------------------- Master Procedures -------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
     procedure CheckFieldsSetMasterokButtons;
//-----------------------------------------------------------------------
     procedure InsertMaster;
     procedure UpdateMaster;
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
     procedure CheckFieldsSetDetailokButtons;
     procedure SetDetailFields;
//-----------------------------------------------------------------------
     procedure UpdateDetail;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
   function  checkallBeValid():Boolean;
//-----------------------------------------------------------------------
   procedure CheckVerify;
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

  ItemVerify: TItemVerify;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : String;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;
  FReqDate  , FCreateDate, FConfirmDate, FVerifyDate: TFar_date;

  ChkReqDate   , ChkEmpReqDate     : Boolean;
  ChkCreate    , ChkEmpCreate      : Boolean;
  ChkConfirm   , ChkEmpConfirm     : Boolean;
  ChkVerify    , ChkEmpVerify      : Boolean;

  AllDisabled: Boolean;

//  DeState,InstState : integer;
  TempItemCode : string[8];
  ChkResult    : Boolean;
  IsClear      : Boolean;
  ActiveGrid   : Integer;
  BMark        : TBookmark;
  tempor : integer;
implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon;

{$R *.DFM}
//****************************************************************************
procedure TItemVerify.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quReqList.RecordCount <> 0 ) then
   begin
      quReqItems.Close;
      quReqItems.Parameters[0].Value := quReqListReq_No.AsInteger;
      quReqItems.Open;
      DisableMasterFields();
      SetMasterFields();
   end;
end;
//*****************************************************************************
procedure TItemVerify.DoNew(var mes: TMessage);
begin
   mde := 1;
   case ActiveGrid of
    1 : begin
           EnableMasterFields();
           ClearMasterFields();

           quReqList.Close;
           quReqList.Open;
           quReqList.Last;

           if      quReqList.RecordCount = 0 then edReqNo.Text := '81000000'
              else edReqNo.Text := IntToStr(quReqListReq_No.AsInteger + 1) ;
           meReqDate.Text  := fDate.disp_date ;
           meCreate.Text := fDate.disp_date ;

           //dblVerify.SetFocus;
        end;
    2 : begin
           if Trim(edReqNo.Text)='' then exit;
           quReqItems.Close;
           quReqItems.Open;

           EnableDetailFields();
           ClearDetailFields();

           dblClass.SetFocus;
        end
    end;
   dblVerify.KeyValue:=DabData.emp_no;
   meVerify.Text:=fDate.disp_date;
end;
//****************************************************************************
procedure TItemVerify.DoEdit(var mes :TMessage);
begin
   grRequest .TabStop := false;
   grItems   .TabStop := false;

   mde := 2;
   case ActiveGrid of
    1 : begin
          if (not (checkallBeValid))and (quReqListVerifier.AsString <>'')  then
          begin
             Str1:=UUserMsg.SM_fmReqver_Titles;
             Str2 := UUserMsg.SM_fmReqver_Values;
             ShowMessage2(Str2);
             SetDefaultMode (1);
             exit;
          end;
          if(quReqListState.AsInteger = 2) then
            begin
                 Str1:=UUserMsg.SM_fmReqver_Titles;
                 Str2 := SM_fmReqCfm_verify_cfm;
                 ShowMessage2(Str2);
                 SetDefaultMode (1);
                 exit;
            end;
          if(quReqListState.AsInteger = 0) then
            begin
                 Str1:=UUserMsg.SM_fmReqver_Titles;
                 Str2 := SM_fmReqCfm_noncfm;
                 ShowMessage2(Str2);
                 SetDefaultMode (1);
                 exit;
            end;
           if(quReqListState.AsInteger > 4) then
            begin
                 Str1:=UUserMsg.SM_fmReqver_Titles;
                 Str2 := SM_fmReqCfm_noncfm;
                 ShowMessage2(Str2);
                 SetDefaultMode (1);
                 exit;
            end;


           if (quReqListVerifier.AsString <>'')and (checkallBeValid)  then
           begin
              PaState.Visible := true;
              panel1.height:= 144;//panel1.height+pastate.height;
           end;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           if (quReqListVerifier.asstring <>'')and ( checkallBeValid )  then
                begin
                   pastate.visible := true;
                   Panel1.Height   := 177;
                end;
           //dblVerify.SetFocus;
        end;
    2 : begin
           if quReqList.RecordCount <> 0 then
           { begin
             quReqItems.Close;  // set values to Grid
             quReqItems.Parameters[0].Value := quReqListReq_No.AsInteger;
             quReqItems.Open;
            end}
           else
            exit;
           if quReqItems.RecordCount = 0 then exit;
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
//           btOk.Enabled := True;
         //  dblClass.SetFocus;
         edcfmVal.setfocus;
        end;
    end;
    dblVerify.KeyValue:=DabData.emp_no;
    meVerify.Text:=fDate.disp_date;
end;
//*****************************************************************************
procedure TItemVerify.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quReqList.Close;
      quReqList.Open;
      quReqList.Last;

      quMasterInsert.parameters[0].value := edReqNo.Text;
      quMasterInsert.parameters[1].value := dblCreate.KeyValue;
      quMasterInsert.parameters[2].value := meCreate.Text;
      quMasterInsert.parameters[3].value := DabData.quOrgUnitUt_Mast_Code.AsInteger; // ??
      quMasterInsert.parameters[4].value := dblOrgUnit.KeyValue;
      quMasterInsert.parameters[5].value := dblConfirm.KeyValue;
      quMasterInsert.parameters[6].value := meConfirm.Text;
      quMasterInsert.parameters[7].value := NULL;
      quMasterInsert.parameters[8].value := NULL;

      quMasterInsert.Prepared := True;
      quMasterInsert.ExecSql;

      DabData.ADOC.CommitTrans;
    end;
    except
       DabData.ADOC.RollbackTrans;
    end;  //exception..
    if (quMasterInsert.RowsAffected <> 1) then
    begin
       Str1:=UUserMsg.SM_fmReqver_Titles;
       Str2 := UUserMsg.SM_Pub_RetryMsg;
       ShowMessage2(Str2);
    end;
    quReqList.close;
    quReqList.Open;
    quReqList.Last;

    Mde := 0;
    SetDefaultMode(1);
end;
//***************************************************************************
procedure TItemVerify.UpdateMaster();
begin
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblCreate.KeyValue;
      quMasterUpdate.parameters[1].value := meCreate.Text;
      quMasterUpdate.parameters[2].value := OrganizCode;
      quMasterUpdate.parameters[3].value := dblOrgUnit.KeyValue;
      quMasterUpdate.parameters[4].value := dblConfirm.KeyValue;
      quMasterUpdate.parameters[5].value := meConfirm.Text;
      quMasterUpdate.parameters[6].value := dblVerify.keyvalue  ;
      //if activegrid=2 then
      quMasterUpdate.parameters[7].value := meVerify.Text;
      ///else quMasterUpdate.parameters[7].value := qureqListverify_date.asstring;
      if chkAccept.Checked  then quMasterUpdate .Parameters[8].value :=3
      else
      if chkFail.Checked     then quMasterUpdate .Parameters[8].value :=4
      else
         quMasterUpdate .Parameters[8].value :=quReqListState.AsInteger ;

      quMasterUpdate.parameters[9].value := edReqNo.Text;

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
      if chkAccept.Checked  then  cbFilterState.ItemIndex:=3
      else
      if chkFail.Checked     then cbFilterState.ItemIndex:=4
      else
         cbFilterState.ItemIndex := 1 ;

   quReqList.close;
   quReqList.Parameters[0].Value := cbFilterState.ItemIndex;
   quReqList.Parameters[1].Value := NULL;
   quReqList.Open;

   quReqList.Locate ('Req_no',edReqNo.Text,[locaseinsensitive]);

end;
//***************************************************************************
{procedure TItemReq.UpdateDetail;
var Str1,Str2 : String;
    BMark : TBookMark;
begin
   quDetailUpdate.Close;
   Bmark := quReqItems.GetBookmark;

   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := meRepayStart.Text;
      quDetailUpdate.parameters[1].value := '1';
      quDetailUpdate.parameters[2].value := StrToFloat(edRemain.Text);
      quDetailUpdate.parameters[3].value := edReqNo.Text;
      quDetailUpdate.parameters[4].value := StrToInt(edInstNum.Text);

      quDetailUpdate.Prepared := True;
      quDetailUpdate.ExecSql;
      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;
   if (quDetailUpdate.RowsAffected <> 1) then
   begin                                   {//?
      Str1 := UUserMsg.SM_Pub_UpdateMode;
      Str2 := UUserMsg.SM_Pub_RetryMsg;
      ShowMessage2(Str2);
   end;

   mde := 0;

   quDebtRepay.close;
   quDebtRepay.Open;

   CheckAllInstRepayed;

   quDebtRepay.GotoBookmark(Bmark);
   quDebtRepay.FreeBookmark(Bmark);

end;    }
//****************************************************************************
procedure TItemVerify.SetDefaultMode(i: integer);
begin
   grRequest .TabStop := true;
   grItems   .TabStop := true;
   mde:=0;
   case ActiveGrid of
      1 :
      begin
         paMasterOper.Visible := False;
         paState.Visible      := False;
         PaDetailOper.Visible := False;

         grRequest.TabStop  := True;
         ActiveControl      := grRequest;
         ActiveGrid         := 1;
      end;
      2 :
      begin
         paMasterOper.Visible := False;
         paState.Visible      := False;
         PaDetailOper.Visible := False;

         grItems.TabStop    := True;
         ActiveControl      := grItems;
         ActiveGrid         := 2;
      end;
    end;
end;
//****************************************************************************
procedure TItemVerify.CheckEscEnter(sender: TObject; Skey: char);
const
   CodeEnter = #13;
   CodeESC   = #27;
begin
   if  ((SKey = CodeEnter) or (SKey = CodeESC)) then
   begin
      if SKey = CodeEnter then
      begin
         if btOK.Enabled = True then begin
                                       btOKClick(Sender);
                                     end;
      end
     else if SKey = CodeESC then  btCancelClick(Sender);
   end;  // Main If
end;
//------------------------ Master  Region ------------------------------------
//****************************************************************************
procedure TItemVerify.CheckFieldsSetMasterokButtons;
begin
   btOK.Enabled := False;
   if  CheckNull(Trim(dblVerify.Text)) and ( ChkVerify ) then
        btOK.Enabled := True;

end;
//**************************************************************************
procedure TItemVerify.ClearMasterFields;
begin
      edReqNo.Clear ;
//      edCostCenter.Clear;
      //meCreate.Clear ;
      //meConfirm.Clear;
      //meCreate.Clear ;

      dblOrgUnit.KeyValue   := -1;
      //dblCreate.KeyValue    := '';
      //dblConfirm.KeyValue   := '';
      //dblVerify.KeyValue    := '';

      
end;
//**************************************************************************
procedure TItemVerify.SetMasterFields();
begin

    if quReqList.RecordCount>0 then
     begin
      edReqNo.Text         :=  quReqListReq_No.AsString;

      meReqDate.Text       :=  quReqListCreate_Date.AsString;
      meCreate.Text        :=  quReqListCreate_Date.AsString;
      meConfirm.Text       :=  quReqListConfirm_Date.AsString;
      meVerify.Text        :=  quReqListVerify_Date.AsString;

      dblOrgUnit.KeyValue  :=  quReqListOrg_Unit_Code.AsInteger;
      dblCreate.KeyValue   :=  quReqListCreator.AsString;
      dblConfirm.KeyValue  :=  quReqListConfirmer.AsString;
      dblVerify.KeyValue   :=  quReqListVerifier.AsString;
      edState.Text         :=  quReqListStateName.AsString;
     end;
      case quReqListState.AsInteger of
       3 : begin chkAccept.Checked := True ; chkFail.Checked := False ; end;
       4 : begin chkAccept.Checked := False; chkFail.Checked := True ; end;
       else begin chkAccept.Checked := False ; chkFail.Checked := False ; end;
      end; // case
      CheckFieldsSetMasterokButtons;
end;
//*****************************************************************************
procedure TItemVerify.DisableMasterFields;
begin
      edReqNo.Enabled       := False;
//      edCostCenter.Enabled  := False;
//      meReqDate.Enabled     := False;
      meCreate.Enabled      := False;
      meConfirm.Enabled     := False;
      meVerify.Enabled      := False;
      dblOrgUnit.Enabled    := False;
      dblCreate.Enabled     := False;
      dblConfirm.Enabled    := False;
      dblVerify.Enabled     := False;


      edReqNo.Color         := clDeactiveFieldColor;
//      edCostCenter.Color    := clDeactiveFieldColor;
      meReqDate.Color       := clDeactiveFieldColor;
      //meConfirm.Color       := clDeactiveFieldColor;
      //meCreate.Color        := clDeactiveFieldColor;
      //meVerify.Color        := clDeactiveFieldColor;
      dblOrgUnit.Color      := clDeactiveFieldColor;
      //dblCreate.Color       := clDeactiveFieldColor;
      //dblConfirm.Color      := clDeactiveFieldColor;
      //dblVerify.Color       := clDeactiveFieldColor;
end;
//*****************************************************************************
procedure TItemVerify.EnableMasterFields;
begin

      qudblEmp.Close;
      qudblEmp.Open;

      //dblCreate.KeyValue   := '';//-1 ;
      //dblConfirm.KeyValue  := '' ;
      //dblVerify.KeyValue   := '' ;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Open;

      dblOrgUnit.KeyValue := -1 ;

      dblCreate.Enabled    := false;
      dblConfirm.Enabled   := false;
      //dblVerify.Enabled    := True;
      dblOrgUnit.Enabled   := false;

      meCreate.Enabled     := false;
      meConfirm.Enabled    := false;
      //meVerify.Enabled     := True;
//      meReqDate.Enabled    := false;

    //  meReqDate.Color      := clActiveFieldColor;
    //  meCreate.Color       := clActiveFieldColor;
    //  meConfirm.Color      := clActiveFieldColor;
      //meVerify.Color       := clActiveFieldColor;

      //dblCreate.Color      := clActiveFieldColor;
      //dblOrgUnit.Color     := clActiveFieldColor;
      //dblConfirm.Color     := clDeActiveFieldColor ;
      //dblVerify.Color      := clActiveFieldColor;

      paMasterOper.visible  := True;
      paState.Visible       := false;
      panel1.height:= 146;//panel1.height+pastate.height;
      PaDetailOper.Visible  := False;

      ChkReqDate    := True;
      ChkCreate     := True;

      ChkEmpReqDate := True;
      ChkEmpCreate  := True;

      ChkConfirm    := True;
      ChkEmpConfirm := True;

      ChkVerify     := True;
      ChkEmpVerify  := True;
      meVerify.Text := fDate.disp_date;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
procedure TItemVerify.ClearDetailFields;
begin
   edReqVal.Clear ;
   edCfmVal.Clear ;
   edRecieveVal.Clear ;
   edUnit.Clear ;
   cbReqType.ItemIndex   := -1 ;

   dblClass.KeyValue     := -1 ;
   dblItem.KeyValue      := -1 ;
end;//

//**************************************************************************
procedure TItemVerify.SetDetailFields();
begin
   if quReqItems.RecordCount <> 0 then
   begin
      edReqVal.Text         :=  quReqItemsReq_Amount.AsString;
      edCfmVal.Text         :=  quReqItemsConf_Amount.AsString;
      edRecieveVal .Text    :=  quReqItemsRecieve_Amount.AsString;
      edUnit.Text           :=  quReqItemsUnit_Item_Desc.AsString;
      cbReqType.ItemIndex   :=  quReqItemsReq_Type.AsInteger ;
      dblClass.KeyValue     :=  StrToInt(copy(quReqItemsItem_Code.AsString,1,2)) ;
      dblItem.KeyValue      :=  quReqItemsItem_Code.AsString ;
      TempItemCode          :=  quReqItemsItem_Code.AsString ;
   end;
end;
//*****************************************************************************
procedure TItemVerify.CheckFieldsSetDetailokButtons;
begin
   btOK.Enabled := False;
   if  ( CheckNull( edcfmVal .Text)   and
         CheckNull( edRecieveVal .Text )) then
          btOK.Enabled := True;
end;
//*****************************************************************************
procedure TItemVerify.EnableDetailFields;
begin
   DabData.quclass.Close;
   DabData.quclass.Open ;
   //dblClass.KeyValue := -1 ;

   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := DabData.quclassclass_code.AsInteger ;
   if mde = 2 then  quOtherItem.Parameters[1].Value := quReqItemsItem_Code.AsString
              else  quOtherItem.Parameters[1].Value := '';
   quOtherItem.Parameters[2].Value := quReqItemsReq_No.AsInteger ;
   quOtherItem.Open ;
 // dblItem.KeyValue := -1 ;

//   cbReqType.Enabled     := True;
  // edReqVal.Enabled      := True;
   edCfmVal.Enabled      := True;
   edRecieveVal.Enabled  := True;
   //My
     dblClass .Enabled :=false;
     dblItem  .Enabled :=false;
     cbReqType  .Enabled :=false;


   edReqVal.Color        := clDeActiveFieldColor;
   edCfmVal.Color        := clActiveFieldColor;
   edRecieveVal.Color    := clActiveFieldColor;
   edUnit.Color         := clDeActiveFieldColor;
   dblClass.Color        := clDeActiveFieldColor;
   dblItem.Color         := clDeActiveFieldColor;
   cbReqType.Color       := clDeActiveFieldColor;

   paMasterOper.visible  := true;
   PaDetailOper.Visible  := True;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TItemVerify.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TItemVerify.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 39 ;
   Application.MainForm.Dispatch(mes);

   Mde :=0;
   SetDefaultMode(1);

end;
//*************************************************************************
procedure TItemVerify.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TItemVerify.FormShow(Sender: TObject);
var l,t:integer;
begin
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   mde:=0;
   cbFilterState.ItemIndex := 1 ;

   quReqList.Close;  // set values to Grid
   quReqList.Parameters[0].Value := cbFilterState.ItemIndex;
   quReqList.Parameters[1].Value := NULL;
   quReqList.Open;


   if quReqList.RecordCount <> 0 then
   begin
      quReqItems.Close;  // set values to Grid
      quReqItems.Parameters[0].Value := quReqListReq_No.AsInteger;
      quReqItems.Open;
   end;
   qudblEmp.Close;
   qudblEmp.Open;

   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode ;
   DabData.quOrgUnit.open;

   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkReqDate    := False;
   ChkEmpReqDate := True;

   ChkVerify     := False;
   ChkEmpVerify  := True;

   grRequest.SetFocus;
   dblVerify.KeyValue:=DabData.emp_no;
   meVerify.Text:=fDate.disp_date;
   meConfirm.Color       := clDeactiveFieldColor;
   meCreate.Color        := clDeactiveFieldColor;
   meVerify.Color        := clDeactiveFieldColor;
   dblCreate.Color       := clDeactiveFieldColor;
   dblConfirm.Color      := clDeactiveFieldColor;
   dblVerify.Color       := clDeactiveFieldColor;
end;
//******************************************************************************
procedure TItemVerify.btOKClick(Sender: TObject);
begin

   if Activegrid=2 then
      begin
         case mde of
//            1 : InsertDetail();
            2 : UpdateDetail();
//            3 : DeleteDetail();
         end;  // end case
         //?   paMasterOper.Visible := True;
         SetDefaultMode(2);
     end
     else
          if Activegrid = 1 then
          Begin
                case mde of
//                    1 : InsertMaster();
                    2 : UpdateMaster();
//                    3 : DeleteMaster();
                end;  // end case
                //?   paMasterOper.Visible := True;
                SetDefaultMode(1);
         end;

end;
//*****************************************************************************
procedure TItemVerify.meRepayStartChange(Sender: TObject);
begin
{   ChkRepayStart    := RepayStart.CheckDateStr(meRepayStart.Text,Cor_Str);
   ChkEmpRepayStart := ChkRepayStart Or ( meRepayStart.Text ='  /  /  ');}

   CheckFieldsSetDetailokButtons();
end;
procedure TItemVerify.btCancelClick(Sender: TObject);
begin

//   panel1.Height :=
   if ActiveGrid=2 then
         SetDefaultMode(2)
         else
         SetDefaultMode(1);
end;
//******************************************************************************
procedure TItemVerify.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TItemVerify.grItemsEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   paState.Visible := false;
   Panel1.Height :=146;// Panel1.Height-paState .Height ;
   //mde:=0;
   //DisableMasterFields();

   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;

end;
//****************************************************************************
procedure TItemVerify.cbDebtTypeChange(Sender: TObject);
begin
   CheckFieldsSetMasterokButtons();
end;
//****************************************************************************
procedure TItemVerify.quReqListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TItemVerify.grRequestEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   paState.Visible := false;
   Panel1.Height :=146;// Panel1.Height-paState .Height ;
   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
//*****************************************************************************
procedure TItemVerify.dblDebtEmpCloseUp(Sender: TObject);
begin
   CheckFieldsSetMasterokButtons();
end;
//***************************************************************************
procedure TItemVerify.meReqDateChange(Sender: TObject);
begin
{   ChkReqDate    := ReqDate.CheckDateStr(meReqDate.Text,Cor_Str);
   ChkEmpReqDate := ChkReqDate Or ( meReqDate.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();}
end;
//***************************************************************************
procedure TItemVerify.meReqDateExit(Sender: TObject);
begin
{   ChkResult := True;
   if  Not(ChkEmpReqDate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end;
   {else
      if ReqDate.CompareStrDates( meReqDate.Text,meConfirm.Text,CmpResult,Err) then
      if ( ChkConfirm ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if ReqDate.CompareStrDates( meReqDate.Text,meVerify.Text,CmpResult,Err) then
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
      meReqDate.Text := '  /  /  ';
      meReqDate.SetFocus;
   end}
end;
//*****************************************************************************
procedure TItemVerify.UpdateDetail();
begin
   BMark := quReqItems.GetBookmark();
   quDetailUpdate.Close;

   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := StrToInt(edReqVal.Text);
      quDetailUpdate.parameters[1].value := edCfmVal.Text ;
      quDetailUpdate.parameters[2].value := edRecieveVal .Text ;
      quDetailUpdate.parameters[3].value := cbReqType.ItemIndex;
      quDetailUpdate.parameters[4].value := dblItem.KeyValue;
      quDetailUpdate.parameters[5].value := StrToInt(edReqNo.Text);
      quDetailUpdate.parameters[6].value := TempItemCode ;

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
//   tempor:= dblitem.keyvalue;
   checkverify;
   quReqItems.close;
   quReqItems.Open;
  // qureqitems.locate('Item_code',tempor,[]);


   quReqItems.GotoBookmark(BMark);
   quReqItems.FreeBookmark(BMark);

end;
//****************************************************************************
procedure TItemVerify.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;


procedure TItemVerify.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt(edReqNo.Text);

      quMasterDelete.Prepared := True;
      quMasterDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quReqList.close;
   quReqList.Open;
   mde := 0;
   SetDefaultMode(1);

end;

procedure TItemVerify.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grRequest.Color   := clActiveGridColor;
          grItems.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grRequest.Color   := clDeactiveGridColor;
          grItems.Color     := clActiveGridColor;
       end;
    end; // case
end;

procedure TItemVerify.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( quReqList.RecordCount >=1 ) and
           ( quReqList.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmLonrqs_ConfirmDelRec;
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grRequest.SetFocus;
             exit;
          end;
          quSelectItemFromOther.Close;
          quSelectItemFromOther.Parameters[0].Value := quReqListReq_No.AsInteger;
          quSelectItemFromOther.Open;
          if quSelectItemFromOtherItemCount.AsInteger > 0 then
          begin
             Str1 := UUserMsg.SM_Pub_DeleteMode;
             Str2 := UUserMsg.SM_fmLonTyp_DeleteErrorRelatedRow;
             ShowMessage2(Str2);
             Mde := 0;
             grRequest.SetFocus;
             exit;
          end;  // if quSelectFromRelatedToDelete.RecordCount > 0 then
          mde :=3;
          DeleteMaster ();
        end;

        2 : if ( Mde = 0 )  and ( quReqItems.RecordCount >=1 ) and
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
        end;      //  case}
end;


procedure TItemVerify.btMasOKClick(Sender: TObject);
begin
   case mde of
      1 : InsertMaster();
      2 : UpdateMaster();
      3 : DeleteMaster();
    end;  // end case
//?   paMasterOper.Visible := True;
    SetDefaultMode(1);
end;

procedure TItemVerify.dblOrgUnitCloseUp(Sender: TObject);
begin
  CheckFieldsSetMasterokButtons();
end;

procedure TItemVerify.meCreateChange(Sender: TObject);
begin
   ChkCreate    := CreateDate.CheckDateStr(meCreate.Text,Cor_Str);
   ChkEmpCreate := ChkCreate Or ( meCreate.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();
end;

procedure TItemVerify.meConfirmChange(Sender: TObject);
begin
{   ChkConfirm    := ConfirmDate.CheckDateStr(meConfirm.Text,Cor_Str);
   ChkEmpConfirm := ChkConfirm Or ( meConfirm.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();
 }
end;

procedure TItemVerify.meVerifyChange(Sender: TObject);
begin
   meVerify.Text := FVerifyDate.rdate( meVerify.Text );
   ChkVerify     := VerifyDate.CheckDateStr( meVerify.Text,Cor_Str);
   ChkEmpVerify  := ChkVerify Or ( meVerify.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();
end;

procedure TItemVerify.meCreateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpCreate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end
   else
      if CreateDate.CompareStrDates( meCreate.Text,meConfirm.Text,CmpResult,Err) then
      if ( ChkConfirm ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if CreateDate.CompareStrDates( meCreate.Text,meVerify.Text,CmpResult,Err) then
      if ( ChkVerify ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;

   if Not(ChkResult) then
   begin
      //meCreate.Text := '  /  /  ';
      //meCreate.SetFocus;
   end
end;

procedure TItemVerify.meConfirmExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpConfirm) then
   begin
      ChkResult := False;
      Str1:=UUserMsg.SM_fmReqver_Titles;
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;{
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
   end  }
end;

procedure TItemVerify.meVerifyExit(Sender: TObject);
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
      //meVerify.Text := '  /  /  ';
      //meVerify.SetFocus;
   end
end;

procedure TItemVerify.dblClassCloseUp(Sender: TObject);
begin
   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := DabData.quclassclass_code.AsInteger ;
   if mde = 2 then  quOtherItem.Parameters[1].Value := quReqItemsItem_Code.AsString
              else  quOtherItem.Parameters[1].Value := '';
   quOtherItem.Parameters[2].Value := quReqItemsReq_No.AsInteger ;
   quOtherItem.Open ;
   dblItem.KeyValue := -1 ;
   CheckFieldsSetDetailokButtons;
end;

procedure TItemVerify.dblItemCloseUp(Sender: TObject);
begin
   edUnit.Text := quOtherItemUnit_Item_Desc.AsString ;
   CheckFieldsSetDetailokButtons;

end;

procedure TItemVerify.edReqValChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;

procedure TItemVerify.cbReqTypeChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;

procedure TItemVerify.edReqValKeyPress(Sender: TObject; var Key: Char);
begin
  key := DabData.checkkey(Key);
end;

procedure TItemVerify.edcfmValKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(Sender,Key);
   key := DabData.checkkey(Key);
end;

procedure TItemVerify.edRecieveValKeyPress(Sender: TObject; var Key: Char);
begin
//   if Sender=edcfmval then  edcfmValExit(Sender);
 //  if Sender=edRecieveVal  then edRecieveValExit(Sender);

 //  if key = ord(13) then edRecieveValExit(Sender);
 //  CheckEscEnter(Sender,Key);
   key := DabData.checkkey(Key);
end;

procedure TItemVerify.edcfmValChange(Sender: TObject);
begin
//   if strToint(edcfmVal .Text) < quReqItemsReq_Amount.AsInteger  then edcfmVal .Text:='';

   CheckFieldsSetDetailokButtons;
end;

procedure TItemVerify.edRecieveValChange(Sender: TObject);
begin


   CheckFieldsSetDetailokButtons;
end;

procedure TItemVerify.dblConfirmCloseUp(Sender: TObject);
begin
  CheckFieldsSetMasterokButtons();
end;


function TItemVerify.checkallBeValid: Boolean;
begin
   quCheck.Close;
   quCheck.Parameters[0].Value := quReqListReq_No .AsInteger;
   qucheck.Open;
   if quCheckNCount.AsInteger   > 0 then
         checkallBeValid:=false
   else
         checkallBeValid:=true;
end;

procedure TItemVerify.edRecieveValExit(Sender: TObject);
begin
   ChkResult := True;
   if  Trim(edRecieveVal.Text) = ''  then exit;
   if (Trim(edcfmVal.Text) <> '')and   ( StrToInt(edRecieveVal.Text) > StrToInt(edcfmVal.Text))  then
   begin
      ChkResult := False;
      Str1:=UUserMsg.SM_fmReqver_Titles;
      Str2 := UUserMsg.SM_Itemverify_Recieve_more_cfm;
      ShowMessage2(Str2);
   end
   else
   if ( StrToInt(edRecieveVal.Text)) > (StrToInt(edReqVal.Text))  then
   begin
      ChkResult := False;
      Str1:=UUserMsg.SM_fmReqver_Titles;
      Str2 := UUserMsg.SM_Itemverify_Morethan_request;
      ShowMessage2(Str2);
   end
   else
   if   not(CheckRecieveAmount(  StrToInt(edRecieveVal.Text),
                                 quReqItemsItem_Code.AsString) )
   then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Itemverify_Request_more_Exist;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      edRecieveVal.Text := '';
      edRecieveVal.SetFocus;
   end
end;

procedure TItemVerify.edcfmValExit(Sender: TObject);
begin
   ChkResult := True;
   if  Trim(edCfmVal.Text) = ''  then exit

   else
   if (StrToInt(edReqVal.Text) < StrToInt(edcfmVal.Text))  then
   begin
      ChkResult := False;
      Str1:=UUserMsg.SM_fmReqver_Titles;
      Str2 := UUserMsg.SM_itemverify_Morethan_Request;
      ShowMessage2(Str2);
   end

   else

   if (Trim(edRecieveVal .Text) <> '')and( StrToInt(edcfmVal.Text) < StrToInt(edRecieveVal.Text)) then
   begin
      ChkResult := False;
      Str1:=UUserMsg.SM_fmReqver_Titles;
      Str2 := UUserMsg.SM_Itemverify_Morethan_Leave;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      edcfmVal.Text := '';
      edcfmVal.SetFocus;
   end

end;

procedure TItemVerify.chkAcceptClick(Sender: TObject);
begin
  if chkAccept.Checked = False then chkFail.Checked := True
      else chkFail.Checked := False;
   CheckFieldsSetMasterokButtons();

end;

procedure TItemVerify.chkFailClick(Sender: TObject);
begin
  if chkfail.Checked = False then chkAccept .Checked := True
      else chkAccept .Checked := False;
   CheckFieldsSetMasterokButtons();


end;

procedure TItemVerify.checkverify;
begin
    if checkallBeValid then
       begin
          Str1:=UUserMsg.SM_fmReqver_Titles;
          Str2 := UUserMsg.SM_fmReqver_All;
          ShowMessage2(Str2);
          meVerify .Text := fDate.disp_date ;
          quMasterUpdate.Close;
          try
               DabData.ADOC.BeginTrans;

               quMasterUpdate.parameters[0].value := dblCreate.KeyValue;
               quMasterUpdate.parameters[1].value := meCreate.Text;
               quMasterUpdate.parameters[2].value := DabData.quOrgUnitUt_Mast_Code.AsInteger; // ??
               quMasterUpdate.parameters[3].value := dblOrgUnit.KeyValue;
               quMasterUpdate.parameters[4].value := dblConfirm.KeyValue;
               quMasterUpdate.parameters[5].value := meConfirm.Text;
               quMasterUpdate.parameters[6].value := dblVerify.keyvalue  ;
               quMasterUpdate.parameters[7].value := meVerify.Text;
               quMasterUpdate.Parameters[8].value:= 3;
               quMasterUpdate.parameters[9].value := edReqNo.Text;

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
          cbFilterState.ItemIndex := 3 ;

          quReqList.close;
          quReqList.Parameters[0].Value := cbFilterState.ItemIndex;
          quReqList.Parameters[1].Value := NULL;
          quReqList.Open;

          quReqList.Locate ('Req_no',edReqNo.Text,[locaseinsensitive]);

          SetDefaultMode (1);
          exit;
      end;
end;
//******************************************************************************
function TItemVerify.CheckRecieveAmount( InputAmount : Integer;RecieveItemCode: string): Boolean;
begin
   CheckRecieveAmount := False ;
   quGetDefference.Close;
   quGetDefference.Parameters[0].Value := RecieveItemCode;
   if  mde = 2
       then  quGetDefference.Parameters[1].Value := quReqItemsReq_No.AsInteger
       else  quGetDefference.Parameters[1].Value := NULL;
   quGetDefference.Open;

   if (quGetDefferenceLastAmount.AsInteger = 0 ) then
       begin
          if (quGetDefferenceExistMoveGoods.AsInteger >=  InputAmount)
             then   CheckRecieveAmount := True ;
       end
   else
   if (quGetDefferenceDifferent.AsInteger >=  InputAmount)
       then CheckRecieveAmount := True ;
end;
//******************************************************************************
procedure TItemVerify.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 6 then
  begin
     quReqList.Close;
     quReqList.Parameters[0].Value := cbFilterState.ItemIndex;
     quReqList.Parameters[1].Value := 1;
     quReqList.open;
  end
  else
   begin
     quReqList.Close;
     quReqList.Parameters[0].Value:= cbFilterState.ItemIndex;
     quReqList.Parameters[1].Value := NULL;
     quReqList.open;
   end;

   if quReqList.RecordCount = 0 then
   begin
     quReqItems.Close;
     quReqItems.Parameters[0].Value := NULL;
     quReqItems.Open;
     ClearMasterFields();
   end;
end;

end.
