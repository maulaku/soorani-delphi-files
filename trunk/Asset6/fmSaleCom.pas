unit fmSaleCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,comobj,  ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  RSqlMaskEdit, SmoothShow,  SetForm, RSqlButton, RSQLComboBox,
  RSqllookup, RSqlEdit,RadForms,Variants;
type
  TSaleCom = class(TRadForm)
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
    Label31: TLabel;
    dsRecDet: TDataSource;
    quDetailDelete: TADOQuery;
    Label4: TLabel;
    quRecMasterUpdate: TADOQuery;
    quComSale_com_no: TIntegerField;
    quComPass_no: TStringField;
    quComSale_date: TStringField;
    quComReceiver: TStringField;
    quComCreator: TStringField;
    quComCreate_date: TStringField;
    quComGoods_confirmer: TStringField;
    quComGoods_conf_date: TStringField;
    quComSale_unit_confirmer: TStringField;
    quComSale_conf_date: TStringField;
    quComAudit_confirm: TStringField;
    quComAudit_conf_date: TStringField;
    quComCreatorN: TStringField;
    quComState: TSmallintField;
    quComStateName: TStringField;
    quMasterUp: TADOQuery;
    quFindLastNo: TADOQuery;
    quFindLastNoSale_com_no: TIntegerField;
    quFindLastNoPass_no: TStringField;
    quFindLastNoSale_date: TStringField;
    quFindLastNoReceiver: TStringField;
    quFindLastNoCreator: TStringField;
    quFindLastNoCreate_date: TStringField;
    quFindLastNoGoods_confirmer: TStringField;
    quFindLastNoGoods_conf_date: TStringField;
    quFindLastNoSale_unit_confirmer: TStringField;
    quFindLastNoSale_conf_date: TStringField;
    quFindLastNoAudit_confirm: TStringField;
    quFindLastNoAudit_conf_date: TStringField;
    quFindLastNoState: TSmallintField;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppOrg: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppcom: TppLabel;
    ppDate: TppLabel;
    ppLabel6: TppLabel;
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
    pplConf: TppLabel;
    ppSaleUConf: TppLabel;
    ppLabel13: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine8: TppLine;
    pppass: TppLabel;
    ppLabel27: TppLabel;
    ppdate2: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppLabel31: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppAuConf: TppLabel;
    pprec: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    dsreport: TDataSource;
    quReport: TADOQuery;
    ppLabel1: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    quComConfN: TStringField;
    quComSaleUConfN: TStringField;
    quComAuditConfN: TStringField;
    quRecDetOld: TADOQuery;
    quRecDetOldSale_com_no: TIntegerField;
    quRecDetOldGoods_Code: TStringField;
    quRecDetOldExpert_price: TLargeintField;
    quRecDetOldSale_price: TLargeintField;
    quRecDetOldPlaque_no: TStringField;
    quRecDetOldRow_no: TIntegerField;
    quRecDetOldGoods_type: TSmallintField;
    quRecDetOldPrice_unit: TSmallintField;
    quRecDetOldItemName: TStringField;
    quRecDetOldLabel: TIntegerField;
    quRecDetOldItemCode: TStringField;
    quRecDetOldStatename: TStringField;
    quRecDetOldUname: TStringField;
    PageControl1: TPageControl;
    tstransfer: TTabSheet;
    Label2: TLabel;
    Label9: TLabel;
    Panel6: TPanel;
    Panel12: TPanel;
    Panel19: TPanel;
    btFail: TButton;
    Panel13: TPanel;
    paOkCancel: TPanel;
    Panel16: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Panel20: TPanel;
    Label23: TLabel;
    Label25: TLabel;
    Label32: TLabel;
    Label15: TLabel;
    meSaleDate: TRSqlMaskEdit;
    Panel21: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    PaDetailOper: TPanel;
    Button1: TButton;
    grItem: TDBGrid;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label38: TLabel;
    Label1: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel1: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    quRecDetOldGeneralCode: TLargeintField;
    edPassNo: TRSqlEdit;
    edReceiver: TRSqlEdit;
    edState: TRSqlEdit;
    edCom: TRSqlEdit;
    edTrnsLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edExpertPrice: TRSqlEdit;
    edSalePrice: TRSqlEdit;
    meCreateTrDate: TRSqlMaskEdit;
    MeconfDate: TRSqlMaskEdit;
    meAuditConfDate: TRSqlMaskEdit;
    meSaleUConfDate: TRSqlMaskEdit;
    meComDate: TRSqlMaskEdit;
    dblCreator: TRSqlDbLookup;
    dblConf: TRSqlDbLookup;
    dblSaleUConf: TRSqlDbLookup;
    dblItem: TRSqlDbLookup;
    cbFilterState: TRSqlComboBox;
    cbGoodType: TRSqlComboBox;
    cbUnit: TRSqlComboBox;
    BtCancelTrans: TRSqlButton;
    BtOkTrans: TRSqlButton;
    dblAuditConf: TRSqlDbLookup;
    quRecDet: TADOQuery;
    grcom: TDBGrid;
    quRecDetSale_com_no: TIntegerField;
    quRecDetGoods_code: TLargeintField;
    quRecDetExpert_price: TLargeintField;
    quRecDetSale_price: TLargeintField;
    quRecDetPlaque_no: TStringField;
    quRecDetRow_no: TIntegerField;
    quRecDetGoods_type: TSmallintField;
    quRecDetPrice_unit: TSmallintField;
    quRecDetGeneralCode: TLargeintField;
    quRecDetItemName: TStringField;
    quRecDetLabel: TIntegerField;
    quRecDetItemCode: TStringField;
    quRecDetStatename: TStringField;
    quRecDetUname: TStringField;
    quReportSale_com_no: TIntegerField;
    quReportGoods_code: TLargeintField;
    quReportExpert_price: TLargeintField;
    quReportSale_price: TLargeintField;
    quReportPlaque_no: TStringField;
    quReportRow_no: TIntegerField;
    quReportGoods_type: TSmallintField;
    quReportPrice_unit: TSmallintField;
    quReportGeneralCode: TStringField;
    quReportItemName: TStringField;
    quReportLabel: TIntegerField;
    quReportItemCode: TStringField;
    quReportccode: TSmallintField;
    quReportbprice: TFloatField;
    quReporteprice: TFloatField;
    quReportStatename: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
