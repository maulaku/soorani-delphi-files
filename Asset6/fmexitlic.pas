unit fmExitLic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,comobj, RSqlMaskEdit, SmoothShow, SetForm,
   RSqlButton, RSqllookup, RSQLComboBox, RSqlEdit,RadForms,Variants;
type
  TExitLic = class(TRadForm)
    Label31: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Panel13: TPanel;
    paOkCancel: TPanel;
    BtCancelTrans: TRSqlButton;
    BtOkTrans: TRSqlButton;
    Panel16: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    meCreateD: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    dblCreator: TRSqlDbLookup;
    dblConfirmer: TRSqlDbLookup;
    Panel20: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    RadioGroup1: TRadioGroup;
    rbMend: TRadioButton;
    rbSale: TRadioButton;
    rbCom: TRadioButton;
    edState: TRSqlEdit;
    dblCom: TRSqlDbLookup;
    dblSale: TRSqlDbLookup;
    cbLicenseType: TRSqlComboBox;
    rbBill: TRadioButton;
    dblBills: TRSqlDbLookup;
    Panel21: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    edLicenseNo: TRSqlEdit;
    meCreateDate: TRSqlMaskEdit;
    grItem: TDBGrid;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel1: TPanel;
    Panel25: TPanel;
    Panel24: TPanel;
    Panel26: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label23: TLabel;
    PaDetailOper: TPanel;
    Button1: TButton;
    edTrnsLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    dblItem: TRSqlDbLookup;
    cbGoodType: TRSqlComboBox;
    PaReturn: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    laExiter: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LaExiterF: TLabel;
    Label24: TLabel;
    meReturnDate: TRSqlMaskEdit;
    meExitDate: TRSqlMaskEdit;
    meReturnTime: TRSqlMaskEdit;
    meExittime: TRSqlMaskEdit;
    dblExitGaurd: TRSqlDbLookup;
    dblReturnGaurd: TRSqlDbLookup;
    grcom: TDBGrid;
    Panel18: TPanel;
    BtFail: TButton;
    Panel23: TPanel;
    cbFilterState: TComboBox;
    quDetailUpdate: TADOQuery;
    quLic: TADOQuery;
    quLicLicense_no: TIntegerField;
    quLicLicense_type: TSmallintField;
    quLiccom_tr_no: TIntegerField;
    quLicSale_com_no: TIntegerField;
    quLicMend: TBooleanField;
    quLicCreator: TStringField;
    quLicCreate_date: TStringField;
    quLicConfirmer: TStringField;
    quLicConfirm_date: TStringField;
    quLicState: TSmallintField;
    quLicExiterEmp: TStringField;
    quLicExiterName: TWideStringField;
    quLicExitGaurd: TStringField;
    quLicExit_date: TStringField;
    quLicExit_time: TStringField;
    quLicReturn_Gaurd: TStringField;
    quLicReturn_date: TStringField;
    quLicReturn_time: TStringField;
    quLicCreatorN: TStringField;
    quLicStatename: TStringField;
    quLicBill_No: TIntegerField;
    dsCom: TDataSource;
    quMasterInsert: TADOQuery;
    quInExited_Goods: TADOQuery;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
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
    quMasterDelete: TADOQuery;
    quMasterUpdate: TADOQuery;
    dsDet: TDataSource;
    quDetailDelete: TADOQuery;
    quRecMasterUpdate: TADOQuery;
    dsTrans: TDataSource;
    quTrans: TADOQuery;
    dsSale: TDataSource;
    quSale: TADOQuery;
    quSaleSale_com_no: TIntegerField;
    quSalePass_no: TStringField;
    quSaleSale_date: TStringField;
    quSaleReceiver: TStringField;
    quSaleCreator: TStringField;
    quSaleCreate_date: TStringField;
    quSaleGoods_confirmer: TStringField;
    quSaleGoods_conf_date: TStringField;
    quSaleSale_unit_confirmer: TStringField;
    quSaleSale_conf_date: TStringField;
    quSaleAudit_confirm: TStringField;
    quSaleAudit_conf_date: TStringField;
    quTransDet: TADOQuery;
    quTransDetcom_tr_no: TIntegerField;
    quTransDetGoods_code: TStringField;
    quTransDetPlaque_no: TStringField;
    quTransDetReason: TStringField;
    quTransDetRow_no: TIntegerField;
    quTransDetGoods_type: TSmallintField;
    quTransDetGeneralCode: TStringField;
    quTransDetItemName: TStringField;
    quTransDetLabel: TIntegerField;
    quTransDetItemCode: TStringField;
    quTransDetstate: TSmallintField;
    quTransDetStatename: TStringField;
    quTransDetLabeln: TStringField;
    quSaleDet: TADOQuery;
    quSaleDetSale_com_no: TIntegerField;
    quSaleDetGoods_code: TLargeintField;
    quSaleDetExpert_price: TLargeintField;
    quSaleDetSale_price: TLargeintField;
    quSaleDetPlaque_no: TStringField;
    quSaleDetRow_no: TIntegerField;
    quSaleDetGoods_type: TSmallintField;
    quSaleDetPrice_unit: TSmallintField;
    quSaleDetGeneralCode: TStringField;
    quSaleDetItemName: TStringField;
    quSaleDetLabel: TIntegerField;
    quSaleDetItemCode: TStringField;
    quSaleDetState: TSmallintField;
    quSaleDetStatename: TStringField;
    quSaleDetUname: TStringField;
    quSaleDetLabeln: TStringField;
    quUpdateTrans: TADOQuery;
    quUpdateSale: TADOQuery;
    quMasterUp: TADOQuery;
    quItems: TADOQuery;
    quItemsGoods_Code: TStringField;
    quItemsitem_code: TStringField;
    quItemsreceipt_no: TIntegerField;
    quItemslabel: TIntegerField;
    quItemsBprice: TFloatField;
    quItemsEprice: TFloatField;
    quItemsType: TSmallintField;
    quItemsState: TSmallintField;
    quItemsGoodS_CodeStr: TStringField;
    quItemsitem_code_1: TStringField;
    quItemsitem_name: TStringField;
    quItemsclass_code: TSmallintField;
    quItemsitem_desc: TStringField;
    quItemsitem_unit: TSmallintField;
    quItemsItem_Inventory: TIntegerField;
    quItemsOrder_Point: TSmallintField;
    quItemsInventory_Limit: TSmallintField;
    quItemsctype: TStringField;
    quItemsStateName: TStringField;
    quMConfirm: TADOQuery;
    dsItems: TDataSource;
    quExitedGoods: TADOQuery;
    quExitedGoodsLicense_No: TIntegerField;
    quExitedGoodsGoods_code: TStringField;
    quExitedGoodsprevious_State: TIntegerField;
    quExitedGoodsAmount: TIntegerField;
    quExitedGoodsGeneralCode: TStringField;
    quReturnUpdate: TADOQuery;
    quFindLastNo: TADOQuery;
    quFindLastNoLicense_no: TIntegerField;
    quFindLastNoLicense_type: TSmallintField;
    quFindLastNocom_tr_no: TIntegerField;
    quFindLastNoSale_com_no: TIntegerField;
    quFindLastNoMend: TBooleanField;
    quFindLastNoCreator: TStringField;
    quFindLastNoCreate_date: TStringField;
    quFindLastNoConfirmer: TStringField;
    quFindLastNoConfirm_date: TStringField;
    quFindLastNoState: TSmallintField;
    quFindLastNoExiterEmp: TStringField;
    quFindLastNoExiterName: TWideStringField;
    quFindLastNoExitGaurd: TStringField;
    quFindLastNoExit_date: TStringField;
    quFindLastNoExit_time: TStringField;
    quFindLastNoReturn_Gaurd: TStringField;
    quFindLastNoReturn_date: TStringField;
    quFindLastNoReturn_time: TStringField;
    quFindLastNoCreatorN: TStringField;
    quFindLastNoStatename: TStringField;
    quWvItems: TADODataSet;
    quWvItemsItem_Code: TStringField;
    quWvItemsItem_Name: TStringField;
    qiInExited_Items: TADOQuery;
    quMendDet: TADOQuery;
    quMendDetLicense_no: TIntegerField;
    quMendDetLicense_type: TSmallintField;
    quMendDetcom_tr_no: TIntegerField;
    quMendDetSale_com_no: TIntegerField;
    quMendDetMend: TBooleanField;
    quMendDetCreator: TStringField;
    quMendDetCreate_date: TStringField;
    quMendDetConfirmer: TStringField;
    quMendDetConfirm_date: TStringField;
    quMendDetState: TSmallintField;
    quMendDetExiterEmp: TStringField;
    quMendDetExiterName: TStringField;
    quMendDetExitGaurd: TStringField;
    quMendDetExit_date: TStringField;
    quMendDetExit_time: TStringField;
    quMendDetReturn_Gaurd: TStringField;
    quMendDetReturn_date: TStringField;
    quMendDetReturn_time: TStringField;
    quMendDetItem_Code1: TStringField;
    quMendDetLicense_no_1: TIntegerField;
    quMendDetAmount: TIntegerField;
    quMendDetlabel: TIntegerField;
    quMendDetGoods_Code: TStringField;
    quMendDetItem_Code: TStringField;
    quMendDetMaster_Name: TStringField;
    quMendDetDetail_Name: TStringField;
    quMendDetItem_Name: TStringField;
    quMendDetPosition_code: TStringField;
    quMendDetInventory_Limit: TSmallintField;
    quMendDetOrder_Point: TSmallintField;
    quMendDetItem_Inventory: TIntegerField;
    quMendDetitem_desc: TStringField;
    quMendDetclass_code: TSmallintField;
    quMendDetclass_desc: TStringField;
    quMendDetclass_name: TStringField;
    quMendDetClass_Type: TSmallintField;
    quMendDetppc_code: TStringField;
    quMendDetpc_code: TStringField;
    quMendDetps_code: TStringField;
    quMendDetUnit_Item: TStringField;
    quMendDetClass_TypeStr: TStringField;
    dsBill: TDataSource;
    quBills: TADOQuery;
    quBillsBill_TypeStr: TStringField;
    quBillsStateStr: TStringField;
    quBillsCreatorFLName: TStringField;
    quBillsConfirmerFLName: TStringField;
    quBillsConf_TellerFLName: TStringField;
    quBillsreceiverFLName: TStringField;
    quBillsDelivery_ManFLName: TStringField;
    quBillsBill_no: TIntegerField;
    quBillsBill_type: TSmallintField;
    quBillscreator: TStringField;
    quBillscreate_date: TStringField;
    quBillsconfirmer: TStringField;
    quBillsconfirm_date: TStringField;
    quBillsconf_teller: TStringField;
    quBillsconf_date: TStringField;
    quBillsitem_req_no: TIntegerField;
    quBillsreceiver: TStringField;
    quBillsdelivery_man: TStringField;
    quBillsOrg_Code: TIntegerField;
    quBillsUnit_code: TSmallintField;
    quBillsLoc_code: TSmallintField;
    quBillsrec_Org_code: TIntegerField;
    quBillsrec_Unit_code: TSmallintField;
    quBillsrec_loc_code: TSmallintField;
    quBillsState: TSmallintField;
    quBillsReason: TStringField;
    quBillDet: TADOQuery;
    dblExiter: TRSqlDbLookup;
    edExiterName: TRSqlEdit;
    rgExit: TRadioGroup;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
