unit fmBillmov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,  ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  SmoothShow, SetForm, RSqllookup, RSqlEdit, RSqlMaskEdit, RSqlButton,
  RadForms,Variants;
type
  TBillmovable = class(TRadForm)
    quReqItems: TADOQuery;
    dsReqItems: TDataSource;
    quDetailUpdate: TADOQuery;
    quBillList: TADOQuery;
    dsBillList: TDataSource;                                                    
    quMasterInsert: TADOQuery;
    Panel9: TPanel;
    PaDetailOper: TPanel;
    quDetailInsert: TADOQuery;
    quMasterDelete: TADOQuery;
    Label3: TLabel;
    Label7: TLabel;
    quMasterUpdate: TADOQuery;
    dsOtherItem: TDataSource;
    quOtherItem: TADOQuery;
    quSelectItemFromOther: TADOQuery;
    paOkCancel: TPanel;
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
    quOrgUnit: TADOQuery;
    dsOrgUnit: TDataSource;
    dsCostCenter: TDataSource;
    dsDeployLoc: TDataSource;
    quReqNoItem: TADOQuery;
    quNumberofMov: TADOQuery;
    quItemsRequest: TADOQuery;
    quItemsRequestReq_No: TIntegerField;
    quItemsRequestItem_Code: TStringField;
    quItemsRequestReq_Amount: TIntegerField;
    quItemsRequestConf_Amount: TIntegerField;
    quItemsRequestRecieve_Amount: TIntegerField;
    quItemsRequestReq_Type: TSmallintField;
    quMasterUp: TADOQuery;
    Panel16: TPanel;
    grBill: TDBGrid;
    Panel14: TPanel;
    Panel15: TPanel;
    cbFilterState: TComboBox;
    quFindLastNo: TADOQuery;
    quDetailInsertUser: TADOQuery;
    quDetailUpdateUser: TADOQuery;
    Label10: TLabel;
    quFindLastNoBill_no: TIntegerField;
    quReqNoItemitem_Code: TStringField;
    quReqNoItemRecieve_Amount: TIntegerField;
    quNumberofMovItemCount: TIntegerField;
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
    pplExiter: TppLabel;
    ppLabel22: TppLabel;
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
    pplbCostRec: TppLabel;
    ppUnitRec: TppLabel;
    ppCostRec: TppLabel;
    quempname: TADOQuery;
    quempnameemp_no: TStringField;
    quempnameFLName: TStringField;
    quEmpNo: TADOQuery;
    quEmpNoemp_no: TStringField;
    quEmpNoFLName: TStringField;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    quCostCenterUt_Org_Code: TIntegerField;
    quCostCenterUt_Code: TSmallintField;
    quCostCenterUt_Name: TStringField;
    quCostCenterUt_Mast_Code: TSmallintField;
    quOrgUnitUt_Org_Code: TIntegerField;
    quOrgUnitUt_Code: TSmallintField;
    quOrgUnitUt_Name: TStringField;
    quOrgUnitUt_Mast_Code: TSmallintField;
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
    quReportitem_unit: TSmallintField;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SmallintField2: TSmallintField;
    StringField5: TStringField;
    SmallintField3: TSmallintField;
    IntegerField4: TIntegerField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    StringField6: TStringField;
    quOtherItemItem_Name: TStringField;
    quOtherItemItem_desc: TStringField;
    quOtherItemUnit_Item_Desc: TStringField;
    quOtherItemRec_Org_Code: TIntegerField;
    quOtherItemRec_Unit_Code: TSmallintField;
    quOtherItemRec_Cost_Code: TSmallintField;
    quOtherItemLabel: TIntegerField;
    quOtherItemBill_No: TIntegerField;
    quOtherItemBill_Type: TSmallintField;
    edName: TRSqlEdit;
    edDescr: TRSqlEdit;
    edLabel: TRSqlEdit;
    edUnit: TRSqlEdit;
    edBillNo: TRSqlEdit;
    edReason: TRSqlEdit;
    edCreator: TRSqlEdit;
    edConfirmer: TRSqlEdit;
    dblGoods: TRSqlDbLookup;
    dblUnitSend: TRSqlDbLookup;
    dblCostCenterSend: TRSqlDbLookup;
    dblSender: TRSqlDbLookup;
    dblReqNo: TRSqlDbLookup;
    dblUnit: TRSqlDbLookup;
    dblCostCenter: TRSqlDbLookup;
    meCreate: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    BtFail: TRSqlButton;
    quReqItemsgoods_code: TStringField;
    ADOQuery1goods_code: TStringField;
    quOtherItemGoods_code: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btOKClick(Sender: TObject);
    procedure meRepayStartKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelClick(Sender: TObject);
    procedure grItemsEnter(Sender: TObject);
    procedure quBillListAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure dblItemCloseUp(Sender: TObject);
    procedure dblReqNoCloseUp(Sender: TObject);
    procedure dblGoodsEnter(Sender: TObject);
    procedure dblCostCenterSendEnter(Sender: TObject);
    procedure dblLocCodeSendEnter(Sender: TObject);
    procedure dblUnitCloseUp(Sender: TObject);
    procedure dblCostCenterEnter(Sender: TObject);
    procedure dblLocCodeEnter(Sender: TObject);
    procedure BtFailClick(Sender: TObject);
    procedure dblReqNoEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure dblCostCenterSendClick(Sender: TObject);
    procedure quOtherItemAfterScroll(DataSet: TDataSet);
    procedure dblUnitSendClick(Sender: TObject);
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
     procedure ClearDetailFields;
     procedure SetDetailFields;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//------------------------------------------------------------------------
     function  chkExist : Boolean;
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

  Billmovable: TBillmovable;
  CreatorNo,ConfirmerNo:integer;

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
  TempGoodsVar : Variant;
  ChkResult    : Boolean;
  IsClear      : Boolean;
  ActiveGrid   : Integer;
  BMark        : TBookmark;
  I            : Integer;
implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TBillmovable.DoScroll(var mes:TMessage);
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
procedure TBillmovable.DoNew(var mes: TMessage);
begin
   grBill.TabStop:= false;
   grItems.TabStop:= false;
   cbFilterState.TabStop  := False;

   mde := 1;
   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex := 0;
           edCreator.Text:=dabdata.FName+' '+dabdata.Lname;
           //edConfirmer.Text:=dabdata.FName+' '+dabdata.Lname;
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

           if quFindLastNo.RecordCount = 0 then edBillNo.Text := '81000001'
              else edBillNo.Text := IntToStr(quFindLastNoBill_no.AsInteger + 1) ;

           meCreate.Text := Dabdata.disp_date ;
           ChkCreate     := True;
           ChkEmpCreate  := True;
//           dblReqNo.SetFocus;
        end;
    2 : begin
           paOkCancel.Visible   := True;
           PaDetailOper.Visible := True;

           mde := 0;
           if Trim(edBillNo.Text)='' then exit;
           quReqItems.Close;
           quReqItems.Open;

           quOtherItem.Close;
//           quOtherItem.Parameters[0].Value:=quBillListBill_no.Value;
           quOtherItem.Parameters[0].Value:=OrganizCode;
           quOtherItem.Parameters[1].Value:=quBillListrec_Unit_code.Value;
           quOtherItem.Parameters[2].Value:=quBillListrec_Cost_code.Value;
           quOtherItem.Open;



           dblGoods.FieldType:=ftRequired;
           FormInitializer1.Execute;

           ClearDetailFields();
//           dblGoods.SetFocus;
        end
    end;
end;
//****************************************************************************
procedure TBillmovable.DoEdit(var mes :TMessage);
begin
   grBill.TabStop:= false;
   grItems.TabStop:= false;
   cbFilterState.TabStop  := False;

   mde := 2;
   case ActiveGrid of
    1 : begin
           if quBillList.RecordCount = 0 then exit;
           if quBillListState.AsInteger > 0 then
           begin
              Str1 := '«Œÿ«—';
              Str2 := 'ÕÊ«·Â ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
              ShowMessage2(Str2);
              mde:=0 ;
              exit;
           end;
        {   if quReqItems.RecordCount = 0 then
           begin
              Str1 := '«Œÿ«—';
              Str2 := SM_fmReqCfm_Item ;
              ShowMessage2(Str2);
              mde:=0 ;
              exit;
           end;   }
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
        end;
    2 : begin
           if quReqItems.IsEmpty then exit;
           paOkCancel.Visible   := True;
           PaDetailOper.Visible := True;
           dblGoods.FieldType := ftRequired;
           FormInitializer1.Execute;
           quOtherItem.Close;
