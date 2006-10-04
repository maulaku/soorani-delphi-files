unit fmReqCfm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,  RadForms,Variants;
type
  TreqCFM = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quReqList: TADOQuery;
    dsReqList: TDataSource;
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    edReqNo: TEdit;
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
    dblOrgUnit: TDBLookupComboBox;
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
    quCheck: TADOQuery;
    quCheckNCount: TIntegerField;
    Panel17: TPanel;
    Panel19: TPanel;
    Panel18: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel16: TPanel;
    Panel20: TPanel;
    grItems: TDBGrid;
    PaDetailOper: TPanel;
    edUnit: TEdit;
    edReqVal: TEdit;
    cbReqType: TComboBox;
    dblClass: TDBLookupComboBox;
    dblItem: TDBLookupComboBox;
    paMasterOper: TPanel;
    btCancel: TButton;
    btOK: TButton;
    Label2: TLabel;
    edState: TEdit;
    paState: TPanel;
    chkAccept: TCheckBox;
    chkFail: TCheckBox;
    Label8: TLabel;
    quReqListState: TSmallintField;
    quReqListStateName: TStringField;
    meReqDate: TMaskEdit;
    Label9: TLabel;
    Panel2: TPanel;
    grRequest: TDBGrid;
    Panel5: TPanel;
    Panel8: TPanel;
    cbFilterState: TComboBox;
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
     procedure InsertDetail;
     procedure UpdateDetail;
     procedure DeleteDetail;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
   function  checkallBeValid():Boolean;
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

  reqCFM: TreqCFM;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : String;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
  ReqDate   , CreateDate  , ConfirmDate  , VerifyDate  : TPersianDate;
  FReqDate  , FCreateDate , FConfirmDate , FVerifyDate : TFar_date;

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

implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon;

{$R *.DFM}
//****************************************************************************
procedure TreqCFM.DoScroll(var mes:TMessage);
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
procedure TreqCFM.DoNew(var mes: TMessage);
begin
   grRequest .TabStop := false;
   grItems   .TabStop := false;
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
           meReqDate.Text  := DabData.disp_date ;
           meCreate.Text := fDate.disp_date ;

           //dblCreate.SetFocus;
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
   dblConfirm.KeyValue:=DabData.emp_no;
   meConfirm.Text:=fDate.disp_date;
end;
//****************************************************************************
procedure TreqCFM.DoEdit(var mes :TMessage);
begin
   grRequest .TabStop    := False;
   grItems   .TabStop    := False;
   cbFilterState.TabStop := False;

   mde := 2;
   case ActiveGrid of
    1 : begin
           if(quReqListState.AsInteger >2) then
            begin
                 Str1:=' «ÌÌœ œ—ŒÊ«”  ﬂ«·«';
                 Str2 := 'œ—ŒÊ«”  ﬁ«»·  «ÌÌœ ‰Ì” ';
                 ShowMessage2(Str2);
                 SetDefaultMode (1);
                 exit;
            end;
          if quReqList.RecordCount <> 0 then
            begin
               quReqItems.Close;  // set values to Grid
               quReqItems.Parameters[0].Value := quReqListReq_No.AsInteger;
               quReqItems.Open;
            end;
          if  quReqItems.Active then
          if quReqItems.RecordCount =0 then
          begin
             Str1 := '';
             Str2 := SM_fmReqCfm_Item;
             ShowMessage2(Str2);
             SetDefaultMode (1);
             exit;
          end;
          if(quReqListState.AsInteger = 3) then
            begin
                 Str1 := '';
                 Str2 := SM_fmReqCfm_Verify;
                 ShowMessage2(Str2);
                 SetDefaultMode (1);
                 exit;
            end;
           if(quReqListState.AsInteger =4) then
            begin
                 Str1 := '';
                 Str2 := SM_fmReqCfm_nonVerify;
                 ShowMessage2(Str2);
                 SetDefaultMode (1);
                 exit;
            end;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           meconfirm.Text := fDate.disp_date;

           //dblConfirm.SetFocus;
        end;
    2 : begin

         if( quReqList.RecordCount = 0) then   exit;
           if( quReqList.RecordCount <> 0) then
            begin
             quReqItems.Close;
             quReqItems.Parameters[0].Value := quReqListReq_No.AsInteger;
             quReqItems.Open;
            end;
           if( quReqItems.RecordCount = 0) then   exit;
           EnableMasterFields;
           ClearMasterFields;
           SetMasterFields;
           //EnableDetailFields();
           //ClearDetailFields();
           //SetDetailFields();

           btOk.Enabled := True;




     //      if quReqItems.RecordCount = 0 then exit;
       //    EnableDetailFields();
         ///  ClearDetailFields();
           //SetDetailFields();