//    procedure btRecOKClick(Sender: TObject);
    procedure btRecCancelClick(Sender: TObject);
    procedure grRecItemEnter(Sender: TObject);
    procedure quComAfterScroll(DataSet: TDataSet);
    procedure dblItemCloseUp(Sender: TObject);
    procedure meSaleDateExit(Sender: TObject);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grcomEnter(Sender: TObject);
    procedure grItemEnter(Sender: TObject);
    procedure BtOkTransClick(Sender: TObject);
    procedure edExpertPriceKeyPress(Sender: TObject; var Key: Char);
    procedure edSalePriceKeyPress(Sender: TObject; var Key: Char);
    procedure dblItemEnter(Sender: TObject);
    procedure quRecDetOldAfterScroll(DataSet: TDataSet);
    procedure HandleDeleteError(ErrCode: HRESULT);
    procedure btFailClick(Sender: TObject);
    procedure cbFilterStateChange(Sender: TObject);
    procedure edPassNoEnter(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure quRecDetAfterScroll(DataSet: TDataSet);
//-----------------------------------------------------------------------
  private
//-----------------------------------------------------------------------
//-------------------  Special Procedures   -----------------------------
//-----------------------------------------------------------------------
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
     procedure SetDetailFields;
//-----------------------------------------------------------------------
     procedure InsertDetail();
     procedure UpdateDetail();
     procedure DeleteDetail();
//-----------------------------------------------------------------------
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
    procedure DoPrint(var mes :TMessage);message F_Print;
//------------------------------------------------------------------------
  public
    mde     : integer ;

    { Public declarations }
  end;
var

  SaleCom: TSaleCom;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;

  ChkSaleDate, ChkempSaleDate   : Boolean;

  AllDisabled: Boolean;

  TempItemCode   : string[8];
  TempGoodsCode  : String[10];
  TempExpertPrice:String[12];
  TempsalePrice  :String[12];
  TempPlaqueNo   : String[10];
  TempGoodType   : Smallint;

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
procedure TSaleCom.DoScroll(var mes:TMessage);
begin
      if ( mde = 0) and (qucom.RecordCount <> 0 ) then
      begin
         quRecDet.Close ;
         quRecDet.Parameters[0].Value := quComSale_com_no .AsInteger ;
         quRecDet.Parameters[1].Value := quComSale_com_no .AsInteger ;
         quRecDet.Open ;

         DisableMasterFields();
         SetMasterFields();
        CheckSetFailButton();
      end;

end;
//*****************************************************************************
procedure TSaleCom.DoNew(var mes: TMessage);
begin
   mde := 1;
   grcom  .TabStop:= False;
   grItem .TabStop:= False;

   case ActiveGrid of
    1 : begin
           cbFilterState.ItemIndex := 0;

           quCom.Close;
           quCom.Parameters[0].Value:= 0;
           quCom.Parameters[1].Value := NULL;
           quCom.open;
           quCom.Last;

           EnableMasterFields();
           ClearMasterFields();

           quFindLastNo.Close;
           quFindLastNo.Open;
           quFindLastNo.Last;

           if      quFindLastNo.RecordCount = 0 then edCom.Text := '81000000'
              else edCom.Text := IntToStr(quFindLastNoSale_com_no.AsInteger + 1) ;

           meComDate .Text := Dabdata.disp_date ;
           meCreateTrDate .Text   := Dabdata.disp_date ;
           ChkSaleDate      := True;
           ChkempSaledate   := True;
           quRecDet.Close ;
           quRecDet.Parameters[0].Value := 0;
           quRecDet.Parameters[1].Value := 0;
           quRecDet.Open ;
           edstate.text:=' ‰ŸÌ„ ‘œÂ';
           BtOkTrans .Enabled  := False;
           edPassNo .SetFocus;
        end;
    2 : begin
           if qucomState.AsInteger >0 then
           begin
              Str1 := '«Œÿ«—';
              Str2 := 'ﬂ«·«Â«Ì ’Ê— Ã·”Â „Ê—œ ‰Ÿ— ‘„« ﬁ«»· «÷«›Â ‘œ‰ ‰„Ì »«‘‰œ';
              ShowMessage2(Str2);
              mde:=0;exit;
           end;
           if Trim( edCom.Text )= '' then begin mde:= 0 ;exit; end;
           quRecDet.Last;
           RealRow := quRecDetRow_no .AsInteger ;
           EnableDetailFields();
           ClearDetailFields();
           dblItem .Enabled :=false;
           Button1 .Enabled :=false;

           cbGoodType.SetFocus;
        end
    end;
   dblCreator.KeyValue:=DabData.emp_no;
   meCreateTrDate.Text:=Dabdata.disp_date;
end;
//****************************************************************************
procedure TSaleCom.DoEdit(var mes :TMessage);
begin
   grcom  .TabStop:= False;
   grItem .TabStop:= False;
   if (quComState.AsInteger  >0)  then
   begin
     Str1 := '«Œÿ«—';
     Str2 := '’Ê— Ã·”Â „Ê—œ ‰Ÿ— ‘„« ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
     ShowMessage2(Str2);
     mde:=0;exit;
   end;

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
           BtOkTrans .Enabled := True;
           edPassNo .SetFocus;
          end;
      2 : begin
           if quRecDet .RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;

           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           btOkTrans.Enabled := True;
           cbgoodType  .SetFocus;
          end;
      end;
   dblCreator.KeyValue:=DabData.emp_no;
   meCreateTrDate.Text:=Dabdata.disp_date;
end;
//*****************************************************************************
procedure TSaleCom.DoDelete(var mes: TMessage);
begin
   case ActiveGrid of
    1 :BEGIN
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
        END;
        2 : if ( Mde = 0 )  and ( quRecDet.RecordCount >=1 ) and
                ( quRecDet.RecNo >= 1) then
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
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TSaleCom.SetDefaultMode(i: integer);
begin
  mde := 0;

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
    end;  
end;
//****************************************************************************
procedure TSaleCom.SetGridColor(i: integer);
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
procedure TSaleCom.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := edCom .Text;
      quMasterInsert.parameters[1].value := edPassNo.Text;
      quMasterInsert.parameters[2].value := meSaleDate  .Text ;
      quMasterInsert.parameters[3].value := edReceiver .text;
      quMasterInsert.parameters[4].value := dblCreator  .KeyValue ;
      quMasterInsert.parameters[5].value := meCreateTrDate  .Text;
      quMasterInsert.parameters[6].value := NULL;//dblConf.text ;
      quMasterInsert.parameters[7].value := NULL;//MeconfDate  .Text;
      quMasterInsert.parameters[8].value := NULL;//dblSaleUConf  .Text;
      quMasterInsert.parameters[9].value := NULL;//meSaleUConfDate .Text;
      quMasterInsert.parameters[10].value:= NULL;//dblAuditConf  .KeyValue;
      quMasterInsert.parameters[11].value:= NULL;//meAuditConfDate .Text ;
      quMasterInsert.parameters[12].value:= 0;
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

//    AssignGoodsToBill();
    SetDefaultMode(1);
end;
//***************************************************************************
procedure TSaleCom.UpdateMaster();
begin
   BMark := qucom.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

//      quMasterUpdate.parameters[0].value := edCom .Text;
      quMasterUpdate.parameters[0].value := edPassNo.Text;
      quMasterUpdate.parameters[1].value := meSaleDate  .Text ;
      quMasterUpdate.parameters[2].value := edReceiver .text;
      quMasterUpdate.parameters[3].value := dblCreator  .KeyValue ;
      quMasterUpdate.parameters[4].value := meCreateTrDate  .Text;
      quMasterUpdate.parameters[5].value := NULL;//dblConf.text ;
      quMasterUpdate.parameters[6].value := NULL;//MeconfDate  .Text;
      quMasterUpdate.parameters[7].value := NULL;//dblSaleUConf  .Text;
      quMasterUpdate.parameters[8].value := NULL;//meSaleUConfDate .Text;
      quMasterUpdate.parameters[9].value := NULL;//dblAuditConf  .KeyValue;
      quMasterUpdate.parameters[10].value:= NULL;//meAuditConfDate .Text ;
      quMasterUpdate.parameters[11].value:= edCom .Text;
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
//****************************************************************************
procedure TSaleCom.DeleteMaster;
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
   SetDefaultMode(1);

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//****************************************************************************
procedure TSaleCom.ClearMasterFields;
begin
      edCom .Clear;
      edPassNo    .Clear ;
      edReceiver .Clear ;
      edState .clear;
      //meCreateTrDate  .Clear ;
      meAuditConfDate .Clear ;
      MeconfDate  .Clear ;
      meComDate   .Clear ;
      meSaleUConfDate  .Clear ;
      meSaleDate .Clear ;

      //dblCreator .KeyValue    := '';
      dblConf.KeyValue        := '';
      dblAuditConf.KeyValue   := '';
     dblSaleUConf.KeyValue    := '';



end;
//*****
//*********************************************************************
procedure TSaleCom.SetMasterFields();
begin
      edCom .Text        := quComSale_com_no .AsString ;
      edPassNo    .Text   := quComPass_no .AsString ;
      edReceiver .Text    := quComReceiver .AsString ;
            edState .Text := quComStateName.AsString ;
      meCreateTrDate  .Text     := quComCreate_date .AsString ;
//      meAuditConfDate .Text  := ;
//      MeconfDate  .Enabled   := false;
      meComDate   .Text := quComCreate_date.AsString ;
//      meSaleUConfDate  .Enabled     := false;
      meSaleDate .Text      := quComSale_date.AsString ;
      meAuditConfDate .Text  := quComAudit_conf_date.AsString  ;
      MeconfDate  .Text   := quComSale_conf_date.AsString ;
      meSaleUConfDate  .Text     := quComSale_conf_date.AsString ;

      dblCreator .KeyValue         := quComCreator.AsString  ;
      dblConf.KeyValue         := quComGoods_confirmer.AsString  ;
      dblAuditConf.KeyValue         := quComAudit_confirm.AsString  ;
      dblSaleUConf.KeyValue         := quComSale_unit_confirmer.AsString  ;



end;
//*****************************************************************************
procedure TSaleCom.DisableMasterFields;
begin
      edCom          .FieldType  := ftDisplay;
      edPassNo       .FieldType  := ftDisplay;
      edReceiver     .FieldType  := ftDisplay;

      meCreateTrDate .FieldType  := ftDisplay;
      meAuditConfDate.FieldType  := ftDisplay;
      MeconfDate  .FieldType  := ftDisplay;
      meComDate   .FieldType  := ftDisplay;
      meSaleUConfDate  .FieldType  := ftDisplay;
      meSaleDate .FieldType  := ftDisplay;

      dblCreator .FieldType  := ftDisplay;
      dblConf.FieldType  := ftDisplay;
      dblAuditConf.FieldType  := ftDisplay;
      dblSaleUConf.FieldType  := ftDisplay;
      FormInitializer1.Execute;

 end;
//*****************************************************************************
procedure TSaleCom.EnableMasterFields;
begin
       grcom.TabStop:= false;
       grItem .TabStop:= false;
       cbFilterState.TabStop  := False;
      edPassNo  .FieldType  := ftRequired;
      edReceiver.FieldType  := ftRequired;
      meSaleDate.FieldType  := ftRequired;
      paOkCancel.visible    := True;
      PaDetailOper.Visible  := False;
      FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
procedure TSaleCom.InsertDetail();
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
      quDetailInsert.parameters[3].value         := edExpertPrice .Text;
      quDetailInsert.parameters[4].value         := edSalePrice  .Text;
      quDetailInsert.parameters[5].value         := RealRow + 1;
      quDetailInsert.parameters[6].value         := cbGoodType.ItemIndex;
      quDetailInsert.parameters[7].value         := cbUnit.ItemIndex;

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

{    case cbGoodType.ItemIndex of
     0 : DabData . UpdateMovGoods   ( dblItem.Keyvalue,4);
     1 : DabData . UpdateNonMovGoods( dblItem.Keyvalue,4);
    end; // case
 }
    quRecDet.close;
    quRecDet.Parameters[0].Value := StrToInt(edCom.Text);
    quRecDet.Open;
    quRecDet.Last;
end;
//*****************************************************************************
procedure TSaleCom.UpdateDetail();
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
      quDetailUpdate.parameters[2].value := edExpertPrice .Text;
      quDetailUpdate.parameters[3].value := edSalePrice  .Text;
      quDetailUpdate.parameters[4].value := cbGoodType.ItemIndex;
      quDetailUpdate.parameters[5].value := cbUnit .ItemIndex;
      quDetailUpdate.parameters[6].value := edCom .Text ;
      quDetailUpdate.parameters[7].value := RealRow ;

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
end;
//****************************************************************************
procedure TSaleCom.DeleteDetail();
begin
   case TempGoodType of
    0 :  DabData . UpdateMovGoods   ( quRecDetGoods_code.AsString , 0);
    1 :  DabData . UpdateNonMovGoods( quRecDetPlaque_no.AsString  , 0);
   end;
   quDetailDelete.Close;
   try
      DabData.ADOC.BeginTrans;

      quDetailDelete.parameters[0].value := StrToInt(edCom.Text);
      quDetailDelete.parameters[1].value := quRecDetRow_no.AsInteger;

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
procedure TSaleCom.ClearDetailFields;
begin
   cbGoodType.ItemIndex := -1;
   dblItem.KeyValue     := -1;
   edItemName.Clear;
   edTrnsLabel.Clear;
   edExpertPrice .Clear;
   edSalePrice .Clear ;
   cbUnit .ItemIndex := -1;
end;
//**************************************************************************
procedure TSaleCom.SetDetailFields();
begin
   if quRecDet.RecordCount <> 0 then
   begin
      cbGoodType.ItemIndex  :=  quRecDetGoods_Type.AsInteger;
      edItemName.Text       :=  quRecDetItemName.AsString;
      edTrnsLabel.Text      :=  quRecDetLabel.AsString;
      cbUnit .ItemIndex     :=  quRecDetPrice_unit .AsInteger;
      edExpertPrice .Text   :=  quRecDetExpert_price .AsString;
      edSalePrice .Text     :=  quRecDetsale_Price .AsString;



      TempExpertPrice       :=  quRecDetExpert_price .AsString;
      TempsalePrice       :=  quRecDetsale_Price .AsString;

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
               DabData.qumoveable.Parameters[1].Value := 2;
               DabData.qumoveable.Parameters[2].Value := 10;
               DabData.qumoveable.Parameters[3].Value := quRecDetGoods_code.AsString;
               DabData.qumoveable.Parameters[4].Value := NULL;
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
             DabData.qunonmgood.Parameters[1].Value := 4;
             DabData.qunonmgood.Parameters[2].Value := NULL;
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
procedure TSaleCom.EnableDetailFields;
begin
//   dblItem.Enabled      := True;
   case  mde of
    1 :  dblItem.FieldType := ftDisplay;
    2 :  dblItem.FieldType := ftRequired;
   end; // case
   cbGoodType.FieldType := ftRequired;
   edExpertPrice .FieldType := ftRequired;
   edSalePrice .FieldType := ftRequired;
   cbUnit .FieldType := ftRequired;
   paOkCancel.visible    := True;
   PaDetailOper.Visible  := True;
   FormInitializer1.Execute;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TSaleCom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TSaleCom.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 55 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;

//*************************************************************************
procedure TSaleCom.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TSaleCom.FormShow(Sender: TObject);
var l,t:integer;
begin
  ChkSaleDate:=false;
  
  UUserMsg.GetRect(Width,Height,l,t);
  Left    := l;
  Top     := t;

   qudblEmp.Close;
   qudblEmp.Open;

   mde:=0;
   cbFilterState.ItemIndex := 0 ;

   quCom.Close;  // set values to Grid
   quCom.Parameters[0].Value := cbFilterState.ItemIndex;
   quCom.Parameters[1].Value := NULL;
   quCom.Open;

   quRecDet.Close;
   quRecDet.Parameters[0].Value := quComSale_com_no .AsInteger ;
   quRecDet.Parameters[1].Value := quComSale_com_no .AsInteger ;
   quRecDet.Open;
   DisableMasterFields();

   ChkSaleDate    := False;
   ChkEmpSaleDate := True;


        grcom.SetFocus;
end;
//******************************************************************************
procedure TSaleCom.btRecCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TSaleCom.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TSaleCom.quComAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
{//***************************************************************************
procedure TBillStor.meReqDateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkEmpReqDate) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLo
              }
