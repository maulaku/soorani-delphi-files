unit fmTrRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate ,comobj,  ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  RSqlMaskEdit, SmoothShow, fcButton, fcImgBtn, fcClearPanel, fcButtonGroup,
  RSqllookup, RSQLComboBox, RSqlEdit, SetForm,  RSqlButton,RadForms ,Variants;

type
  TTrRec = class(TRadForm)
    PageControl1: TPageControl;
    tsReciept: TTabSheet;
    tstransfer: TTabSheet;
    Label3: TLabel;
    Label7: TLabel;
    grBill: TDBGrid;
    Panel9: TPanel;
    Panel12: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel8: TPanel;
    Label1: TLabel;
    quDetailUpdate: TADOQuery;
    quCom: TADOQuery;
    dsCom: TDataSource;
    quMasterInsert: TADOQuery;
    quDetailInsert: TADOQuery;
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
    quUpdateMovGood: TADOQuery;
    quUpdateNonMovGood: TADOQuery;
    Label2: TLabel;
    Label9: TLabel;
    Panel13: TPanel;
    paOkCancel: TPanel;
    Panel16: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label27: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    quRecDet: TADOQuery;
    dsRecDet: TDataSource;
    PaDetailOper: TPanel;
    grItem: TDBGrid;
    quDetailDelete: TADOQuery;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label38: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label14: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel17: TPanel;

    grReciept: TDBGrid;
    paRecOKCancel: TPanel;
    quRecNo: TADOQuery;
    dsRecNo: TDataSource;
    quRecNocom_tr_no: TIntegerField;
    quRecNotrans_type: TSmallintField;
    quRecNotrans_date: TStringField;
    quRecNopass_no: TStringField;
    quRecNoReceiver_org: TStringField;
    quRecNoReceiver: TStringField;
    quRecNoReceiver_post: TStringField;
    quRecNoRecomend_no: TStringField;
    quRecNoTransfer_req_no: TStringField;
    quRecNoreturn_date: TStringField;
    quRecNoCreator: TStringField;
    quRecNocreat_tr_date: TStringField;
    quRecNoDeliver_confirm: TStringField;
    quRecNodel_conf_date: TStringField;
    quRecNoaudit_confirm: TStringField;
    quRecNoaudit_conf_date: TStringField;
    quRecNoApprover: TStringField;
    quRecNoApprove_date: TStringField;
    quRecNocom_lr_no: TIntegerField;
    quRecNoReceive_date: TStringField;
    quRecNoCreat_rc_date: TStringField;
    quRecNoConfirmer: TStringField;
    quRecNoConfirm_date: TStringField;
    quRecNoReceipt_Creator: TStringField;
    quRecNoCreatorN: TStringField;
    quRecNoConfirmN: TStringField;
    quRecMasterUpdate: TADOQuery;
    Button1: TButton;
    quMasterUp: TADOQuery;
    Label15: TLabel;
    Panel22: TPanel;
    grcom: TDBGrid;
    Panel18: TPanel;
    BtFail: TButton;
    Panel23: TPanel;
    quFindLastNo: TADOQuery;
    quFindLastNoCom_tr_no: TIntegerField;
    quRecNoState: TSmallintField;
    meTransDate: TRSqlMaskEdit;
    meReturnDate: TRSqlMaskEdit;
    meRecCreat: TRSqlMaskEdit;
    meRecGood: TRSqlMaskEdit;
    quRecDetcom_tr_no: TIntegerField;
    quRecDetPlaque_no: TStringField;
    quRecDetReason: TStringField;
    quRecDetRow_no: TIntegerField;
    quRecDetGoods_type: TSmallintField;
    quRecDetItemName: TStringField;
    quRecDetLabel: TIntegerField;
    quRecDetItemCode: TStringField;
    quRecDetStatename: TStringField;
    quComcom_tr_no: TIntegerField;
    quComtrans_type: TSmallintField;
    quComtrans_date: TStringField;
    quCompass_no: TStringField;
    quComReceiver_org: TStringField;
    quComReceiver: TStringField;
    quComReceiver_post: TStringField;
    quComRecomend_no: TStringField;
    quComTransfer_req_no: TStringField;
    quComreturn_date: TStringField;
    quComCreator: TStringField;
    quComcreat_tr_date: TStringField;
    quComDeliver_confirm: TStringField;
    quComdel_conf_date: TStringField;
    quComaudit_confirm: TStringField;
    quComaudit_conf_date: TStringField;
    quComApprover: TStringField;
    quComApprove_date: TStringField;
    quComcom_lr_no: TIntegerField;
    quComReceive_date: TStringField;
    quComCreat_rc_date: TStringField;
    quComConfirmer: TStringField;
    quComConfirm_date: TStringField;
    quComReceipt_Creator: TStringField;
    quComState: TSmallintField;
    quComCreatorN: TStringField;
    quComDeliverN: TStringField;
    quComAuditN: TStringField;
    quComAppN: TStringField;
    quComConfN: TStringField;
    quComStateName: TStringField;
    edPassNo: TRSqlEdit;
    edRecOrg: TRSqlEdit;
    edTrRecNo: TRSqlEdit;
    edReceiver: TRSqlEdit;
    edRecomendNo: TRSqlEdit;
    edReceiverPost: TRSqlEdit;
    edCom: TRSqlEdit;
    edTrnsLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edReason: TRSqlEdit;
    cbGoodType: TRSqlComboBox;
    dblItem: TRSqlDbLookup;
    dblCreator: TRSqlDbLookup;
    dblDelConf: TRSqlDbLookup;
    dblApprover: TRSqlDbLookup;
    meCreateTrDate: TRSqlMaskEdit;
    MeDelconfDate: TRSqlMaskEdit;
    meAppDate: TRSqlMaskEdit;
    edState: TRSqlEdit;
    edRecNo: TRSqlEdit;
    edRecComNo: TRSqlEdit;
    dblRecCreator: TRSqlDbLookup;
    dblRecConfirmer: TRSqlDbLookup;
    meRecCreate: TRSqlMaskEdit;
    meRecConfirm: TRSqlMaskEdit;
    btRecCancel: TRSqlButton;
    btRecOK: TRSqlButton;
    BtCancelTrans: TRSqlButton;
    BtOkTrans: TRSqlButton;
    cbFilterState: TComboBox;
    cbTransType: TRSqlComboBox;
    fcButtonGroup1: TfcButtonGroup;
    fcButtonGroup1fcImageBtn1: TfcImageBtn;
    fcButtonGroup1fcImageBtn2: TfcImageBtn;
    quRecDetGoods_code: TStringField;
    quWvItems: TADODataSet;
    quWvItemsItem_Code: TStringField;
    quWvItemsItem_Name: TStringField;
    dsWvItems: TDataSource;
    dsreport: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppOrg: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppcom: TppLabel;
    ppDate: TppLabel;
    ppLabel7: TppLabel;
    ppState: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel4: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
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
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppcreator: TppLabel;
    pplrc: TppLabel;
    pplConfirmer: TppLabel;
    ppLabel13: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine8: TppLine;
    pppass: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine9: TppLine;
    ppLabel27: TppLabel;
    ppdate2: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine12: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppExpDate: TppLabel;
    ppLabel36: TppLabel;
    ppLabel40: TppLabel;
    pprec: TppLabel;
    quReport: TADODataSet;
    ppLabel24: TppLabel;
    quReportcom_tr_no: TIntegerField;
    quReportGoods_code: TStringField;
    quReportPlaque_no: TStringField;
    quReportReason: TStringField;
    quReportRow_no: TIntegerField;
    quReportGoods_type: TSmallintField;
    quReportGeneralCode: TStringField;
    quReportItemName: TStringField;
    quReportLabel: TIntegerField;
    quReportItemCode: TStringField;
    quReportccode: TSmallintField;
    quReportbprice: TFloatField;
    quReporteprice: TFloatField;
    quReportStatename: TStringField;
    ppShape2: TppShape;

