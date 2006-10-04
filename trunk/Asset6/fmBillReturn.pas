unit fmBillReturn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,  Fard, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  SmoothShow, RSqlButton, RSqlEdit, SetForm, RSqlMaskEdit,
  RSqllookup,Variants,RadForms ; //, ControlSubClass;
type
  TBillReturn = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quBillList: TADOQuery;
    dsBillList: TDataSource;
    quMasterInsert: TADOQuery;
    quDetailInsert: TADOQuery;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    quMasterDelete: TADOQuery;
    Label3: TLabel;
    Label7: TLabel;
    quMasterUpdate: TADOQuery;
    dsOtherItem: TDataSource;
    Panel13: TPanel;
    grBill: TDBGrid;
    quMasterUp: TADOQuery;
    Panel15: TPanel;
    cbFilterState: TComboBox;
    quFindLastNo: TADOQuery;
    Panel14: TPanel;
    quDetailInsertUser: TADOQuery;
    quDetailUpdateUser: TADOQuery;
    quFindLastNoBill_no: TIntegerField;
    quDetailDelete: TADOQuery;
    quDetailDeleteUser: TADOQuery;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppOrg: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppBillNo: TppLabel;
    ppBillDate: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppState: TppLabel;
    ppLabel11: TppLabel;
    pplbCost: TppLabel;
    ppLabel13: TppLabel;
    ppUnit: TppLabel;
    ppCost: TppLabel;
    ppReason: TppLabel;
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
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    dsreport: TDataSource;
    quReport: TADOQuery;
    quReportbill_no: TIntegerField;
    quReportbill_type: TSmallintField;
    quReportitem_code: TStringField;
    quReportitem_name: TStringField;
    quReportclass_code: TSmallintField;
    quReportitem_desc: TStringField;
    quReportLabel: TIntegerField;
    quReportStateName: TStringField;
    quReportGoodsCodeStr: TStringField;
    ppLabel5: TppLabel;
    ppEmp: TppLabel;
    quEmp: TADOQuery;
    dsEmp: TDataSource;
    quEmpemp_no: TStringField;
    quEmpname: TStringField;
    quEmpfamily: TStringField;
    quEmpfather_name: TStringField;
    quEmpbirth_certificate_no: TStringField;
    quEmpbirth_date: TStringField;
    quEmpsex: TSmallintField;
    quEmpnationality_code: TSmallintField;
    quEmpbirth_loc_code: TStringField;
    quEmpcer_loc_code: TStringField;
    quEmpnational_card_no: TStringField;
    quEmpis_married: TSmallintField;
    quEmpnum_of_child: TSmallintField;
    quEmpreligion: TSmallintField;
    quEmphealth_state: TStringField;
    quEmpsoldiery: TSmallintField;
    quEmpedu_degree: TSmallintField;
    quEmpimmunity_reason: TStringField;
    quEmplast_school_name: TStringField;
    quEmplast_school_loc_code: TStringField;
    quEmplast_diploma_date: TStringField;
    quEmpwriting: TStringField;
    quEmpemp_type: TSmallintField;
    quEmporg_code: TIntegerField;
    quEmpunit_code: TSmallintField;
    quEmpisargary_state: TSmallintField;
    quEmpemployed_emp_law: TSmallintField;
    quEmpemp_state: TSmallintField;
    quEmpcomment: TStringField;
    quEmpemp_photo: TBlobField;
    quEmpdiploma_name: TStringField;
    quEmppost_no: TIntegerField;
    quEmpjob_lev: TSmallintField;
    quEmpIn_First: TFloatField;
    quEmpemp_code: TStringField;
    quEmpFLName: TStringField;
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
    quReqItemsStateName: TStringField;
    ADOQuery1: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    SmallintField1: TSmallintField;
    StringField3: TStringField;
    SmallintField2: TSmallintField;
    IntegerField1: TIntegerField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    IntegerField2: TIntegerField;
    IntegerField3: TStringField;
    StringField4: TStringField;
    SmallintField5: TSmallintField;
    StringField5: TStringField;
    StringField6: TStringField;
    BtFail: TRSqlButton;
    quReqItemsgoods_code: TStringField;
    quOtherItem: TADOQuery;
    quBillListBill_no: TIntegerField;
    quBillListBill_type: TSmallintField;
    quBillListcreator: TStringField;
    quBillListcreate_date: TStringField;
    quBillListconfirmer: TStringField;
    quBillListconfirm_date: TStringField;
    quBillListconf_teller: TStringField;
    quBillListconf_date: TStringField;
    quBillListitem_req_no: TIntegerField;
    quBillListreceiver: TStringField;
    quBillListdelivery_man: TStringField;
    quBillListOrg_Code: TIntegerField;
    quBillListUnit_code: TSmallintField;
    quBillListLoc_code: TSmallintField;
    quBillListrec_Org_code: TIntegerField;
    quBillListrec_Unit_code: TSmallintField;
    quBillListrec_Loc_code: TSmallintField;
    quBillListState: TSmallintField;
    quBillListReason: TStringField;
    quBillListFLName: TStringField;
    quBillListStateName: TStringField;
    quOtherItemGoods_code: TStringField;
    quOtherItemLabel: TIntegerField;
    quOtherItemBill_No: TIntegerField;
    quOtherItemBill_Type: TSmallintField;
    quOtherItemItem_Name: TStringField;
    quOtherItemItem_desc: TStringField;
    quOtherItemUnit_Item_Desc: TStringField;
    quOtherItemRec_Org_Code: TIntegerField;
    quOtherItemRec_Unit_Code: TSmallintField;
    quOtherItemRec_Loc_Code: TSmallintField;
    quOtherItemStateName: TStringField;
    Panel9: TPanel;
    PaDetailOper: TPanel;
    edName: TRSqlEdit;
    edDescr: TRSqlEdit;
    edLabel: TRSqlEdit;
    edUnit: TRSqlEdit;
    edState: TRSqlEdit;
    Button1: TButton;
    dblGoods: TRSqlDbLookup;
    paOkCancel: TPanel;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    grItems: TDBGrid;
    Panel1: TPanel;
    Label20: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    dblCostCenter: TRSqlDbLookup;
    dblEmpNo: TRSqlDbLookup;
    edReason: TRSqlEdit;
    Panel8: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    dblUnit: TRSqlDbLookup;
    edBillNo: TRSqlEdit;
    Panel17: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel18: TPanel;
    Panel10: TPanel;
    Panel16: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel11: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
    Panel12: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dblCreator: TRSqlDbLookup;
    dblConfirmer: TRSqlDbLookup;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure meRepayStartChange(Sender: TObject);
    procedure meRepayStartExit(Sender: TObject);
    procedure meRepayStartKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelClick(Sender: TObject);
    procedure grItemsEnter(Sender: TObject);
    procedure quBillListAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure meCreateExit(Sender: TObject);
    procedure dblGoodsCloseUp(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure cbReqTypeChange(Sender: TObject);
    procedure edDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblGoodsEnter(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure BtFailClick(Sender: TObject);
    procedure grBillExit(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure dblEmpNoEnter(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure dblCostCenterClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-------------------  Special Procedures   -----------------------------
//-----------------------------------------------------------------------
     procedure CheckEscEnter(sender:TObject;Skey:char);
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
     procedure CheckSetFailButton;
//-----------------------------------------------------------------------
//--------------------- Master Procedures -------------------------------
//-----------------------------------------------------------------------
     procedure DisableMasterFields();
     procedure EnableMasterFields();
     procedure SetMasterFields();
     procedure ClearMasterFields;
//-----------------------------------------------------------------------
     procedure InsertMaster;
     procedure UpdateMaster;
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
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
   { Private declarations }
  PROTECTED
//-----------------------------------------------------------------------
    procedure DoScroll(var mes :TMessage);message F_SCROLL;
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  BillReturn: TBillReturn;


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
  I            : Integer;
implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TBillReturn.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quBillList.RecordCount <> 0 ) then
   begin
      quReqItems.Close;
      quReqItems.Parameters[0].Value := quBillListBill_no.AsInteger;
      quReqItems.Open;

      DisableMasterFields();
      SetMasterFields();
      CheckSetFailButton();
   end;
end;
//*****************************************************************************
procedure TBillReturn.DoNew(var mes: TMessage);
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
           quReqItems.Last;

           EnableMasterFields();
           ClearMasterFields();

           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;

           if      quFindLastNo.RecordCount = 0 then edBillNo.Text := '81000000'
              else edBillNo.Text := IntToStr(quFindLastNoBill_no.AsInteger + 1) ;

           meCreate.Text :=Dabdata.disp_date ;
           ChkCreate     := True;
           ChkEmpCreate  := True;
           btOK.Enabled  := False;
           dblunit.SetFocus;
        end;
    2 : begin
           if quBillListState.AsInteger <> 0 then exit;
           if Trim(edBillNo.Text)='' then exit;

           quReqItems.Close;
           quReqItems.Parameters[0].Value := StrToInt(edBillNo.Text);
           quReqItems.Open;
           quReqItems.Last;

           EnableDetailFields();
           ClearDetailFields();
//           dblGoods.SetFocus;
        end
    end;
    meCreate.Text:=Dabdata.disp_date;
    dblCreator.KeyValue:=DabData.emp_no;
end;
//****************************************************************************
procedure TBillReturn.DoEdit(var mes :TMessage);
begin
   grBill.TabStop         := False;
   grItems.TabStop        := False;
   cbFilterState.TabStop  := False;

   mde := 2;
   if ( quBillListState.AsInteger <> 0) then
           begin
               Str1 := '';
               Str2 := SM_fmReqCfm_Req;
               ShowMessage2(Str2);
               SetDefaultMode (1);
               exit;
            end;
   case ActiveGrid of
    1 : begin
           if qubilllistState.asInteger <>0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := '’Ê— Ã·”Â „Ê—œ ‰Ÿ— ‘„« ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0;
             exit;
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
           dblEmpNo.FieldType := ftDisplay;
           dblUnit.FieldType := ftDisplay;
           dblCostCenter.SetFocus;
        end;
    2 : begin
           if quBillListState.AsInteger <> 0 then exit;
           if quReqItems.RecordCount = 0 then exit;
           if quBillListState.AsInteger   <> 2 then
           begin
              EnableDetailFields();
              ClearDetailFields();
              SetDetailFields();
              btOk.Enabled := True;
              dblGoods.SetFocus;
           end
           else
           begin
              Str1 := '«Œÿ«—';
              Str2 := 'Ã“∆Ì«  ÕÊ«·Â  «ÌÌœ ‘œÂ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
              ShowMessage2(Str2);
              mde:=0;exit;
           end;
        end;
    end;
   meCreate.Text:=Dabdata.disp_date;
   dblCreator.KeyValue:=DabData.emp_no;
   FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TBillReturn.DoDelete(var mes: TMessage);
begin
   case ActiveGrid of
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
          mde :=3;
          DeleteMaster ();
        end;
        end;
        2 :
            if quBillListState.AsInteger <> 0 then  exit  else
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
                 mde := 3 ;
                 DeleteDetail();
            end;
       end;      //  case
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TBillReturn.SetDefaultMode(i: integer);
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
//****************************************************************************
procedure TBillReturn.CheckEscEnter(sender: TObject; Skey: char);
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
procedure TBillReturn.SetGridColor(i: integer);
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
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
procedure TBillReturn.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := StrToInt(edBillNo.Text);
      quMasterInsert.parameters[1].value := 2;
      quMasterInsert.parameters[2].value := dblCreator.KeyValue;
      quMasterInsert.parameters[3].value := meCreate.Text;
      quMasterInsert.parameters[4].value := NULL;
      quMasterInsert.parameters[5].value := NULL;
      quMasterInsert.parameters[6].value := dblCreator.KeyValue;
      quMasterInsert.parameters[7].value := meCreate.Text;
      quMasterInsert.parameters[8].value := dblEmpNo.KeyValue;
      quMasterInsert.parameters[9].value := OrganizCode;
      quMasterInsert.parameters[10].value:= dblUnit.KeyValue;
      if CheckNull(dblCostCenter.Text)
          then  quMasterInsert.parameters[11].value := dblCostCenter.KeyValue
          else  quMasterInsert.parameters[11].value := NULL;
      quMasterInsert.parameters[12].value:= 0;
      if CheckNull( edReason.Text )
          then  quMasterInsert.parameters[13].value := edReason.Text
          else  quMasterInsert.parameters[13].value := NULL;

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
    quBillList.close;
    quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
    quBillList.Parameters[1].Value := NULL;
    quBillList.Open;
    quBillList.Last;

    SetDefaultMode(1);
end;
//***************************************************************************
procedure TBillReturn.UpdateMaster();
begin
   BMark := quBillList.GetBookmark();

   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := dblCreator.KeyValue;
      quMasterUpdate.parameters[1].value := meCreate.Text;
      quMasterUpdate.parameters[2].value := dblEmpNo.KeyValue;
      quMasterUpdate.parameters[3].value := edReason.Text;
      quMasterUpdate.parameters[4].value := dblUnit.KeyValue;
      if CheckNull(dblCostCenter.Text)
          then  quMasterUpdate.parameters[5].value := dblCostCenter.KeyValue
          else  quMasterUpdate.parameters[5].value := NULL;
      quMasterUpdate.parameters[6].value := StrToInt(edBillNo.Text);
      quMasterUpdate.parameters[7].value := 2;

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

   quBillList.close;
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Open;

   quBillList.GotoBookmark(BMark);
   quBillList.FreeBookmark(BMark);
end;
//****************************************************************************
procedure TBillReturn.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt(edBillNo.Text);
      quMasterDelete.parameters[1].value := 2;

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
   quBillList.close;
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Open;

   SetDefaultMode(1);

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//**************************************************************************
procedure TBillReturn.ClearMasterFields;
begin
      edBillNo.Clear ;
      edReason.Clear ;

     // meCreate.Clear ;
     // meConfirm.Clear ;

      dblEmpNo.KeyValue      := NULL;
      dblUnit.KeyValue       := NULL;
      dblCostCenter.KeyValue := NULL;

      dblCreator.KeyValue    := NULL;
      dblConfirmer.KeyValue  := NULL;
end;
//**************************************************************************
procedure TBillReturn.SetMasterFields();
begin
      edBillNo.Text          :=  quBillListBill_no.AsString;
      edReason.Text          :=  quBillListReason.AsString;

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
      dblCostCenter.KeyValue := quBillListLoc_code.AsInteger; ;

      dblCreator.KeyValue    :=  quBillListCreator.AsString;
      dblConfirmer.KeyValue  :=  quBillListconfirmer.AsString;
end;
//*****************************************************************************
procedure TBillReturn.DisableMasterFields;
begin
      edBillNo.FieldType := ftDisplay;

      edReason.FieldType := ftDisplay;
      meCreate.FieldType := ftDisplay;
      meConfirm.FieldType := ftDisplay;

      dblEmpNo.FieldType := ftDisplay;
      dblUnit.FieldType := ftDisplay;
      dblCostCenter.FieldType := ftDisplay;

      dblCreator.FieldType := ftDisplay;
      dblConfirmer.FieldType := ftDisplay;
      FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TBillReturn.EnableMasterFields;
begin
      //qudblEmp.Close;
      //qudblEmp.Open;

      dblCreator.KeyValue    := NULL;
      dblConfirmer.KeyValue  := NULL;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.FieldType := ftRequired ;
      dblUnit.KeyValue := NULL ;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      {qudblEmp.Close;
       qudblEmp.Parameters[0].Value:=DabData.quOrgUnitUt_Org_Code.Value;
       qudblEmp.Parameters[1].Value:=DabData.quCostCenterUt_Mast_Code.Value;
      qudblEmp.Open;}
      dblCostCenter.KeyValue := NULL ;

      dblEmpNo.KeyValue      := NULL ;

      dblUnit.FieldType      := ftRequired;
      dblCostCenter.FieldType:= ftRequired;
      //dblCreator.Enabled   := True;
      dblEmpNo.FieldType      := ftRequired;
      //meCreate.Enabled     := True;
      edReason.FieldType      := ftNonRequired;

      paOkCancel.visible   := True;
      PaDetailOper.Visible := False;


      ChkCreate    := True;
      ChkEmpCreate := True;
      FormInitializer1.Execute;

      //meCreate.Text   := disp_date;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
procedure TBillReturn.InsertDetail;
var  str1,Str2 : string;
     str3      : string[10];
begin
   str3  := dblGoods.Text ;
   quDetailInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quDetailInsert.parameters[0].value := dblGoods.KeyValue;
      quDetailInsert.parameters[1].value := StrToInt(edBillNo.Text);
      quDetailInsert.parameters[2].value := 2;

      quDetailInsert.Prepared := True;
      quDetailInsert.ExecSql;

      DabData.ADOC.CommitTrans;
   end;
   except
       DabData.ADOC.RollbackTrans;
   end;  //exception..

   quDetailInsertUser.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quDetailInsertUser.parameters[0].value := dblGoods.KeyValue;
      quDetailInsertUser.parameters[1].value := StrToInt(edBillNo.Text);
      quDetailInsertUser.parameters[2].value := 2;
      quDetailInsertUser.parameters[3].value := OrganizCode;
      quDetailInsertUser.parameters[4].value := dblUnit.KeyValue;
      if  CheckNull( dblCostCenter.Text )
           then  quDetailInsertUser.parameters[5].value := dblCostCenter.KeyValue
           else  quDetailInsertUser.parameters[5].value := NULL;

      quDetailInsertUser.Prepared := True;
      quDetailInsertUser.ExecSql;


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

    if (quDetailInsertUser.RowsAffected <> 1) then
    begin
       Str1 := UUserMsg.SM_Pub_InsertMode;
       Str2 := UUserMsg.SM_Pub_RetryMsg;
       ShowMessage2(Str2);
    end;
    quReqItems.close;
    quReqItems.Parameters[0].Value := StrToInt(edBillNo.Text);
    quReqItems.Open;

    quReqItems.Locate('Goods_Code',str3,[]);
end;
//*****************************************************************************
procedure TBillReturn.UpdateDetail();
var str : string[10];
begin
   //    For Bill_Goods  Table
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := dblGoods.KeyValue;
      quDetailUpdate.parameters[1].value := TempGoodsCode;
      quDetailUpdate.parameters[2].value := StrToInt(edBillNo.Text);
      quDetailUpdate.parameters[3].value := 2;

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
   //    For Goods_User Table
   quDetailUpdateUser.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailUpdateUser.parameters[0].value := dblGoods.KeyValue;
      quDetailUpdateUser.parameters[1].value := TempGoodsCode;
      quDetailUpdateUser.parameters[2].value := StrToInt(edBillNo.Text);
      quDetailUpdateUser.parameters[3].value := 2;

      quDetailUpdateUser.Prepared := True;
      quDetailUpdateUser.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quDetailUpdateUser.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   Str := dblGoods.KeyValue;
   quReqItems.close;
   quReqItems.Open;

   quReqItems.Locate('GoodS_code',Str,[locaseinsensitive]);;
end;
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TBillReturn.ClearDetailFields;
begin
   dblGoods.KeyValue      := NULL ;
   edLabel.Clear;
   edName.Clear;
   edDescr.Clear;
   edUnit.Clear;
   edState.Clear;

end;//
//**************************************************************************
procedure TBillReturn.SetDetailFields();
begin
   if quReqItems.RecordCount <> 0 then
   begin
      dblGoods.KeyValue     :=  quReqItemsgoods_code.AsString;
      edLabel.Text          :=  quReqItemsLabel.AsString;
      edName.Text           :=  quReqItemsitem_name.AsString ;
      edDescr.Text          :=  quReqItemsitem_desc.AsString ;
      edUnit.Text           :=  quReqItemsUnit_Item_Desc.AsString ;
      edState.Text          :=  quReqItemsStateName.AsString ;

      TempItemCode          :=  quReqItemsitem_code.AsString ;
      TempGoodsCode         :=  quReqItemsgoods_code.AsString;
      TempGoodsVar          :=  quReqItemsgoods_code.AsVariant;
   end;
end;
//*****************************************************************************
procedure TBillReturn.CheckFieldsSetDetailokButtons;
begin
   btOK.Enabled := False;
   if (CheckNull( dblGoods.Text)) then
        btOK.Enabled := True;

end;
//*****************************************************************************
procedure TBillReturn.EnableDetailFields;
begin
    quOtherItem.Close;
    if mde = 2 then
               begin
                quOtherItem.Parameters[0].Value := OrganizCode;
                quOtherItem.Parameters[1].Value := quBillListUnit_code.Value;
                quOtherItem.Parameters[2].Value := quBillListLoc_code.Value;
               end
              else
               begin
                quOtherItem.Parameters[0].Value := OrganizCode;
                quOtherItem.Parameters[1].Value := quBillListUnit_code.Value;
                quOtherItem.Parameters[2].Value := quBillListLoc_code.Value;
               end;
   quOtherItem.Open ;
{   ShowMessage2(
                 'Record Is ->'+IntToStr(quOtherItem.RecordCount)+ #13#10+
                 'Org Is ->'+OrganizCode+ #13#10+
                 'Unit Is ->'+IntToStr(quBillListUnit_code.Value)+ #13#10+
                 'Cost Is ->'+IntToStr(quBillListCost_code.Value)+ #13#10
                  );}
   dblGoods.KeyValue := NULL ;
   dblGoods.FieldType:=ftRequired;
   FormInitializer1.Execute;

   paOkCancel.visible    := True;
   PaDetailOper.Visible  := True;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TBillReturn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TBillReturn.FormActivate(Sender: TObject);
var mes:TMessage;
begin                 
   mes.Msg:=FORM_STATE;
   mes.Lparam := 72 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);

end;
//*************************************************************************
procedure TBillReturn.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TBillReturn.FormShow(Sender: TObject);
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

   //dblEmp.Close;
   //dblEmp.Open;

   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;

   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := quBillListUnit_code.AsInteger;
   DabData.quCostCenter.Open;

   {qudblEmp.Close;
       qudblEmp.Parameters[0].Value:=DabData.quOrgUnitUt_Org_Code.Value;
       qudblEmp.Parameters[1].Value:=DabData.quCostCenterUt_Mast_Code.Value;
   qudblEmp.Open;}

   DisableMasterFields();

   ChkConfirm    := False;
   ChkEmpConfirm := True;

   ChkCreate    := False;
   ChkEmpCreate := True;

   ChkCreateBill     := False;
   ChkEmpCreateBill  := True;

   grBill.SetFocus;
   quEmp.close;
   quEmp.open;
end;
//*****************************************************************************
procedure TBillReturn.meRepayStartChange(Sender: TObject);
begin
{   ChkRepayStart    := RepayStart.CheckDateStr(meRepayStart.Text,Cor_Str);
   ChkEmpRepayStart := ChkRepayStart Or ( meRepayStart.Text ='  /  /  ');}

   CheckFieldsSetDetailokButtons();
end;
//*****************************************************************************
procedure TBillReturn.meRepayStartExit(Sender: TObject);
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
      if ( CmpResult = -1) then
      begin
         ChkResult := False;
         Str1 := UUserMsg.SM_fmlonRqS_Date_Error;
         Str2 := UUserMsg.SM_fmLonRqS_RepaySDate_Less_PayDate;
         UFmShMsg.ShowMsgForm( Self,Str1,Str2,'',True,False);
      end
   else
      if (RepayStart.CompareStrDates( meRepayStart.Text,meRepaySDate.Text,CmpResult,Err)) and ChkResult then
      if ( CmpResult = -1) then
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
procedure TBillReturn.btCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TBillReturn.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TBillReturn.grItemsEnter(Sender: TObject);
begin
   if mde=1 then
   begin
      mde := 0;
      quBillList.Close;
      quBillList.Open;
   end;   
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;
   CheckSetFailButton();
end;
//****************************************************************************
procedure TBillReturn.quBillListAfterScroll(DataSet: TDataSet);
begin
   if ( mde = 0) and (quBillList.RecordCount <> 0 ) then
   begin
      quReqItems.Close;
      quReqItems.Parameters[0].Value := quBillListBill_no.Value;
      quReqItems.Open;

      DisableMasterFields();
      SetMasterFields();
      CheckSetFailButton();
   end;
end;
procedure TBillReturn.grBillEnter(Sender: TObject);
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

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton();
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
procedure TBillReturn.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TBillReturn.btOkClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      case mde of
        1 : InsertMaster();
        2 : UpdateMaster();
        3 : DeleteMaster();
      end;  // end case
//?   paMasterOper.Visible := True;
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
//?   paMasterOper.Visible := True;
      SetDefaultMode(2);
    end;
end;
//****************************************************************************
procedure TBillReturn.meCreateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpCreate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      //meCreate.Text := '  /  /  ';
      //meCreate.SetFocus;
   end
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
procedure TBillReturn.dblGoodsCloseUp(Sender: TObject);
begin
  edLabel.Text :=  quOtherItemlabel.AsString;
  edName.Text  :=  quOtherItemitem_name.AsString ;
  edUnit.Text  :=  quOtherItemUnit_Item_Desc.AsString ;
  edState.Text :=  quOtherItemStateName.AsString ;
  edDescr.Text :=  quOtherItemitem_desc.AsString ;

  CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillReturn.dblItemCloseUp(Sender: TObject);
begin
   edUnit.Text := quOtherItemUnit_Item_Desc.AsString ;
   CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillReturn.cbReqTypeChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillReturn.edDescrKeyPress(Sender: TObject; var Key: Char);
begin
  key := DabData.checkkey(Key);
end;
//****************************************************************************
procedure TBillReturn.dblUnitCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;

   {qudblEmp.Close;
       qudblEmp.Parameters[0].Value:=DabData.quOrgUnitUt_Org_Code.Value;
       qudblEmp.Parameters[1].Value:=DabData.quCostCenterUt_Mast_Code.Value;
   qudblEmp.Open;}

   dblCostCenter.KeyValue := Null ;

end;
//****************************************************************************
procedure TBillReturn.dblGoodsEnter(Sender: TObject);
begin
   quOtherItem.Close;
   if mde = 2 then
               begin
                quOtherItem.Parameters[0].Value := OrganizCode;
                quOtherItem.Parameters[1].Value := quBillListUnit_code.Value;
                quOtherItem.Parameters[2].Value := quBillListLoc_code.Value;
               end
              else
               begin
                quOtherItem.Parameters[0].Value := OrganizCode;
                quOtherItem.Parameters[1].Value := quBillListUnit_code.Value;
                quOtherItem.Parameters[2].Value := quBillListLoc_code.Value;
               end;
   quOtherItem.Open ;
{   ShowMessage2(
                 'Record Is ->'+IntToStr(quOtherItem.RecordCount)+ #13#10+
                 'Org Is ->'+OrganizCode+ #13#10+
                 'Unit Is ->'+IntToStr(quBillListUnit_code.Value)+ #13#10+
                 'Cost Is ->'+IntToStr(quBillListCost_code.Value)+ #13#10
                  );}
end;
//****************************************************************************
procedure TBillReturn.dblCostCenterEnter(Sender: TObject);
begin
   BtFail.Enabled := False ;
   if mde = 2 then exit;
   if not(CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := 0;
      DabData.quCostCenter.Parameters[1].Value := 0;
      DabData.quCostCenter.Open;

     { qudblEmp.Close;
       qudblEmp.Parameters[0].Value:=DabData.quOrgUnitUt_Org_Code.Value;
       qudblEmp.Parameters[1].Value:=DabData.quCostCenterUt_Mast_Code.Value;
      qudblEmp.Open;   }

      dblCostCenter.KeyValue := Null ;
   end
   else
   if (CheckNull(dblUnit.Text)) then
   begin
      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;

      {qudblEmp.Close;
       qudblEmp.Parameters[0].Value:=DabData.quOrgUnitUt_Org_Code.Value;
       qudblEmp.Parameters[1].Value:=DabData.quCostCenterUt_Mast_Code.Value;
      qudblEmp.Open;}

      dblCostCenter.KeyValue := Null ;

   end
end;
//****************************************************************************
procedure TBillReturn.BtFailClick(Sender: TObject);
var TmpStr : string;
begin
     Str1 := UUserMsg.SM_Ebtal;
     Str2 := UUserMsg.SM_EbtalText;
     ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

    if ModalRes = mrOk then
     begin
      Mde := 0;

      quMasterUp.Close;
      try
      DabData.ADOC.BeginTrans;

      quMasterUp.parameters[0].value := 1;
      quMasterUp.parameters[1].value := StrToInt(edBillNo.Text);
      quMasterUp.parameters[2].value := 2;

      quMasterUp.Prepared := True;
      quMasterUp.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterUp.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   cbFilterState.ItemIndex := 1 ;
   TmpStr := edBillNo.Text ;

   quBillList.close;
   quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
   quBillList.Parameters[1].Value := NULL;
   quBillList.Open;

   quBillList.Locate('Bill_No',TmpStr,[locaseinsensitive]);
   end;
   mde:=0 ;
end;

procedure TBillReturn.grBillExit(Sender: TObject);
begin
   btFail.Enabled :=false;
end;

procedure TBillReturn.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if   ( quBillList.RecordCount <> 0)and
        ( quBillListState.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;


procedure TBillReturn.cbFilterStateChange(Sender: TObject);
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

procedure TBillReturn.dblEmpNoEnter(Sender: TObject);
begin
  BtFail.Enabled := False;
end;

procedure TBillReturn.DeleteDetail;
begin
   //    For Bill_Goods  Table
   quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := quReqItemsgoods_code.AsString;
      quDetailDelete.parameters[1].value := StrToInt(edBillNo.Text);
      quDetailDelete.parameters[2].value := 2;

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
   //    For Goods_User Table
   quDetailDeleteUser.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDeleteUser.parameters[0].value := quReqItemsgoods_code.AsString;
      quDetailDeleteUser.parameters[1].value := StrToInt(edBillNo.Text);
      quDetailDeleteUser.parameters[2].value := 2;

      quDetailDeleteUser.Prepared := True;
      quDetailDeleteUser.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quDetailDeleteUser.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   mde := 0 ;
   quReqItems.close;
   quReqItems.Open;
end;

procedure TBillReturn.DoPrint(var mes: TMessage);
begin
   i:= 1;
   if quBillList.RecordCount = 0 then exit;

   quReport.close;
   quReport.Parameters[0].Value:= edBillNo.Text;
   quReport.open;

{   if quBillListState.AsInteger<> 2 then
   begin
        Str1 := '«Œÿ«—';
        Str2 := '›ﬁÿ ÕÊ«·Â Â«Ì  «ÌÌœ ‘œÂ ﬁ«»· ç«Å „Ì »«‘‰œ';
        ShowMessage2(Str2);
        exit;
   end;}

   pporg.text    :=  OrganizName;
   ppBillNo.text :=  edBillNo.Text;
   ppDate.Text   :=  Dabdata.disp_date;
   ppState.Text  :=  ' «ÌÌœ ‘œÂ';
   ppEmp.text    :=  dblEmpNo.Text;
   ppUnit.text   :=  dblunit.Text;
   if checkNull( dblcostCenter.Text )
       then  ppCost.text       :=  dblCostCenter.Text
       else  begin  pplbCost.Visible  := False; ppCost.Visible := False; end;
   ppReason.Text  := edReason.Text ;
   ppBillDate.Text:= mecreate.Text ;

   ppReport1.Print;
end;

procedure TBillReturn.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TBillReturn.dblCostCenterClick(Sender: TObject);
begin
     qudblEmp.Close;
     qudblEmp.Parameters[0].Value:=DabData.quCostCenterUt_Mast_Code.Value;
     qudblEmp.Parameters[1].Value:=DabData.quCostCenterUt_Code.Value;
     qudblEmp.Open;
end;


procedure TBillReturn.Button1Click(Sender: TObject);
begin
  inherited;
   ShowMvgood  := TShowMvgood.create(Application);
   SetFormColor(ShowMvGood);
   DabData.qumoveable.Close;
{   DabData.qumoveable.Parameters[0].Value := -1 ;
   DabData.qumoveable.Parameters[1].Value := -1 ;
   DabData.qumoveable.Parameters[2].Value := -1 ;
   DabData.qumoveable.Parameters[5].Value := -1;
   DabData.qumoveable.Parameters[6].Value := -1;
   DabData.qumoveable.Parameters[7].Value :=  -1;}
   DabData.qumoveable.Open;
   ShowMvgood.ShowModal();
   quOtherItem.Locate('goods_code',DabData.qumoveablegoods_code.AsString, [loPartialKey]);

end;

end.