procedure TSaleCom.Button1Click(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          setformColor(ShowMvGood);
          ShowMvgood.ShowModal();

          if ShowMvgood.ModalResult = MrOK then
          begin
             dblItem.KeyValue := DabData.qumoveablegoods_code.AsString;
             edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
             edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
          end;
          ShowMvgood.Free;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
          setformColor(ShowNonMGood);
          ShowNonMgood.ShowModal();

          if ShowNonMgood.ModalResult = MrOk then
          begin
             dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
             edTrnsLabel.Clear ;
             edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;
           end;
           ShowNonMgood.Free;
       end;

   end;   // case
   if Trim( dblItem.Text)='' then
   begin
       edTrnsLabel.Clear ;
       edItemName.Clear;
   end;
end;

procedure TSaleCom.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
           dblItem .FieldType := ftRequired;
           Button1 .Enabled :=true;
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
           DabData.qumoveable.Parameters[1].Value := 2;
           DabData.qumoveable.Parameters[2].Value := 10;
           if ( mde = 2 ) and ( TempGoodType = 0 )
                 then DabData.qumoveable.Parameters[3].Value := quRecDetGoods_code.AsString
                 else DabData.qumoveable.Parameters[3].Value := -1;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := null;
           edTrnsLabel.Clear;
           edItemName.Clear;
        end;
    1 : begin
           dblItem .FieldType := ftRequired;
           Button1 .Enabled :=true;
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
           DabData.qunonmgood.Parameters[1].Value := 4;
           DabData.qunonmgood.Parameters[2].Value := NULL;
           if ( mde = 2 ) and ( TempGoodType = 1 )
                 then  DabData.qunonmgood.Parameters[3].Value := quRecDetPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[3].Value := 0;
           DabData.qunonmgood.Parameters[4].Value := NULL;
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := null;
           edTrnsLabel.Clear;
           edItemName.Clear;
       end
   end; // case
   FormInitializer1.Execute;
end;

procedure TSaleCom.meSaleDateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkempSaleDate ) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_fmLonRqS_Date_Error;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      meSaleDate.Text := '  /  /  ';
      meSaleDate.SetFocus;
   end