//           quOtherItem.Parameters[0].Value:=quBillListBill_no.Value;
           quOtherItem.Parameters[0].Value:=OrganizCode;
           quOtherItem.Parameters[1].Value:=quBillListrec_Unit_code.Value;
           quOtherItem.Parameters[2].Value:=quBillListrec_Cost_code.Value;
           quOtherItem.Open;
           {ShowMessage(
              'Recird Is:'+IntToStr(quOtherItem.RecordCount)+#10#13
              +'Value 0: '+IntToStr(quOtherItem.Parameters[0].Value)+#10#13
              +'Value 1:'+IntToStr(quOtherItem.Parameters[1].Value)+#10#13
              +'Value 2:'+IntToStr(quOtherItem.Parameters[2].Value));      }
           ClearDetailFields();
           SetDetailFields();
           dblGoods.SetFocus;
        end;
    end;
    btOK.Enabled := True;
    FormInitializer1.FieldMode := fmEdit;
    FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TBillmovable.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
    1 : begin
           if quBillListState.AsInteger <> 0 then
           begin
              Str1 := '«Œÿ«—';
              Str2 := '›ﬁÿ œ—ŒÊ«”   ‰ŸÌ„ ‘œÂ ﬁ«»· Õ–› „Ì »«‘œ';
              ShowMessage2(Str2);
              mde:=0 ;exit;
           end;
           if ( Mde = 0 )  and ( quBillList.RecordCount >=1 ) and
              ( quBillList.RecNo >= 1) then
          begin
             Str1 := UUserMsg.SM_Pub_DeleteMode;
//             Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
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
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TBillmovable.SetDefaultMode(i: integer);
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
procedure TBillmovable.CheckEscEnter(sender: TObject; Skey: char);
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
procedure TBillmovable.SetGridColor(i: integer);
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
//*****************************************************************************
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
procedure TBillmovable.InsertMaster();
var  Str1,Str2 : String;
begin
     if not chkExist then
     begin
        Str1 := '«Œÿ«—';
        Str2 := 'ﬂ«·«Â«Ì „Ê—œ ‰Ÿ— œ—ŒÊ«”  œ— „Êﬁ⁄Ì  „‘Œ’ ‘œÂ ÊÃÊœ ‰œ«—œ';
        ShowMessage2(Str2);
        mde:=0 ;
        exit;
     end;
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := StrToInt(edBillNo.Text);
      quMasterInsert.parameters[1].value := 1;

      quMasterInsert.parameters[2].value := CreatorNo;
      quMasterInsert.parameters[3].value := meCreate.Text;
      quMasterInsert.parameters[4].value := NULL;
      quMasterInsert.parameters[5].value := NULL;
      quMasterInsert.parameters[6].value := dblReqNo.KeyValue;
      quMasterInsert.parameters[7].value := quReqListCreator.AsString;
      quMasterInsert.parameters[8].value:= OrganizCode;
      quMasterInsert.parameters[9].value:= dblUnitSend.KeyValue;
//      if dblCostCenter.KeyValue = null then quMasterInsert.parameters[10].value:=NULL  else
      quMasterInsert.parameters[10].value:= dblCostCenterSend.KeyValue;

      quMasterInsert.parameters[11].value:= dblSender.KeyValue;
      quMasterInsert.parameters[12].value:= OrganizCode;
      quMasterInsert.parameters[13].value:= dblUnit.KeyValue ;
      if dblCostCenterSend.KeyValue = null then quMasterInsert.parameters[14].value:= 0
      else quMasterInsert.parameters[14].value:= dblCostCenter.KeyValue;

      quMasterInsert.parameters[15].value:= 0;  //STATE
      quMasterInsert.parameters[16].value:= edReason.Text;
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

    //AssignGoodsToBill();
    SetDefaultMode(1);