//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btRecOKClick(Sender: TObject);
    procedure meRepayStartKeyPress(Sender: TObject; var Key: Char);
    procedure btRecCancelClick(Sender: TObject);
    procedure grRecItemEnter(Sender: TObject);
    procedure quComAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure dblItemCloseUp(Sender: TObject);
    procedure cbTransTypeChange(Sender: TObject);
    procedure grcomEnter(Sender: TObject);
    procedure BtOkTransClick(Sender: TObject);
    procedure BtCancelTransClick(Sender: TObject);
    procedure grItemEnter(Sender: TObject);
    procedure quRecDetAfterScroll(DataSet: TDataSet);
    procedure dblItemEnter(Sender: TObject);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure tsRecieptShow(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure tstransferShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grRecieptEnter(Sender: TObject);
    procedure HandleDeleteError(ErrCode: HRESULT);
    procedure BtFailClick(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure fcButtonGroup1fcImageBtn2Click(Sender: TObject);
    procedure fcButtonGroup1fcImageBtn1Click(Sender: TObject);
    procedure grcomExit(Sender: TObject);
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
     procedure CheckSetFailButton;
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
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
{     procedure UpdateMovGoods   ( GoodCode : String      ; Stat : integer);
     procedure UpdateNonMovGoods( Plaque_NoCode : String ; Stat : integer);}
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

  TrRec: TTrRec;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;

  ChkCreateBill , ChkEmpCreateBill   : Boolean;
  ChkCreate     , ChkEmpCreate       : Boolean;
  ChkReturnDate , ChkempReturnDate   : Boolean;
  ChkTrans      , Chkemptrans  : Boolean;
  ChkConfirm    , ChkEmpConfirm      : Boolean;
  ChkCfmTeller  , ChkEmpcfmTeller    : Boolean;
  ChkRecCreate  , ChkEmpRecCreate : Boolean;
  ChkRecGood    , ChkEmpRecGood   : Boolean;

  ConfTag:Byte;
  AllDisabled: Boolean;

  TempItemCode  : string[8];
  TempGoodsCode : String[10];
  TempPlaqueNo  : String[10];
  TempGoodType  : Smallint;

  TempGoodsVar  : Variant;
  ChkResult     : Boolean;
  IsClear       : Boolean;
  ActiveGrid    : Integer;
  BMark         : TBookmark;
  tagm:integer;
implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TTrRec.DoScroll(var mes:TMessage);
begin
   case PageControl1 .ActivePageIndex   of
   1:
      if ( mde = 0) and (qucom.RecordCount <> 0 ) then
      begin

         qurecdet.DisableControls;
         quRecDet.Close ;
         quRecDet.Parameters[0].Value := quComcom_tr_no.AsInteger ;
         quRecDet.Parameters[1].Value := quComcom_tr_no.AsInteger ;
         quRecDet.Open ;
         quRecDet.EnableControls;

         DisableMasterFields();
         SetMasterFields();
         CheckSetFailButton();
      end;
   0:
     begin
      if ( mde = 0) and ( quRecNo.RecordCount <> 0 )and (tagm=0) then
      begin

         qurecdet.DisableControls;
         quRecDet .Close ;
         quRecDet .Parameters[0].Value := quRecNocom_tr_no.AsInteger ;
         quRecDet .Parameters[1].Value := quRecNocom_tr_no.AsInteger ;
         quRecDet .Open ;
         quRecDet.EnableControls;

         DisableMasterFields();
         SetMasterFields();
      end;

     end;
   end;
end;
//*****************************************************************************
procedure TTrRec.DoNew(var mes: TMessage);
begin
   mde := 1;
   if PageControl1.ActivePageIndex = 1 then

   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex := 0;

           quCom.Close;
           quCom.Parameters[0].Value:= 0;
           quCom.Parameters[1].Value := NULL;
           quCom.open;
           quCom.Last;

           quRecDet.Close;
           quRecDet.Parameters[0].Value := NULL;
           quRecDet.Parameters[1].Value := NULL;
           quRecDet.Open;

           EnableMasterFields();
           ClearMasterFields();

           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;

           if      quFindLastNo.RecordCount = 0 then edCom.Text := '81000000'
              else edCom.Text := IntToStr(quFindLastNoCom_tr_no.AsInteger + 1) ;

           meCreateTrDate .Text   := Dabdata.disp_date ;
           ChkReturnDate      := True;
           ChkempReturnDate   := True;
           ChkTrans:=true;
           ChkEmpTrans:=true;
           edPassNo .SetFocus;
        end;
    2 : begin
           if quCom.RecordCount = 0 then begin mde:= 0 ;exit; end;
           if quComState.AsInteger <> 0 then
           begin
              Str1 := UUserMsg.SM_Pub_DeleteMode;
              Str2 := UUserMsg.SM_fmVisit_Only_Register;
              ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
              exit;
           end;

           quRecDet.Last;
           grcom .TabStop:= false;
           grItem.TabStop:= false;
           cbFilterState.TabStop := False ;
           EnableDetailFields();
           ClearDetailFields();

           cbGoodType.SetFocus;
        end
    end;
   meRecCreate.Text:=Dabdata.disp_date;
   mereccreat.Text:=Dabdata.disp_date;
   meCreateTrDate.Text:=Dabdata.disp_date;
   dblRecCreator.KeyValue:=DabData.emp_no;
   dblCreator.KeyValue:=DabData.emp_no;
   FormInitializer1.Execute;

end;
//****************************************************************************
procedure TTrRec.DoEdit(var mes :TMessage);
begin
   grcom .TabStop:= false;
   grItem.TabStop:= false;
   if (quComState.AsInteger  >1)  then
   begin
     Str1 := '«Œÿ«—';
     Str2 :=SM_fmAccComiss_Only_Register;
     ShowMessage2(Str2);
     mde:=0;exit;
   end;

   if PageControl1 .ActivePageIndex =1 then
   begin
      mde := 2;
      case ActiveGrid of
      1 : begin
           if quComState.AsInteger <>0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := '’Ê— Ã·”Â „Ê—œ ‰Ÿ— ‘„« ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0;exit;
           end;

           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           edPassNo .SetFocus;
          end;
      2 : begin
           if quRecDet.RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;
           if quComState.AsInteger <> 0 then
           begin
              Str1 := UUserMsg.SM_Pub_DeleteMode;
              Str2 := UUserMsg.SM_fmVisit_Only_Register;
              ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
              exit;
           end;
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           cbGoodType.SetFocus;
          end;
      end;
   end
   else
   begin
      case ActiveGrid of
      1 : begin
           mde := 2;
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           btRecOK .Enabled := True;
           meRecGood .SetFocus;
          end;
      2 : begin
           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           btOkTrans.Enabled := True;
           cbGoodType.SetFocus;
          end;
      end;
   end;
   FormInitializer1.FieldMode := fmEdit;
   FormInitializer1.Execute;
end;
//*****************************************************************************
procedure TTrRec.DoDelete(var mes: TMessage);
begin
   if PageControl1.ActivePageIndex = 1 then

   case ActiveGrid of
    1 : begin
        if quComState.AsInteger <>0 then
           begin
             Str1 := '«Œÿ«—';
             Str2 := '’Ê— Ã·”Â „Ê—œ ‰Ÿ— ‘„« ﬁ«»· Õ–›  ‰„Ì »«‘œ';
             ShowMessage2(Str2);
             mde:=0;exit;
           end;

        if ( Mde = 0 )  and ( qucom.RecordCount >=1 ) and
          ( qucom.RecNo >= 1) then
          begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grcom.SetFocus;
             exit;
          end;

          mde :=3;
          DeleteMaster ();
        end;
     end;
     2 :
       begin
          if (quComState.AsInteger <> 0)and(quRecDet.RecordCount >=1) then
          begin
               Str1 := UUserMsg.SM_Pub_DeleteMode;
               Str2 := UUserMsg.SM_fmVisit_Only_Register;
               ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,False);
               exit;
          end;

         if ( Mde = 0 )  and ( quRecDet.RecordCount >=1 ) and
                ( quRecDet.RecNo >= 1) then
            begin
               Str1 := UUserMsg.SM_Pub_DeleteMode;
               Str2 := '¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
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
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TTrRec.SetDefaultMode(i: integer);
begin
  mde := 0;
  grcom .TabStop:= true;
  grItem.TabStop:= true;

  if PageControl1 .ActivePageIndex =1 then
    case ActiveGrid of
      1 :
      begin
         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grcom.TabStop       := True;
         ActiveControl        := grcom;
         ActiveGrid           := 1;
      end;
      2 :
      begin
         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grItem.TabStop    := True;
         ActiveControl      := grItem;
         ActiveGrid         := 2;
      end;
    end
    else
    case ActiveGrid of
      1 :
      begin
         paRecOKCancel.Visible   := False;

         grBill.TabStop       := True;
         ActiveControl        := grBill;
         ActiveGrid           := 1;
      end;
      2 :
      begin
         paRecOKCancel.Visible   := False;

         grReciept.TabStop  := True;
         ActiveControl      := grReciept;
         ActiveGrid         := 2;
      end;
    end;
end;
//****************************************************************************
procedure TTrRec.CheckEscEnter(sender: TObject; Skey: char);
const
   CodeEnter = #13;
   CodeESC   = #27;
begin
   if  ((SKey = CodeEnter) or (SKey = CodeESC)) then
   begin
      case PageControl1.ActivePageIndex of
      0 : begin
           if SKey = CodeEnter then
              begin
                 if btRecOK.Enabled = True then  btRecOKClick(Sender);
              end
              else if SKey = CodeESC then  btRecCancelClick(Sender);
          end;
      1 : begin
           if SKey = CodeEnter then
              begin
                 if BtOkTrans.Enabled = True then  BtOkTransClick(Sender);
              end
              else if SKey = CodeESC then  BtCancelTransClick(Sender);
          end;
       end; // case
   end;
end;
//****************************************************************************
procedure TTrRec.SetGridColor(i: integer);
begin
   if PageControl1.ActivePageIndex = 1 then
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
    else
    if PageControl1.ActivePageIndex = 0 then
    case ActiveGrid of
    1 : begin
          grBill.Color    := clActiveGridColor;
          grReciept.Color := clDeactiveGridColor;
       end;
   2 : begin
          grBill.Color    := clDeactiveGridColor;
          grReciept.Color := clActiveGridColor;
       end;
    end // case

end;
//*****************************************************************************
{procedure TTrRec.UpdateMovGoods(GoodCode : String ; Stat : integer);
begin
   quUpdateMovGood.Close;
   try
      DabData.ADOC.BeginTrans;

      quUpdateMovGood.parameters[0].value := Stat;
      quUpdateMovGood.parameters[1].value := GoodCode;

      quUpdateMovGood.Prepared := True;
      quUpdateMovGood.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quUpdateMovGood.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
end;
//*****************************************************************************
procedure TTrRec.UpdateNonMovGoods( Plaque_NoCode : String ; Stat : integer);
begin
   quUpdateNonMovGood.Close;
   try
      DabData.ADOC.BeginTrans;

      quUpdateNonMovGood.parameters[0].value := Stat;
      quUpdateNonMovGood.parameters[1].value := Plaque_NoCode;

      quUpdateNonMovGood.Prepared := True;
      quUpdateNonMovGood.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quUpdateNonMovGood.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
end;   }
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
procedure TTrRec.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := edCom .Text;
      quMasterInsert.parameters[1].value := cbTransType.itemindex;
      quMasterInsert.parameters[2].value := meTransDate .Text ;
      quMasterInsert.parameters[3].value := edPassNo.Text;
      quMasterInsert.parameters[4].value := edRecOrg .text;
      quMasterInsert.parameters[5].value := edReceiver .Text;
      quMasterInsert.parameters[6].value := edReceiverPost.text ;
      quMasterInsert.parameters[7].value := edRecomendNo .Text;
      quMasterInsert.parameters[8].value := edTrRecNo .Text;
      quMasterInsert.parameters[9].value := meReturnDate .Text;
      quMasterInsert.parameters[10].value:= dblCreator .KeyValue;
      quMasterInsert.parameters[11].value:= meCreateTrDate.Text ;
      quMasterInsert.parameters[12].value:= NULL;//dblDelConf .KeyValue;
      quMasterInsert.parameters[13].value:= NULL;//MeDelconfDate .text;
      quMasterInsert.parameters[14].value:= NULL;//dblAuditConf .keyvalue;
      quMasterInsert.parameters[15].value:= NULL;//meAuditConfDate.Text ;
      quMasterInsert.parameters[16].value:= NULL;//dblApprover.keyvalue;
      quMasterInsert.parameters[17].value:= NULL;//meAppDate .Text;
      quMasterInsert.parameters[18].value:= NULL;
      quMasterInsert.parameters[19].value:= NULL;
      quMasterInsert.parameters[20].value:= NULL;
      quMasterInsert.parameters[21].value:= NULL;
      quMasterInsert.parameters[22].value:= NULL;
      quMasterInsert.parameters[23].value:= 0;


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
    qucom.close;
    quCom.Parameters[0].Value := cbFilterState.ItemIndex;
    quCom.Parameters[1].Value := NULL;
    qucom.Open;
    qucom.Last;

    SetDefaultMode(1);
end;
//***************************************************************************
procedure TTrRec.UpdateMaster();
begin
   case PageControl1.ActivePageIndex  of
   1 : begin
   BMark := qucom.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterUpdate.parameters[0].value := cbTransType.itemindex;
      quMasterUpdate.parameters[1].value := meTransDate .Text ;
      quMasterUpdate.parameters[2].value := edPassNo.Text;
      quMasterUpdate.parameters[3].value := edRecOrg .text;
      quMasterUpdate.parameters[4].value := edReceiver .Text;
      quMasterUpdate.parameters[5].value := edReceiverPost.text ;
      quMasterUpdate.parameters[6].value := edRecomendNo .Text;
      quMasterUpdate.parameters[7].value := edTrRecNo .Text;
      quMasterUpdate.parameters[8].value := meReturnDate .Text;
      quMasterUpdate.parameters[9].value:= dblCreator .KeyValue;
      quMasterUpdate.parameters[10].value:= meCreateTrDate .Text ;
      quMasterUpdate.parameters[11].value:= NULL;//dblDelConf .KeyValue;
      quMasterUpdate.parameters[12].value:= NULL;//MeDelconfDate .text;
      quMasterUpdate.parameters[13].value:= NULL;//dblAuditConf .keyvalue;
      quMasterUpdate.parameters[14].value:= NULL;//meAuditConfDate.Text ;
      quMasterUpdate.parameters[15].value:= NULL;//dblApprover.keyvalue;
      quMasterUpdate.parameters[16].value:= NULL;//meAppDate .Text;
      quMasterUpdate.parameters[17].value:= NULL;
      quMasterUpdate.parameters[18].value:= NULL;
      quMasterUpdate.parameters[19].value:= NULL;
      quMasterUpdate.parameters[20].value:= NULL;
      quMasterUpdate.parameters[21].value:= NULL;
      quMasterUpdate.parameters[22].value := edCom .Text;

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
   qucom.close;
   quCom.Parameters[0].Value := cbFilterState.ItemIndex;
   quCom.Parameters[1].Value := NULL;
   qucom.Open;
   qucom.GotoBookmark(BMark);
   qucom.FreeBookmark(BMark);

   end;
   0 : begin
   BMark := quRecNo.GetBookmark();
   quRecMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      quRecMasterUpdate.parameters[0].value := StrToInt(edRecNo.Text);
      quRecMasterUpdate.parameters[1].value := meRecGood.Text ;
      quRecMasterUpdate.parameters[2].value := meRecCreate.Text;
      quRecMasterUpdate.parameters[3].value := NULL;
      quRecMasterUpdate.parameters[4].value := NULL;
      quRecMasterUpdate.parameters[5].value := dblRecCreator.KeyValue ;
      quRecMasterUpdate.parameters[6].value := ConfTag ;
      quRecMasterUpdate.parameters[7].value := StrToInt(edRecComNo.Text);

      quRecMasterUpdate.Prepared := True;
      quRecMasterUpdate.ExecSql;

      DabData.ADOC.CommitTrans;
   except
      DabData.ADOC.RollbackTrans;
   end;

   if (quRecMasterUpdate.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
     quRecNo.close;
     quRecNo.Open;


     quRecDet.Close;
     quRecDet.Open;
     quRecDet.First;
     quRecNo.GotoBookmark(BMark);
     quRecNo.FreeBookmark(BMark);

{     for i := 1 to quRecDet.RecordCount do
     begin
        case quRecDetGoods_type.AsInteger of
          0 : Dabdata.UpdateMovGoods   (quRecDetGoods_code.AsString , 0);
          1 : Dabdata.UpdateNonMovGoods(quRecDetPlaque_no.AsString  , 0);
         end;  // case
         quRecDet.Next;
     end;
     quRecNo.close;
     quRecNo.Open;
     quRecNo.Last;
 }  end;
  end; // case

end;
//****************************************************************************
procedure TTrRec.DeleteMaster;
begin
   quMasterDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quMasterDelete.parameters[0].value := StrToInt(edCom.Text);
//      quMasterDelete.parameters[1].value := 0;

      quMasterDelete.Prepared := True;
      quMasterDelete.ExecSql;

      DabData.ADOC.CommitTrans;
   except
     on FK : eOleException  do
      begin
         HandleDeleteError(FK.Errorcode);
         SetDefaultMode(1);
         exit;
      end;
   end;

   if (quMasterDelete.RowsAffected <>1 ) then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_RetryMsg;
     ShowMessage2(Str2);
   end;
   qucom.close;
   qucom.Open;
         quRecDet .Close ;
         quRecDet .Parameters[0].Value := qucomcom_tr_no.AsInteger ;
         quRecDet .Parameters[1].Value := qucomcom_tr_no.AsInteger ;
         quRecDet .Open ;

   SetDefaultMode(1);

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//**************************************************************************
procedure TTrRec.ClearMasterFields;
begin
  if PageControl1 .ActivePageIndex =1 then
    Begin
//       meComDate.clear;
       edPassNo.clear;
       meTransDate.clear;
       cbTransType.ItemIndex:=-1 ;
       meReturnDate.clear;
       edRecOrg .clear;
       edTrRecNo.clear;
       edReceiver.clear;
       edReceiverPost.clear;
       edRecomendNo.clear;
       edState.clear;
       edcom.clear;

       //dblCreator.KeyValue   :=  '';
       dblDelConf.KeyValue := '';
       //dblAuditConf .KeyValue:= '';
       dblApprover .KeyValue :=  '';

       //meCreateTrDate.Clear ;
       MeDelconfDate .Clear ;
       //meAuditConfDate .Clear ;
       meAppDate .Clear;
    end
    else
    begin
      meRecCreate.Clear;
      meRecConfirm.Clear;
      meRecCreat.Clear;
      meRecGood.Clear;

      dblRecCreator.KeyValue   := '' ;
      dblRecConfirmer.KeyValue := '' ;

      edRecNo.Clear;
      edRecComNo.Clear;
    end;
end;
//*****
//*********************************************************************
procedure TTrRec.SetMasterFields();
begin
if ((PageControl1 .ActivePageIndex =1) and (not quCom.IsEmpty)) then
    Begin
      edCom .Text :='s';
      edCom .Text          :=  quComcom_tr_no .AsString;
//      meComDate .Text      :=  quComcreat_tr_date.AsString;
      edPassNo .Text       :=  quCompass_no .AsString ;
      meTransDate .Text    :=  quComtrans_date .AsString ;
      if qucom.RecordCount >0
           then   cbTransType .ItemIndex := quComtrans_type .AsInteger
           else   cbTransType .ItemIndex := -1;
      meReturnDate .Text   :=  quComreturn_date .AsString;
      edRecOrg .Text       :=  quComReceiver_org .AsString;
      edTrRecNo .Text      :=  quComTransfer_req_no .AsString;
      edReceiver .Text     :=  quComReceiver .AsString ;
      edReceiverPost .Text :=  quComReceiver_post .AsString ;
      edRecomendNo .Text   :=  quComRecomend_no .AsString ;
      edState .Text := quComStateName.AsString ;
      dblCreator.KeyValue   := quComCreator.asstring;
//      dblConfirmer .KeyValue:= quComConfN .AsString;
      //dblAuditConf .KeyValue := quComaudit_confirm .AsString ;
      dblApprover .KeyValue := quComApprover .AsString ;

      meCreateTrDate  .Text := quComcreat_tr_date.AsString ;
      MeDelconfDate   .Text := quComdel_conf_date.AsString ;
      //meAuditConfDate .Text := quComaudit_conf_date.AsString ;
      meAppDate       .Text := quComApprove_date.AsString ;
    end
   else
    if not quRecNo.IsEmpty then 
   begin
      meRecCreate.Text     := quRecNoCreat_rc_date.AsString ;
      meRecConfirm.Text    := quRecNoConfirm_date.AsString ;
      meRecCreat.Text      := quRecNoCreat_rc_date.AsString ;
      meRecGood.Text       := quRecNoReceive_date.AsString ;

      dblRecCreator.KeyValue   := quRecNoReceipt_Creator.AsString ;
      dblRecConfirmer.KeyValue := quRecNoConfirmer.AsString ;

      edRecNo.Text             := quRecNocom_lr_no.AsString;
      edRecComNo.Text          := quRecNocom_tr_no.AsString;
   end;

end;
//*****************************************************************************
procedure TTrRec.DisableMasterFields;
begin
  if PageControl1 .ActivePageIndex = 1 then
    Begin
      edCom.FieldType        := ftDisplay;

//      meComDate   .Enabled  := False;
      edPassNo   .FieldType        := ftDisplay;
      meTransDate.FieldType        := ftDisplay;
      cbTransType.itemIndex:=-1;
      cbTransType.FieldType        := ftDisplay;;

      {quReqList.Close;
      quReqList.Parameters[0].Value := 5;
      quReqList.Open;
       }
       meReturnDate.FieldType        := ftDisplay;
       edRecOrg.FieldType        := ftDisplay;
       edTrRecNo.FieldType        := ftDisplay;
       edReceiver.FieldType        := ftDisplay;
       edReceiverPost.FieldType        := ftDisplay;
       edRecomendNo.FieldType        := ftDisplay;


      dblCreator.FieldType        := ftDisplay;
      dblDelConf.FieldType        := ftDisplay;
      //dblAuditConf.Enabled     := False;
      dblApprover.FieldType        := ftDisplay;
      meCreateTrDate.FieldType        := ftDisplay;
      MeDelconfDate.FieldType        := ftDisplay;
      //meAuditConfDate .Enabled := false;
      meAppDate.FieldType        := ftDisplay;

   end
   else
   begin
      meRecCreate.FieldType        := ftDisplay;
      meRecConfirm.FieldType        := ftDisplay;
      meRecCreat.FieldType        := ftDisplay;
      meRecGood.FieldType        := ftDisplay;
      dblRecCreator.FieldType        := ftDisplay;
      dblRecConfirmer.FieldType        := ftDisplay;
      edRecNo.FieldType        := ftDisplay;
      edRecComNo.FieldType        := ftDisplay;
   end;
   FormInitializer1.Execute;

 end;
//*****************************************************************************
procedure TTrRec.EnableMasterFields;
begin
    if PageControl1 .ActivePageIndex = 1 then
    Begin
       grcom.TabStop:= false;
       grItem .TabStop:= false;
       cbFilterState.TabStop  := False;

      edPassNo.FieldType      := ftRequired;
      cbTransType.FieldType   := ftRequired;

      meReturnDate.FieldType  := ftNonRequired;
      edRecOrg.FieldType      := ftRequired;
      edTrRecNo.FieldType     := ftRequired;
      edReceiver.FieldType    := ftRequired;
      edReceiverPost.FieldType:= ftNonRequired;
      edRecomendNo.FieldType  := ftRequired;
      edPassNo.FieldType      := ftRequired;

//      dblDelConf.FieldType    := ftRequired;
      dblApprover.FieldType   := ftDisplay;
      MeDelconfDate.FieldType := ftDisplay;
      meAppDate.FieldType     := ftDisplay;
      meTransDate.FieldType   := ftRequired;
      cbGoodType.FieldType    := ftRequired;

      paOkCancel.visible      := True;
      PaDetailOper.Visible    := False;
    end
   else
   begin
      meRecCreate.FieldType   := ftRequired;
      meRecGood.FieldType     := ftRequired;
      dblRecCreator.FieldType := ftRequired;

      paRecOKCancel.Visible   := True;

      ChkEmpRecCreate         := True;
      ChkRecCreate            := True;

      ChkEmpRecGood           := True;
      ChkRecGood              := False;
   end;
   FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
procedure TTrRec.InsertDetail();
var  str1,Str2 : string;
begin
   quDetailInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quDetailInsert.parameters[0].value := StrToInt(edCom.Text);
      case cbGoodType.ItemIndex of
        0 : begin
              quDetailInsert.parameters[1].value := dblItem.KeyValue;
              quDetailInsert.parameters[2].value := NULL;
            end;
        1 : begin
              quDetailInsert.parameters[1].value := NULL;
              quDetailInsert.parameters[2].value := dblItem.KeyValue;
            end;
       end; // case
      quDetailInsert.parameters[3].value         := edReason.Text;
      quDetailInsert.parameters[4].value         := RealRow + 1;
      quDetailInsert.parameters[5].value         := cbGoodType.ItemIndex;

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

{
    case cbGoodType.ItemIndex of
     0 : DabData.UpdateMovGoods   ( dblItem.Keyvalue,2);
     1 : DabData.UpdateNonMovGoods( dblItem.Keyvalue,2);
    end; // case
}
    quRecDet.close;
    quRecDet.Parameters[0].Value := StrToInt(edCom.Text);
    quRecDet.Parameters[1].Value := StrToInt(edCom.Text);
    quRecDet.Open;
    quRecDet.Last;
end;
//*****************************************************************************
procedure TTrRec.UpdateDetail();
begin
   BMark := quRecDet.GetBookmark();
   quDetailUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      case cbGoodType.ItemIndex of
        0 : begin
              quDetailUpdate.parameters[0].value := dblItem.KeyValue;
              quDetailUpdate.parameters[1].value := NULL;
            end;
        1 : begin
              quDetailUpdate.parameters[0].value := NULL;
              quDetailUpdate.parameters[1].value := dblItem.KeyValue;
            end
       end; // case
      quDetailUpdate.parameters[2].value := edReason.Text;
      quDetailUpdate.parameters[3].value := cbGoodType.ItemIndex;
      quDetailUpdate.parameters[4].value := edCom.Text;
      quDetailUpdate.parameters[5].value := RealRow ;

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
   quRecDet.close;
   quRecDet.Open;

   quRecDet.GotoBookmark(BMark);
   quRecDet.FreeBookmark(BMark);

{   if  TempGoodType = cbGoodType.ItemIndex then
   begin
       case TempGoodType of
        0 : begin
               DabData.UpdateMovGoods   ( dblItem.keyValue , 2 );
               DabData.UpdateMovGoods   ( TempGoodsCode , 0 );
            end;
        1 : begin
               DabData.UpdateNonMovGoods( dblItem.keyValue , 2 );
               DabData.UpdateNonMovGoods( TempPlaqueNo , 0 );
            end;
       end;
   end
   else
   if  TempGoodType <> cbGoodType.ItemIndex then
   case cbGoodType.ItemIndex of
    0 : begin
           DabData.UpdateMovGoods    ( dblItem.keyValue , 2 );
           DabData.UpdatenonMovGoods ( TempPlaqueNo , 0);
        end;
    1 : begin
           DabData.UpdateNonMovGoods ( dblItem.keyValue , 2 );
           DabData.UpdateMovGoods    ( TempGoodsCode , 0);
        end;
   end ;  // case
 }
end;
//****************************************************************************
procedure TTrRec.DeleteDetail();
begin
{   case TempGoodType of
    0 :  DabData.UpdateMovGoods   ( quRecDetGoods_code.AsString , 0);
    1 :  DabData.UpdateNonMovGoods( quRecDetPlaque_no.AsString  , 0);
   end;
 }
   quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := StrToInt(edCom.Text);
      quDetailDelete.parameters[1].value := RealRow;

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
   quRecDet.close;
   quRecDet.Open;

   SetDefaultMode(1);
end;
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TTrRec.ClearDetailFields;
begin
   cbGoodType.ItemIndex := -1;
   dblItem.KeyValue     := null;
   edItemName.Clear;
   edTrnsLabel.Clear;
   edReason.Clear;
end;
//**************************************************************************
procedure TTrRec.SetDetailFields();
begin
   if quRecDet.RecordCount <> 0 then
   begin
      cbGoodType.ItemIndex  :=  quRecDetGoods_Type.AsInteger;
      edItemName.Text       :=  quRecDetItemName.AsString;
      edTrnsLabel.Text      :=  quRecDetLabel.AsString;
      edReason.Text         :=  quRecDetReason.AsString;

      TempGoodsCode         :=  quRecDetGoods_code.AsString ;
      TempPlaqueNo          :=  quRecDetPlaque_no.AsString ;
      TempItemCode          :=  quRecDetItemCode.AsString ;
      TempGoodType          :=  quRecDetGoods_type.AsInteger;
      RealRow               :=  quRecDetRow_no.AsInteger;
      if mde = 2 then
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
{               DabData.qumoveable.Parameters[1].Value := NULL;
               DabData.qumoveable.Parameters[2].Value := NULL;}
               DabData.qumoveable.Parameters[3].Value := quRecDetGoods_code.AsString;
{               DabData.qumoveable.Parameters[4].Value := NULL;}

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
           if cbTransType.ItemIndex = 0 then
              begin
               DabData.qunonmgood.Parameters[0].Value := 0;
               DabData.qunonmgood.Parameters[1].Value := 4;
               DabData.qunonmgood.Parameters[2].Value := NULL;
              end
           else
              begin
               DabData.qunonmgood.Parameters[0].Value := 0;
               DabData.qunonmgood.Parameters[1].Value := 4;
               DabData.qunonmgood.Parameters[2].Value := 5;
              end;
             DabData.qunonmgood.Parameters[3].Value := quRecDetPlaque_no.AsString;
             DabData.qunonmgood.Parameters[4].Value := NULL;
             DabData.qunonmgood.Open;

             dblItem.KeyValue      :=  quRecDetPlaque_no.AsString ;
          end;
         end; // case
      end;
   end
   else
      RealRow  := 0 ;
end;
//*****************************************************************************
//*****************************************************************************
procedure TTrRec.EnableDetailFields;
begin
   case  mde of
    1 :  dblItem.FieldType:= ftDisplay;
    2 :  dblItem.FieldType:= ftRequired;
   end; // case
   cbGoodType.FieldType:= ftRequired;
   dblItem.FieldType:= ftRequired;
   edReason.FieldType:= ftNonRequired;
   paOkCancel.visible    := True;
   PaDetailOper.Visible  := True;
   FormInitializer1.Execute;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TTrRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TTrRec.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 54 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TTrRec.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TTrRec.FormShow(Sender: TObject);
var l,t:integer;
begin
  UUserMsg.GetRect(Width,Height,l,t);
  Left    := l;
  Top     := t;
  cbFilterState.ItemIndex:=0;

  qudblEmp.Close;
  qudblEmp.Open;

  mde:=0;
  Width:= 795;
  Height:=481;
 // PageControl1.SelectNextPage(false);
  PageControl1.Pages[0].TabVisible:=false;
  PageControl1.Pages[1].TabVisible:=false;
  if PageControl1 .ActivePageIndex  = 1 then
    Begin

        cbFilterState.ItemIndex := 0 ;

        quCom.Close;  // set values to Grid
        quCom.Parameters[0].Value := cbFilterState.ItemIndex;
        quCom.Parameters[1].Value := NULL;
        quCom.Open;

        quRecDet .Close ;
        quRecDet .Parameters[0].Value := quComcom_tr_no.AsInteger ;
        quRecDet .Parameters[1].Value := quComcom_tr_no.AsInteger ;
        quRecDet .Open ;

        DisableMasterFields();

        ChkReturnDate    := False;
        ChkEmpReturnDate := True;

        ChkTrans         := False;
        Chkemptrans      := True;

        grcom.SetFocus;
   end
   else
   begin
   //
   end;

     if cbFilterState.ItemIndex = 9 then
  begin
     quCom.Close;
     quCom.Parameters[0].Value := cbFilterState.ItemIndex;
     quCom.Parameters[1].Value := 1;
     quCom.open;
  end
  else
   begin
     quCom.Close;
     quCom.Parameters[0].Value:= cbFilterState.ItemIndex;
     quCom.Parameters[1].Value := NULL;
     quCom.open;
   end;

   if quCom.RecordCount = 0 then
   begin
     quRecDet.Close;
     quRecDet.Parameters[0].Value := NULL;
     quRecDet.Parameters[1].Value := NULL;
     quRecDet.Open;
     ClearMasterFields();
   end;

   PageControl1.ActivePageIndex := 1;
   grcom.SetFocus;
   FormInitializer1.SearchFocusables:=TRUE;
   FormInitializer1.Execute;
end;
//******************************************************************************
procedure TTrRec.btRecCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TTrRec.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   CheckEscEnter(sender,key);
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TTrRec.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TTrRec.quComAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
   DoScroll(Msg);
end;
//******************************************************************************
procedure TTrRec.grBillEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   paRecOKCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();

end;
//****************************************************************************
procedure TTrRec.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TTrRec.btRecOKClick(Sender: TObject);
begin
      confTag:=6;
      case mde of
        2 : UpdateMaster();
      end;  // end case
      SetDefaultMode(1);
end;
//****************************************************************************
procedure TTrRec.dblItemCloseUp(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
           edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
           edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
        end;
    1 : begin
           edTrnsLabel.Clear ;
           edItemName.Text   :=  DabData.qunonmgooditem_name.AsString ;
        end;
   end; // case
end;


procedure TTrRec.cbTransTypeChange(Sender: TObject);
begin
   if cbTransType.ItemIndex=0 then
      meReturnDate.FieldType:= ftDisplay
   else
      meReturnDate.FieldType:= ftNonRequired;
   FormInitializer1.Execute;
end;

procedure TTrRec.grcomEnter(Sender: TObject);
begin
   //if ( mde = 1) and ( ActiveGrid=1) then
   begin
      mde := 0;
      quCom.Close;
      quCom.Open;
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


procedure TTrRec.BtOkTransClick(Sender: TObject);
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
//        3 : DeleteMaster();
      end;  // end case
//?   paMasterOper.Visible := True;
      SetDefaultMode(2);
    end;

end;

procedure TTrRec.BtCancelTransClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;

procedure TTrRec.grItemEnter(Sender: TObject);
begin


   ActiveGrid := 2;
   if (ActiveGrid = 1) then
    begin
      mde := 0;
      quCom.Close;
      quCom.Open;
    end;
   SetGridColor(2);

   paOKCancel.Visible   := False;
   PaDetailOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton;
end;

procedure TTrRec.quRecDetAfterScroll(DataSet: TDataSet);
begin
   if (PageControl1.ActivePageIndex = 1) and (mde <> 2) then   SetDetailFields();
end;

procedure TTrRec.dblItemEnter(Sender: TObject);
begin
   if not(CheckNull(cbGoodType.Text)) then
   begin
      dblItem.KeyField   := '';
      dblItem.ListField  := '';
      dblItem.ListSource := DabData.dsMoveable;
      dblItem.KeyField   := 'Goods_CodeStr';
      dblItem.ListField  := 'Goods_CodeStr';

      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 5 ;
      DabData.qumoveable.Parameters[1].Value := 0 ;
      DabData.qumoveable.Open;

      dblItem.KeyValue   := null;
    end;
end;

procedure TTrRec.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
           dblItem.FieldType:= ftRequired;
           if dblItem.ListSource <> DabData.dsMoveable then
           begin
              dblItem.KeyField   := '';
              dblItem.ListField  := '';
              dblItem.ListSource := DabData.dsMoveable;
              dblItem.KeyField   := 'Goods_CodeStr';
              dblItem.ListField  := 'Goods_CodeStr';
              DabData.quMoveable.Close;
              DabData.quMoveable.Open;
           end;
           DabData.qumoveable.Close;
           if cbTransType.ItemIndex = 1 then
              begin
               DabData.qumoveable.Parameters[0].Value := 0;
               DabData.qumoveable.Parameters[1].Value := 2;
               DabData.qumoveable.Parameters[2].Value := NULL;
              end
           else
              begin
               DabData.qumoveable.Parameters[0].Value := 0;
               DabData.qumoveable.Parameters[1].Value := 2;
               DabData.qumoveable.Parameters[2].Value := 10;
              end;

           if ( mde = 2 ) and ( TempGoodType = 0 )
                 then DabData.qumoveable.Parameters[3].Value := quRecDetGoods_code.AsString
                 else DabData.qumoveable.Parameters[3].Value := -1;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := null;
           edTrnsLabel.Clear;
           edItemName.Clear;
        end;
    1 : begin
           dblItem.FieldType:= ftRequired;
           if dblItem.ListSource <> DabData.dsnonmgood then
           begin
              dblItem.KeyField   := '';
              dblItem.ListField  := '';
              dblItem.ListSource := DabData.dsnonmgood;
              dblItem.KeyField   := 'Plaque_NoStr';
              dblItem.ListField  := 'Plaque_NoStr';
           end;
           DabData.qunonmgood.Close;
           if cbTransType.ItemIndex = 1 then
              begin
               DabData.qunonmgood.Parameters[0].Value := 0;
               DabData.qunonmgood.Parameters[1].Value := 4;
               DabData.qunonmgood.Parameters[2].Value := NULL;
              end
           else
              begin
               DabData.qunonmgood.Parameters[0].Value := 0;
               DabData.qunonmgood.Parameters[1].Value := 4;
               DabData.qunonmgood.Parameters[2].Value := 5;
              end;


           DabData.qunonmgood.Parameters[0].Value := 0;
           if ( mde = 2 ) and ( TempGoodType = 1 )
                 then  DabData.qunonmgood.Parameters[3].Value := quRecDetPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[3].Value := 0;
           DabData.qunonmgood.Parameters[4].Value := NULL;
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := null;
           edTrnsLabel.Clear;
           edItemName.Clear;
       end;
    2 : begin
           quWvItems.Open;
           dblItem.FieldType:= ftRequired;
           dblItem.KeyField   := '';
           dblItem.ListField  := '';
           dblItem.ListSource := dsWvItems;
           dblItem.KeyField   := 'Item_code';
           dblItem.ListField  := 'Item_Name';
    end
   end; // case
   FormInitializer1.SearchFocusables:=true;
   FormInitializer1.Execute;
end;

procedure TTrRec.tsRecieptShow(Sender: TObject);
begin
   tagm:=1;
   dsRecNo.Enabled :=false;
   quRecNo .DisableControls;
   quRecNo.Close;
   quRecNo.Open;
   quRecNo.Last;
   quRecNo .EnableControls;
    tagm:=0;
   quRecDet.DisableControls;
   quRecDet .Close ;
   quRecDet .Parameters[0].Value := StrToInt(edcom.Text) ;
   quRecDet .Parameters[1].Value := StrToInt(edcom.Text) ;
   quRecDet .Open ;
   quRecDet.EnableControls;

   dsRecno.Enabled := true;
   DisableMasterFields();
   setmasterfields;
   if (qucomState.AsInteger  = 4)and (quComcom_lr_no.AsString ='' )  then
   begin
   EnableMasterFields();
   ClearMasterFields();

   edRecComNo.Text := edCom.Text;
   if qurecno.RecordCount = 0
           then  edRecNo.Text := '10000000'
           else begin
               //    if quComState.AsInteger  = 8 then edRecNo.Text := IntToStr( quComcom_lr_no.asInteger)
                ///   else
                   edRecNo.Text := IntToStr( quRecNocom_lr_no.AsInteger + 1 );
                end;
   meRecCreat.Text       := Dabdata.disp_date;
   meRecCreate.Text      := Dabdata.disp_date;

   paRecOKCancel.Visible := True;
   mde := 2;
   meRecGood.FieldType:= ftRequired;
   meRecGood.SetFocus;
   END;
   if (qucomState.AsInteger  = 8)  then
   begin
   EnableMasterFields();
   ClearMasterFields();

   edRecComNo.Text := edCom.Text;
   edRecNo.Text := IntToStr( quComcom_lr_no.asInteger);
   meRecCreat.Text       := Dabdata.disp_date;
   meRecCreate.Text      := Dabdata.disp_date;

   paRecOKCancel.Visible := True;
   mde := 2;
   meRecGood.Enabled := True;
   meRecGood.SetFocus;
   end;
   if (qucomState.AsInteger  = 4)and (quComcom_lr_no.AsString <>'' )  then
   begin
    quCom.Locate('Com_tr_no',quComcom_lr_no.Asstring,[locaseInsensitive]);
    SetMasterFields;
    paRecOKCancel .Visible :=false;
   end;

end;

procedure TTrRec.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
if PageControl1.ActivePageIndex = 0 then
      begin
      AllowChange := true;
      mde:=0;
      exit;
      end;
   AllowChange := False;
   if   ( quComtrans_type.AsInteger = 1  )and
   (    ( quComState.AsInteger  =4 )or
       ( quComState.AsInteger  =6 )or
       ( quComState.AsInteger  =7 )
    )
      then AllowChange := True ;
   if qucomState.AsInteger < 4 then
   begin
     AllowChange := false ;
     Str1 := '«Œÿ«—';
     Str2 := '’Ê— Ã·”Â «‰ Œ«» ‘œÂ Â‰Ê“  ’ÊÌ» ‰Â«ÌÌ ‰‘œÂ «” ';
     ShowMessage2(Str2);
     mde:=0;exit;
   end;
   if (quComState.AsInteger  =8)  and (PageControl1.ActivePageIndex = 1)then
   begin
     AllowChange := false ;
      Str1 := '«Œÿ«—';
      Str2 := '’Ê— Ã·”Â œ—Ì«›  «„Ê«· ﬁ»·« —œ  «ÌÌœ ‘œÂ »Êœ ';
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'¬Ì« „«Ì· »Â  ‰ŸÌ„ œÊ»«—Â Â„«‰ ’Ê— Ã·”Â „Ì »«‘Ìœ ø',True,True);

     if ModalRes <> mrOk then
     begin
     AllowChange := false ;
        Mde := 0;
        grcom.SetFocus;
        exit;
     end;
     AllowChange := True ;

   end;
   if AllowChange = false then
     ShowMessage2('»« ‘—«Ìÿ „ÊÃÊœ ﬂÂ „„ﬂ‰ «”  ‰Ê⁄ Ê«ê–«—Ì ‘„« „Êﬁ  ‰»«‘œ «„ﬂ«‰ —› ‰ »Â ’›ÕÂ »⁄œÌ „„ﬂ‰ ‰Ì” ');

   FormInitializer1.Execute;
end;

procedure TTrRec.tstransferShow(Sender: TObject);
begin
   if qucomstate.asinteger=6 then
   begin
      quCom.Close;
      quCom.Parameters[0].Value := cbFilterState.ItemIndex;
      quCom.Parameters[1].Value := 0;
      quCom.open;
   end
   else
   begin
     quCom.Close;
     quCom.Open;
   end;


   grcom.SetFocus;
end;

procedure TTrRec.PageControl1Change(Sender: TObject);
begin
   case  PageControl1.ActivePageIndex of
     0 :  tsRecieptShow(Sender);
     1 :  tstransferShow(Sender);
   end;
end;

procedure TTrRec.Button1Click(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Self);
          ShowMvgood.ShowModal();

          dblItem.KeyValue  :=  DabData.qumoveablegoods_code.AsString;
          edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
          edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Self);
          setformColor(ShowNonMGood);
          ShowNonMgood.ShowModal();

          if DabData.qunonmgoodplaque_no.AsString <>'' then
          begin
             dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
             edTrnsLabel.Clear ;
             edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;
          end;
       end;
   end;   // case
end;

procedure TTrRec.grRecieptEnter(Sender: TObject);
begin
   edTrRecNo.Text:=edCom.Text;
   ActiveGrid := 2;
   SetGridColor(2);

   paRecOKCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
procedure TtrrEC.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;

procedure TTrRec.BtFailClick(Sender: TObject);
var TmpStr : string;
begin
     if (ActiveGrid=1) and (quComState.AsInteger = 0) then
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
           quMasterUp.parameters[1].value := StrToInt(edcom.Text);
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
         TmpStr := edCom.Text;
         cbFilterState.ItemIndex := 1;

         qucom.close;
         qucom.Parameters[0].Value := 1;
         qucom.Parameters[1].Value := NULL;
         qucom.Open;

         qucom.Locate('Com_tr_no',TmpStr,[locaseinsensitive]);
         end;
         mde:=0 ;
    end;
end;

procedure TTrRec.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if (quCom.RecordCount <> 0) and ( qucomState.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;

procedure TTrRec.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 9 then
  begin
     quCom.Close;
     quCom.Parameters[0].Value := cbFilterState.ItemIndex;
     quCom.Parameters[1].Value := 1;
     quCom.open;
  end
  else
   begin
     quCom.Close;
     quCom.Parameters[0].Value:= cbFilterState.ItemIndex;
     quCom.Parameters[1].Value := NULL;
     quCom.open;
   end;

   if quCom.RecordCount = 0 then
   begin
     quRecDet.Close;
     quRecDet.Parameters[0].Value := NULL;
     quRecDet.Parameters[1].Value := NULL;
     quRecDet.Open;
     ClearMasterFields();
   end;

end;

procedure TTrRec.Doprint(var mes: TMessage);
begin
   if PageControl1.ActivePageIndex= 1 then
   begin
      ppOrg.Caption := OrganizName;
      ppcom .Caption:= quComcom_tr_no.AsString;
      ppDate.Caption := quComtrans_date.AsString;
      ppState.Caption := quComStateName.AsString;
      pppass.Caption := quCompass_no.AsString;
      ppdate2.Caption := quComtrans_date.AsString;
      pprec.Caption := quComReceiver.AsString;

      if quComtrans_type.asinteger= 0 then
         begin
            ppLabel40.Visible:= true;
            ppLabel34.Visible:= false;
            pplabel36.Visible:= false;
            ppExpDate.Visible:= false;
         end
      else
      begin
            ppLabel40.Visible:= false;
            pplabel34.Visible:= true;
            pplabel36.Visible:= true;
            ppExpDate.Visible:= true;
            ppExpDate.Caption:= quComreturn_date.AsString;
      end;
      ppcreator.Caption:= quComCreatorN.AsString;
      pprec.Caption:= quComReceiver.AsString;
      pplConfirmer.Caption:= quComConfN.AsString;
      pplrc.caption:= quComReceiver.AsString;
         quReport .Close ;
         quReport .Parameters[0].Value := quCoMcom_tr_no.AsInteger ;
         quReport .Parameters[1].Value := quCoMcom_tr_no.AsInteger ;
         quReport .Open ;

    ppreport1.print;

   end;





end;

procedure TTrRec.ppDBText2GetText(Sender: TObject; var Text: String);
begin
Text:= INTTOSTR(qureport.recNo);
end;

procedure TTrRec.fcButtonGroup1fcImageBtn2Click(Sender: TObject);
var
 x:Boolean;
begin
  PageControl1Changing(Sender,x);
  if x then
  begin
    PageControl1.ActivePageIndex := 1;
    tstransferShow(Sender);
  end;
  FormInitializer1.SearchFocusables:=true;
  FormInitializer1.Execute;
end;

procedure TTrRec.fcButtonGroup1fcImageBtn1Click(Sender: TObject);
var
 x:Boolean;
begin
  PageControl1Changing(Sender,x);
  if x then
  begin
    PageControl1.ActivePageIndex := 0;
    tsRecieptShow(Sender);
  end;
  FormInitializer1.SearchFocusables:=true;
  FormInitializer1.Execute;
end;

procedure TTrRec.grcomExit(Sender: TObject);
begin
   btFail.Enabled := False;
end;

end.
