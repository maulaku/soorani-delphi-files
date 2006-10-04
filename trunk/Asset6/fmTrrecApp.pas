unit fmTrrecApp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate ,comobj,  RSqlMaskEdit, SmoothShow, SetForm,
   RSqlButton, RSqllookup, RSQLComboBox, RSqlEdit,RadForms,Variants;
type
  TTrRecApp = class(TRadForm)
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
    Label31: TLabel;
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
    quComCreatorN: TStringField;
    quComDeliverN: TStringField;
    quComAuditN: TStringField;
    quComAppN: TStringField;
    quComConfN: TStringField;
    quRecDet: TADOQuery;
    dsRecDet: TDataSource;
    quDetailDelete: TADOQuery;
    Label4: TLabel;
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
    quComReceipt_Creator: TStringField;
    quComState: TSmallintField;
    quRecNoState: TSmallintField;
    quRecNoStateName: TStringField;
    PageControl1: TPageControl;
    tstransfer: TTabSheet;
    Label2: TLabel;
    Label9: TLabel;
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
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Panel21: TPanel;
    Label27: TLabel;
    PaDetailOper: TPanel;
    Button1: TButton;
    grItem: TDBGrid;
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
    Label15: TLabel;
    Panel1: TPanel;
    grcom: TDBGrid;
    Panel23: TPanel;
    meAppDate: TRSqlMaskEdit;
    quComStateName: TStringField;
    edPassNo: TRSqlEdit;
    edRecOrg: TRSqlEdit;
    edTrRecNo: TRSqlEdit;
    edReceiver: TRSqlEdit;
    edRecomendNo: TRSqlEdit;
    edReceiverPost: TRSqlEdit;
    edCom: TRSqlEdit;
    edState: TRSqlEdit;
    edTrnsLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edReason: TRSqlEdit;
    dblCreator: TRSqlDbLookup;
    dblDelConf: TRSqlDbLookup;
    dblAuditConf: TRSqlDbLookup;
    dblApprover: TRSqlDbLookup;
    cbGoodType: TRSqlComboBox;
    dblItem: TRSqlDbLookup;
    BtOkTrans: TRSqlButton;
    BtCancelTrans: TRSqlButton;
    cbTransType: TRSqlComboBox;
    meCreateTrDate: TRSqlMaskEdit;
    MeDelconfDate: TRSqlMaskEdit;
    meAuditConfDate: TRSqlMaskEdit;
    meReturnDate: TRSqlMaskEdit;
    meTransDate: TRSqlMaskEdit;
    cbFilterState: TComboBox;
    quRecDetcom_tr_no: TIntegerField;
    quRecDetGoods_code: TStringField;
    quRecDetPlaque_no: TStringField;
    quRecDetReason: TStringField;
    quRecDetRow_no: TIntegerField;
    quRecDetGoods_type: TSmallintField;
    quRecDetGeneralCode: TStringField;
    quRecDetItemName: TStringField;
    quRecDetLabel: TIntegerField;
    quRecDetItemCode: TStringField;
    quRecDetStatename: TStringField;

