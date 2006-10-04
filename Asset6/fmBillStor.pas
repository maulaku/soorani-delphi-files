
unit fmBillStor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  SmoothShow, RSqlButton, RSqlMaskEdit, RSqllookup, RSqlEdit, SetForm,
  RadForms,Variants;
type
  TBillStor = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quBillList: TADOQuery;
    dsBillList: TDataSource;
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    PaDetailOper: TPanel;
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
    grItems: TDBGrid;
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
    quReqNoItem: TADOQuery;
    quReqNoItemitem_Code: TStringField;
    quReqNoItemRecieve_Amount: TIntegerField;
    quSelectMovGoods: TADOQuery;
    quUpdateMovGood: TADOQuery;
    quUpdateRequest: TADOQuery;
    quSelectItemFromOtherItemCount: TIntegerField;
    Label10: TLabel;
    Panel13: TPanel;
    grBill: TDBGrid;
    quMasterUp: TADOQuery;
    Panel15: TPanel;
    cbFilterState: TComboBox;
    Panel14: TPanel;
    quDetailInsertUser: TADOQuery;
    quDetailUpdateUser: TADOQuery;
    Panel12: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
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
    ppLabel9: TppLabel;
    ppReqNo: TppLabel;
    ppLabel11: TppLabel;
    pplbCost: TppLabel;
    ppLabel13: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
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
    ppLine16: TppLine;
    ppLabel4: TppLabel;
    ppLine17: TppLine;
    ppDBText1: TppDBText;
    quReportbill_no: TIntegerField;
    quReportbill_type: TSmallintField;
    quReportitem_code: TStringField;
    quReportitem_name: TStringField;
    quReportclass_code: TSmallintField;
    quReportitem_desc: TStringField;
    quReportLabel: TIntegerField;
    quReportStateName: TStringField;
    ppUnit: TppLabel;
    ppCost: TppLabel;
    ppReason: TppLabel;
    ppLabel23: TppLabel;
    ppDate: TppLabel;
    quReportGoodsCodeStr: TStringField;
    quempname: TADOQuery;
    quempnameemp_no: TStringField;
    quempnameFLName: TStringField;
    quEmpNo: TADOQuery;
    quEmpNoemp_no: TStringField;
    quEmpNoFLName: TStringField;
    quSelectMovGoodsGoods_Code: TStringField;
    quSelectMovGoodsLabel: TIntegerField;
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
    quOtherItemCode: TSmallintField;
    quOtherItemUnit_Item_Desc: TStringField;
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
    quReportGoods_Code: TStringField;
    edName: TRSqlEdit;
    edDescr: TRSqlEdit;
    edLabel: TRSqlEdit;
    edUnit: TRSqlEdit;
    edReason: TRSqlEdit;
    edBillNo: TRSqlEdit;
    edCreator: TRSqlEdit;
    edConfirmer: TRSqlEdit;
    dblGoods: TRSqlDbLookup;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    dblReqNo: TRSqlDbLookup;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    BtFail: TRSqlButton;
    Button1: TButton;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    quReportflName: TStringField;
    quOtherItemGoods_Code: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure meRepayStartChange(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure grItemsEnter(Sender: TObject);
    procedure quBillListAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure meCreateChange(Sender: TObject);
    procedure dblGoodsCloseUp(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure cbReqTypeChange(Sender: TObject);
    procedure edDescrKeyPress(Sender: TObject; var Key: Char);
    procedure dblReqNoCloseUp(Sender: TObject);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblGoodsEnter(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure BtFailClick(Sender: TObject);
    procedure grBillExit(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure dblReqNoEnter(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure dblGoodsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-------------------  Special Procedures   -----------------------------
//-----------------------------------------------------------------------
     procedure SetDefaultMode(i: integer);
     procedure SetGridColor(i:integer);
     procedure AssignGoodsToBill();
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
     procedure InsertDetail( GoodCod : Variant );
     procedure UpdateDetail;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     procedure UpdateItemRequest(RequestNo : integer);
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
    procedure DoPrint(var mes :TMessage);message F_PRINT;
//------------------------------------------------------------------------
  public
    mde     : integer ;
    DetReq  : Boolean ;  // Flag that represent user go to DETAIL FORM
    { Public declarations }
  end;
var

  BillStor: TBillStor;
  CreateKey,ConfirmKey:integer;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : String;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
//  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;
//  FReqDate  , FCreateDate , FConfirmDate , FVerifyDate : TFar_date;

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
  I            : integer;
implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TBillStor.DoScroll(var mes:TMessage);
begin
   if ( mde = 0) and (quBillList.RecordCount <> 0 ) then
   begin
      quReqItems.Close;
      quReqItems.Parameters[0].Value := quBillListBill_no.AsInteger;
      quReqItems.Open;

//      ShowMessage(quReqItems.SQL.Text+' Rows->'+ IntToStr(quReqItems.RecordCount)+' '+IntToStr(quBillListBill_no.AsInteger));

      DisableMasterFields();
      SetMasterFields();
      CheckSetFailButton();
   end;
end;
//*****************************************************************************
procedure TBillStor.DoNew(var mes: TMessage);
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
           quBillList.Last;

           if      quBillList.RecordCount = 0 then edBillNo.Text := '81000000'
           else edBillNo.Text := IntToStr(quBillListBill_no.AsInteger + 1) ;
           meCreate.Text := fDate.disp_date ;
           ChkCreate     := True;
           ChkEmpCreate  := True;
           dblReqNo.SetFocus;
           edCreator.Text:=  DabData.Fname+' '+dabdata.LName;
           //edConfirmer.Text:=DabData.Fname+' '+dabdata.LName;
           meCreate.Text :=fdate.disp_date;
           FormInitializer1.FieldMode:=fmInsert;
           FormInitializer1.Execute;
           //meConfirm.Text:=fdate.disp_date;
        end;
    2 : begin
//          exit;
           //mde := 0;
          if Trim(edBillNo.Text)='' then exit;

           quReqItems.Close;
           quReqItems.Open;
           //if quReqItems.IsEmpty then exit;
           EnableDetailFields();
           ClearDetailFields();

           dblGoods.SetFocus;
           FormInitializer1.FieldMode:=fmInsert;
           FormInitializer1.Execute;
        end
    end;
    ///////
end;
//****************************************************************************
procedure TBillStor.DoEdit(var mes :TMessage);
begin
   grBill.TabStop         := False;
   grItems.TabStop        := False;
   cbFilterState.TabStop  := False;

   mde := 2;
   if ( quBillListState.AsInteger <> 0) then
           begin
               ShowMessage(SM_fmReqCfm_Req);
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

           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           dblReqNo.FieldType:= ftDisplay;
           dblUnit.FieldType:= ftDisplay;
           dblCostCenter.SetFocus;
        end;
    2 : begin
           if quReqItems.IsEmpty then exit;
           if quBillListState.AsInteger   <> 2 then
           begin
              EnableDetailFields();
              ClearDetailFields();
              SetDetailFields();
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
    FormInitializer1.FieldMode:=fmEdit;
   FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TBillStor.DoDelete(var mes: TMessage);
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
procedure TBillStor.DoPrint(var mes: TMessage);
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

   ppOrg.caption:= OrganizName;
   ppBillNo.text :=  edBillNo.Text;
   ppReqNo.text  :=  dblReqNo.Text;
   ppDate.Text   :=  fDate.disp_date;
   ppState.Text  := ' «ÌÌœ ‘œÂ';
   ppUnit.text   :=  dblunit.Text;
   if checkNull( dblcostCenter.Text )
       then  ppCost.text       :=  dblCostCenter.Text
       else  begin  pplbCost.Visible  := False; ppCost.Visible := False; end;
   ppReason.Text  := edreason.Text ;
   ppBillDate.Text:= mecreate.Text ;

   ppReport1.Print;

end;
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TBillStor.SetDefaultMode(i: integer);
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
procedure TBillStor.SetGridColor(i: integer);
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
procedure TBillStor.AssignGoodsToBill;
var i,j: Integer;
begin
    quReqNoItem.Close;
    quReqNoItem.Parameters[0].Value := dblReqNo.KeyValue;
    quReqNoItem.Open;
    quReqNoItem.First;

    for i:= 1 to quReqNoItem.RecordCount do
    begin
       for j:= 1 to quReqNoItemRecieve_Amount.AsInteger do
       begin
          quSelectMovGoods.Close;
          quSelectMovGoods.Parameters[0].Value := quReqNoItemitem_Code.AsString;
          quSelectMovGoods.Open;
          quSelectMovGoods.First;

          InsertDetail     (quSelectMovGoodsGoods_Code.AsVariant);
//          DabData.UpdateMovGoods  (quSelectMovGoodsGoods_Code.AsVariant , 1);
       end;
       quReqNoItem.Next;
    end;
    UpdateItemRequest(dblReqNo.KeyValue);
end;

//*****************************************************************************
procedure TBillStor.UpdateItemRequest(RequestNo: integer);
begin
{   quUpdateRequest.Close;
   try
     DabData.ADOC.BeginTrans;

      quUpdateRequest.parameters[0].value := RequestNo;

      quUpdateRequest.Prepared := True;
//      quUpdateRequest.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quUpdateRequest.RowsAffected <>1 ) then
   begin
     Str1 :='«Œÿ«—';
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;          }
end;
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
procedure TBillStor.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := 0;
      //quMasterInsert.parameters[2].value := dblCreator.KeyValue;
      quempname.Close;
      quempname.Parameters[0].Value:=dabdata.FName;
      quempname.Parameters[1].Value:=dabdata.Lname;
      quempname.Open;
      quMasterInsert.parameters[1].value :=DabData.emp_no;
      quMasterInsert.parameters[2].value := meCreate.Text;
      quMasterInsert.parameters[3].value := NULL;
      quMasterInsert.parameters[4].value := NULL;
      //quMasterInsert.parameters[6].value := DabData.emp_no;
      //quMasterInsert.parameters[7].value := meCreate.Text;
      quMasterInsert.parameters[5].value := dblReqNo.KeyValue;
      quMasterInsert.parameters[6].value := quReqListCreator.AsString;
      quMasterInsert.parameters[7].value:= OrganizCode;
      quMasterInsert.parameters[8].value:= dblUnit.KeyValue;
      if CheckNull(dblCostCenter.Text)
          then  quMasterInsert.parameters[9].value := dblCostCenter.KeyValue
          else  quMasterInsert.parameters[9].value := NULL;
      quMasterInsert.parameters[10].value:= 0;
      if CheckNull( edReason.Text )
          then  quMasterInsert.parameters[11].value := edReason.Text
          else  quMasterInsert.parameters[11].value := NULL;

      quMasterInsert.Prepared := True;
      quMasterInsert.ExecSql;
      quBillList.Close;
      quBillList.open;
      quBillList.last;
      edBillNo.Text:=quBillListBill_no.AsString;



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

    AssignGoodsToBill();
    SetDefaultMode(1);
end;
//***************************************************************************
procedure TBillStor.UpdateMaster();
begin
   BMark := quBillList.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := CreateKey;
      quMasterUpdate.parameters[1].value := meCreate.Text;
      quMasterUpdate.parameters[2].value := dblReqNo.KeyValue;
      quMasterUpdate.parameters[3].value := quReqListCreator.AsString;
      quMasterUpdate.parameters[4].value := edReason.Text;
      quMasterUpdate.parameters[5].value := dblUnit.KeyValue;
      if CheckNull(dblCostCenter.Text)
          then  quMasterInsert.parameters[6].value := dblCostCenter.KeyValue
          else  quMasterInsert.parameters[6].value := NULL;
      quMasterUpdate.parameters[7].value := StrToInt(edBillNo.Text);
      quMasterUpdate.parameters[8].value := 0;

      quMasterUpdate.Prepared := True;
      quMasterUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterUpdate.RowsAffected <>1 ) then
   begin
     Str1 := '«Œÿ«—';
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
procedure TBillStor.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt(edBillNo.Text);
      quMasterDelete.parameters[1].value := 0;

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
//****************************************************************************
procedure TBillStor.ClearMasterFields;
begin
      edBillNo.Clear ;
      edReason.Clear ;

      //meCreate.Clear ;
      //meConfirm.Clear ;

      dblReqNo.KeyValue      := null;
      dblUnit.KeyValue       := null;
      dblCostCenter.KeyValue := null;
      //edCreator.Text:='';
      //edConfirmer.Text:='';
      //dblCreator.KeyValue     := '';
      //dblConfirmer.KeyValue  := '';
end;
//**************************************************************************
procedure TBillStor.SetMasterFields();
var temp:integer;
begin
     { quBillList.Close;
      quBillList.Parameters[0].Value:= 0;
      quBillList.Parameters[1].Value := NULL;
      quBillList.open;}
      edBillNo.Text          :=  quBillListBill_no.AsString;
      edReason.Text          :=  quBillListReason.AsString;

      meCreate.Text          :=  quBillListCreate_Date.AsString;
      meConfirm.Text         :=  quBillListconfirm_date.AsString;

      quReqList.Close;
      quReqList.Parameters[0].Value := 5;
      quReqList.Parameters[1].Value :=quBillListitem_req_no.AsInteger;
      quReqList.Open;
      temp:=quReqList.RecordCount;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue      :=  quBillListrec_Unit_code.AsInteger;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := dblUnit.KeyValue;
      DabData.quCostCenter.Open;
      //dblCostCenter.KeyValue := quBillListrec_Cost_code.AsInteger; ;
      dblCostCenter.KeyValue := DabData.quCostCenterUt_Code.AsInteger;
      quempno.Close;
      quempno.Parameters[0].Value:=quBillListCreator.AsString;
      quempno.Open;
      if not quEmpNo.IsEmpty then CreateKey:=strtoint(trim(quEmpNoemp_no.AsString));
      edCreator.Text:=quEmpNoFLName.AsString;
      quempno.Close;
      quempno.Parameters[0].Value:=quBillListconfirmer.AsString;
      quempno.Open;
      if not quEmpNo.IsEmpty then ConfirmKey:=strtoint(trim(quEmpNoemp_no.AsString));
      edConfirmer.Text:=quempNoFLName.AsString;
      dblReqNo.KeyValue      :=  quBillListitem_req_no.AsInteger;
end;
//*****************************************************************************
procedure TBillStor.DisableMasterFields;
begin
//      edBillNo.FieldType   := ftDisplay;
      edReason.FieldType   := ftDisplay;
      meCreate.FieldType   := ftDisplay;
      meConfirm.FieldType   := ftDisplay;
      quReqList.Close;
      quReqList.Parameters[0].Value := 5;
//      if mde=2 then quReqList.Parameters[1].Value :=quBillListitem_req_no.AsInteger
      {else} quReqList.Parameters[1].Value :=NULL;

      quReqList.Open;

      dblReqNo.FieldType:= ftDisplay;
      dblUnit.FieldType:= ftDisplay;
      dblCostCenter.FieldType:= ftDisplay;
      edCreator.FieldType:= ftDisplay;
      edConfirmer.FieldType:= ftDisplay;
      FormInitializer1.FieldMode:=fmInsert;
      FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TBillStor.EnableMasterFields;
begin
      qudblEmp.Close;
      qudblEmp.Open;

      //dblCreator.KeyValue    := '';
      //dblConfirmer.KeyValue  := '';
      //edCreator.Clear;
      edConfirmer.Clear;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue := null ;
      dblUnit.FieldType:= ftDisplay;


      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;

      quReqList.Close;
      quReqList.Parameters[0].Value :=3;
      if  mde = 2 then quReqList.Parameters[1].Value := quBillListitem_req_no.AsInteger
      else  quReqList.Parameters[1].Value :=NULL;
      quReqList.Open;
      dblReqNo.KeyValue   := null ;

      dblUnit.FieldType:= ftRequired;
      dblCostCenter.FieldType:= ftRequired;
      dblReqNo.FieldType:= ftRequired;
      dblCostCenter.FieldType:= ftNonRequired;
      //meCreate.Enabled      := True;
      edReason.FieldType:= ftNonRequired;

      paOkCancel.visible   := True;
      PaDetailOper.Visible := False;


      ChkCreate    := True;
      ChkEmpCreate := True;
      edCreator.Text:=  DabData.Fname+' '+dabdata.LName;
      //edConfirmer.Text:=DabData.Fname+' '+dabdata.LName;
      meCreate.Text :=fdate.disp_date;
      //meConfirm.Text:=fdate.disp_date;
   FormInitializer1.FieldMode:=fmInsert;
   FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
procedure TBillStor.InsertDetail( GoodCod : Variant );
var  str1,Str2 : string;
begin
   quDetailInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quDetailInsert.parameters[0].value := (GoodCod);
      quDetailInsert.parameters[1].value := StrToInt(edBillNo.Text);
      quDetailInsert.parameters[2].value := 0;

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

      quDetailInsertUser.parameters[0].value := (GoodCod);
      quDetailInsertUser.parameters[1].value := StrToInt(edBillNo.Text);
      quDetailInsertUser.parameters[2].value := 0;
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

end;
//*****************************************************************************
procedure TBillStor.UpdateDetail();
var strGood : string[10];
begin
   //    For Bill_Goods  Table
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := dblGoods.KeyValue;
      quDetailUpdate.parameters[1].value := TempGoodsCode;
      quDetailUpdate.parameters[2].value := StrToInt(edBillNo.Text);
      quDetailUpdate.parameters[3].value := 0;

      quDetailUpdate.Prepared := True;
      quDetailUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quDetailUpdate.RowsAffected <>1 ) then
   begin
     Str1 := '«Œÿ«—';
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
      quDetailUpdateUser.parameters[3].value := 0;

      quDetailUpdateUser.Prepared := True;
      quDetailUpdateUser.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quDetailUpdateUser.RowsAffected <>1 ) then
   begin
     Str1 := '«Œÿ«—';
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   strgood := dblGoods.KeyValue;
   quReqItems.close;
   quReqItems.Open;

   quReqItems.Locate('GoodS_code',strgood,[locaseinsensitive]);;

end;
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TBillStor.ClearDetailFields;
begin
   dblGoods.KeyValue := null ;
end;//
//**************************************************************************
procedure TBillStor.SetDetailFields();
begin
   if quReqItems.RecordCount <> 0 then
   begin
      dblGoods.KeyValue     :=  quReqItemsgoods_code.AsString;
      if trim(dblGoods.text)<>'' then
       begin
         edLabel.Text          :=  quReqItemsLabel.AsString;
         edName.Text           :=  quReqItemsitem_name.AsString ;
         edDescr.Text          :=  quReqItemsitem_desc.AsString ;
         edUnit.Text           :=  quReqItemsUnit_Item_Desc.AsString ;
       end
      else 
       begin
         edname.Clear;
         edlabel.Clear;
         edDescr.Clear;
         edUnit.Clear;
       end;
   
      TempItemCode          :=  quReqItemsitem_code.AsString ;
      TempGoodsCode         :=  quReqItemsgoods_code.AsString;
      TempGoodsVar          :=  quReqItemsgoods_code.AsVariant;
   end;
end;
//*****************************************************************************
procedure TBillStor.CheckFieldsSetDetailokButtons;
begin
   if (CheckNull( dblGoods.Text)) then
      begin
        edLabel.Text:=quOtherItemlabel.AsString;
        edName.Text:=quOtherItemitem_name.AsString;
        edDescr.Text:=quOtherItemitem_desc.AsString;
        edUnit.Text:=quOtherItemUnit_Item_Desc.AsString;
      end;

end;
//*****************************************************************************
procedure TBillStor.EnableDetailFields;
begin
   if trim(TempGoodsCode)='' then TempGoodsCode:='0';
   if mde=1 then
      TempGoodsCode:='-1';
   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := TempItemCode ;
   quOtherItem.Parameters[1].Value := TempGoodsCode ;
   {if mde = 2 then  quOtherItem.Parameters[2].Value := 0
              else  quOtherItem.Parameters[2].Value := 1 ;}
   quOtherItem.Open ;
   dblGoods.KeyValue := null ;


   paOkCancel.visible    := True;
   PaDetailOper.Visible  := True;
   dblGoods.FieldType := ftRequired ; (*By M Merry *)
   FormInitializer1.FieldMode:=fmInsert;
   FormInitializer1.Execute;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TBillStor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TBillStor.FormActivate(Sender: TObject);
var mes:TMessage;
begin                 
   mes.Msg:=FORM_STATE;
   mes.Lparam := 13 ;
   Application.MainForm.Dispatch(mes);
   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TBillStor.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TBillStor.FormShow(Sender: TObject);
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
   DabData.quCostCenter.Parameters[1].Value := quBillListUnit_code.AsInteger;
   DabData.quCostCenter.Open;
   quReqList.Close;
   quReqList.Parameters[0].Value := 5;
//      if mde=2 then quReqList.Parameters[1].Value :=quBillListitem_req_no.AsInteger
      {else} quReqList.Parameters[1].Value :=NULL;
   quReqList.Open;
   {edCreator.Text:=  DabData.Fname+' '+dabdata.LName;
   edConfirmer.Text:=DabData.Fname+' '+dabdata.LName;
   meCreate.Text :=fdate.disp_date;
   meConfirm.Text:=fdate.disp_date;}
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
procedure TBillStor.meRepayStartChange(Sender: TObject);
begin
{   ChkRepayStart    := RepayStart.CheckDateStr(meRepayStart.Text,Cor_Str);
   ChkEmpRepayStart := ChkRepayStart Or ( meRepayStart.Text ='  /  /  ');}

   CheckFieldsSetDetailokButtons();
end;
//******************************************************************************
procedure TBillStor.btCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TBillStor.grItemsEnter(Sender: TObject);
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
procedure TBillStor.quBillListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TBillStor.grBillEnter(Sender: TObject);
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
procedure TBillStor.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TBillStor.btOkClick(Sender: TObject);
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
        1 : InsertDetail(dblGoods.KeyValue);
        2 : UpdateDetail();
        
      end;  // end case
//?   paMasterOper.Visible := True;
      SetDefaultMode(2);
    end;
end;
//****************************************************************************
procedure TBillStor.meCreateChange(Sender: TObject);
begin
  { meCreate.Text := FCreateDate.rdate( meCreate.Text );
   ChkCreate    := CreateDate.CheckDateStr(meCreate.Text,Cor_Str);
   ChkEmpCreate := ChkCreate Or ( meCreate.Text ='  /  /  ');
   CheckFieldsSetMasterOkButtons();}
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
procedure TBillStor.dblGoodsCloseUp(Sender: TObject);
begin
   
end;
//****************************************************************************
procedure TBillStor.dblItemCloseUp(Sender: TObject);
begin
   edUnit.Text := quOtherItemUnit_Item_Desc.AsString ;
   CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillStor.cbReqTypeChange(Sender: TObject);
begin
   CheckFieldsSetDetailokButtons;
end;
//****************************************************************************
procedure TBillStor.edDescrKeyPress(Sender: TObject; var Key: Char);
begin
  key := DabData.checkkey(Key);
end;
//****************************************************************************
procedure TBillStor.dblReqNoCloseUp(Sender: TObject);
begin
//   edReciver.Text := quReqListFLName.AsString;
   dblUnit.KeyValue := quReqListOrg_Unit_Code.AsInteger;

   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := 0;
   DabData.quCostCenter.Parameters[1].Value := 0;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := null ;

end;
//****************************************************************************
procedure TBillStor.dblUnitCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := null ;

end;
//****************************************************************************
procedure TBillStor.dblGoodsEnter(Sender: TObject);
begin
   quOtherItem.Close;
   quOtherItem.Parameters[0].Value := TempItemCode ;
   quOtherItem.Parameters[1].Value := TempGoodsCode ;
   {if mde = 2 then  quOtherItem.Parameters[2].Value := 0
              else  quOtherItem.Parameters[2].Value := 1 ;}
   quOtherItem.Open ;
end;
//****************************************************************************
procedure TBillStor.dblCostCenterEnter(Sender: TObject);
begin
   BtFail.Enabled := False ;
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
//****************************************************************************
procedure TBillStor.BtFailClick(Sender: TObject);
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
      quMasterUp.parameters[2].value := 0;

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

procedure TBillStor.grBillExit(Sender: TObject);
begin
   btFail.Enabled :=false;
end;

procedure TBillStor.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if   ( quBillList.RecordCount <> 0)and
        ( quBillListState.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;


procedure TBillStor.cbFilterStateChange(Sender: TObject);
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

procedure TBillStor.dblReqNoEnter(Sender: TObject);
begin
  BtFail.Enabled := False;
end;


procedure TBillStor.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TBillStor.dblGoodsClick(Sender: TObject);
begin
 CheckFieldsSetDetailokButtons;
end;

procedure TBillStor.Button1Click(Sender: TObject);
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
   DabData.qumoveable.Parameters[7].Value :=  -1;      }
   DabData.qumoveable.Open;
   ShowMvgood.ShowModal();
   quOtherItem.Locate('goods_code',DabData.qumoveablegoods_code.AsString, [loPartialKey]);
   if not quOtherItem.IsEmpty then
    begin
     dblGoods.KeyValue :=   quOtherItemgoods_code.AsString;
     edLabel.Text      :=   quOtherItemlabel.AsString ;
     edName.Text       :=   quOtherItemitem_name.AsString ;
    end;
end;

end.