//    procedure btRecOKClick(Sender: TObject);
    procedure btRecCancelClick(Sender: TObject);
    procedure grRecItemEnter(Sender: TObject);
    procedure quLicAfterScroll(DataSet: TDataSet);
//    procedure dblItemCloseUp(Sender: TObject);
//    procedure edPassNoChange(Sender: TObject);
//    procedure meSaleDateChange(Sender: TObject);
//    procedure meSaleDateExit(Sender: TObject);
//    procedure cbGoodTypeChange(Sender: TObject);
//    procedure Button1Click(Sender: TObject);
    procedure grcomEnter(Sender: TObject);
    procedure grItemEnter(Sender: TObject);
    procedure BtOkTransClick(Sender: TObject);
    procedure BtCancelTransClick(Sender: TObject);
//    procedure edExpertPriceKeyPress(Sender: TObject; var Key: Char);
    procedure dblItemEnter(Sender: TObject);
    procedure rbComClick(Sender: TObject);
    procedure rbSaleClick(Sender: TObject);
    procedure dblComCloseUp(Sender: TObject);
    procedure dblSaleCloseUp(Sender: TObject);
    procedure rbMendClick(Sender: TObject);
    procedure rgExitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure dblItemClick(Sender: TObject);
    procedure BtFailClick(Sender: TObject);
    procedure rgExitEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure rbBillClick(Sender: TObject);
    procedure dblBillsCloseUp(Sender: TObject);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-------------------  Special Procedures   -----------------------------
//-----------------------------------------------------------------------
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
     procedure InsertMaster;
     procedure UpdateMaster;
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
     procedure SetDetailFields;
//-----------------------------------------------------------------------
     procedure InsertDetail();
     procedure UpdateDetail();
     procedure DeleteDetail();
     procedure InsertAllDetails;
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
     procedure HandleDeleteError(ErrCode: HRESULT);
     procedure CheckSetFailButton;
     procedure EnableUpdateLicDetailes;
    procedure UpdateAllDetails;

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

    { Public declarations }
  end;
var

  ExitLic: TExitLic;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str,goodStr : string;
  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;

  ChkSaleDate, ChkempSaleDate ,ChkRepayStart,ChkEmpRepayStart  : Boolean;

  AllDisabled: Boolean;

  TempSale   : integer;
  TempTrans  : integer;
  Mode:integer;
{  TempExpertPrice:String[12];
  TempsalePrice  :String[12];
  TempPlaqueNo   : String[10];
  TempGoodType   : Smallint;
 }
  TempGoodsVar  : Variant;
  ChkResult     : Boolean;
  IsClear       : Boolean;
  ActiveGrid    : Integer;
  BMark         : TBookmark;

implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TExitLic.DoScroll(var mes:TMessage);
begin
      if ( (mde =0) or (mde=2) ) and (quLic.RecordCount <> 0 )then
      begin
         if (quLiccom_tr_no.AsInteger <> 0) then
         begin
            dsDet .DataSet := quTransDet;
            quTransDet   .Close ;
            quTransDet .Parameters[0].Value := quLiccom_tr_no  .AsInteger ;
  ///          quTransDet .Parameters[1].Value := quLiccom_tr_no  .AsInteger ;
            quTransDet .Open ;

         end
         else if(quLicSale_com_no.AsInteger <> 0) then
         begin
           dsDet .DataSet := quSaleDet;

           quSaleDet .Close ;
           quSaleDet .Parameters[0].Value := quLicSale_com_no   .AsInteger ;
