unit fmSaleComCfm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate,comobj,  RSqlMaskEdit, SmoothShow,RadForms,
  RSqllookup, RSQLComboBox, RSqlButton, RSqlEdit,Variants;
type
  TSaleComCfm = class(TRadForm)
    PageControl1: TPageControl;
    tstransfer: TTabSheet;
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

    Panel20: TPanel;
    Panel21: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    quRecDet: TADOQuery;
    dsRecDet: TDataSource;
    PaDetailOper: TPanel;
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
    quRecMasterUpdate: TADOQuery;
    Button1: TButton;
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
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    quComState: TSmallintField;
    quComStateName: TStringField;
    Panel6: TPanel;
    grcom: TDBGrid;
    Panel12: TPanel;
    cbFilterState: TComboBox;
    Label15: TLabel;
    MeconfDate: TRSqlMaskEdit;
    meSaleUConfDate: TRSqlMaskEdit;
    meCreateTrDate: TRSqlMaskEdit;
    meAuditConfDate: TRSqlMaskEdit;
    meSaleDate: TRSqlMaskEdit;
    meComDate: TRSqlMaskEdit;
    grItem: TDBGrid;
    edPassNo: TRSqlEdit;
    edReceiver: TRSqlEdit;
    edState: TRSqlEdit;
    edCom: TRSqlEdit;
    edTrnsLabel: TRSqlEdit;
    edItemName: TRSqlEdit;
    edExpertPrice: TRSqlEdit;
    edSalePrice: TRSqlEdit;
    BtCancelTrans: TRSqlButton;
    BtOkTrans: TRSqlButton;
    cbUnit: TRSqlComboBox;
    cbGoodType: TRSqlComboBox;
    dblItem: TRSqlDbLookup;
    dblCreator: TRSqlDbLookup;
    dblConf: TRSqlDbLookup;
    dblSaleUConf: TRSqlDbLookup;
    dblAuditConf: TRSqlDbLookup;
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
    procedure BtCancelTransClick(Sender: TObject);
    procedure edExpertPriceKeyPress(Sender: TObject; var Key: Char);
    procedure edSalePriceKeyPress(Sender: TObject; var Key: Char);
    procedure dblItemEnter(Sender: TObject);
    procedure quRecDetAfterScroll(DataSet: TDataSet);
    procedure HandleDeleteError(ErrCode: HRESULT);
    procedure MeconfDateExit(Sender: TObject);
    procedure meSaleUConfDateExit(Sender: TObject);
    procedure meAuditConfDateExit(Sender: TObject);
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
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
     procedure EnableDetailFields();
     procedure ClearDetailFields;
     procedure SetDetailFields;
//-----------------------------------------------------------------------
     procedure UpdateDetail();
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
//------------------------------------------------------------------------
  public
    mde     : integer ;
    confTag :bYTE;
    { Public declarations }
  end;
var

  SaleComCfm: TSaleComCfm;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
  ReqDate   , CreateDate , ConfirmDate , VerifyDate : TPersianDate;
  ChkC    , ChkEmpC      : Boolean;
  ChkS    , ChkEmpS      : Boolean;
  ChkA    , ChkEmpA      : Boolean;

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

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon , fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TSaleComCfm.DoScroll(var mes:TMessage);
begin
      if ( mde = 0) and (qucom.RecordCount <> 0 ) then
      begin
         quRecDet.Close ;
         quRecDet.Parameters[0].Value := quComSale_com_no .AsInteger ;
         quRecDet.Parameters[1].Value := quComSale_com_no .AsInteger ;
         quRecDet.Open ;
         DisableMasterFields();
         SetMasterFields();
      end;

