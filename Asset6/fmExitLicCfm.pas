unit fmExitLicCfm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,comobj, ppBands, ppClass, ppProd, ppReport, ppComm,
  ppRelatv, ppCache, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppModule, daDatMod,
  SmoothShow,  SetForm, RSqlButton, RSqllookup, RSqlMaskEdit,
  RSQLComboBox, RSqlEdit,RadForms,Variants;
type
  TExitLicCfm = class(TRadForm)
    PageControl1: TPageControl;
    tstransfer: TTabSheet;
    quDetailUpdate: TADOQuery;
    dsCom: TDataSource;
    quMasterInsert: TADOQuery;
    quDetailInsert: TADOQuery;
    dsdblEmp: TDataSource;
    qudblEmp: TADOQuery;
    quMasterDelete: TADOQuery;
    quMasterUpdate: TADOQuery;
    Label2: TLabel;
    Label9: TLabel;
    Panel13: TPanel;
    paOkCancel: TPanel;
    Panel16: TPanel;
    Label16: TLabel;
    Label17: TLabel;

    Panel20: TPanel;
    Panel21: TPanel;
    Label27: TLabel;
    grcom: TDBGrid;
    Label28: TLabel;
    Label31: TLabel;
    dsDet: TDataSource;
    quDetailDelete: TADOQuery;
    Panel14: TPanel;
    Label4: TLabel;
    quRecMasterUpdate: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    dsTrans: TDataSource;
    quTrans: TADOQuery;
    dsSale: TDataSource;
    quSale: TADOQuery;
    quTransDet: TADOQuery;
    quSaleDet: TADOQuery;
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
    quUpdateTrans: TADOQuery;
    quUpdateSale: TADOQuery;
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
    RadioGroup1: TRadioGroup;
    Label12: TLabel;
    Label13: TLabel;
    rbMend: TRadioButton;
    rbSale: TRadioButton;
    rbCom: TRadioButton;
    quMasterUp: TADOQuery;
    Label15: TLabel;
    Label18: TLabel;
    rgExit: TRadioGroup;
    quMConfirm: TADOQuery;
    quExitedGoods: TADOQuery;
    quLic: TADOQuery;
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
    Panel23: TPanel;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    dsreport: TDataSource;
    quReport: TADOQuery;
    ppTitleBand1: TppTitleBand;
    pporg: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLLicenseNo: TppLabel;
    ppLDate: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLState: TppLabel;
    ppLabel9: TppLabel;
    pplType: TppLabel;
    ppLabel11: TppLabel;
    pplName: TppLabel;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
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
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    pplExiter: TppLabel;
    pplcreator: TppLabel;
    pplConfirmer: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
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
    quLicConfirmerN: TStringField;
    edState: TRSqlEdit;
    edExiterName: TRSqlEdit;
    edLicenseNo: TRSqlEdit;
    meCreateD: TRSqlMaskEdit;
    meConfirm: TRSqlMaskEdit;
    meCreateDate: TRSqlMaskEdit;
    dblCom: TRSqlDbLookup;
    dblSale: TRSqlDbLookup;
    dblCreator: TRSqlDbLookup;
    dblConfirmer: TRSqlDbLookup;
    cbLicenseType: TRSqlComboBox;
    dblExiter: TRSqlDbLookup;
    BtCancelTrans: TRSqlButton;
    BtOkTrans: TRSqlButton;
    cbFilterState: TComboBox;
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
    quMendDet: TADOQuery;
    grItem: TDBGrid;
    Panel25: TPanel;
    Panel24: TPanel;
    Panel26: TPanel;
    Panel15: TPanel;
    Panel2: TPanel;
    Label23: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
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
    quExitedGoodsItem_Code1: TStringField;
    quExitedGoodsLicense_no: TIntegerField;
    quExitedGoodsAmount: TIntegerField;
    quExitedGoodslabel: TIntegerField;
    quExitedGoodsGoods_Code: TStringField;
    quExitedGoodsItem_Code: TStringField;
    quExitedGoodsMaster_Name: TStringField;
    quExitedGoodsDetail_Name: TStringField;
    quExitedGoodsItem_Name: TStringField;
    quExitedGoodsPosition_code: TStringField;
    quExitedGoodsInventory_Limit: TSmallintField;
    quExitedGoodsOrder_Point: TSmallintField;
    quExitedGoodsItem_Inventory: TIntegerField;
    quExitedGoodsitem_desc: TStringField;
    quExitedGoodsclass_code: TSmallintField;
    quExitedGoodsclass_desc: TStringField;
    quExitedGoodsclass_name: TStringField;
    quExitedGoodsClass_Type: TSmallintField;
    quExitedGoodsppc_code: TStringField;
    quExitedGoodspc_code: TStringField;
    quExitedGoodsps_code: TStringField;
    quExitedGoodsUnit_Item: TStringField;
    quExitedGoodsClass_TypeStr: TStringField;
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
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppImage1: TppImage;
    ppLabel8: TppLabel;
    quLicBill_No: TIntegerField;
    rbBill: TRadioButton;
    dblBills: TRSqlDbLookup;
    quBillDet: TADOQuery;
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
    quReportItem_code: TStringField;
    quReportItem_name: TStringField;
    quReportLabel: TIntegerField;
    quReportAmount: TIntegerField;
    quReportUnit_item: TStringField;
    quReportBill_No: TIntegerField;
    quReportLicense_no: TIntegerField;
    quReportLicense_no_1: TIntegerField;
    quReportLicense_type: TSmallintField;
    quReportcom_tr_no: TIntegerField;
    quReportSale_com_no: TIntegerField;
    quReportMend: TBooleanField;
    quReportCreator: TStringField;
    quReportCreate_date: TStringField;
    quReportConfirmer: TStringField;
    quReportConfirm_date: TStringField;
    quReportState: TSmallintField;
    quReportExiterEmp: TStringField;
    quReportExiterName: TStringField;
    quReportExitGaurd: TStringField;
    quReportExit_date: TStringField;
    quReportExit_time: TStringField;
    quReportReturn_Gaurd: TStringField;
    quReportReturn_date: TStringField;
    quReportReturn_time: TStringField;
    quReportBill_No_1: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
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
    procedure rbMendClick(Sender: TObject);
    procedure rgExitClick(Sender: TObject);
    procedure dblItemCloseUp(Sender: TObject);
    procedure dblItemClick(Sender: TObject);
    procedure BtFailClick(Sender: TObject);
    procedure rgExitEnter(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
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
     procedure UpdateMaster;
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
    procedure CheckSetFailButton;
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
    procedure Doprint(var mes :TMessage);message F_PRINT;

//------------------------------------------------------------------------
  public
    mde     : integer ;

    { Public declarations }
  end;
var

  ExitLicCfm: TExitLicCfm;
  RowCount:Integer;

  i:integer;
  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str,goodStr : string;
  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;
  confTag:Byte;
  ChkSaleDate, ChkempSaleDate   : Boolean;

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
procedure TExitLicCfm.DoScroll(var mes:TMessage);
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
procedure TExitLicCfm.DoNew(var mes: TMessage);
begin
{   grItem.TabStop    := false;
   grcom.TabStop     := false;
   mde := 1;
   case ActiveGrid of
    1 : begin

           grcom.Enabled :=false;
           quLic.Last;
           grcom.Enabled :=true;
           EnableMasterFields();
           ClearMasterFields();


           if   quLic.RecordCount = 0  then
                  edLicenseNo.Text :=  '81000000'
                else  edLicenseNo.Text := IntToStr(quLicLicense_no .AsInteger + 1) ;
           meCreateD .Text := disp_date ;
           meCreateDate .Text   := disp_date ;
              quTrans .Close;
              quTrans .Parameters[0].Value := 1;
              quTrans .Parameters[1].Value := 0;
              quTrans .open;
              quSale  .Close;
              quSale  .Parameters[0].Value := 1;
              quSale  .Parameters[1].Value := 0;
              quSale  .open;


           dblCom.enabled:=false;
           dblSale.enabled:=false;
           dblCom.Color := clDeactiveFieldColor;
           dblSale.Color := clDeactiveFieldColor;
           BtOkTrans .Enabled  := False;
           cbLicenseType  .SetFocus;
        end;
    2 : begin
           if quLicState.AsInteger =0 then
           begin
              if not rbMend.Checked  then begin mde:= 0 ;exit; end;

              EnableDetailFields();
              ClearDetailFields();
//              dblitem.enabled:=true;
  //            dblItem.SetFocus;

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
}end;
//****************************************************************************
procedure TExitLicCfm.DoEdit(var mes :TMessage);
var ReqNo : integer;
begin
      grItem.TabStop    := false;
      grcom.TabStop     := false;
      mde := 2;
      case ActiveGrid of
      1 : begin

           reqNo:=0;
    //       if quLiccom_tr_no.AsInteger<>0 then ReqNo := quTransDet.RecordCount;
      //     if quLicSale_com_no.AsInteger<>0 then ReqNo := qusaleDet.RecordCount;
           if quLicMend.AsBoolean then
              if quMendDet.RecordCount>0 then reqNo :=0
                                         else reqNo :=10;
           if (quLicState .AsInteger <>0) then reqNo := 10;
           if ReqNo<>0 then
           begin
                 Str1 := '«Œÿ«—';
                 Str2 := 'Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;

           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
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
              cblicenseType.enabled:=false;
           end;
      //     BtOkTrans .Enabled := True;
          meConfirm.Text:= Dabdata.disp_date;
//          dblConfirmer.SetFocus;
           BtOkTrans.Enabled:=True;
           BtCancelTrans.Enabled:=True;
          end;
      2 :{ begin
           if qulicState.AsInteger <>0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := '«„Ê«·  Å—Ê«‰Â Œ—ÊÃ ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0 ; exit;
           end;

           if rbcom.Checked then
           if quTransDet .RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;
           if rbSale.Checked then
           if qusaleDet .RecordCount =0 then
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
{           quItems.DisableControls;
           quItems.Close;
           quItems.Parameters[0].Value := 1;
           quItems.Parameters[1].Value := 4;
           if rbcom.Checked then quItems.Parameters[2].Value := quTransDetGeneralcode.asstring;
           if rbSale.Checked then quItems.Parameters[2].Value := qusaleDetGeneralcode.asstring;
           if rbMend.Checked then quItems.Parameters[2].Value := quMendDetGeneralcode.asstring;
           quItems.Open;
           quItems.EnableControls;
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
{           goodStr:= dblitem.keyvalue;
           btOkTrans.Enabled := True;
           dblItem.enabled:=true;

           dblItem.SetFocus;
          end;
 }     end;
 meCreateDate.Text:=Dabdata.disp_date;
 meConfirm.Text:=Dabdata.disp_date;
 dblConfirmer.KeyValue:=DabData.emp_no;

end;
//*****************************************************************************
procedure TExitLicCfm.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
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
                ( qulic.RecNo >= 1) then
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
            end;
            end;
        end;
}
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TExitLicCfm.SetDefaultMode(i: integer);
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
//****************************************************************************
procedure TExitLicCfm.SetGridColor(i: integer);
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
//***************************************************************************
procedure TExitLicCfm.UpdateMaster();
begin
   BMark := quLic.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      if dblConfirmer  .KeyValue <>'' then   quMasterUpdate.parameters[0].value := dblConfirmer  .KeyValue
      else quMasterUpdate.parameters[0].value := NULL;
      quMasterUpdate.parameters[1].value := meConfirm.Text;
      quMasterUpdate.parameters[2].value := ConfTag;
      quMasterUpdate.parameters[3].value := edLicenseNo .Text;
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
//     DeleteAllDetails;
  //   InsertAllDetails;
   if ConfTag = 2 then
   begin
     UpdateAllDetails;
   end;
{   if TempTrans <>0 then UpdateTransTable(TempTrans  ,0);
   if TempSale  <>0 then UpdateSaleTable(TempSale   ,0);

 }   {if dblCom .KeyValue > 0 then
           UpdateTransTable(dblCom .KeyValue ,1)
    else   UpdateSaleTable(dblSale.KeyValue  ,1);
 }   cbfilterstate.itemIndex:= 2;
     str1:= edLicenseNo.text;
     quLic.close;
     qulic.parameters[0].value := 2;
     qulic.parameters[1].value := NULL;
     quLic.Open;
     qulic.locate('License_no',str1,[]);
  // quLic.GotoBookmark(BMark);
  // quLic.FreeBookmark(BMark);

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
procedure TExitLicCfm.ClearMasterFields;
begin
    //dblConfirmer.KeyValue := '';
    //meConfirm.Text := '';

end;
//*****
//*********************************************************************
procedure TExitLicCfm.SetMasterFields();
begin
      edLicenseNo  .Text        := quLicLicense_no   .AsString ;

      meCreateD   .Text     := quLicCreate_date .AsString ;

      dblConfirmer.KeyValue := quLicConfirmer.AsString;
      meConfirm.Text:= quLicConfirm_date.AsString;


      meCreateDate  .Text      := quLicCreate_date  .AsString ;

      dblCreator .KeyValue         := quLicCreator  .AsString  ;
      edState.text := quLicStatename.AsString;
      tempSale:=0;TempTrans:=0;
      cbLicenseType.ItemIndex :=quLicLicense_type.AsInteger ;

      if quLiccom_tr_no.AsInteger   > 0 then
         begin
           rbCom .Checked  :=true;

           quTrans .Close;
           quTrans .Parameters[0].Value := 2;
           quTrans .Parameters[1].Value := quLiccom_tr_no.AsInteger   ;
           quTrans .open;

           dblCom .KeyValue :=  quLiccom_tr_no.AsInteger;
           dblSale.KeyValue := -1;
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
           dblCom.KeyValue := -1;
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
              dblCom.KeyValue := -1;
              dblSale.KeyValue := -1;


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
              dblExiter.KeyValue:=-1;
             end;
end;
//*****************************************************************************
procedure TExitLicCfm.DisableMasterFields;
begin
      edLicenseNo  .Enabled        := False;
      rbCom .Enabled :=False;
      rbSale .Enabled :=False;
      meCreateDate  .Enabled    := false;
      meCreateD   .Enabled    := false;
      cbLicenseType .Enabled :=false;
      dblCreator .Enabled      := False;
      dblSale .Enabled       := False;
      dblCom .Enabled := false;
      dblConfirmer .Enabled := false;
      meConfirm.Enabled := false;
     // edState .Enabled := false;

      rbMend.Enabled:= false;

      rgExit.Enabled:=false;


      dblExiter.Enabled:= false;
      edExiterName.Enabled:= false;

      quTrans .Close;
      quTrans .Parameters[0].Value := 0;
      quTrans .Parameters[1].Value := 0;
      quTrans .open;
      quSale  .Close;
      quSale  .Parameters[0].Value := 0;
      quSale  .Parameters[1].Value := 0;
      quSale  .open;
      rgexit.enabled:= false;

 end;
//*****************************************************************************
procedure TExitLicCfm.EnableMasterFields;
begin

     // dblConfirmer.Enabled       := true;
      //meConfirm .Enabled := true;

     // meConfirm .Color    := clactiveFieldColor;
      //dblConfirmer .Color     := clactiveFieldColor;

      paOkCancel .Visible := true;

end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//**************************************************************************
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TExitLicCfm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TExitLicCfm.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 62 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TExitLicCfm.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TExitLicCfm.FormShow(Sender: TObject);
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
        cbFilterState.ItemIndex :=0;
        quLic.Close;
        quLic.Parameters[0].Value:= cbFilterState.ItemIndex;
        quLic.Parameters[1].Value := NULL;
        quLic.open;


        grcom.SetFocus;
        dblConfirmer.KeyValue:=DabData.emp_no;
end;
//******************************************************************************
procedure TExitLicCfm.btRecCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TExitLicCfm.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
//   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TExitLicCfm.quLicAfterScroll(DataSet: TDataSet);
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
procedure TExitLicCfm.grcomEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

//   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton;
end;
/////////////////////////////////////////////////////////
procedure TExitLicCfm.grItemEnter(Sender: TObject);
begin
   ActiveGrid := 2;
   SetGridColor(2);

   paOKCancel.Visible   := False;
//   PaDetailOper.Visible := False;

   mde:=0;
   DisableMasterFields();
//   SetMasterFields();
   CheckSetFailButton;
end;
/////////////////////////////////////////////////////////
procedure TExitLicCfm.BtOkTransClick(Sender: TObject);
begin
   confTag:= 2;
   if ActiveGrid = 1 then
   begin
      case mde of
        2 : UpdateMaster();

      end;  // end case
      SetDefaultMode(1);
   end;
{   else
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

 }
end;
/////////////////////////////////////////////////////////
procedure TExitLicCfm.BtCancelTransClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   BEGIN
      confTag := 3;
      UpdateMaster;
      SetDefaultMode(2);
   End;   
end;
/////////////////////////////////////////////////////////
procedure TExitLicCfm.dblItemEnter(Sender: TObject);
begin
      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 1;
      DabData.qumoveable.Parameters[1].Value := 4;
      DabData.qumoveable.Parameters[2].Value := NULL;
      DabData.qumoveable.Parameters[3].Value := NULL;
      DabData.qumoveable.Parameters[4].Value := '%';
      DabData.qumoveable.Open;
CheckSetFailButton;
end;
/////////////////////////////////////////////////////////
procedure TExitLicCfm.rbComClick(Sender: TObject);
begin
     if mde<>0 then
     begin
         dblCom.Enabled := true;
         dblcom.SetFocus ;
         dblsale.Enabled := false;
         cbLicenseType.Enabled:=true;
        // cbLicenseType.ItemIndex:=-1;
         dblSale .KeyValue := -1;
     end;
end;
/////////////////////////////////////////////////////////
procedure TExitLicCfm.rbSaleClick(Sender: TObject);
begin
     if mde<>0 then
     begin

         dblCom.Enabled :=false;
         dblCom .Color := cldeActiveFieldColor  ;

         dblsale.Enabled := true;
         dblsale .Color := clActiveFieldColor   ;
         dblSale .SetFocus;
         cbLicenseType.Enabled:=true;
         //cbLicenseType.ItemIndex:=-1;

         dblCom.KeyValue := -1;
     end;
end;
///////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
procedure TExitLicCfm.rbMendClick(Sender: TObject);
begin
     if mde<>0 then
     begin

         cbLicenseType.Enabled:=false;
         cbLicenseType.ItemIndex:=1;
         dblCom.KeyValue := -1;
         dblSale.KeyValue := -1;
         dblCom.Enabled :=false;
         dblCom .Color := cldeActiveFieldColor  ;
         dblsale.Enabled := false;
         dblsale .Color := clDeActiveFieldColor   ;

     end;
end;

procedure TExitLicCfm.rgExitClick(Sender: TObject);
begin
    if rgExit .ItemIndex = 0 then
    begin
         if mde<>0 then
     begin
         dblExiter.Enabled := true;
         dblExiter .Color := clActiveFieldColor  ;
         dblExiter.SetFocus;
         edExiterName.Enabled := false;
         edExiterName .Color := clDeActiveFieldColor   ;

         edExiterName.Text:= '';
     end;
     end
     else
     begin
     if mde<>0 then
     begin
         edExiterName.Enabled := true;
         edExiterName.Color := clActiveFieldColor  ;
         edExiterName.SetFocus ;
         dblExiter.Enabled := false;
         dblExiter .Color := clDeActiveFieldColor   ;
         dblExiter .KeyValue := -1;

     end;
     end;


end;

///////////////////////////////////////////////////

procedure TExitLicCfm.dblItemCloseUp(Sender: TObject);
begin
{
if dblItem.text = '' then btoktrans.enabled := false
else btoktrans.enabled := true;
 }
end;

procedure TExitLicCfm.dblItemClick(Sender: TObject);
begin
{

   edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
   edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
 }
end;

procedure TExitLicCfm.BtFailClick(Sender: TObject);
begin
{     Str1 := UUserMsg.SM_Ebtal;
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
         quLic.close;
         quLic.Open;

         quLic.Locate('License_No',str1,[locaseinsensitive]);
         end;
         mde:=0 ;
}
end;
procedure TExitLicCfm.CheckSetFailButton;
begin
{   btFail.Enabled := False;
   if  ( quLic.RecordCount <> 0)and( quLicstate.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
}end;

procedure TExitLicCfm.rgExitEnter(Sender: TObject);
begin
if mde<>0 then
if rgExit.ItemIndex = 0 then
  begin
     dblExiter.Enabled:= true;
     dblExiter.Color:= clActiveFieldColor;
  end
  else
  begin
     edExiterName.Enabled:= true;
     edExiterName.Color:= clActiveFieldColor;
  end;
end;

procedure  TExitLicCfm.UpdateAllDetails ;
var str1,str2:string;
begin
    quExitedGoods.close;
    quExitedGoods.Parameters[0].Value:= StrtoInt(edLicenseNo.Text);
    quExitedGoods.open;
    for i:=1 to quExitedGoods.RecordCount do
          begin
             quDetailUpdate.Close;
             try
             begin
                DabData.ADOC.BeginTrans;

                quDetailUpdate.parameters[0].value := 5;
                quDetailUpdate.parameters[1].value := quExitedGoodsgoods_code.AsString;
                quDetailUpdate.Prepared := True;
                quDetailUpdate.ExecSql;

                DabData.ADOC.CommitTrans;
             end;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (quDetailUpdate.RowsAffected <> 1) then
             begin
                 Str1 := UUserMsg.SM_Pub_InsertMode;
                 Str2 := UUserMsg.SM_Pub_RetryMsg;
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;
          quExitedGoods.Next;
          end;
end;

procedure TExitLicCfm.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 4 then
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

procedure TExitLicCfm.Doprint(var mes: TMessage);
var str,lictype:string;
begin
   RowCount:=1;
   i:= 1;
   quReport.close;
   quReport.Parameters[0].Value:= edLicenseNo.Text;
   quReport.close;

   if quLicState.AsInteger<> 2 then
   begin
        Str1 := '«Œÿ«—';
        Str2 := '›ﬁÿ Å—Ê«‰Â Œ—ÊÃ Â«Ì  «ÌÌœ ‘œÂ ﬁ«»· ç«Å „Ì »«‘‰œ';
        ShowMessage2(Str2);
        exit;
   end;
      ppOrg.Caption := OrganizName;
   ppLLicenseNo .text :=  edLicenseNo.Text;
   ppldate.Text := Dabdata.disp_date;
   pplstate.Text := ' «ÌÌœ ‘œÂ';

   if rbcom.checked then pplType.Text  := 'Ê«ê–«—Ì';
   if rbSale.checked then pplType.Text:= '›‹‹‹—Ê‘';
   if rbMend.checked then pplType.Text:=   ' ‹‹‹⁄„Ì—';

   if dblExiter.KeyValue <> -1 then  str := dblExiter.Text
   else str := edExiterName.text;
   if cblicensetype.itemindex = 0 then lictype:= 'œ«∆„'
   else Lictype := '„Êﬁ ';


   pplName.Text:=  trim(str)+ '   »’Ê—  '+trim(Lictype);

   pplexiter.text := trim(str);
   pplcreator.text := quLicCreatorN.AsString;
   pplconfirmer.text := quLicConfirmerN.AsString;

   ppReport1.Print;
end;

procedure TExitLicCfm.ppDBText2GetText(Sender: TObject; var Text: String);
begin
  Text := IntToStr(quReport.RecNo);
{  Text := IntToStr(RowCount);;
  Inc(RowCount);}
end;

end.