//           quSaleDet .Parameters[1].Value := quLicSale_com_no   .AsInteger ;
           quSaleDet .Open ;
         end
         else
         begin
           dsDet .DataSet := quBillDet;
           dblBills.KeyValue:= quLicBill_No.AsInteger ;
           quBillDet .Close ;
           quBillDet .Parameters[0].Value := quLicBill_No.AsInteger ;
//           quSaleDet .Parameters[1].Value := quLicSale_com_no   .AsInteger ;
           quBillDet .Open ;
         end;



       DisableMasterFields();
       SetMasterFields();
      end;
      CheckSetFailButton;
end;
//*****************************************************************************
procedure TExitLic.DoNew(var mes: TMessage);
begin
   grItem.TabStop    := false;
   grcom.TabStop     := false;
   mde := 1;
   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex:=0;
           grcom.Enabled :=false;
           quLic.Close;
           quLic.Parameters[0].Value:= 0;
           quLic.Parameters[1].Value:= 0;
           quLic.Open;
          // quLic.;

           grcom.Enabled :=true;
           EnableMasterFields();
           ClearMasterFields();
           edstate.clear;
           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;
           if (quFindLastNo.RecordCount = 0) then
                  edLicenseNo.Text := Copy(Dabdata.disp_date,1,2)+ '000000'
           else if Copy(quFindLastNoLicense_no .AsString,1,2)=Copy(Dabdata.disp_date,1,2) then
             edLicenseNo.Text := IntToStr(quFindLastNoLicense_no .AsInteger + 1)
           else
             edLicenseNo.Text := Copy(Dabdata.disp_date,1,2)+ '000000';

           meCreateD .Text := Dabdata.disp_date ;
           meCreateDate .Text   :=  Dabdata.disp_date ;
              quTrans .Close;
              quTrans .Parameters[0].Value := 1;
              quTrans .Parameters[1].Value := 0;
              quTrans .open;
              quSale  .Close;
              quSale  .Parameters[0].Value := 1;
              quSale  .Parameters[1].Value := 0;
              quSale  .open;


           dblCom.FieldType :=ftDisplay;
           dblSale.FieldType :=ftDisplay;
           dblBills.FieldType :=ftDisplay;
           rbmend.checked:= false;
           FormInitializer1.Execute;
           cbLicenseType  .SetFocus;
        end;
    2 : begin
           if quLicState.AsInteger =0 then
           begin
              if not rbMend.Checked  then begin mde:= 0 ;exit; end;
              quItems.Close;
              quItems.Parameters[0].Value := 1;
              quItems.Parameters[1].Value := 0;
              quItems.Parameters[2].Value := NULL;
              quItems.Open;
              quWvItems.Close;
              quWvItems.Open;

              EnableDetailFields();
              ClearDetailFields();
              dblitem.FieldType :=ftRequired;
              FormInitializer1.Execute;
              dblItem.SetFocus;

           end
           else
           begin
             Str1 := '«Œÿ«—';
             Str2 := 'Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0 ;exit;
           end;
        end
    end;
    dblCreator.KeyValue:=DabData.emp_no;
    meCreateDate.Text:=Dabdata.disp_date;
    meCreated.Text:=Dabdata.disp_date;
end;
//****************************************************************************
procedure TExitLic.DoEdit(var mes :TMessage);
begin
      if qulic.recordcount= 0 then exit;
      grItem.TabStop    := false;
      grcom.TabStop     := false;
      mde := 2;
      case ActiveGrid of
      1 : begin
           if (quLicState .AsInteger =2) and (quLicMend.AsBoolean) then
           begin
              EnableUpdateLicDetailes;
              exit;
           end;

           if quLicState .AsInteger <>0 then
           begin
                 Str1 := '«Œÿ«—';
                 Str2 := 'Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;

      cbLicenseType.FieldType :=ftRequired;
      //dblCreator .Enabled      := true;
      //meCreateD.Enabled := true;
      rgExit.Enabled :=true;
      dblsale.FieldType :=ftDisplay;
      dblCom.FieldType :=ftDisplay;

      paOkCancel .Visible := true;
      FormInitializer1.Execute;


      mde:=0;
//           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
      mde:=2;
           if rbCom .Checked then
           begin
              quTrans .Close;
              quTrans .Parameters[0].Value := 2;
              quTrans .Parameters[1].Value := quLiccom_tr_no.AsInteger   ;
              quTrans .open;
              quSale  .Close;
              quSale  .Parameters[0].Value := 1;
              quSale  .Parameters[1].Value := 0;
              quSale  .open;
           end;
           if rbSale  .Checked then
           begin
              quSale  .Close;
              quSale  .Parameters[0].Value := 2;
              quSale  .Parameters[1].Value := quLicSale_com_no .AsInteger   ;
              quSale  .open;
              quTrans .Close;
              quTrans .Parameters[0].Value := 1;
              quTrans .Parameters[1].Value := 0;
              quTrans .open;
           end;
           if rbMend.Checked then
           begin
              quMendDet.close;
              quMendDet .Parameters[0].Value := quLicLicense_no.AsInteger;
              quMendDet.Open;
           end;
          cbLicenseType    .SetFocus;
          end;
      2 : begin

           if qulicState.AsInteger <>0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := '«„Ê«·  Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0 ; exit;
           end;

           if rbcom.Checked then
    //     if quTransDet .RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;
           if rbSale.Checked then
      //   if qusaleDet .RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;
           if rbMend.Checked then
           if quMendDet .RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;
           quItems.DisableControls;
           quItems.Close;
           quItems.Parameters[0].Value := 0;
           quItems.Parameters[1].Value := 1;
           if rbcom.Checked then quItems.Parameters[2].Value := quTransDetGeneralcode.asstring;
           if rbSale.Checked then quItems.Parameters[2].Value := qusaleDetGeneralcode.asstring;
           if rbMend.Checked then quItems.Parameters[2].Value := quMendDetGoods_Code.asstring;
           quItems.Open;
           quItems.EnableControls;
           quWvItems.Close;
           quWvItems.Open;
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           goodStr:= dblitem.keyvalue;
           dblItem.FieldType :=ftRequired;

           dblItem.SetFocus;
          end;
      end;
   dblCreator.KeyValue:=DabData.emp_no;
   meCreateDate.Text:=Dabdata.disp_date;
   meCreated.Text:=Dabdata.disp_date;
   BtOkTrans.Enabled := true;
   FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TExitLic.DoDelete(var mes: TMessage);