//           btOk.Enabled := True;
         //  dblClass.SetFocus;
//         edcfmVal.setfocus;
        end;
    end;
   dblConfirm.KeyValue:=DabData.emp_no;
   meConfirm.Text:=fDate.disp_date;
end;
//*****************************************************************************
procedure TreqCFM.InsertMaster();
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
       Str1 := UUserMsg.SM_Pub_InsertMode;
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
procedure TreqCFM.UpdateMaster();
begin
///-------------------------------
//----------------------------------
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblCreate.KeyValue;
      quMasterUpdate.parameters[1].value := meCreate.Text;
      quMasterUpdate.parameters[2].value := OrganizCode;
      quMasterUpdate.parameters[3].value := dblOrgUnit.KeyValue;
      quMasterUpdate.parameters[4].value := dblConfirm.KeyValue;
      quMasterUpdate.parameters[5].value := meConfirm.Text;
      if chkAccept.Checked  then quMasterUpdate.parameters[6].value := 1;
      if chkFail .Checked   then quMasterUpdate.parameters[6].value := 2;
      quMasterUpdate.parameters[7].value := edReqNo.Text;


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

   if chkAccept.Checked  then  cbFilterState.ItemIndex := 1;
   if chkFail .Checked   then  cbFilterState.ItemIndex := 2;

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
procedure TreqCFM.SetDefaultMode(i: integer);
begin
   mde:=0;
   case ActiveGrid of
      1 :
      begin
         paMasterOper.Visible := False;
         PaDetailOper.Visible := False;

         grRequest.TabStop  := True;
         ActiveControl      := grRequest;
         ActiveGrid         := 1;
      end;
      2 :
      begin
         paMasterOper.Visible := False;
         PaDetailOper.Visible := False;

         grItems.TabStop    := True;
         ActiveControl      := grItems;
         ActiveGrid         := 2;
      end;
    end;
end;
//****************************************************************************
procedure TreqCFM.CheckEscEnter(sender: TObject; Skey: char);
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
procedure TreqCFM.CheckFieldsSetMasterokButtons;
begin
   btOK.Enabled := False;
   if  CheckNull( Trim(dblConfirm .Text)) and
       ( chkAccept.Checked or chkFail.Checked )and
       ( ChkConfirm  )   
       then
        btOK.Enabled := True;

end;
//**************************************************************************
procedure TreqCFM.ClearMasterFields;
begin
      edReqNo.Clear ;
//      edCostCenter.Clear;
      //meCreate.Clear ;
     // meConfirm.Clear;
      //meCreate.Clear ;

      dblOrgUnit.KeyValue   := -1;
      //dblCreate.KeyValue    := '';
      //dblConfirm.KeyValue   := '';
  //    dblVerify.KeyValue    := '';
end;
//**************************************************************************
procedure TreqCFM.SetMasterFields();
begin
    if quReqList.RecordCount>0 then
     begin
      edReqNo.Text         :=  quReqListReq_No.AsString;

      meReqDate.Text       :=  quReqListCreate_Date.AsString;
      meCreate.Text        :=  quReqListCreate_Date.AsString;
      meConfirm.Text       :=  quReqListConfirm_Date.AsString;
//    meVerify.Text        :=  quReqListVerify_Date.AsString;

      dblOrgUnit.KeyValue  :=  quReqListOrg_Unit_Code.AsInteger;
      dblCreate.KeyValue   :=  quReqListCreator.AsString;
      dblConfirm.KeyValue  :=  quReqListConfirmer.AsString;
      edState.Text         :=  quReqListStateName.AsString;
     end;

      case quReqListState.AsInteger  of
        0 : begin
              chkFail.Checked   := False;
              chkAccept.Checked := False;
            end;
        1 : begin
              chkFail.Checked   := False;
              chkAccept.Checked := True;
            end;
        2 : begin
              chkFail.Checked   := True;
              chkAccept.Checked := False;
            end;
       end;   // “‘”À

     CheckFieldsSetMasterokButtons;

end;
//*****************************************************************************
procedure TreqCFM.DisableMasterFields;
begin
      edReqNo.Enabled       := False;