end;
//*****************************************************************************
procedure TSaleComCfm.DoNew(var mes: TMessage);
begin
   mde := 1;
   grcom  .TabStop:= False;
   grItem .TabStop:= False;
   case ActiveGrid of
    1 : begin
           quCom.Close;
           quCom.Open;
           quCom.Last;

           EnableMasterFields();
           ClearMasterFields();


           if   qucom.RecordCount = 0
                then  edCom.Text := '81000000'
                else  edCom.Text := IntToStr(quComSale_com_no .AsInteger + 1) ;
           meComDate .Text := Dabdata.disp_date ;
           meCreateTrDate .Text   := Dabdata.disp_date ;
           ChkSaleDate      := True;
           ChkempSaledate   := True;
           quRecDet.Close ;
           quRecDet.Parameters[0].Value := 0;
           quRecDet.Parameters[1].Value := 0;
           quRecDet.Open ;

           BtOkTrans .Enabled  := False;
           edPassNo .SetFocus;
        end;
    2 : begin
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
end;
//****************************************************************************
procedure TSaleComCfm.DoEdit(var mes :TMessage);
begin
   grcom  .TabStop:= False;
   grItem .TabStop:= False;
   cbFilterState.TabStop := False;

   if qurecdet.RecordCount=0 then
   begin
     Str1 := 'ÇÎØÇÑ';
     Str2 := 'ÕæÑÊÌáÓå ãæÑÏ äÙÑ ÔãÇ ßÇáÇíí äÏÇÑÏ ÊÇ ÊÇííÏ ÔæÏ';
     ShowMessage2(Str2);
     mde:=0;exit;
   end;

   if (quComState.AsInteger  = 1)or (quComState.AsInteger  = 2)  then
   begin
     Str1 := 'ÇÎØÇÑ';
     Str2 := 'ÕæÑÊÌáÓå ãæÑÏ äÙÑ ÔãÇ ÞÇÈá ÊÛííÑ äãí ÈÇÔÏ';
     ShowMessage2(Str2);
     mde:=0;exit;
   end;

      mde := 2;
      case ActiveGrid of
      1 : begin
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           meconfDate.text := Dabdata.disp_date;
           dblConf.KeyValue:=DabData.emp_no;
           dblSaleUConf.KeyValue:=DabData.emp_no;
           dblAuditConf.KeyValue:=DabData.emp_no;
           MeconfDate.Text:=Dabdata.disp_date;
           meSaleUConfDate.Text:=Dabdata.disp_date;
           meAuditConfDate.Text:=Dabdata.disp_date;
//           BtOkTrans .Enabled := True;
           //dblConf.SetFocus;
          end;
      2 : begin
{           if quRecDet .RecordCount =0 then
             begin
                mde:=0;
                exit;
             end;

           EnableDetailFields();
           ClearDetailFields();
           SetDetailFields();
           btOkTrans.Enabled := True;
           cbgoodType  .SetFocus;
 }         end;
      end;

end;
//*****************************************************************************
procedure TSaleComCfm.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( qucom.RecordCount >=1 ) and
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
}
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TSaleComCfm.SetDefaultMode(i: integer);
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
procedure TSaleComCfm.SetGridColor(i: integer);
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
procedure TSaleComCfm.UpdateMaster();
var Tmpstr : String;

begin

   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

//      quMasterUpdate.parameters[0].value := edCom .Text;
      quMasterUpdate.parameters[0].value := edPassNo.Text;
      quMasterUpdate.parameters[1].value := meSaleDate  .Text ;
      quMasterUpdate.parameters[2].value := edReceiver .text;
      if dblCreator  .KeyValue <>''then   quMasterUpdate.parameters[3].value := dblCreator  .KeyValue
      else   quMasterUpdate.parameters[3].value := NULL;
      quMasterUpdate.parameters[4].value := meCreateTrDate  .Text;
      if dblConf.KeyValue<>'' then  quMasterUpdate.parameters[5].value := dblConf.KeyValue
      else  quMasterUpdate.parameters[5].value := NULL;
      quMasterUpdate.parameters[6].value := MeconfDate.Text;
      if dblSaleUConf  .KeyValue <>'' then quMasterUpdate.parameters[7].value :=dblSaleUConf  .KeyValue
      else quMasterUpdate.parameters[7].value :=NULL;
      quMasterUpdate.parameters[8].value := meSaleUConfDate .Text;
      if dblAuditConf  .KeyValue <>'' then quMasterUpdate.parameters[9].value:= dblAuditConf  .KeyValue
      else quMasterUpdate.parameters[9].value:= NULL;
      quMasterUpdate.parameters[10].value:= meAuditConfDate .Text ;
      quMasterUpdate.parameters[11].value := confTag;
      quMasterUpdate.parameters[12].value := edCom .Text;
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
   Tmpstr := edCom.Text ;

   quCom.close;
   quCom.Parameters[0].Value := cbFilterState.ItemIndex;
   quCom.Parameters[1].Value := 1;
   quCom.Open;

   quCom.Locate ('Sale_com_no',Tmpstr,[locaseinsensitive]);

   updateDetail;