end;

procedure TSaleCom.dblItemCloseUp(Sender: TObject);
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
   if Trim( dblItem.Text)='' then
   begin
       edTrnsLabel.Clear ;
       edItemName.Clear;
   end;
end;

procedure TSaleCom.grcomEnter(Sender: TObject);
begin
   if (mde = 1)and(ActiveGrid = 1) then
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

   CheckSetFailButton();
end;


procedure TSaleCom.grItemEnter(Sender: TObject);
begin
   if (mde = 1)and(ActiveGrid = 1) then
   begin
      mde := 0;
      quCom.Close;
      quCom.Open;
   end;

   ActiveGrid := 2;
   SetGridColor(2);

   paOKCancel.Visible   := False;
   PaDetailOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
   CheckSetFailButton();
end;

procedure TSaleCom.BtOkTransClick(Sender: TObject);
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


procedure TSaleCom.edExpertPriceKeyPress(Sender: TObject; var Key: Char);
begin
if (ord(key) < 48) or (ord(key) > 57) then
 if (ord(key) <> 8 ) then
  key := #0;
if (length(edExpertPrice .text) >= 12) and (ord(key) <> 8 )then
  key := #0;
end;

procedure TSaleCom.edSalePriceKeyPress(Sender: TObject; var Key: Char);
begin
if (ord(key) < 48) or (ord(key) > 57) then
 if (ord(key) <> 8 ) then
  key := #0;