//      edCostCenter.Enabled  := False;
      meReqDate.Enabled     := False;
      meCreate.Enabled      := False;
      meConfirm.Enabled     := False;
//      meVerify.Enabled      := False;
      dblOrgUnit.Enabled    := False;
      dblCreate.Enabled     := False;
      dblConfirm.Enabled    := False;
//      dblVerify.Enabled     := False;


      edReqNo.Color         := clDeactiveFieldColor;
//      edCostCenter.Color    := clDeactiveFieldColor;
      meReqDate.Color       := clDeactiveFieldColor;
     // meConfirm.Color       := clDeactiveFieldColor;
      //meCreate.Color        := clDeactiveFieldColor;
//      meVerify.Color        := clDeactiveFieldColor;
      dblOrgUnit.Color      := clDeactiveFieldColor;
      //dblCreate.Color       := clDeactiveFieldColor;
      //dblConfirm.Color      := clDeactiveFieldColor;
end;
//*****************************************************************************
procedure TreqCFM.EnableMasterFields;
begin

{      edReqNo.Enabled      := True;}
      qudblEmp.Close;
      qudblEmp.Open;

      //dblCreate.KeyValue   := '';//-1 ;
      //dblConfirm.KeyValue  := '' ;
//      dblVerify.KeyValue   := '' ;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Open;

      dblOrgUnit.KeyValue := -1 ;

      dblCreate.Enabled    := false;
      //dblConfirm.Enabled   := true;
//      dblVerify.Enabled    := True;
      dblOrgUnit.Enabled   := false;

      meCreate.Enabled     := false;
      //meConfirm.Enabled    := true;
//      meVerify.Enabled     := false;
   //   meReqDate.Enabled    := false;

      //  meReqDate.Color      := clActiveFieldColor;
    //  meCreate.Color       := clActiveFieldColor;
      //meConfirm.Color       := clActiveFieldColor;
    //  meVerify.Color       := clOptionalFieldColor;

      //dblCreate.Color      := clActiveFieldColor;
      //dblOrgUnit.Color     := clActiveFieldColor;
     // dblConfirm.Color     := clActiveFieldColor ;
//      dblVerify.Color      := clActiveFieldColor;

      paMasterOper.visible := True;
      PaState.Visible := true;
      panel1.height:= 144;//panel1.height+pastate.height;

      PaDetailOper.Visible  := False;

      ChkReqDate    := True;
      ChkCreate     := True;

      ChkEmpReqDate := True;
      ChkEmpCreate  := True;

      ChkConfirm    := True;
      ChkEmpConfirm := True;

      meConfirm.Text := fDate.disp_date;


end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
procedure TreqCFM.ClearDetailFields;
begin
   edReqVal.Clear ;
//   edCfmVal.Clear ;
//   edRecieveVal.Clear ;
   edUnit.Clear ;
   cbReqType.ItemIndex   := -1 ;

   dblClass.KeyValue     := -1 ;
   dblItem.KeyValue      := -1 ;
end;//

//**************************************************************************
procedure TreqCFM.SetDetailFields();
begin
   if quReqItems.RecordCount <> 0 then
   begin
      edReqVal.Text         :=  quReqItemsReq_Amount.AsString;
//      edCfmVal.Text         :=  quReqItemsConf_Amount.AsString;
//      edRecieveVal .Text    :=  quReqItemsRecieve_Amount.AsString;
      edUnit.Text           :=  quReqItemsUnit_Item_Desc.AsString;
      cbReqType.ItemIndex   :=  quReqItemsReq_Type.AsInteger ;
      dblClass.KeyValue     :=  StrToInt(copy(quReqItemsItem_Code.AsString,1,2)) ;
      dblItem.KeyValue      :=  quReqItemsItem_Code.AsString ;
      TempItemCode          :=  quReqItemsItem_Code.AsString ;
   end;
end;
//*****************************************************************************
procedure TreqCFM.InsertDetail();
var  str1,Str2 : string;
begin
   quDetailInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

{      quReqItems.Close;
      quReqItems.Open;
      quReqItems.Last;}

      quDetailInsert.parameters[0].value := StrToInt(edReqNo.Text);
      quDetailInsert.parameters[1].value := NULL;//dblItem.KeyValue;
      quDetailInsert.parameters[2].value := NULL;//StrToInt(edReqVal.Text);
   //   quDetailInsert.parameters[3].value := edCfmVal.Text ;
    //  quDetailInsert.parameters[4].value := edRecieveVal .Text ;
      quDetailInsert.parameters[3].value := cbReqType.ItemIndex;

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
    quReqItems.close;
    quReqItems.Parameters[0].Value := StrToInt(edReqNo.Text);
    quReqItems.Open;

    quReqItems.Locate('Item_Code', dblItem.KeyValue, [locaseinsensitive]);