end;
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//**************************************************************************
procedure TSaleComCfm.ClearMasterFields;
begin
      edCom .Clear;
      edPassNo    .Clear ;
      edReceiver .Clear ;
      edstate.clear;
      meCreateTrDate  .Clear ;
      meAuditConfDate .Clear ;
      MeconfDate  .Clear ;
      meComDate   .Clear ;
      meSaleUConfDate  .Clear ;
      meSaleDate .Clear ;

      dblCreator .KeyValue       := '';
//      dblConf.KeyValue       := '';
//      dblAuditConf.KeyValue       := '';
 //    dblSaleUConf.KeyValue       := '';



end;
//*****
//*********************************************************************
procedure TSaleComCfm.SetMasterFields();
begin
      edCom .Text        := quComSale_com_no .AsString ;
      edPassNo    .Text   := quComPass_no .AsString ;
      edReceiver .Text    := quComReceiver .AsString ;
      edState.text:= qucomStateName.AsString ;
      meCreateTrDate  .Text     := quComCreate_date .AsString ;
      meAuditConfDate .Text  := quComAudit_conf_date.AsString  ;
      MeconfDate  .Text   := quComSale_conf_date.AsString ;
      meComDate   .Text := quComCreate_date.AsString ;
      meSaleUConfDate  .Text     := quComSale_conf_date.AsString ;
      meSaleDate .Text      := quComSale_date.AsString ;

      dblCreator .KeyValue         := quComCreator.AsString  ;
      dblConf.KeyValue         := quComGoods_confirmer.AsString  ;
      dblAuditConf.KeyValue         := quComAudit_confirm.AsString  ;
      dblSaleUConf.KeyValue         := quComSale_unit_confirmer.AsString  ;



end;
//*****************************************************************************
procedure TSaleComCfm.DisableMasterFields;
begin
      edCom .Enabled        := False;
      edPassNo    .Enabled  := False;
      edReceiver .Enabled   := false;

      meCreateTrDate  .Enabled    := false;
      meAuditConfDate .Enabled := false;
      MeconfDate  .Enabled   := false;
      meComDate   .Enabled  := False;
      meSaleUConfDate  .Enabled     := false;
      meSaleDate .Enabled := false;

      dblCreator .Enabled      := False;
      dblConf.Enabled       := False;
      dblAuditConf.Enabled     := False;
      dblSaleUConf.Enabled      := False;


      edCom .Color          := clDeactiveFieldColor;
      edpassNo.Color        := clDeactiveFieldColor;
      edReceiver.Color        := clDeactiveFieldColor;

      meComDate .Color      := clDeactiveFieldColor;
      meAuditConfDate  .Color := clDeactiveFieldColor;
      meCreateTrDate  .Color    := clDeactiveFieldColor;
      MeconfDate   .Color   := clDeactiveFieldColor;
      meSaleUConfDate .Color    := clDeactiveFieldColor;
      meSaleDate .Color       := clDeactiveFieldColor;


      dblCreator .Color     := clDeactiveFieldColor;
      dblConf .Color     := clDeactiveFieldColor;
      dblAuditConf .Color   := clDeactiveFieldColor;
      dblSaleUConf .Color     := clDeactiveFieldColor;

 end;