end;
//***************************************************************************
procedure TBillmovable.UpdateMaster();
begin
   BMark := quBillList.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := CreatorNo;
      quMasterUpdate.parameters[1].value := meCreate.Text;
      quMasterUpdate.parameters[2].value := dblReqNo.KeyValue;
      quMasterUpdate.parameters[3].value := quReqListCreator.AsString;
      quMasterUpdate.parameters[4].value := OrganizCode;
      quMasterUpdate.parameters[5].value := dblUnit.KeyValue;
      quMasterUpdate.parameters[6].value := dblCostCenter.KeyValue;
      quMasterUpdate.parameters[7].value := edReason.Text;
      quMasterUpdate.parameters[8].value := StrToInt(edBillNo.Text);
      quMasterUpdate.parameters[9].value := 1;

      quMasterUpdate.Prepared := True;
      quMasterUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterUpdate.RowsAffected <>1 ) then
   begin
     Str1 := '«Œÿ‹‹«—';
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
procedure TBillmovable.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt(edBillNo.Text);
      quMasterDelete.parameters[1].value := 1;

      quMasterDelete.Prepared := True;
      quMasterDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quMasterDelete.RowsAffected <>1 ) then
   begin
     Str1 := '«Œÿ‹‹«—';
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
procedure TBillmovable.ClearMasterFields;
begin
      edBillNo.Clear ;
      edReason.Clear ;

      meCreate.Clear ;
      meConfirm.Clear ;

      dblReqNo.KeyValue      := null;
      dblUnit.KeyValue       := null;
      dblCostCenter.KeyValue := null;
      dblunitSend.KeyValue       := null;
      dblCostCenterSend.KeyValue := null;

      //dblCreator.KeyValue    := '';
      //dblConfirmer.KeyValue  := '';

      dblSender .KeyValue    := NULL;
end;
//**************************************************************************
procedure TBillmovable.SetMasterFields();
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := dblUnitSend.KeyValue;
   DabData.quCostCenter.Open;

      edBillNo.Text          :=  quBillListBill_no.AsString;
      meCreate.Text          :=  quBillListCreate_Date.AsString;
      meConfirm.Text         :=  quBillListconfirm_date.AsString;

      dblReqNo.KeyValue      :=  quBillListitem_req_no.AsInteger;
      quempNo.Close;
      quEmpNo.parameters[0].Value:=quBillListCreator.AsString;
      quEmpNo.open;
      edCreator.Text:=quEmpNoFLName.AsString;
      CreatorNo:=strtoint(trim(DabData.emp_no));
      //if not quEmpNo.IsEmpty then CreatorNo:=strtoint(trim(quBillListCreator.AsString));
      //dblCreator.KeyValue    :=  quBillListCreator.AsString;
      quempNo.Close;
      quEmpNo.parameters[0].Value:=quBillListconfirmer.AsString;
      quEmpNo.open;
      edConfirmer.Text:=quEmpNoFLName.AsString;
      //dblConfirmer.KeyValue  :=  quBillListconfirmer.AsString;
      if not quEmpNo.IsEmpty then ConfirmerNo:=strtoint(trim(quBillListconfirmer.AsString));
      dblSender.KeyValue         :=  quBillListdelivery_man.AsString;
      dblunitSend.KeyValue       :=  quBillListunit_code.AsInteger;
      dblCostCenterSend.KeyValue :=  quBillListcost_code.AsInteger;
      dblUnit.KeyValue           :=  quBillListrec_unit_code.AsInteger;
      dblCostCenter.KeyValue     :=  quBillListRec_cost_code.AsInteger;

      edReason.Text:= quBillListReason.AsString;
end;
//*****************************************************************************
procedure TBillmovable.DisableMasterFields;
begin

      quReqList.Close;
      quReqList.Parameters[0].Value := 3;
      quReqList.Parameters[1].Value := NULL;
      quReqList.Open;

      dblUnit.FieldType:=ftDisplay;
      dblCostCenter.FieldType:=ftDisplay;
      dblReqNo.FieldType:=ftDisplay;
      edReason.FieldType:=ftDisplay;
      dblUnitSend.FieldType:=ftDisplay;
      dblSender.FieldType:=ftDisplay;
      dblCostCenterSend.FieldType:=ftDisplay;
      FormInitializer1.FieldMode:=fmInsert;
      FormInitializer1.Execute;