//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
    procedure btRecOKClick(Sender: TObject);
    procedure btRecCancelClick(Sender: TObject);
    procedure grRecItemEnter(Sender: TObject);
    procedure quComAfterScroll(DataSet: TDataSet);
    procedure grBillEnter(Sender: TObject);
    procedure quReqItemsAfterScroll(DataSet: TDataSet);
    procedure dblItemCloseUp(Sender: TObject);
    procedure grcomEnter(Sender: TObject);
    procedure BtOkTransClick(Sender: TObject);
    procedure BtCancelTransClick(Sender: TObject);
    procedure grItemEnter(Sender: TObject);
    procedure quRecDetAfterScroll(DataSet: TDataSet);
    procedure dblItemEnter(Sender: TObject);
    procedure cbGoodTypeChange(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure tstransferShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grRecieptEnter(Sender: TObject);
    procedure HandleDeleteError(ErrCode: HRESULT);
    procedure cbFilterStateChange(Sender: TObject);
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
     procedure DeleteMaster;
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
     procedure SetDetailFields;
//-----------------------------------------------------------------------
     procedure DeleteDetail();
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

  TrRecApp: TTrRecApp;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;

  ChkCreateBill, ChkEmpCreateBill   : Boolean;
  ChkCreate    , ChkEmpCreate       : Boolean;
  ChkD    , ChkEmpD      : Boolean;
  ChkA    , ChkEmpA      : Boolean;
  ChkR    , ChkEmpR      : Boolean;
  ChkReturnDate, ChkempReturnDate   : Boolean;
  ChkTrans, Chkemptrans  : Boolean;
  ChkConfirm   , ChkEmpConfirm      : Boolean;
  ChkCfmTeller , ChkEmpcfmTeller    : Boolean;

  ChkRecCreate    , ChkEmpRecCreate : Boolean;
  ChkRecGood      , ChkEmpRecGood   : Boolean;
  confTag:integer;
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

implementation

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon, fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TTrRecApp.DoScroll(var mes:TMessage);
begin
      if ( mde = 0) and (qucom.RecordCount <> 0 ) then
      begin
         quRecDet.Close ;
         quRecDet.Parameters[0].Value := quComcom_tr_no.AsInteger ;
         quRecDet.Parameters[1].Value := quComcom_tr_no.AsInteger ;
         quRecDet.Open ;
         DisableMasterFields();
         SetMasterFields();
      end;
end;
//*****************************************************************************
procedure TTrRecApp.DoNew(var mes: TMessage);
begin
{   grcom .TabStop:= false;
   grItem.TabStop:= false;
   mde := 1;
   if PageControl1.ActivePageIndex = 1 then

   case ActiveGrid of
    1 : begin
           quCom.Close;
           quCom.Open;
           quCom.Last;

           EnableMasterFields();
           ClearMasterFields();


           if   qucom.RecordCount = 0
                then  edCom.Text := '81000000'
                else  edCom.Text := IntToStr(quComcom_tr_no.AsInteger + 1) ;
           meComDate .Text := Dabdata.disp_date ;
           meCreateTrDate .Text   := Dabdata.disp_date ;
           ChkReturnDate      := True;
           ChkempReturnDate   := True;
           ChkTrans:=true;
           ChkEmpTrans:=true;
           BtOkTrans .Enabled  := False;
           edPassNo .SetFocus;
        end;
    2 : begin
           if Trim( edCom.Text )= '' then begin mde:= 0 ;exit; end;
           quRecDet.Last;

           EnableDetailFields();
           ClearDetailFields();

           cbGoodType.SetFocus;
        end
    end;}
end;
//****************************************************************************
procedure TTrRecApp.DoEdit(var mes :TMessage);
begin
   if (quComState.AsInteger  = 3) or(quComState.AsInteger  = 0)or(quComState.AsInteger  = 1)  then
   begin
     Str1 := '«Œÿ«—';
     Str2 := '’Ê— Ã·”Â „Ê—œ ‰Ÿ— ‘„« ﬁ«»·  €ÌÌ— ‰„Ì »«‘œ';
     ShowMessage2(Str2);
     mde:=0;
     exit;
   end;
      mde := 2;
      case ActiveGrid of
      1 : begin
           grcom .TabStop:= false;
           grItem.TabStop:= false;

           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           meAppDate.Text := Dabdata.disp_date ;
           dblApprover.SetFocus;
          end;
      end;
   end;
//*****************************************************************************
procedure TTrRecApp.DoDelete(var mes: TMessage);
begin
   if PageControl1.ActivePageIndex = 1 then

   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( qucom.RecordCount >=1 ) and
           ( qucom.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
//          Str2 := UUserMsg.SM_fmLontyp_ConfirmDelRec;
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

        2 : if ( Mde = 0 )  and ( quRecDet.RecordCount >=1 ) and
                ( quRecDet.RecNo >= 1) then
            begin
               Str1 := UUserMsg.SM_Pub_DeleteMode;
//               Str2 := UUserMsg.SM_fmLonTyp_ConfirmDelRec;
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
procedure TTrRecApp.SetDefaultMode(i: integer);
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
//         paRecOKCancel.Visible   := False;

//         grBill.TabStop       := True;
//         ActiveControl        := grBill;
         ActiveGrid           := 1;
      end;
      2 :
      begin
//         paRecOKCancel.Visible   := False;

//         grReciept.TabStop  := True;
//         ActiveControl      := grReciept;
         ActiveGrid         := 2;
      end;
    end;
end;
procedure TTrRecApp.SetGridColor(i: integer);
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
//          grBill.Color    := clActiveGridColor;
//          grReciept.Color := clDeactiveGridColor;
       end;
   2 : begin
//          grBill.Color    := clDeactiveGridColor;
//          grReciept.Color := clActiveGridColor;
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
procedure TTrRecApp.UpdateMaster();
var i:integer;
    TempStr : String;
begin

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
      if dblCreator .KeyValue = '' then       quMasterUpdate.parameters[9].value:=NULL
      else quMasterUpdate.parameters[9].value:= dblCreator .KeyValue;
      quMasterUpdate.parameters[10].value:= meCreateTrDate .Text ;
      if dblDelConf .KeyValue='' then quMasterUpdate.parameters[11].value:=NULL
      else   quMasterUpdate.parameters[11].value:= dblDelConf .KeyValue;
      quMasterUpdate.parameters[12].value:= MeDelconfDate .text;
      if dblAuditConf .keyvalue=''then quMasterUpdate.parameters[13].value:= NULL
      else quMasterUpdate.parameters[13].value:= dblAuditConf .keyvalue;
      quMasterUpdate.parameters[14].value:= meAuditConfDate.Text ;
      IF dblApprover.keyvalue='' then quMasterUpdate.parameters[15].value:= NULL
      else quMasterUpdate.parameters[15].value:= trim(dblApprover.keyvalue);
      quMasterUpdate.parameters[16].value:= meAppDate .Text;
      quMasterUpdate.parameters[17].value:= NULL;
      quMasterUpdate.parameters[18].value:= NULL;
      quMasterUpdate.parameters[19].value:= NULL;
      quMasterUpdate.parameters[20].value:= NULL;
      quMasterUpdate.parameters[21].value:= NULL;
      quMasterUpdate.parameters[22].value:= confTag;
      quMasterUpdate.parameters[23].value := edCom .Text;

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
    cbFilterState.ItemIndex := confTag ;
    TempStr := edCom.Text;

    quCom.Close;  // set values to Grid
    quCom.Parameters[0].Value := cbFilterState.ItemIndex;
    quCom.Parameters[1].Value := NULL;
    quCom.Open;

    quCom.Locate ('Com_tr_no',TempStr,[locaseinsensitive]);

     quRecDet.Close;
     quRecDet.Open;
     quRecDet.First;

     for i := 1 to quRecDet.RecordCount do
     begin
        case quRecDetGoods_type.AsInteger of
          0 : case quComtrans_type.AsInteger   of
                0 : Dabdata.UpdateMovGoods   (quRecDetGoods_code.AsString , 3);
                1 : Dabdata.UpdateMovGoods   (quRecDetGoods_code.AsString , 4);
             end;
          1 : case quComtrans_type.AsInteger   of
                0 : Dabdata.UpdateNonMovGoods(quRecDetPlaque_no.AsString  , 3);
                1 : Dabdata.UpdateNonMovGoods(quRecDetPlaque_no.AsString  , 2);
              end;
         end;  // case
         quRecDet.Next;
     end;
     quRecNo.close;
     quRecNo.Open;
     quRecNo.Last;
     disablemasterfields;
     SetDefaultMode(1);
end;
//****************************************************************************
procedure TTrRecApp.DeleteMaster;
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
//**************************************************************************
procedure TTrRecApp.ClearMasterFields;
begin
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

       dblCreator.KeyValue   :=  '';
       dblDelConf.KeyValue := '';
       dblAuditConf .KeyValue:= '';
       dblApprover .KeyValue :=  '';

       meCreateTrDate.Clear ;
       MeDelconfDate .Clear ;
       meAuditConfDate .Clear ;
       meAppDate .Clear;
end;
//*****
//*********************************************************************
procedure TTrRecApp.SetMasterFields();
begin
      edCom .Text          :=  quComcom_tr_no .AsString;
      edState.Text      :=  quComStateName.AsString;
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

      dblCreator.KeyValue    := quComCreator.asstring;
      dblDelConf.KeyValue    := quComDeliver_confirm.AsString;
      dblAuditConf .KeyValue := quComaudit_confirm .AsString ;
      dblApprover .KeyValue  := quComApprover .AsString ;

      meCreateTrDate.Text := quComcreat_tr_date.AsString ;
      MeDelconfDate .Text := quComdel_conf_date.AsString ;
      meAuditConfDate .Text := quComaudit_conf_date.AsString ;
      meAppDate .Text := quComApprove_date.AsString ;
end;
//*****************************************************************************
procedure TTrRecApp.DisableMasterFields;
begin
      edCom .FieldType :=ftDisplay;

      edPassNo    .FieldType :=ftDisplay;
      meTransDate .FieldType :=ftDisplay;
      cbTransType .itemIndex:=-1;
      cbTransType .FieldType :=ftDisplay;

       meReturnDate .FieldType :=ftDisplay;
       edRecOrg .FieldType :=ftDisplay;
       edTrRecNo .FieldType :=ftDisplay;
       edReceiver .FieldType :=ftDisplay;
       edReceiverPost.FieldType :=ftDisplay;
       edRecomendNo.FieldType :=ftDisplay;


      dblCreator .FieldType :=ftDisplay;
      dblDelConf.FieldType :=ftDisplay;
      dblAuditConf.FieldType :=ftDisplay;
      dblApprover.FieldType :=ftDisplay;
      meCreateTrDate .FieldType :=ftDisplay;
      MeDelconfDate .FieldType :=ftDisplay;
      meAuditConfDate .FieldType :=ftDisplay;
      meAppDate.FieldType :=ftDisplay;
      FormInitializer1.Execute;

 end;
//*****************************************************************************
procedure TTrRecApp.EnableMasterFields;
begin
     grcom.TabStop:= false;
     grItem .TabStop:= false;
     cbFilterState.TabStop  := False;

      dblApprover.FieldType    := ftRequired;
      meAppDate.FieldType    := ftRequired;


      paOkCancel.visible    := True;
      FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
//****************************************************************************
procedure TTrRecApp.DeleteDetail();
begin
   case TempGoodType of
    0 :  DabData.UpdateMovGoods   ( quRecDetGoods_code.AsString , 0);
    1 :  DabData.UpdateNonMovGoods( quRecDetPlaque_no.AsString  , 0);
   end;
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
procedure TTrRecApp.SetDetailFields();
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
      RealRow  := 0 ;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TTrRecApp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TTrRecApp.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 142 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TTrRecApp.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TTrRecApp.FormShow(Sender: TObject);
var l,t:integer;
begin
  UUserMsg.GetRect(Width,Height,l,t);
  Left    := l;
  Top     := t;

  qudblEmp.Close;
  qudblEmp.Open;

  mde:=0;
  PageControl1.ActivePageIndex := 0;
  if PageControl1 .ActivePageIndex  = 0 then
    Begin
        cbFilterState.ItemIndex := 2 ;

        quCom.Close;  // set values to Grid
        quCom.Parameters[0].Value := cbFilterState.ItemIndex;
        quCom.Parameters[1].Value := NULL;
        quCom.Open;


        quRecDet .Close ;
        quRecDet .Parameters[0].Value := quComcom_tr_no.AsInteger ;
        quRecDet .Parameters[1].Value := quComcom_tr_no.AsInteger ;
        quRecDet .Open ;

        DisableMasterFields();

        ChkA    := False;
        ChkEmpA := True;
        ChkD    := False;
        ChkEmpD := True;
        grcom.SetFocus;
   end
   else
   begin
   //
   end;
end;
procedure TTrRecApp.btRecCancelClick(Sender: TObject);
begin
      confTag:=3;
      UpdateMaster();

   SetDefaultMode(2);
end;
//******************************************************************************
procedure TTrRecApp.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TTrRecApp.quComAfterScroll(DataSet: TDataSet);
var  Msg :TMessage;
begin
   Msg.Msg:=F_SCROLL;
   Application.MainForm.Dispatch(Msg);
end;
//******************************************************************************
procedure TTrRecApp.grBillEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

//   paRecOKCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
//****************************************************************************
procedure TTrRecApp.quReqItemsAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;
//****************************************************************************
procedure TTrRecApp.btRecOKClick(Sender: TObject);
begin
         confTag := 2;
         UpdateMaster();
         SetDefaultMode(1);
end;
//****************************************************************************
procedure TTrRecApp.dblItemCloseUp(Sender: TObject);
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

procedure TTrRecApp.grcomEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;

procedure TTrRecApp.BtOkTransClick(Sender: TObject);
begin
      Str1 := '«Œÿ«—';
      Str2 := '¬Ì« „«Ì· »Â  ’ÊÌ» ’Ê— Ã·”Â „Ì»«‘Ìœ ø';
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes <> mrOk then
     begin
        Mde := 0;
        grcom.SetFocus;
        exit;
     end;

      confTag := 4;
      UpdateMaster();
      SetDefaultMode(1);
      DisableMasterFields();
end;

procedure TTrRecApp.BtCancelTransClick(Sender: TObject);
begin
      Str1 := '«Œÿ«—';
      Str2 := '¬Ì« „«Ì· »Â —œ ‰Â«ÌÌ ’Ê— Ã·”Â „Ì»«‘Ìœ ø';
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

     if ModalRes <> mrOk then
     begin
        Mde := 0;
        grcom.SetFocus;
        exit;
     end;

      confTag:=5;
      UpdateMaster();
      SetDefaultMode(2);
end;

procedure TTrRecApp.grItemEnter(Sender: TObject);
begin
   ActiveGrid := 2;
   SetGridColor(2);

   paOKCancel.Visible   := False;
   PaDetailOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;

procedure TTrRecApp.quRecDetAfterScroll(DataSet: TDataSet);
begin
   if (PageControl1.ActivePageIndex = 1) and (mde <> 2) then   SetDetailFields();
end;

procedure TTrRecApp.dblItemEnter(Sender: TObject);
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

      dblItem.KeyValue   := -1;
    end;
end;

procedure TTrRecApp.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
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
           if ( mde = 2 ) and ( TempGoodType = 0 )
                 then DabData.qumoveable.Parameters[1].Value := quRecDetGoods_code.AsString
                 else DabData.qumoveable.Parameters[1].Value := 0;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := -1;
           edTrnsLabel.Clear;
           edItemName.Clear;
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
           if ( mde = 2 ) and ( TempGoodType = 1 )
                 then  DabData.qunonmgood.Parameters[1].Value := quRecDetPlaque_no.AsString
                 else  DabData.qunonmgood.Parameters[1].Value := 0;
           DabData.qunonmgood.Open;

           dblItem.KeyValue   := -1;
           edTrnsLabel.Clear;
           edItemName.Clear;
       end
   end; // case
end;


procedure TTrRecApp.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
   AllowChange := False;
end;

procedure TTrRecApp.tstransferShow(Sender: TObject);
begin
   quCom.Close;
   quCom.Open;
   grcom.SetFocus;
end;

procedure TTrRecApp.PageControl1Change(Sender: TObject);
begin
{   case  PageControl1.ActivePageIndex of
     0 :  tsRecieptShow(Sender);
     1 : } tstransferShow(Sender);
//   end;
end;

procedure TTrRecApp.Button1Click(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          setformColor(ShowMvGood);
          ShowMvgood.ShowModal();

          dblItem.KeyValue  :=  DabData.qumoveablegoods_code.AsString;
          edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
          edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
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

procedure TTrRecApp.grRecieptEnter(Sender: TObject);
begin
   ActiveGrid := 2;
   SetGridColor(2);

//   paRecOKCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();
end;
procedure TTrRecApp.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;


procedure TTrRecApp.cbFilterStateChange(Sender: TObject);
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

end.