//*****************************************************************************
procedure TSaleComCfm.EnableMasterFields;
begin
      {dblConf.Enabled           := True;
      dblAuditConf.Enabled      := True;
      dblSaleUConf.Enabled      := True;

      meAuditConfDate  .Enabled  := True;
      MeconfDate   .Enabled      := True;
      meSaleUConfDate .Enabled   := True;


      meAuditConfDate  .Color  := clOptionalFieldColor;
      MeconfDate   .Color      := clActiveFieldColor ;
      meSaleUConfDate .Color   := clOptionalFieldColor ;



      dblConf .Color           := clActiveFieldColor ;
      dblAuditConf .Color      := clOptionalFieldColor;
      dblSaleUConf .Color      := clOptionalFieldColor;
       }
      paOkCancel.visible    := True;
      PaDetailOper.Visible  := False;

      ChkEmpC := True ;
      ChkEmpA := True ;
      ChkEmpS := True ;

      ChkC := False ;
      ChkA := False ;
      ChkS := False ;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//***************************************************************************
//*****************************************************************************
procedure TSaleComCfm.UpdateDetail();
var i:integer;
begin
   quRecDet.Close;
   quRecDet.Parameters[0].value:= quComSale_com_no.AsString ;
   quRecDet.Parameters[1].value:= quComSale_com_no.AsString ;
   quRecDet.Open ;
   dsRecDet.Enabled  := false;

   for i:=1 to quRecDet .RecordCount do
     begin
       if  quRecDetGoods_type.AsInteger =0
       then   Dabdata.UpdateMovGoods   ( quRecDetGoods_code.AsString  , 7 )
       else   DabData.UpdateNonMovGoods( quRecDetPlaque_no.AsString   , 7 );
       quRecDet.Next;
     end;
    dsRecDet.Enabled :=true;
end;
//****************************************************************************
//**************************************************************************
//**************************************************************************
//**************************************************************************
procedure TSaleComCfm.ClearDetailFields;
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
procedure TSaleComCfm.SetDetailFields();
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
               DabData.qumoveable.Parameters[1].Value :=2;
               DabData.qumoveable.Parameters[2].Value :=10;
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
procedure TSaleComCfm.EnableDetailFields;
begin
//   dblItem.Enabled      := True;
   cbGoodType.Enabled   := True;
   edExpertPrice .Enabled     := True;
   edSalePrice .Enabled     := True;
   cbUnit .Enabled   := True;

   dblItem.Color        := clActiveFieldColor;
   cbGoodType.Color     := clActiveFieldColor;
   edExpertPrice .Color       := clActiveFieldColor;
   edSalePrice.Color :=   clActiveFieldColor;
   cbUnit .Color     := clActiveFieldColor;

   paOkCancel.visible    := True;
   PaDetailOper.Visible  := True;
end;
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TSaleComCfm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TSaleComCfm.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 144 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);

end;
//*************************************************************************
procedure TSaleComCfm.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TSaleComCfm.FormShow(Sender: TObject);
var l,t:integer;
begin
  
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

        quRecDet .Close ;
        quRecDet .Parameters[0].Value := quComSale_com_no .AsInteger ;
        quRecDet .Parameters[1].Value := quComSale_com_no .AsInteger ;
        quRecDet .Open ;

        DisableMasterFields();

        ChkSaleDate    := False;
        ChkEmpSaleDate := True;


        grcom.SetFocus;