if (length(edSalePrice.text) >= 12) and (ord(key) <> 8 )then
  key := #0;

end;

procedure TSaleCom.dblItemEnter(Sender: TObject);
begin
{   if not(CheckNull(cbGoodType.Text)) then
   begin
      dblItem.KeyField   := '';
      dblItem.ListField  := '';
      dblItem.ListSource := DabData.dsMoveable;
      dblItem.KeyField   := 'Goods_CodeStr';
      dblItem.ListField  := 'Goods_CodeStr';

      DabData.qumoveable.Close;
      DabData.qumoveable.Parameters[0].Value := 40 ;
      DabData.qumoveable.Parameters[1].Value := 0 ;
      DabData.qumoveable.Open;

      dblItem.KeyValue   := -1;
   end;

 }
end;

procedure TSaleCom.quRecDetOldAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;

procedure TSaleCom.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;


procedure TSaleCom.btFailClick(Sender: TObject);
var TmpStr : string;
begin
     if (ActiveGrid=1) and (quComState.AsInteger = 0) then
     begin
     Str1 := UUserMsg.SM_Ebtal;
     Str2 := UUserMsg.SM_EbtalText;
     ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes = mrOk then
       begin
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
         TmpStr := edCom.Text ;
         cbFilterState.ItemIndex := 1;

         quCom.Close;
         quCom.Parameters[0].Value := cbFilterState.ItemIndex;
         quCom.Parameters[1].Value := 0;
         quCom.open;

         quCom.Locate('Sale_com_no',TmpStr,[locaseinsensitive]);
         end;
       mde:=0 ;
    end;