end;
//*****************************************************************************
procedure TBillmovable.EnableMasterFields;
begin
      dblUnit.FieldType:=ftRequired;
      dblCostCenter.FieldType:=ftNonRequired;
      dblReqNo.FieldType:=ftRequired;
      edReason.FieldType:=ftNonRequired;
      dblUnitSend.FieldType:=ftNonRequired;
      dblSender.FieldType:=ftNonRequired;
      dblCostCenterSend.FieldType:=ftNonRequired;
      FormInitializer1.FieldMode:=fmInsert;
      FormInitializer1.Execute;

      dblSender.KeyValue:= null;

      DabData.quOrgUnit.Close;
      DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
      DabData.quOrgUnit.Open;
      dblUnit.KeyValue := null ;

      DabData.quCostCenter.Close;
      DabData.quCostCenter.Parameters[0].Value := OrganizCode;
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
      dblCostCenter.KeyValue := null ;


      quOrgUnit.Close;
      quOrgUnit.Parameters[0].Value := OrganizCode;
      quOrgUnit.Open;
      dblunitSend.KeyValue := null ;

      quCostCenter.Close;
      quCostCenter.Parameters[0].Value := OrganizCode;
      quCostCenter.Parameters[1].Value := quOrgUnitUt_Code.AsInteger;
      quCostCenter.Open;
      dblCostCenterSend.KeyValue := null ;


      quReqList.Close;
      quReqList.Parameters[0].Value :=3;
      if mde=2 then quReqList.Parameters[1].Value := quBillListitem_req_no.AsString
      else      quReqList.Parameters[1].Value := NULL;
      quReqList.Open;
      dblReqNo.KeyValue    := null ;


      paOkCancel.visible   := True;
      PaDetailOper.Visible := False;

      ChkCreate    := True;
      ChkEmpCreate := True;

      meCreate.Text   := Dabdata.disp_date;
end;
//------------------------ Detail  Region ------------------------------------
procedure TBillmovable.ClearDetailFields;
begin
   dblGoods.KeyValue      := null ;
end;//
//**************************************************************************
procedure TBillmovable.SetDetailFields();
begin
   if quReqItems.RecordCount <> 0 then
   begin
      dblGoods.KeyValue     :=  quReqItemsgoods_code.AsString;
      edLabel.Text          :=  quReqItemsLabel.AsString;
      edName.Text           :=  quReqItemsitem_name.AsString ;
      edDescr.Text          :=  quReqItemsitem_desc.AsString ;
      edUnit.Text           :=  quReqItemsUnit_Item_Desc.AsString ;

      TempItemCode          :=  quReqItemsitem_code.AsString ;
      TempGoodsCode         :=  quReqItemsgoods_code.AsString;
      TempGoodsVar          :=  quReqItemsgoods_code.AsVariant;
   end;
end;
//*****************************************************************************
//*****************************************************************************
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TBillmovable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TBillmovable.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 13 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TBillmovable.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TBillmovable.FormShow(Sender: TObject);
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

   //qudblEmp.Close;
   //qudblEmp.Open;

   DabData.quOrgUnit.Close;
   DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
   DabData.quOrgUnit.Open;

   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
//???   DabData.quCostCenter.Parameters[1].Value := quBillListrec_code.AsInteger;
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

   ChkCreate    := False;
   ChkEmpCreate := True;

   ChkCreateBill     := False;
   ChkEmpCreateBill  := True;

   grBill.SetFocus;
end;
//*****************************************************************************
//*****************************************************************************
procedure TBillmovable.btCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TBillmovable.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TBillmovable.grItemsEnter(Sender: TObject);
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
   CheckSetFailButton;
end;
//****************************************************************************
procedure TBillmovable.quBillListAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TBillmovable.grBillEnter(Sender: TObject);
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
   CheckSetFailButton;
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
procedure TBillmovable.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TBillmovable.btOkClick(Sender: TObject);
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
        0 :
         try
          quDetailInsert.Parameters[0].Value:=quOtherItemGoods_code.asString;
          quDetailInsert.Parameters[1].Value:=quBillListBill_no.Value;
          quDetailInsert.Parameters[2].Value:=1;
          quDetailInsert.ExecSQL;
         except;
           DabData.ShowPopupMessage('‰ Ê‰” „');
         end;
        2:
         try
          quDetailUpdate.Parameters[0].Value:=quOtherItemgoods_code.asString;
          quDetailUpdate.Parameters[1].Value:=1;
          quDetailUpdate.Parameters[2].Value:=quReqItemsgoods_code.AsString;
          quDetailUpdate.Parameters[3].Value:=quBillListBill_No.Value;
          quDetailUpdate.Parameters[4].Value:=1;
          quDetailUpDate.ExecSQL;
         except;
           DabData.ShowPopupMessage('‰ Ê‰” „');
         end;
     end; //case
     quReqItems.Close;
     quReqItems.Open;
     SetDefaultMode(2);
    end;