end;
procedure TSaleComCfm.btRecCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TSaleComCfm.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TSaleComCfm.quComAfterScroll(DataSet: TDataSet);
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
procedure TSaleComCfm.Button1Click(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 :
       begin
          ShowMvgood  := TShowMvgood.create(Application);
          setformColor(ShowMvGood);
          ShowMvgood.ShowModal();

          dblItem.KeyValue := DabData.qumoveablegoods_code.AsString;
          edTrnsLabel.Text  :=  DabData.qumoveablelabel.AsString ;
          edItemName.Text   :=  DabData.qumoveableitem_name.AsString ;
       end;
    1 :
       begin
          ShowNonMgood  := TShowNonMgood.create(Application);
          setformColor(ShowNonMGood);
          ShowNonMgood.ShowModal();

          dblItem.KeyValue := DabData.qunonmgoodplaque_no.AsString;
          edTrnsLabel.Clear ;
          edItemName.Text  :=  DabData.qunonmgooditem_name.AsString ;

       end;
   end;   // case
end;

procedure TSaleComCfm.cbGoodTypeChange(Sender: TObject);
begin
   case cbGoodType.ItemIndex of
    0 : begin
           dblItem .Enabled :=true;
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
           if ( mde = 2 ) and ( TempGoodType = 0 )
                 then DabData.qumoveable.Parameters[1].Value := quRecDetGoods_code.AsString
                 else DabData.qumoveable.Parameters[1].Value := 0;
           DabData.qumoveable.Open;

           dblItem.KeyValue   := -1;
           edTrnsLabel.Clear;
           edItemName.Clear;
        end;
    1 : begin
           dblItem .Enabled :=true;
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

procedure TSaleComCfm.meSaleDateExit(Sender: TObject);
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

procedure TSaleComCfm.dblItemCloseUp(Sender: TObject);
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

procedure TSaleComCfm.grcomEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();

end;

procedure TSaleComCfm.grItemEnter(Sender: TObject);
begin
   ActiveGrid := 2;
   SetGridColor(2);

   paOKCancel.Visible   := False;
   PaDetailOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();

end;

procedure TSaleComCfm.BtOkTransClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
    begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

       if ModalRes <> mrOk then
       begin
          Mde := 0;
          grcom.SetFocus;
          exit;
        end;

     confTag := 2;
     UpdateMaster();
    end;
     SetDefaultMode(1);
end;

procedure TSaleComCfm.BtCancelTransClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      Str1 := UUserMsg.SM_Pub_DeleteMode;
      Str2 := UUserMsg.SM_fmAccComissCfm_Confirm_Not_Confirm;
      ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

       if ModalRes <> mrOk then
       begin
          Mde := 0;
          grcom.SetFocus;
          exit;
        end;
      confTag:=3;
      UpdateMaster();
   end;
   SetDefaultMode(2);
end;

procedure TSaleComCfm.edExpertPriceKeyPress(Sender: TObject; var Key: Char);
begin
if (ord(key) < 48) or (ord(key) > 57) then
 if (ord(key) <> 8 ) then
  key := #0;
if (length(edExpertPrice .text) >= 12) and (ord(key) <> 8 )then
  key := #0;
end;

procedure TSaleComCfm.edSalePriceKeyPress(Sender: TObject; var Key: Char);
begin
if (ord(key) < 48) or (ord(key) > 57) then
 if (ord(key) <> 8 ) then
  key := #0;
if (length(edSalePrice.text) >= 12) and (ord(key) <> 8 )then
  key := #0;

end;

procedure TSaleComCfm.dblItemEnter(Sender: TObject);
begin
   if not(CheckNull(cbGoodType.Text)) then
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


end;

procedure TSaleComCfm.quRecDetAfterScroll(DataSet: TDataSet);
begin
   SetDetailFields();
end;

procedure TSaleComCfm.HandleDeleteError(ErrCode: HRESULT);
begin
   DabData.ADOC.RollbackTrans();
   if ErrCode = FkExceptionErrorCode then
   begin
     Str1 := UUserMsg.SM_Pub_DeleteMode;
     Str2 := UUserMsg.SM_Pub_DeleteErrorExistRelatedRecord;
     ShowMessage2(Str2);
   end;
end;



procedure TSaleComCfm.MeconfDateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkempC ) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      MeconfDate .Text := '  /  /  ';
      MeconfDate .SetFocus;
   end

end;

procedure TSaleComCfm.meSaleUConfDateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(ChkempS ) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      meSaleUConfDate  .Text := '  /  /  ';
      meSaleUConfDate  .SetFocus;
   end

end;

procedure TSaleComCfm.meAuditConfDateExit(Sender: TObject);
begin
   ChkResult := True;
   if  Not(Chkempa ) then
   begin
      ChkResult := False;
      str1 := ' ';
      Str2 := UUserMsg.SM_Pub_Public_Incorrect_Date_Format;
      ShowMessage2(Str2);
   end;

   if Not(ChkResult) then
   begin
      meAuditConfDate  .Text := '  /  /  ';
      meAuditConfDate  .SetFocus;
   end

end;

procedure TSaleComCfm.cbFilterStateChange(Sender: TObject);
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


end.