end;

procedure TSaleCom.cbFilterStateChange(Sender: TObject);
begin
  if cbFilterState.ItemIndex = 4 then
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

procedure TSaleCom.CheckSetFailButton;
begin
   btFail.Enabled := False;
   if ( quCom.RecordCount <> 0 )and ( quComState.AsInteger = 0) and (ActiveGrid = 1) then
       btFail.Enabled := True ;
end;

procedure TSaleCom.edPassNoEnter(Sender: TObject);
begin
  btFail.Enabled := False;
end;


procedure TSaleCom.DoPrint(var mes: TMessage);
begin
      ppOrg.Caption := OrganizName;
      ppcom .Caption:= quComSale_com_no.AsString;
      ppDate.Caption := quComSale_date .AsString;
      ppState.Caption := quComStateName.AsString;
      pppass.Caption := quComPass_no.AsString;
      ppdate2.Caption := quComSale_date.AsString;
      pprec.Caption := quComReceiver.AsString;



      ppcreator.Caption:= quComCreatorN.AsString;
      pplConf.Caption:= quComConfN.AsString;
      ppSaleUConf.Caption:= quComSaleUConfN.AsString;
      ppAuConf.Caption:= quComAuditConfN.AsString;
//      pplrc.caption:= quComReceiver.AsString;
         quReport .Close ;
         quReport .Parameters[0].Value := quComSale_com_no.AsInteger ;
         quReport .Parameters[1].Value := quComSale_com_no.AsInteger ;
         quReport .Open ;

    ppreport1.print;




end;

procedure TSaleCom.ppDBText2GetText(Sender: TObject; var Text: String);
begin
Text:= inttostr(quReport.RecNo);

end;

procedure TSaleCom.quRecDetAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;

end.