end;
//****************************************************************************
procedure TBillmovable.dblItemCloseUp(Sender: TObject);
begin
   edUnit.Text := quOtherItemUnit_Item_Desc.AsString ;
end;
//****************************************************************************
procedure TBillmovable.dblReqNoCloseUp(Sender: TObject);
begin
//   edReceiver.Text   := quReqListFLName.AsString;
   dblUnit.KeyValue := quReqListOrg_Unit_Code.AsInteger;
end;
//****************************************************************************
procedure TBillmovable.dblGoodsEnter(Sender: TObject);
begin
 CheckSetFailButton;
end;
//****************************************************************************
procedure TBillmovable.dblCostCenterSendEnter(Sender: TObject);
begin
   if not(CheckNull(dblunitSend.Text)) then
   begin
      quCostCenter.Close;
      quCostCenter.Parameters[0].Value := 0;
      quCostCenter.Parameters[1].Value := 0;
      quCostCenter.Open;
      dblCostCenterSend.KeyValue := null ;
   end
   else
   if (CheckNull(dblunitSend.Text)) then
   begin
      quCostCenter.Close;
      quCostCenter.Parameters[0].Value := OrganizCode;
      quCostCenter.Parameters[1].Value := quOrgUnitUt_Code.AsInteger;
      quCostCenter.Open;
      dblCostCenterSend.KeyValue := null ;
   end;

end;
//****************************************************************************
procedure TBillmovable.dblLocCodeSendEnter(Sender: TObject);
begin
   if not(CheckNull(dblCostCenterSend.Text) ) then
   begin
      quDeployLoc.Close;
      quDeployLoc.Parameters[0].Value := 0;
      quDeployLoc.Parameters[1].Value := 0;
      quDeployLoc.Open;
//???      dblLocCodeSend.KeyValue := -1 ;
   end
   else
   if (CheckNull(dblCostCenterSend.Text) ) then
   begin
      quDeployLoc.Close;
      quDeployLoc.Parameters[0].Value := OrganizCode;
      quDeployLoc.Parameters[1].Value := quCostCenterUt_Code.AsInteger;
      quDeployLoc.Open;
//???      dblLocCodeSend.KeyValue := -1 ;
   end
end;
//****************************************************************************

//proced
procedure TBillmovable.dblUnitCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;
   dblCostCenter.KeyValue := null ;

   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value := 0;
   DabData.quDeployLoc.Parameters[1].Value := 0;
   DabData.quDeployLoc.Open;
   dblCostCenterSend.KeyValue:=null;
   //dblLocCode.KeyValue := -1 ;


end;


procedure TBillmovable.dblCostCenterEnter(Sender: TObject);
begin
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
      DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
      DabData.quCostCenter.Open;
//???      dblCostCenter.KeyValue := -1 ;
   end;
end;

procedure TBillmovable.dblLocCodeEnter(Sender: TObject);
begin
   if not(CheckNull(dblCostCenter.Text) ) then
   begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := 0;
      DabData.quDeployLoc.Parameters[1].Value := 0;
      DabData.quDeployLoc.Open;
//???      dblLocCode.KeyValue := -1 ;
   end
   else
   if (CheckNull(dblCostCenter.Text) ) then
   begin
      DabData.quDeployLoc.Close;
      DabData.quDeployLoc.Parameters[0].Value := OrganizCode;
      DabData.quDeployLoc.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
      DabData.quDeployLoc.Open;
//???      dblLocCode.KeyValue := -1 ;
   end
end;