end;
//*****************************************************************************
procedure TreqCFM.CheckFieldsSetDetailokButtons;
begin
   btOK.Enabled := False;
   if (CheckNull( dblClass.Text)   and
       CheckNull( dblItem.Text )   and
       CheckNull( cbReqType.Text ) and
       CheckNull( edReqVal.Text )) then
          btOK.Enabled := True;
end;
//*****************************************************************************
procedure TreqCFM.EnableDetailFields;
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
//   edCfmVal.Enabled      := True;
//   edRecieveVal.Enabled  := True;
   //My
     dblClass .Enabled :=false;
     dblItem  .Enabled :=false;
     cbReqType  .Enabled :=false;


   edReqVal.Color        := clDeActiveFieldColor;
///   edCfmVal.Color        := clActiveFieldColor;
//   edRecieveVal.Color    := clActiveFieldColor;
   dblClass.Color        := clDeActiveFieldColor;
   dblItem.Color         := clDeActiveFieldColor;
   cbReqType.Color       := clDeActiveFieldColor;

   paMasterOper.visible  := true;
   PaDetailOper.Visible  := True;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TreqCFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TreqCFM.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 59 ;
   Application.MainForm.Dispatch(mes);

   Mde :=0;
   SetDefaultMode(1);

end;
//*************************************************************************
procedure TreqCFM.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TreqCFM.FormShow(Sender: TObject);
var l,t:integer;
begin
   
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   mde:=0;
   cbFilterState.ItemIndex := 0 ;

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
   DabData .quOrgUnit .Parameters[0].Value := OrganizCode ;
   DabData.quOrgUnit.open;

   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkReqDate    := False;
   ChkEmpReqDate := True;

//   ChkVerify     := False;
//   ChkEmpVerify  := True;

   grRequest.SetFocus;
   dblConfirm.KeyValue:=DabData.emp_no;
   meConfirm.Text:=fDate.disp_date;
   meCreate.Color        := clDeactiveFieldColor;
   meConfirm.Color        := clDeactiveFieldColor;
   dblCreate.Color       := clDeactiveFieldColor;
   dblConfirm.Color      := clDeactiveFieldColor;
end;
//******************************************************************************
procedure TreqCFM.btOKClick(Sender: TObject);
begin
   grRequest .TabStop := true;
   grItems   .TabStop := true;

   if Activegrid=2 then
      begin
         case mde of
            1 : InsertDetail();
            2 : UpdateDetail();
            3 : DeleteDetail();
         end;  // end case
         //?   paMasterOper.Visible := True;
         SetDefaultMode(2);
     end
     else
         Begin
                case mde of
                    1 : InsertMaster();
                    2 : UpdateMaster();
                    3 : DeleteMaster();
                end;  // end case
                //?   paMasterOper.Visible := True;
                SetDefaultMode(1);
         end;

end;
//*****************************************************************************
procedure TreqCFM.meRepayStartChange(Sender: TObject);
begin
{   ChkRepayStart    := RepayStart.CheckDateStr(meRepayStart.Text,Cor_Str);
   ChkEmpRepayStart := ChkRepayStart Or ( meRepayStart.Text ='  /  /  ');}

   CheckFieldsSetDetailokButtons();
end;
//******************************************************************************
procedure TreqCFM.btCancelClick(Sender: TObject);
begin
   grRequest .TabStop := true;
   grItems   .TabStop := true;
   mde := 0;
//   paMasterOper.Visible := True;
   if ActiveGrid=2 then
         SetDefaultMode(2)
         else
         SetDefaultMode(1);
end;
//******************************************************************************
procedure TreqCFM.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TreqCFM.grItemsEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();
   paState .Visible := false;
   Panel1.Height :=110;   //Panel1.Height-paState .Height ;

   mde:=0;
   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;

end;
//****************************************************************************
procedure TreqCFM.cbDebtTypeChange(Sender: TObject);
begin
   CheckFieldsSetMasterokButtons();
end;
//****************************************************************************
procedure TreqCFM.quReqListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TreqCFM.grRequestEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paMasterOper.Visible := False;
   paState .Visible := false;
   Panel1.Height :=110;   //Panel1.Height-paState .Height ;
   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