begin
   case ActiveGrid of
    1 : begin
        if quLicstate.asinteger <> 0 then
        begin
          Str1 := '«Œÿ«—';
          Str2 := ' Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
          ShowMessage2(Str2);
          mde:=0 ; exit;
        end;
        if ( Mde = 0 )  and ( quLic.RecordCount >=1 ) and
           ( quLic.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grItem.SetFocus;
             exit;
          end;

          mde :=3;
          DeleteMaster ();
        end;
        end;
       2 : begin
           if quLicstate.asinteger <> 0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := '«„Ê«· Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0 ; exit;
           end;

         if ( Mde = 0 )  and ( qulic.RecordCount >=1 ) and
                ( qulic.RecNo >= 1)and rbMend.checked then
            begin
               Str1 := UUserMsg.SM_Pub_DeleteMode;
               Str2 := UUserMsg.SM_fmLonTyp_ConfirmDelRec;
               ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

               if ModalRes <> mrOk then
               begin
                  Mde := 0;
                  grItem.SetFocus;
                  exit;
               end;
               DeleteDetail();
               mde:=0;
            end;
            end;
        end;

end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TExitLic.SetDefaultMode(i: integer);
begin
    grItem.TabStop    := True;
    grcom.TabStop       := True;
    mde := 0;
    case ActiveGrid of
      1 :
      begin
     //    PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;
          grItem.TabStop    := True;
         grcom.TabStop       := True;
         ActiveControl        := grcom;
         ActiveGrid           := 1;
      end;
      2 :
      begin
//         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;
         grcom.TabStop       := True;
         grItem.TabStop    := True;
         ActiveControl      := grItem;
         ActiveGrid         := 2;
      end;
    end;
end;
procedure TExitLic.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grCom.Color   := clActiveGridColor;
          grItem.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grCom.Color   := clDeactiveGridColor;
          grItem.Color     := clActiveGridColor;
       end;
    end // case

end;
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
procedure TExitLic.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := edLicenseNo .Text;
      quMasterInsert.parameters[1].value := cbLicenseType .ItemIndex;
      if dblcom.KeyValue = null then
        begin
           quMasterInsert.parameters[2].value := NULL;
           quMasterInsert.parameters[3].value := dblSale.KeyValue  ;
           quMasterInsert.parameters[4].value := NULL;
           quMasterInsert.parameters[14].value := NULL;
        end
      else
        begin
           quMasterInsert.parameters[2].value := dblCom .KeyValue ;
           quMasterInsert.parameters[3].value := NULL  ;
           quMasterInsert.parameters[4].value := NULL;
           quMasterInsert.parameters[14].value := NULL;
        end;
      if rbmend.checked then
        begin
           quMasterInsert.parameters[2].value := Null ;
           quMasterInsert.parameters[3].value := NULL  ;
           quMasterInsert.parameters[4].value := 1;
           quMasterInsert.parameters[14].value := NULL;
        end;
      if rbBill.Checked then
        begin
           quMasterInsert.parameters[2].value := NULL ;
           quMasterInsert.parameters[3].value := NULL  ;
           quMasterInsert.parameters[4].value := NULL;
           quMasterInsert.parameters[14].value := dblBills.KeyValue;
        end;

      quMasterInsert.parameters[5].value := dblCreator  .KeyValue ;
      quMasterInsert.parameters[6].value := meCreateD.Text;
      quMasterInsert.parameters[7].value :=NULL;// dblConfirmer  .KeyValue ;
      quMasterInsert.parameters[8].value :=NULL;//  meConfirm  .Text;
      quMasterInsert.parameters[9].value := 0;
      if rgExit.ItemIndex =0 then
      begin
         quMasterInsert.parameters[10].value :=dblExiter.KeyValue;
         quMasterInsert.parameters[11].value :=NULL;
      end
      else
      begin
         quMasterInsert.parameters[10].value :=NULL;
         quMasterInsert.parameters[11].value :=trim(edExiterName.Text);
      end;

      quMasterInsert.parameters[12].value :=NuLL;
      quMasterInsert.parameters[13].value :=NULL;

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
    goodstr:=edLicenseNo.Text;
    quLic.close;
    quLic.Open;
  //  quLic.Last;
    if not rbmend.checked then
       InsertAllDetails;
    qulic.locate('License_no',goodstr,[]);

    SetDefaultMode(1);
end;
//***************************************************************************
procedure TExitLic.UpdateMaster();
begin
   BMark := quLic.GetBookmark();
   if (quLicState.AsInteger =2) and (quLicMend.AsBoolean)  then
   begin
      qulic.DisableControls;
      quMConfirm.Close;
      try
      DabData.ADOC.BeginTrans;

      quMConfirm.parameters[0].value := dblExitGaurd.KeyValue;
      quMConfirm.parameters[1].value := meExitDate.Text;
      quMConfirm.parameters[2].value := meExittime.Text;
      quMConfirm.parameters[3].value := dblReturnGaurd.keyvalue;
      quMConfirm.parameters[4].value := meReturnDate.Text;
      quMConfirm.parameters[5].value := meReturnTime.Text;
      quMConfirm.parameters[6].value := 4;
      quMConfirm.parameters[7].value := strtoint(edLicenseNo.Text);
      quMConfirm.ExecSQL;
      DabData.ADOC.CommitTrans;
      except
      DabData.ADOC.RollbackTrans;
      end;

      if (quMConfirm.RowsAffected <>1 ) then
         begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_Pub_RetryMsg;
          ShowMessage2(Str2);
         end;
      goodstr:= edlicenseNo.text;
      cbFilterState.ItemIndex:= 4;

      UpdateAllDetails;//Returns All detail goods to previos state;
      quLic.close;
      qulic.parameters[0].value := 4;
      qulic.parameters[1].value := NULL;
      quLic.Open;
      qulic.EnableControls;
      qulic.locate('License_no',goodstr,[]);

      mde:=0;
      exit;
   end;
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := cbLicenseType .itemIndex;
      if rbCom .Checked then
        begin
           if dblCom.keyvalue =null then quMasterUpdate.parameters[1].value := NULL
           else quMasterUpdate.parameters[1].value := dblCom .KeyValue ;
           quMasterUpdate.parameters[2].value := NULL;
        end
      else
        begin
           quMasterUpdate.parameters[1].value := NULL ;
           if dblsale.keyvalue = null then quMasterUpdate.parameters[2].value := Null
           else quMasterUpdate.parameters[2].value := dblSale.KeyValue ;
        end;

      quMasterUpdate.parameters[3].value := dblCreator  .KeyValue ;
      quMasterUpdate.parameters[4].value := meCreateD   .Text;
      if dblExiter.keyvalue=null then quMasterUpdate.parameters[5].value :=NULL
      else quMasterUpdate.parameters[5].value := dblexiter  .KeyValue ;
      quMasterUpdate.parameters[6].value := trim(edexiterName.Text);
      quMasterUpdate.parameters[7].value := edLicenseNo .Text;
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
   //  DeleteAllDetails;
   //  InsertAllDetails;

{      if TempTrans <>0 then UpdateTransTable(TempTrans  ,0);
   if TempSale  <>0 then UpdateSaleTable(TempSale   ,0);

{    if dblCom .KeyValue > 0 then
           UpdateTransTable(dblCom .KeyValue ,1)
    else   UpdateSaleTable(dblSale.KeyValue  ,1);
 }    goodstr:=edLicenseNo.Text;
     mde:= 3;
     cbfilterstate.ItemIndex:= 0;
     quLic.close;
     qulic.parameters[0].value := 0;
     qulic.parameters[1].value := NULL;
     quLic.Open;
     qulic.locate('License_no',goodstr,[]);
     mde:=2;
     setmasterfields;

end;
//****************************************************************************
procedure TExitLic.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt(edLicenseNo.Text);
//      quMasterDelete.parameters[1].value := 0;

      quMasterDelete.Prepared := True;
      quMasterDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
     on FK : EOleException  do begin
                               HandleDeleteError(FK.Errorcode);
                               mde:=0;exit;
                               end;
    //  DabData.ADOC.RollbackTrans;
   end;

   if (quMasterDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   quLic.close;
   quLic.Open;
{   if TempTrans <>0 then UpdateTransTable(TempTrans  ,0);
   if TempSale  <>0 then UpdateSaleTable(TempSale   ,0);

 }  SetDefaultMode(1);

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//****************************************************************************
procedure TExitLic.ClearMasterFields;
begin
      edLicenseNo  .Clear;
      edstate.clear;
      //meCreateDate  .Clear ;
      //meCreateD   .Clear ;

      //dblCreator .KeyValue := '';
      dblCom.KeyValue := null;
      dblSale .KeyValue := null;

      rgExit.ItemIndex:=-1;

      dblexiter.KeyValue := null;
      edExiterName.clear;

      cbLicenseType .ItemIndex :=0;
      rbCom  .Checked :=false;
      rbSale .Checked :=false;
end;
//*****
//*********************************************************************
procedure TExitLic.SetMasterFields();
begin
      edLicenseNo  .Text        := quLicLicense_no   .AsString ;

      meCreateD   .Text     := quLicCreate_date .AsString ;

      meCreateDate  .Text      := quLicCreate_date  .AsString ;
      dblConfirmer.KeyValue := quLicConfirmer.AsString;
      meConfirm.Text:= quLicConfirm_date.AsString;

      dblCreator .KeyValue         := quLicCreator  .AsString  ;
      edState.text := quLicStatename.AsString;
      tempSale:=0;TempTrans:=0;
      if Trim(quLicLicense_type.Asstring) = ''
          then  cbLicenseType.ItemIndex  := -1
          else  cbLicenseType.ItemIndex  := quLicLicense_type.AsInteger ;

      if quLiccom_tr_no.AsInteger   > 0 then
         begin
           rbCom .Checked  :=true;

           quTrans .Close;
           quTrans .Parameters[0].Value := 2;
           quTrans .Parameters[1].Value := quLiccom_tr_no.AsInteger   ;
           quTrans .open;

           dblCom .KeyValue :=  quLiccom_tr_no.AsInteger;
           dblSale.KeyValue := null;
           TempTrans:=dblCom .KeyValue ;
           mode:=0;
           dsDet .DataSet := quTransDet;

           quTransDet   .Close ;
           quTransDet .Parameters[0].Value := quLiccom_tr_no    .AsInteger ;
    //////       quTransDet .Parameters[1].Value := quLiccom_tr_no   .AsInteger ;
           quTransDet .Open ;

         end;
      if quLicSale_com_no.AsInteger   > 0 then
         begin
           rbSale .Checked  := true;

           quSale  .Close;
           quSale  .Parameters[0].Value := 2;
           quSale  .Parameters[1].Value := quLicSale_com_no .AsInteger   ;
           quSale  .open;

           dblSale  .KeyValue :=  quLicSale_com_no.AsInteger;
           dblCom.KeyValue := null;
           TempSale := dblSale .KeyValue ;
           mode:=0;
           dsDet .DataSet := quSaleDet;

           quSaleDet .Close ;
           quSaleDet .Parameters[0].Value := quLicSale_com_no   .AsInteger ;
////           quSaleDet .Parameters[1].Value := quLicSale_com_no   .AsInteger ;
           quSaleDet .Open ;
         end;
         if quLicMend.AsBoolean then
           begin
              rbmend.checked := true;
              dsDet .DataSet := qumendDet;

              qumendDet .Close ;
              qumendDet .Parameters[0].Value := quLicLicense_no.AsInteger ;
              qumendDet .Open ;
              dblCom.KeyValue := null;
              dblSale.KeyValue := null;


           end;
         if quLicExiterEmp.AsString <> '' then
             begin
                rgexit.ItemIndex :=0;
                dblExiter.KeyValue:= quLicExiterEmp.AsString;
                //mde:=0;
                edExiterName.Clear;

             end
          else
             begin
              rgexit.itemindex:=1;
              edExiterName.Text:= quLicExiterName.AsString;
              //mde:=0;
              dblExiter.KeyValue:=null;
             end;
end;
//*****************************************************************************
procedure TExitLic.DisableMasterFields;
begin
      edLicenseNo.FieldType:=ftDisplay;
      rbCom .Enabled :=False;
      rbSale .Enabled :=False;
      meCreateDate.FieldType:=ftDisplay;
      meCreateD.FieldType:=ftDisplay;
      cbLicenseType.FieldType:=ftDisplay;
      dblCreator.FieldType:=ftDisplay;
      dblSale.FieldType:=ftDisplay;
      dblCom.FieldType:=ftDisplay;
      dblConfirmer.FieldType:=ftDisplay;
      meConfirm.FieldType:=ftDisplay;
     // edState .Enabled := false;

      rbMend.Enabled:= false;

      rgExit.Enabled:=false;


      dblExiter.FieldType:=ftDisplay;
      edExiterName.FieldType:=ftDisplay;


      quTrans .Close;
      quTrans .Parameters[0].Value := 0;
      quTrans .Parameters[1].Value := 0;
      quTrans .open;
      quSale  .Close;
      quSale  .Parameters[0].Value := 0;
      quSale  .Parameters[1].Value := 0;
      quSale  .open;
      rgexit.enabled:= false;

   FormInitializer1.Execute;
 end;
//*****************************************************************************
procedure TExitLic.EnableMasterFields;
begin

      rbCom.Enabled :=true;
      rbSale .Enabled :=true;
      cbLicenseType.FieldType:=ftRequired;
      rbMend.Enabled:= true;
      rgExit.Enabled :=true;
      paOkCancel .Visible := true;
   FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
procedure TExitLic.InsertDetail();
var  str1,Str2 : string;
begin
   if cbGoodType.ItemIndex=0 then
   begin
     quInExited_Goods.parameters.ParamByName('License_No').value := StrToInt(edLicenseNo.Text);
     quInExited_Goods.parameters.ParamByName('Goods_code').value := dblItem.KeyValue;
     quInExited_Goods.parameters.ParamByName('Previous_state').value := quItemsState.AsInteger;
     quInExited_Goods.Prepared := True;
     DabData.ADOC.BeginTrans;
     try
       quInExited_Goods.ExecSQL;
       DabData.ADOC.CommitTrans;
     except
       DabData.ADOC.RollbackTrans;
       Raise;
     end;  //exception..
   end
   else
   begin
     qiInExited_Items.parameters.ParamByName('License_No').value := StrToInt(edLicenseNo.Text);
     qiInExited_Items.parameters.ParamByName('Amount').value := edTrnsLabel.Value;
     qiInExited_Items.parameters.ParamByName('Item_code').value := dblItem.KeyValue;
     DabData.ADOC.BeginTrans;
     try
       qiInExited_Items.ExecSQL;
       DabData.ADOC.CommitTrans;
     except
       DabData.ADOC.RollbackTrans;
       Raise;
     end;  //exception..
   end;
    if (qiInExited_Items.RowsAffected <> 1) then
    begin
       Str1 := UUserMsg.SM_Pub_InsertMode;
       Str2 := UUserMsg.SM_Pub_RetryMsg;
       ShowMessage2(Str2);
    end;

{    case cbGoodType.ItemIndex of
     0 : DabData . UpdateMovGoods   ( dblItem.Keyvalue,4);
     1 : DabData . UpdateNonMovGoods( dblItem.Keyvalue,4);
    end; // case
 }

    qumendDet.close;
    qumendDet.Parameters[0].Value := StrToInt(edLicenseNo.Text);
    qumendDet.Open;
    qumendDet.Locate ('Goods_Code',dblItem.KeyValue,[LocaseInsensitive]);
end;
//*****************************************************************************
procedure TExitLic.UpdateDetail();
begin
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailUpdate.parameters[0].value := dblItem.keyvalue ;
      quDetailUpdate.parameters[1].value := quitemsState.asinteger;
      quDetailUpdate.parameters[2].value := edLicenseNo .Text ;
      quDetailUpdate.parameters[3].value :=goodStr ;

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
     mde:=0;exit;
   end;
//   quRecDet.GotoBookmark(BMark);
  // quRecDet.FreeBookmark(BMark);

{   if  TempGoodType = cbGoodType.ItemIndex then
   begin
       case TempGoodType of
        0 : begin
              Dabdata.UpdateMovGoods     ( dblItem.keyValue , 4 );
              Dabdata.UpdateMovGoods     ( TempGoodsCode , 0 );
            end;
        1 : begin
              DabData.UpdateNonMovGoods( dblItem.keyValue , 4 );
              DabData.UpdateNonMovGoods( TempPlaqueNo , 0 );
            end;
       end;
   end
   else
   if  TempGoodType <> cbGoodType.ItemIndex then
   case cbGoodType.ItemIndex of
    0 : begin
           DabData .UpdateMovGoods    ( dblItem.keyValue , 4 );
           DabData .UpdatenonMovGoods ( TempPlaqueNo , 0);
        end;
    1 : begin
           DabData . UpdateNonMovGoods ( dblItem.keyValue , 4 );
           DabData .UpdateMovGoods    ( TempGoodsCode , 0);
        end;
   end ;  // case
}
   if rbcom.Checked then
                    begin
                      str1:= dblItem.keyvalue;
                      qutransDet.close;
                      qutransDet.Parameters[0].Value :=quLicLicense_no.AsInteger;
                      quTransDet.open;
                      quTransDet.Locate('license_no;goods_code',varArrayOf([edlicenseno.text,Str1]),[]);
                    end;
      if rbSale.Checked then
                    begin
                      str1:= dblItem.keyvalue;
                      quSaleDet.close;
                      qusaleDet.Parameters[0].Value := quLicLicense_no.AsInteger;
                      qusaleDet.open;
                      qusaleDet.Locate('license_no;goods_code',varArrayOf([edlicenseno.text,Str1]),[]);
                    end;
      if rbMend.Checked then
                    begin
                      str1:= dblItem.keyvalue;
                      quMendDet.close;
                      quMendDet.Parameters[0].Value :=quLicLicense_no.AsInteger;
                      quMendDet.open;
                      qumendDet.Locate('license_no;goods_code',varArrayOf([edlicenseno.text,str1]),[]);
                    end;

end;
//****************************************************************************
procedure TExitLic.DeleteDetail();
begin
{   case TempGoodType of
    0 :  DabData . UpdateMovGoods   ( quRecDetGoods_code.AsString , 0);
    1 :  DabData . UpdateNonMovGoods( quRecDetPlaque_no.AsString  , 0);
   end;
 }  quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := StrToInt(edLicenseNo.Text);
      if rbcom.Checked then quDetailDelete.Parameters[1].Value := quTransDetGeneralcode.asstring;
      if rbSale.Checked then quDetailDelete.Parameters[1].Value := qusaleDetGeneralcode.asstring;
      if rbMend.Checked then quDetailDelete.Parameters[1].Value := quMendDetGoods_Code.asstring;

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
   if rbcom.Checked then
                    begin
                      qutransDet.close;
                      qutransDet.Parameters[0].Value := quLiccom_tr_no.AsInteger;
                      quTransDet.open;
                    end;
      if rbSale.Checked then
                    begin
                      quSaleDet.close;
                      qusaleDet.Parameters[0].Value := quLicSale_com_no.AsInteger;
                      qusaleDet.open;
                    end;
      if rbMend.Checked then
                    begin
                      quMendDet.close;
                      quMendDet.Parameters[0].Value :=quLiclicense_no.AsInteger;
                      quMendDet.open;
                    end;
      SetDefaultMode(1);


end;
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TExitLic.ClearDetailFields;
begin
   dblItem.KeyValue     := null;
   edItemName.Clear;
   edTrnsLabel.Clear;
end;
//**************************************************************************
procedure TExitLic.SetDetailFields();
begin
   if qulicmend.asBoolean then
   if quMendDet.RecordCount <> 0 then
   begin
      edItemName.Text       :=  quMendDetItem_Name.AsString;
      edTrnsLabel.Text      :=  quMendDetLabel.AsString;
      TempGoodsVar := quMendDetgoods_code.AsVariant;
{      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 1;
      DabData.qumoveable.Parameters[1].Value := 4;
      DabData.qumoveable.Parameters[2].Value := NULL;
      DabData.qumoveable.Parameters[3].Value := quMendDetgoods_code.AsString;
      DabData.qumoveable.Parameters[4].Value := NULL;
      DabData.qumoveable.Open;
 }
      dblItem.KeyValue      :=  quMendDetGoods_Code.AsString ;

   end;
   if quLiccom_tr_no.asinteger <>0 then
   if quMendDet.RecordCount <> 0 then
   begin
      edItemName.Text       :=  quTransDetItemName.AsString;
      edTrnsLabel.Text      :=  quTransDetLabel.AsString;
      TempGoodsVar := quTransDetGoods_code.AsVariant;
{      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 1;
      DabData.qumoveable.Parameters[1].Value := 4;
      DabData.qumoveable.Parameters[2].Value := NULL;
      DabData.qumoveable.Parameters[3].Value := quMendDetgoods_code.AsString;
      DabData.qumoveable.Parameters[4].Value := NULL;
      DabData.qumoveable.Open;
 }
      dblItem.KeyValue      :=  quItemsgoods_code.AsString ;

   end;
   if quLicSale_com_no.asinteger <>0 then
   if quMendDet.RecordCount <> 0 then
   begin
      edItemName.Text       :=  quSaleDetItemName.AsString;
      edTrnsLabel.Text      :=  quSaleDetLabel.AsString;
      TempGoodsVar := quSaleDetGoods_code.AsVariant;
{      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 1;
      DabData.qumoveable.Parameters[1].Value := 4;
      DabData.qumoveable.Parameters[2].Value := NULL;
      DabData.qumoveable.Parameters[3].Value := quMendDetgoods_code.AsString;
      DabData.qumoveable.Parameters[4].Value := NULL;
      DabData.qumoveable.Open;
 }
      dblItem.KeyValue      :=  quItemsgoods_code.AsString ;

   end;
{      if mde = 2 then
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
               DabData.qumoveable.Parameters[1].Value := quRecDetGoods_code.AsString;
               DabData.qumoveable.Open;

               dblItem.KeyValue      :=  quRecDetGoods_code.AsString ;
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
             DabData.qunonmgood.Parameters[1].Value := quRecDetPlaque_no.AsString;
             DabData.qunonmgood.Open;

             dblItem.KeyValue      :=  quRecDetPlaque_no.AsString ;
          end;
         end; // case
      end;
   end
   else
      RealRow  := 0 ;}
end;
//*****************************************************************************
procedure TExitLic.EnableDetailFields;
begin
   dblItem.FieldType:=ftRequired;
   dblItem.Color        := clActiveFieldColor;

   paOkCancel.visible    := True;
   PaDetailOper.Visible  := True;
   FormInitializer1.Execute;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TExitLic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TExitLic.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 50 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TExitLic.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TExitLic.FormShow(Sender: TObject);
var l,t:integer;
begin
  
  UUserMsg.GetRect(Width,Height,l,t);
  Left    := l;
  Top     := t;

  qudblEmp.Close;
  qudblEmp.Open;

  mde:=0;
        quLic .Close;  // set values to Grid
        quLic .Open;

        quTrans .Close;
        quTrans .Parameters[0].Value := 0;
        quTrans .Parameters[1].Value := 0;
        quTrans .open;

        quSale  .Close;
        quSale .Parameters[0].Value := 0;
        quSale .Parameters[1].Value := 0;
        quSale  .open;

        quBills.Close;
        quBills.Open;

        if dblCom .Text <> '' then
        begin
           quTransDet .Close ;
           quTransDet .Parameters[0].Value := quLiccom_tr_no  .AsInteger ;
//           quTransDet .Parameters[1].Value := quLiccom_tr_no  .AsInteger ;
           quTransDet .Open ;
        end
        else
        begin
           quSaleDet   .Close ;
           quSaleDet .Parameters[0].Value := quLicSale_com_no   .AsInteger ;
  ///         quSaleDet .Parameters[1].Value := quLicSale_com_no   .AsInteger ;
           quSaleDet .Open ;
        end;

        DisableMasterFields();

        ChkSaleDate    := False;
        ChkEmpSaleDate := True;

        ChkRepayStart    := False;
        ChkemprepayStart := True;

        cbFilterState.ItemIndex :=0;
        quLic.Close;
        quLic.Parameters[0].Value:= cbFilterState.ItemIndex;
        quLic.Parameters[1].Value := NULL;
        quLic.open;

        grcom.SetFocus;
end;
procedure TExitLic.btRecCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TExitLic.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
//   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//******************************************************************************
procedure TExitLic.quLicAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//***************************************************************************
{procedure TExitLic.Button1Click(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          ShowMvgood.ShowModal();

          dblItem.KeyValue := DabData.qumoveablegoods_code.AsString;
          edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
          edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
          ShowNonMgood.ShowModal();

          dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
          edTrnsLabel.Clear ;
          edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;

       end;
   end;   // case
   CheckFieldsSetDetailokButtons();

end;
 }



/////////////////////////////////////////////////////////
procedure TExitLic.grcomEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;
   PaReturn.Visible:=false;
   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton;
end;
/////////////////////////////////////////////////////////
procedure TExitLic.grItemEnter(Sender: TObject);
begin
   ActiveGrid := 2;
   SetGridColor(2);

   paOKCancel.Visible   := False;
   PaDetailOper.Visible := False;
   PaReturn.Visible:=false;
   mde:=0;
   DisableMasterFields();
//   SetMasterFields();
   CheckSetFailButton;
end;
/////////////////////////////////////////////////////////
procedure TExitLic.BtOkTransClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      case mde of
        1 : InsertMaster();
        2 : UpdateMaster();

      end;  // end case
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
/////////////////////////////////////////////////////////
procedure TExitLic.BtCancelTransClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
/////////////////////////////////////////////////////////
procedure TExitLic.dblItemEnter(Sender: TObject);
begin
      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 0;
      DabData.qumoveable.Parameters[1].Value := 1;
      DabData.qumoveable.Open;
      CheckSetFailButton;
end;
/////////////////////////////////////////////////////////
procedure TExitLic.rbComClick(Sender: TObject);
begin
     if mde<>0 then
     begin
         dblCom.FieldType:=ftRequired;
         dblsale.FieldType:=ftDisplay;
         dblBills.FieldType:=ftDisplay;
         cbLicenseType.FieldType:=ftDisplay;
        // cbLicenseType.ItemIndex:=-1;
         dblSale .KeyValue := null;
          FormInitializer1.Execute;
         dblcom.SetFocus ;
     end;
end;
/////////////////////////////////////////////////////////
procedure TExitLic.rbSaleClick(Sender: TObject);
begin
     if mde<>0 then
     begin
         dblCom.FieldType:= ftDisplay;
         dblsale.FieldType:=ftRequired;
         dblBills.FieldType:=ftDisplay;
         cbLicenseType.FieldType:=ftRequired;
         //cbLicenseType.ItemIndex:=-1;
        dblBills.KeyValue := null;
        dblCom.KeyValue := null;
         FormInitializer1.Execute;
         dblSale .SetFocus;
     end;
end;
/////////////////////////////////////////////////////////
procedure TExitLic.dblComCloseUp(Sender: TObject);
begin
   dsDet .DataSet := quTransDet;

   quTransDet   .Close ;
   quTransDet .Parameters[0].Value := dblCom   .KeyValue ;
//   quTransDet .Parameters[1].Value := dblCom   .KeyValue ;
   quTransDet .Open ;
   rbcom .Checked :=true;
end;
/////////////////////////////////////////////////////////
procedure TExitLic.dblSaleCloseUp(Sender: TObject);
begin
   dsDet .DataSet := quSaleDet;

   quSaleDet .Close ;
   quSaleDet .Parameters[0].Value := dblSale.KeyValue ;
//   quSaleDet .Parameters[1].Value := dblSale.KeyValue ;
   quSaleDet .Open ;
   rbSale .Checked :=true;
end;

procedure TExitLic.rbMendClick(Sender: TObject);
begin
     if mde<>0 then
     begin

         cbLicenseType.FieldType:=ftDisplay;
         dblBills.FieldType:=ftDisplay;
         cbLicenseType.ItemIndex:=1;
         dblBills.KeyValue := null;
         dblCom.KeyValue := null;
         dblSale.KeyValue := null;
         dblCom.FieldType:=ftDisPlay;
         dblsale.FieldType:=ftDisplay;
     end;
     FormInitializer1.Execute;
end;

procedure TExitLic.rgExitClick(Sender: TObject);
begin
    if rgExit .ItemIndex = 0 then
    begin
         if mde<>0 then
     begin
         dblExiter.FieldType:=ftRequired;
         edExiterName.FieldType:=ftDisplay;
         edExiterName.Text:= '';
         FormInitializer1.Execute;
         dblExiter.SetFocus;
     end;
     end
     else
     begin
     if mde<>0 then
     begin
         edExiterName.FieldType:=ftRequired;
         dblExiter.FieldType:=ftDisplay;
         dblExiter .KeyValue := null;
         FormInitializer1.Execute;
         edExiterName.SetFocus ;
     end;
     end;


end;

procedure TExitLic.InsertAllDetails;
var i: integer;
    str1,str2:string;
begin
    if rbcom.Checked then
    begin
       for i:=1 to quTransDet.RecordCount do
          begin
                quInExited_Goods.parameters[0].value := StrToInt(edLicenseNo.Text);
                quInExited_Goods.parameters[1].value := quTransDetGoods_code.AsString;
                quInExited_Goods.parameters[2].value := quTransDetState.AsInteger;
             try
                DabData.ADOC.BeginTrans;
                quInExited_Goods.Prepared := True;
                quInExited_Goods.ExecSql;
                DabData.ADOC.CommitTrans;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (quInExited_Goods.RowsAffected <> 1) then
             begin
                 Str1 := UUserMsg.SM_Pub_InsertMode;
                 Str2 := UUserMsg.SM_Pub_RetryMsg;
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;
          qutransDet.Next;
          end;
    end;
   if rbsale.Checked then
    begin
       for i:=1 to qusaleDet.RecordCount do
          begin

                quInExited_Goods.parameters[0].value := StrToInt(edLicenseNo.Text);
                quInExited_Goods.parameters[1].value := qusaleDetGoods_code.AsString;
                quInExited_Goods.parameters[2].value := quSaleDetState.AsInteger;


             try
                DabData.ADOC.BeginTrans;
                quInExited_Goods.Prepared := True;
                quInExited_Goods.ExecSql;

                DabData.ADOC.CommitTrans;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (quInExited_Goods.RowsAffected <> 1) then
             begin
                 Str1 := UUserMsg.SM_Pub_InsertMode;
                 Str2 := UUserMsg.SM_Pub_RetryMsg;
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;
          quSaleDet.Next;
          end;
    end;

end;
///////////////////////////////////////////////////

procedure TExitLic.Button1Click(Sender: TObject);
begin
   ShowMvgood  := TShowMvgood.create(Application);
   SetFormColor(ShowMvGood);
   DabData.qumoveable.Close;
   DabData.qumoveable.Open;
   ShowMvgood.ShowModal();
   quItems.Locate('goods_code',DabData.qumoveablegoods_code.AsString, [loPartialKey]);
   if not quItems.IsEmpty then
    begin
     dblItem.KeyValue :=   quItemsgoods_code.AsString;
     edTrnsLabel.Text  :=  quItemslabel.AsString ;
     edItemName.Text   :=  quItemsitem_name.AsString ;
    end;

end;

procedure TExitLic.dblItemCloseUp(Sender: TObject);
begin

if dblItem.text = '' then btoktrans.enabled := false
else btoktrans.enabled := true;

end;

procedure TExitLic.dblItemClick(Sender: TObject);
begin
  if cbGoodType.ItemIndex =0 then
  begin
     edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
     edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
  end
  else
  begin
     edTrnsLabel.FieldType  :=  ftRequired ;
     edItemName.Text   :=  quWvItemsItem_Name.Value ;
  end

end;

procedure TExitLic.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;



procedure TExitLic.BtFailClick(Sender: TObject);
begin
     if rbMend.Checked then
     if quMendDet.recordCount =0 then
        begin
          Str1 := '«Œÿ«—';
          Str2 := ' Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
          ShowMessage2(Str2);
          mde:=0 ; exit;
        end;

     Str1 := UUserMsg.SM_Ebtal;
     Str2 := '¬Ì« Ê«ﬁ⁄« ﬁ’œ «»ÿ«· Å—Ê«‰Â Œ—ÊÃ —« œ«—Ìœ ø';
     ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes = mrOk then
       begin
         Mde := 0;
         quMasterUp.Close;
         try
           DabData.ADOC.BeginTrans;

           quMasterUp.parameters[0].value := 1;
           quMasterUp.parameters[1].value := StrToInt(edLicenseNo.Text);

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
         str1 := edLicenseNo.Text;
      cbFilterState.ItemIndex:= 1;
      quLic.close;
      qulic.parameters[0].value := 1;
      qulic.parameters[1].value := NULL;
      quLic.Open;
      quLic.Locate('License_No',str1,[locaseinsensitive]);
      end;
      mde:=0 ;

end;
procedure TExitLic.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if  ( quLic.RecordCount <> 0)and( quLicstate.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;

procedure TExitLic.rgExitEnter(Sender: TObject);
begin
if mde<>0 then
if rgExit.ItemIndex = 0 then
  begin
     dblExiter.Enabled:= true;
  end
  else
  begin
     edExiterName.Enabled:= true;
  end;
end;

procedure TExitLic.EnableUpdateLicDetailes;
begin
              dblExitGaurd.Keyvalue:= null;
              dblReturnGaurd.Keyvalue:= null;

              if dblExiter.KeyValue <> null then
                  begin
                     laExiter.Caption :=trim(dblExiter.Text);
                     laExiterF.Caption :=trim(dblExiter.text);
                  end
              else
                  begin
                     laExiter.Caption :=  trim(edExiterName.Text);
                     laExiterF.Caption := trim(edExiterName.Text);
                  end;
              paOkCancel.Visible:=true;
              PaReturn.Visible:=true;
              meReturnDate.Text:= Dabdata.disp_date;
              meReturnTime.Text:= timetostr(Time);
              meExitDate.clear;
              meExitTime.clear;
              meExitDate.SetFocus;
end;

procedure  TExitLic.UpdateAllDetails ;
var i: integer;
    str1,str2:string;
begin
    quExitedGoods.DisableControls;
    quExitedGoods.close;
    quExitedGoods.Parameters[0].Value:= goodStr;
    quExitedGoods.open;
    for i:=1 to quExitedGoods.RecordCount do
          begin
             quReturnUpdate.Close;
             try
             begin
                DabData.ADOC.BeginTrans;

                if quExitedGoodsprevious_state.asinteger =0 then quReturnUpdate.parameters[0].value :=6
                else   quReturnUpdate.parameters[0].value := quExitedGoodsprevious_state.asinteger;
                quReturnUpdate.parameters[1].value := quExitedGoodsgoods_code.AsString;
                quReturnUpdate.Prepared := True;
                quReturnUpdate.ExecSql;

                DabData.ADOC.CommitTrans;
             end;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (quReturnUpdate.RowsAffected <> 1) then
             begin
                 Str1 := UUserMsg.SM_Pub_InsertMode;
                 Str2 := UUserMsg.SM_Pub_RetryMsg;
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;
          quExitedGoods.Next;
          end;
   quExitedGoods.EnableControls;
end;

procedure TExitLic.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 5 then
  begin
     quLic.Close;
     quLic.Parameters[0].Value := 4;
     quLic.Parameters[1].Value := 1;
     quLic.open;
  end
  else
   begin
     quLic.Close;
     quLic.Parameters[0].Value:= cbFilterState.ItemIndex;
     quLic.Parameters[1].Value := NULL;
     quLic.open;
   end;
   if quLic.recordCount = 0 then
   begin
      if rbcom.Checked then
                    begin
                      qutransDet.close;
                      qutransDet.Parameters[0].Value := NULL;
                      quTransDet.open;
                    end;
      if rbSale.Checked then
                    begin
                      quSaleDet.close;
                      qusaleDet.Parameters[0].Value :=NULL;
                      qusaleDet.open;
                    end;
      if rbMend.Checked then
                    begin
                      quMendDet.close;
                      quMendDet.Parameters[0].Value :=NULL;
                      quMendDet.open;
                    end;
      ClearMasterFields;
    end;
end;

procedure TExitLic.cbGoodTypeChange(Sender: TObject);
begin
  inherited;
  if cbGoodType.ItemIndex =0 then
  begin
    quWvItems.Close;
    quItems.Open;
    dblItem.ListField:='goods_code';
    dblItem.KeyField:='goods_code';
    dsItems.DataSet:=quItems;
    edTrnsLabel.FieldType:=ftDisplay;
  end
  else
  begin
    quItems.Close;
    quWvItems.Open;
    dblItem.ListField:='Item_Name';
    dblItem.KeyField:='Item_code';
    dsItems.DataSet:=quWvItems;
    edTrnsLabel.Text:='';
    edTrnsLabel.FieldType:=ftRequired;
  end;
  FormInitializer1.Execute;
end;

procedure TExitLic.rbBillClick(Sender: TObject);
begin
  inherited;
     if mde<>0 then
     begin
         dblCom.FieldType:= ftDisplay;
         dblsale.FieldType:=ftDisplay;
         cbLicenseType.FieldType:=ftRequired;
         dblBills.FieldType:=ftRequired;
         //cbLicenseType.ItemIndex:=-1;
         dblCom.KeyValue := null;
         FormInitializer1.Execute;
         dblBills .SetFocus;
     end;

end;

procedure TExitLic.dblBillsCloseUp(Sender: TObject);
begin
   dsDet .DataSet := quBillDet;
   quBillDet .Close ;
   quBillDet .Parameters[0].Value := dblBills.KeyValue ;
   quBillDet .Open ;
end;

end.