Function TBillmovable.chkExist : boolean;
var i:integer;
begin
     quItemsRequest.close;
     quItemsRequest.Parameters[0].Value := dblReqNo .KeyValue ;
     quItemsRequest.open;

     for i:=1 to quitemsRequest.recordcount do
        begin
           quNumberofMov.Close;
           quNumberofMov.Parameters[0].Value := organizCode;
           quNumberofMov.Parameters[1].Value := dblUnitSend.KeyValue;
           if dblCostCenterSend.KeyValue = null then quNumberofMov.Parameters[2].Value := NULL
           else quNumberofMov.Parameters[2].Value := dblCostCenterSend.KeyValue ;
           quNumberofMov.Parameters[3].Value := quItemsRequestItem_Code.AsString ;
           quNumberofMov.Open ;

           if quNumberofMovItemCount.AsInteger >= quItemsRequestRecieve_Amount.AsInteger  then chkExist:=true
             else begin chkExist:= false; exit; end;
           quItemsRequest.Next;
        end;
end;

procedure TBillmovable.BtFailClick(Sender: TObject);
var TmpStr  : string;
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
           quMasterUp.parameters[2].value := 1;

           quMasterUp.Prepared := True;
           quMasterUp.ExecSql;

           DabData.ADOC.CommitTrans;
           except
           DabData.ADOC.RollbackTrans;
         end;

         if (quMasterUp.RowsAffected <>1 ) then
         begin
            Str1 :='«Œÿ‹‹«—';
            Str2 := UUserMsg.SM_Pub_RetryMsg;
            ShowMessage2(Str2);
         end;
         cbFilterState.ItemIndex := 1 ;
         TmpStr := edBillNo.Text ;

         quBillList.close;
         quBillList.Parameters[0].Value := cbFilterState.ItemIndex;
         quBillList.Parameters[1].Value := NULL ;
         quBillList.Open;

         quBillList.Locate('Bill_No',TmpStr,[locaseinsensitive]);
         end;
         mde:=0 ;
end;

procedure TBillmovable.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if  ( quBillList.RecordCount <> 0)and( qubillListState.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;

procedure TBillmovable.dblReqNoEnter(Sender: TObject);
begin
 BtFail.Enabled := False ;
end;

procedure TBillmovable.cbFilterStateChange(Sender: TObject);
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

procedure TBillmovable.DoPrint(var mes: TMessage);
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
   ppReqNo.text  :=  dblReqNo.Text;
   ppDate.Text   :=  Dabdata.disp_date;
   ppState.Text  := ' «ÌÌœ ‘œÂ';
   ppUnit.text   :=  dblunit.Text;
   if checkNull( dblcostCenter.Text )
       then  ppCost.text       :=  dblCostCenter.Text
       else  begin  pplbCost.Visible  := True; ppCost.Visible := False; end;

   ppUnitRec.text   :=  dblunitSend.Text;
   if checkNull( dblcostCenterSend.Text )
       then  ppCostRec.text       :=  dblCostCenterSend.Text
       else  begin  pplbCostRec.Visible  := True; ppCostRec.Visible := False; end;

   ppReason.Text  := edreason.Text ;
   ppBillDate.Text:= mecreate.Text ;

   ppReport1.Print;
end;

procedure TBillmovable.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := inttostr(i div 3);
  i := i+1;
end;

procedure TBillmovable.dblCostCenterSendClick(Sender: TObject);
begin
     qudblEmp.Close;
     qudblEmp.Parameters[0].Value:=quCostCenterUt_Mast_Code.Value;
     qudblEmp.Parameters[1].Value:=quCostCenterUt_Code.Value;
     qudblEmp.Open;
     dblSender.KeyField:='emp_no';
     dblSender.ListField:='FLName';
     //dblSender.KeyValue:=-1;
end;


procedure TBillmovable.quOtherItemAfterScroll(DataSet: TDataSet);
begin
  edLabel.text:=quOtherItemLabel.AsString;
  edName.Text:=quOtherItemItem_Name.AsString;
  edDescr.Text:=quOtherItemItem_desc.AsString;
  edUnit.Text:=quOtherItemUnit_Item_Desc.AsString;
end;


procedure TBillmovable.dblUnitSendClick(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := dblUnitSend.KeyValue;
   DabData.quCostCenter.Open;
end;

end.