//*****************************************************************************
procedure TreqCFM.dblDebtEmpCloseUp(Sender: TObject);
begin
   CheckFieldsSetMasterokButtons();
end;
//***************************************************************************
procedure TreqCFM.meReqDateChange(Sender: TObject);
begin
{   ChkReqDate    := ReqDate.CheckDateStr(meReqDate.Text,Cor_Str);
   ChkEmpReqDate := ChkReqDate Or ( meReqDate.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();}
end;
//***************************************************************************
procedure TreqCFM.meReqDateExit(Sender: TObject);
begin
 {  ChkResult := True;
   if  Not(ChkEmpReqDate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end
   else
      if ReqDate.CompareStrDates( mecreate.Text,meConfirm.Text,CmpResult,Err) then
      if ( ChkConfirm ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
 {  else
   begin
//      if ReqDate.CompareStrDates( meReqDate.Text,meVerify.Text,CmpResult,Err) then
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
//      meReqDate.Text := '  /  /  ';
  //    meReqDate.SetFocus;
   end}
end;
//*****************************************************************************
procedure TreqCFM.UpdateDetail();
begin
          updatemaster();
   BMark := quReqItems.GetBookmark();
   quDetailUpdate.Close;

   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := StrToInt(edReqVal.Text);
//      quDetailUpdate.parameters[1].value := edCfmVal.Text ;
//      quDetailUpdate.parameters[2].value := edRecieveVal .Text ;
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
   quReqItems.close;
   quReqItems.Open;

//   quReqItems.GotoBookmark(BMark);
  // quReqItems.FreeBookmark(BMark);

end;
//****************************************************************************
procedure TreqCFM.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TreqCFM.DeleteDetail;
begin
   quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := StrToInt(edReqNo.Text);
      quDetailDelete.parameters[1].value := quReqItemsItem_Code.Asstring;

      quDetailDelete.Prepared := True;
      quDetailDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quDetailDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quReqItems.close;
   quReqItems.Open;
   mde := 0;
   SetDefaultMode(2);
end;


procedure TreqCFM.DeleteMaster;
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

procedure TreqCFM.SetGridColor(i: integer);
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

procedure TreqCFM.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( quReqList.RecordCount >=1 ) and
           ( quReqList.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmReqCfm_ConfirmDelRec;
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


procedure TreqCFM.btMasOKClick(Sender: TObject);
begin
   case mde of
      1 : InsertMaster();
      2 : UpdateMaster();
      3 : DeleteMaster();
    end;  // end case
//?   paMasterOper.Visible := True;
    SetDefaultMode(1);
end;

procedure TreqCFM.dblOrgUnitCloseUp(Sender: TObject);
begin
  CheckFieldsSetMasterokButtons();
end;

procedure TreqCFM.meCreateChange(Sender: TObject);
begin
   ChkCreate    := CreateDate.CheckDateStr(meCreate.Text,Cor_Str);
   ChkEmpCreate := ChkCreate Or ( meCreate.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();
end;

procedure TreqCFM.meConfirmChange(Sender: TObject);
begin
   meConfirm.Text := FConfirmDate.rdate( meConfirm.Text );
   ChkConfirm     := ConfirmDate.CheckDateStr(meConfirm.Text,Cor_Str);
   ChkEmpConfirm  := ChkConfirm Or ( meConfirm.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();
end;

procedure TreqCFM.meVerifyChange(Sender: TObject);
begin
{   ChkVerify    := VerifyDate.CheckDateStr( meVerify.Text,Cor_Str);
   ChkEmpVerify := ChkVerify Or ( meVerify.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();}
end;

procedure TreqCFM.meCreateExit(Sender: TObject);
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
      end;
{   else
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
 }
   if Not(ChkResult) then
   begin
      meCreate.Text := '  /  /  ';
      meCreate.SetFocus;
   end
end;

procedure TreqCFM.meConfirmExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpConfirm) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end
   else
      if ConfirmDate.CompareStrDates( meConfirm.Text , mecreate.Text,CmpResult,Err) then
      if ( ChkReqDate ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if ConfirmDate.CompareStrDates( meConfirm.Text , meCreate.Text,CmpResult,Err) then
      if ( ChkCreate ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;
{   else
   begin
      if ConfirmDate.CompareStrDates( meConfirm.Text , meVerify.Text,CmpResult,Err) then
      if ( ChkVerify ) and ( CmpResult = 1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;

 }  if Not(ChkResult) then
   begin
      //meConfirm.Text := '  /  /  ';
      //meConfirm.SetFocus;
   end
end;

procedure TreqCFM.meVerifyExit(Sender: TObject);
begin
{   ChkResult := True;
  if  Not(ChkEmpVerify) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end
   else
      if VerifyDate.CompareStrDates( meVerify.Text , meReqDate.Text,CmpResult,Err) then
      if ( ChkVerify ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end
   else
   begin
      if VerifyDate.CompareStrDates( meVerify.Text , meCreate.Text,CmpResult,Err) then
      if ( ChkCreate ) and ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
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
         Str1 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_ReqDate;
         ShowMessage2(Str2);
      end;
   end;

   if Not(ChkResult) then
   begin
      meVerify.Text := '  /  /  ';
      meVerify.SetFocus;
   end}
end;

procedure TreqCFM.dblClassCloseUp(Sender: TObject);
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

procedure TreqCFM.dblItemCloseUp(Sender: TObject);
begin
   edUnit.Text := quOtherItemUnit_Item_Desc.AsString; ;
   CheckFieldsSetDetailokButtons;

end;

procedure TreqCFM.edReqValChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;

procedure TreqCFM.cbReqTypeChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;

procedure TreqCFM.edReqValKeyPress(Sender: TObject; var Key: Char);
begin
  key := DabData.checkkey(Key);
end;

procedure TreqCFM.edcfmValKeyPress(Sender: TObject; var Key: Char);
begin
 {  CheckEscEnter(Sender,Key);
   key := DabData.checkkey(Key);}
end;

procedure TreqCFM.edRecieveValKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(Sender,Key);
   key := DabData.checkkey(Key);
end;

procedure TreqCFM.edcfmValChange(Sender: TObject);
begin
//   if strToint(edcfmVal .Text) < quReqItemsReq_Amount.AsInteger  then edcfmVal .Text:='';

//   CheckFieldsSetDetailokButtons;
end;

procedure TreqCFM.edRecieveValChange(Sender: TObject);
begin


   CheckFieldsSetDetailokButtons;
end;

procedure TreqCFM.dblConfirmCloseUp(Sender: TObject);
begin
  CheckFieldsSetMasterokButtons();
end;


function TreqCFM.checkallBeValid: Boolean;
begin
   quCheck.Close;
   quCheck .Parameters[0].Value := quReqListReq_No .AsInteger;
   qucheck.Open;
   if quCheckNCount.AsInteger   > 0 then
         checkallBeValid:=false
   else
         checkallBeValid:=true;


end;

procedure TreqCFM.edRecieveValExit(Sender: TObject);
begin
{   ChkResult := True;
   if  Trim(edRecieveVal.Text) = ''  then exit

   else
   if (StrToInt(edRecieveVal.Text) > StrToInt(edcfmVal.Text)) and (Trim(edcfmVal.Text) <> '') then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Itemverify_Recieve_more_cfm;
      ShowMessage2(Str2);
   end

   else
   if (StrToInt(edRecieveVal.Text)) > (StrToInt(edReqVal.Text))  then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Itemverify_Morethan_request;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      edRecieveVal.Text := '';
      edRecieveVal.SetFocus;
   end}
end;

procedure TreqCFM.edcfmValExit(Sender: TObject);
begin
{   ChkResult := True;
   if  Trim(edCfmVal.Text) = ''  then exit

   else
   if (StrToInt(edReqVal.Text) < StrToInt(edcfmVal.Text))  then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_itemverify_Morethan_Request;
      ShowMessage2(Str2);
   end

   else

   if (Trim(edRecieveVal .Text) <> '')and( StrToInt(edcfmVal.Text) > StrToInt(edRecieveVal.Text)) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Itemverify_Morethan_Leave;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      edcfmVal.Text := '';
      edcfmVal.SetFocus;
   end
 }
end;

procedure TreqCFM.chkAcceptClick(Sender: TObject);
begin
  if chkAccept.Checked = False then chkFail.Checked := True
      else chkFail.Checked := False;
   CheckFieldsSetMasterokButtons();
end;

procedure TreqCFM.chkFailClick(Sender: TObject);
begin
  if chkfail.Checked = False then chkAccept .Checked := True
      else chkAccept .Checked := False;
   CheckFieldsSetMasterokButtons();

end;

procedure TreqCFM.cbFilterStateChange(Sender: TObject);
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
