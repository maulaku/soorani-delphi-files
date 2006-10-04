unit fmDelGoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  DBCtrls, Mask, UPDate, RSqlMaskEdit,Fard, SmoothShow, RSqlButton,
  RSqllookup, RSqlEdit, SetForm, RadForms,Variants;
type
  TDelGoods = class(TRadForm)
    PageControl1: TPageControl;
    tstransfer: TTabSheet;
    quDetailUpdate: TADOQuery;
    quDelGoods: TADOQuery;
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
    grDelGoods: TDBGrid;
    Label28: TLabel;
    Label31: TLabel;
    dsDet: TDataSource;
    quDetailDelete: TADOQuery;
    Label4: TLabel;
    quRecMasterUpdate: TADOQuery;
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
    Panel2: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label30: TLabel;
    Label34: TLabel;
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
    quAcc: TADOQuery;
    dsAcc: TDataSource;
    quAccDet: TADOQuery;
    quDelGoodsDelete_no: TIntegerField;
    quDelGoodsTransfer_no: TIntegerField;
    quDelGoodsSale_no: TIntegerField;
    quDelGoodsAccident_no: TIntegerField;
    quDelGoodsDel_pas_no: TStringField;
    quDelGoodsDel_pas_date: TStringField;
    quDelGoodsDel_reason: TStringField;
    quDelGoodsDescr: TStringField;
    quDelGoodsCreator: TStringField;
    quDelGoodsCreate_date: TStringField;
    quUpdateAcc: TADOQuery;
    Label3: TLabel;
    rbTrans: TRadioButton;
    rbSale: TRadioButton;
    rbAcc: TRadioButton;
    Label6: TLabel;
    meDel_pass_date: TRSqlMaskEdit;
    edDelete_no: TRSqlEdit;
    edDel_pass_no: TRSqlEdit;
    edDesc: TRSqlEdit;
    edDel_reason: TRSqlEdit;
    dblTrans: TRSqlDbLookup;
    dblSale: TRSqlDbLookup;
    dblAcc: TRSqlDbLookup;
    meCreate_date: TRSqlMaskEdit;
    meDelete_date: TRSqlMaskEdit;
    dblCreator: TRSqlDbLookup;
    BtCancelTrans: TRSqlButton;
    BtOkTrans: TRSqlButton;
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
    quTransDetLabeln: TStringField;
    quTransDetgstatename: TStringField;
    quTransDetgTypeName: TStringField;
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
    quSaleDetUname: TStringField;
    quSaleDetLabeln: TStringField;
    quSaleDetgstatename: TStringField;
    quSaleDetgTypeName: TStringField;
    quAccDetAccident_Com_No: TIntegerField;
    quAccDetGoods_Code: TLargeintField;
    quAccDetNew_State: TSmallintField;
    quAccDetDescr: TStringField;
    quAccDetPlaque_No: TStringField;
    quAccDetRow_No: TIntegerField;
    quAccDetGoods_Type: TSmallintField;
    quAccDetGeneralCode: TStringField;
    quAccDetItemName: TStringField;
    quAccDetLabel: TIntegerField;
    quAccDetItemCode: TStringField;
    quAccDetLabeln: TStringField;
    quAccDetgstatename: TStringField;
    quAccDetgTypeName: TStringField;
//-----------------------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
//-----------------------------------------------------------------------
//    procedure btRecOKClick(Sender: TObject);
    procedure meRepayStartKeyPress(Sender: TObject; var Key: Char);
    procedure btRecCancelClick(Sender: TObject);
    procedure grRecItemEnter(Sender: TObject);
    procedure quDelGoodsAfterScroll(DataSet: TDataSet);
//    procedure dblItemCloseUp(Sender: TObject);
//    procedure edPassNoChange(Sender: TObject);
//    procedure meSaleDateChange(Sender: TObject);
//    procedure meSaleDateExit(Sender: TObject);
//    procedure cbGoodTypeChange(Sender: TObject);
//    procedure Button1Click(Sender: TObject);
    procedure grDelGoodsEnter(Sender: TObject);
    procedure grItemEnter(Sender: TObject);
    procedure BtOkTransClick(Sender: TObject);
//    procedure edExpertPriceKeyPress(Sender: TObject; var Key: Char);
    procedure rbTransClick(Sender: TObject);
    procedure rbSaleClick(Sender: TObject);
    procedure dblTransCloseUp(Sender: TObject);
    procedure dblSaleCloseUp(Sender: TObject);
    procedure rbAccClick(Sender: TObject);
    procedure dblAccCloseUp(Sender: TObject);
    procedure BtCancelTransClick(Sender: TObject);
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
//-----------------------------------------------------------------------
//---------------------- Detail Procedures ------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
    procedure InsertAllDetails;
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

  DelGoods: TDelGoods;


  EmptyRow : Boolean;     // denoted is this row empty in RepayStartDate and Emp_Bail
  RealRow : Integer;
  Err,CmpResult, ModalRes : integer;
  Str1,Str2,Cor_Str : string;
  ChkDel_pass_date, ChkempDel_pass_date   : Boolean;

  AllDisabled: Boolean;

  TempSale   : integer;
  TempTrans  : integer;
  TempAcc : integer;
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

uses  DabDmdle,fmElam, UUserMsg, UFmShMsg, UCommon,fmShowMG,
  fmShowNMGood;

{$R *.DFM}
//*****************************************************************************
//******************    Start Of Messages Answers  ****************************
//*****************************************************************************
procedure TDelGoods.DoScroll(var mes:TMessage);
begin
      if ( (mde =0) or (mde=2)) and (quDelGoods.RecordCount <> 0 )then
      begin
         if (quDelGoodsTransfer_no .AsInteger > 0) then
         begin
            dsDet .DataSet := quTransDet;
            quTransDet   .Close ;
            quTransDet .Parameters[0].Value := quDelGoodsTransfer_no .AsInteger;
            quTransDet .Open ;
         end;
         if (quDelGoodsSale_no  .AsInteger > 0) then
         begin
           dsDet .DataSet := quSaleDet;

           quSaleDet .Close ;
           quSaleDet .Parameters[0].Value := quDelGoodsSale_no    .AsInteger ;
           quSaleDet .Open ;
         end;
         if (quDelGoodsAccident_no   .AsInteger > 0) then
         begin
           dsDet .DataSet := quAccDet  ;

           quACCDet .Close ;
           quACCDet .Parameters[0].Value := quDelGoodsAccident_no     .AsInteger ;
           quAccDet .Open ;
         end;



       DisableMasterFields();
       SetMasterFields();
       end;
end;
//*****************************************************************************
procedure TDelGoods.DoNew(var mes: TMessage);
begin
   mde := 1;
    grDelGoods .TabStop    := false;
    grItem.TabStop         := false;

   case ActiveGrid of
    1 : begin
            quTransDet   .Close ;
            quTransDet .Parameters[0].Value := 0;
            quTransDet .Open ;

          // quDelGoods  .Close;
          // quDelGoods .Open;
           quDelGoods .Last;

           EnableMasterFields();
           ClearMasterFields();


           if   quDelGoods .RecordCount = 0  then
                  edDelete_no .Text :=  '81000000'
                else  edDelete_no .Text := IntToStr(quDelGoodsDelete_no   .AsInteger + 1) ;
           meDelete_date  .Text := Dabdata.disp_date ;
           meCreate_date  .Text   := Dabdata.disp_date ;
              quTrans .Close;
              quTrans .Parameters[0].Value := 1;
              quTrans .Parameters[1].Value := 0;
              quTrans .open;
              quSale  .Close;
              quSale  .Parameters[0].Value := 1;
              quSale  .Parameters[1].Value := 0;
              quSale  .open;
              quAcc .Close;
              quAcc .Parameters[0].Value := 1;
              quAcc .Parameters[1].Value := 0;
              quAcc .open;

           dblTrans.Color := clDeactiveFieldColor;
           dblSale.Color := clDeactiveFieldColor;
           dblAcc.Color := clDeactiveFieldColor;
           BtOkTrans .Enabled  := False;
           edDel_pass_no  .SetFocus;
        end;
    2 : begin
{           if Trim( edLicenseNo.Text )= '' then begin mde:= 0 ;exit; end;
           //quRecDet.Last;
           EnableDetailFields();
           ClearDetailFields();
 }
        //   cbGoodType.SetFocus;
        end
    end;
 meCreate_date.Text:=Dabdata.disp_date;
 dblCreator.KeyValue:=DabData.emp_no;
end;
//****************************************************************************
procedure TDelGoods.DoEdit(var mes :TMessage);
begin
{
      grDelGoods .TabStop    := false;
      grItem.TabStop         := false;
      mde := 2;
      case ActiveGrid of
      1 : begin
           EnableMasterFields();
           ClearMasterFields();
           SetMasterFields();
           if qudelgoods.RecordCount=0 then
           begin
               mde:=0;exit;
           end;
           if rbTrans .Checked then
            begin
              quTrans .Close;
              quTrans .Parameters[0].Value := 2;
              quTrans .Parameters[1].Value := quDelGoodsTransfer_no .AsInteger   ;
              quTrans .open;
              quSale  .Close;
              quSale  .Parameters[0].Value := 1;
              quSale  .Parameters[1].Value := 0;
              quSale  .open;
              quAcc .Close;
              quAcc .Parameters[0].Value := 1;
              quAcc .Parameters[1].Value := 0;
              quAcc .open;
            end;
           if rbSale  .Checked then
            begin
              quSale  .Close;
              quSale  .Parameters[0].Value := 2;
              quSale  .Parameters[1].Value := quDelGoodsSale_no  .AsInteger   ;
              quSale  .open;
              quAcc .Close;
              quAcc .Parameters[0].Value := 1;
              quAcc .Parameters[1].Value := 0;
              quAcc .open;
              quTrans .Close;
              quTrans .Parameters[0].Value := 1;
              quTrans .Parameters[1].Value := 0;
              quTrans .open;
            end;
           if rbAcc  .Checked then
            begin
              quacc  .Close;
              quacc  .Parameters[0].Value := 2;
              quacc  .Parameters[1].Value := quDelGoodsAccident_no  .AsInteger   ;
              quacc  .open;
              quSale  .Close;
              quSale  .Parameters[0].Value := 1;
              quSale  .Parameters[1].Value := 0;
              quSale  .open;
              quTrans .Close;
              quTrans .Parameters[0].Value := 1;
              quTrans .Parameters[1].Value := 0;
              quTrans .open;
            end;
           BtOkTrans .Enabled := True;
          edDel_pass_no     .SetFocus;
          end;
 {     2 : begin
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
}
  dblCreator.KeyValue:=DabData.emp_no;
  meCreate_date.Text:=Dabdata.disp_date;
    end;
//*****************************************************************************
procedure TDelGoods.DoDelete(var mes: TMessage);
begin
{   case ActiveGrid of
    1 : if ( Mde = 0 )  and ( quDelGoods.RecordCount >=1 ) and
           ( quDelGoods.RecNo >= 1) then
        begin
          Str1 := UUserMsg.SM_Pub_DeleteMode;
          Str2 := UUserMsg.SM_fmDelGoods_ConfirmDelCurRec;
          ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

          if ModalRes <> mrOk then
          begin
             Mde := 0;
             grDelGoods.SetFocus;
             exit;
          end;

          mde :=3;
          DeleteMaster ();
        end;

        2 : if ( Mde = 0 )  and ( quDelGoods.RecordCount >=1 ) and
                ( quDelGoods.RecNo >= 1) then
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
             //     DeleteDetail();
            end;
        end;
 }
end;
//*****************************************************************************
//******************    End Of Messages Answers  ******************************
//*****************************************************************************
//******************    Statrt Of Special Procedures   ************************
//*****************************************************************************
procedure TDelGoods.SetDefaultMode(i: integer);
begin
    mde := 0;
    grDelGoods .TabStop    := True;
    grItem.TabStop         := True;
    case ActiveGrid of
      1 :
      begin
     //    PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grDelGoods .TabStop       := True;
         ActiveControl        := grDelGoods ;
         ActiveGrid           := 1;
      end;
      2 :
      begin
//         PaDetailOper.Visible := False;
         paOkCancel.Visible   := False;

         grItem.TabStop    := True;
         ActiveControl      := grItem;
         ActiveGrid         := 2;
      end;
    end;
end;
//****************************************************************************
procedure TDelGoods.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grDelGoods.Color   := clActiveGridColor;
          grItem.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grDelGoods .Color   := clDeactiveGridColor;
          grItem.Color     := clActiveGridColor;
       end;
    end // case

end;
//*****************************************************************************
//******************    End Of Special Procedures   ***************************
//*****************************************************************************
//******************    Start of Master Operations* ***************************
//*****************************************************************************
procedure TDelGoods.InsertMaster();
var  Str1,Str2 : String;
begin
   quMasterInsert.Close;
   try
   begin
      DabData.ADOC.BeginTrans;

      quMasterInsert.parameters[0].value := edDelete_no  .Text;
      if dblTrans.KeyValue = -1 then
        if dblSale .KeyValue =-1 then
           begin
           quMasterInsert.parameters[1].value := NULL;
           quMasterInsert.parameters[2].value := NULL;
           quMasterInsert.parameters[3].value := dblAcc .KeyValue  ;
           end;
      if dblTrans.KeyValue = -1 then
        if dblacc .KeyValue =-1 then
           begin
           quMasterInsert.parameters[1].value := NULL;
           quMasterInsert.parameters[2].value := dblSale.KeyValue ;
           quMasterInsert.parameters[3].value := NULL  ;
           end;
      if dblSale .KeyValue = -1 then
        if dblAcc .KeyValue =-1 then
        begin
           quMasterInsert.parameters[1].value := dblTrans .KeyValue ;
           quMasterInsert.parameters[2].value := NULL;
           quMasterInsert.parameters[3].value := NULL  ;
        end;
      quMasterInsert.parameters[4].value := edDel_pass_no .Text  ;
      quMasterInsert.parameters[5].value := meDel_pass_date .Text;
      quMasterInsert.parameters[6].value := edDel_reason.Text  ;
      quMasterInsert.parameters[7].value := edDesc  .Text;
      quMasterInsert.parameters[8].value := dblCreator .KeyValue ;
      quMasterInsert.parameters[9].value := meCreate_date.Text ;


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
    quDelGoods.close;
    quDelGoods.Open;
    quDelGoods.Last;
    //////////////////////////////
    InsertAllDetails;


    SetDefaultMode(1);
end;
//***************************************************************************
procedure TDelGoods.UpdateMaster();
begin
   BMark := quDelGoods.GetBookmark();
   quMasterUpdate.Close;
   try
      DabData.ADOC.BeginTrans;

      if rbTrans .Checked then
        begin
           quMasterUpdate.parameters[0].value := dblTrans.KeyValue ;
           quMasterUpdate.parameters[1].value := NULL ;
           quMasterUpdate.parameters[2].value := NULL;
        end;
      if rbSale .Checked then
        begin
           quMasterUpdate.parameters[0].value := NULL ;
           quMasterUpdate.parameters[1].value := dblSale.KeyValue ;
           quMasterUpdate.parameters[2].value := NULL ;
        end;
      if rbAcc  .Checked then
        begin
           quMasterUpdate.parameters[0].value := NULL ;
           quMasterUpdate.parameters[1].value := NULL ;
           quMasterUpdate.parameters[2].value := dblAcc.KeyValue ;
        end;

      quMasterUpdate.parameters[3].value := edDel_pass_no .Text  ;
      quMasterUpdate.parameters[4].value := meDel_pass_date .Text;
      quMasterUpdate.parameters[5].value := edDel_reason.Text  ;
      quMasterUpdate.parameters[6].value := edDesc  .Text;
      quMasterUpdate.parameters[7].value := dblCreator .KeyValue ;
      quMasterUpdate.parameters[8].value := meCreate_date.Text ;
      quMasterUpdate.parameters[9].value := edDelete_no  .Text;
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
   quDelGoods.close;
   quDelGoods.Open;
{   if TempTrans <>0 then UpdateTransTable(TempTrans  ,0);
   if TempSale  <>0 then UpdateSaleTable(TempSale   ,0);
   if TempAcc   <>0 then UpdateAccTable (TempAcc    ,0);

   if dblTrans  .KeyValue > 0 then UpdateTransTable(dblTrans .KeyValue ,1)
   else if  dblSale   .KeyValue > 0 then UpdateSaleTable(dblSale.KeyValue  ,1)
   else UpdateAccTable (dblAcc .KeyValue  ,1);
 }
   quDelGoods.GotoBookmark(BMark);
   quDelGoods.FreeBookmark(BMark);

end;
//****************************************************************************
//****************************************************************************
//------------------------ Master  Region ------------------------------------
//**************************************************************************
procedure TDelGoods.ClearMasterFields;
begin
      edDelete_no   .Clear ;
      edDel_pass_no .Clear ;
      edDel_reason  .Clear ;
      edDesc        .Clear ;

      rbTrans  .Checked  :=False;
      rbSale .Checked  :=False;
      rbAcc  .Checked  :=False;
      meDelete_date   .Clear ;
      meDel_pass_date .Clear ;
      meCreate_date   .Clear ;

      //dblCreator .KeyValue   := '';
      dblSale    .KeyValue   := -1;
      dblTrans   .KeyValue   := -1;
      dblAcc     .KeyValue   := -1;

end;
//*****
//*********************************************************************
procedure TDelGoods.SetMasterFields();
begin
      edDelete_no .Text        := quDelGoodsDelete_no    .AsString ;

      meCreate_date  .Text     := quDelGoodsCreate_date .AsString ;
      meDelete_date  .Text     := quDelGoodsCreate_date .AsString ;

      dblCreator .KeyValue         := quDelGoodsCreator   .AsString  ;

      edDel_pass_no .Text := quDelGoodsDel_pas_no.AsString ;
      edDel_reason.Text := quDelGoodsDel_reason.AsString ;
      edDesc  .Text := quDelGoodsDescr .AsString ;
      meDel_pass_date .Text := quDelGoodsDel_pas_date.AsString ;

      tempSale:=0;TempTrans:=0;TempAcc:=0;
      if (quDelGoodsAccident_no  .AsInteger   = 0)then
         if(quDelGoodsSale_no .AsInteger   = 0) then
         begin
           rbTrans  .Checked  :=true;
              quTrans .Close;
              quTrans .Parameters[0].Value := 2;
              quTrans .Parameters[1].Value := quDelGoodsTransfer_no .AsInteger   ;
              quTrans .open;
           dblTrans  .KeyValue :=  quDelGoodsTransfer_no .AsInteger;
           dblSale.KeyValue := -1;
           dblAcc .KeyValue := -1;
           TempTrans:=dblTrans  .KeyValue ;
           mode:=0;
           dsDet .DataSet := quTransDet;

           quTransDet   .Close ;
           quTransDet .Parameters[0].Value := quDelGoodsTransfer_no   .AsInteger ;
           quTransDet .Open ;
           rbTrans .Checked :=true;

         end;
      if (quDelGoodsTransfer_no   .AsInteger   = 0)then
         if(quDelGoodsAccident_no .AsInteger   = 0) then
         begin
           rbSale .Checked  := true;
              quSale  .Close;
              quSale  .Parameters[0].Value := 2;
              quSale  .Parameters[1].Value := quDelGoodsSale_no  .AsInteger   ;
              quSale  .open;

           dblSale   .KeyValue :=  quDelGoodsSale_no .AsInteger;
           dblTrans.KeyValue := -1;
           dblacc .KeyValue := -1;
           TempSale := dblSale .KeyValue ;
           mode:=0;  //////////?????????????????????????//
           dsDet .DataSet := quSaleDet;
           qusaleDet   .Close ;
           quSaleDet .Parameters[0].Value := quDelGoodsSale_no   .AsInteger ;
           quSaleDet .Open ;

         end;
      if (quDelGoodsTransfer_no   .AsInteger   = 0)then
         if(quDelGoodsSale_no .AsInteger   = 0) then
         begin
           rbAcc   .Checked  :=true;
              quacc  .Close;
              quacc  .Parameters[0].Value := 2;
              quacc  .Parameters[1].Value := quDelGoodsAccident_no  .AsInteger   ;
              quacc  .open;

           dblAcc   .KeyValue :=  quDelGoodsAccident_no  .AsInteger;
           dblSale  .KeyValue := -1;
           dblTrans  .KeyValue := -1;
           TempAcc :=dblAcc  .KeyValue ;
           mode:=0;
           dsDet .DataSet := quAccDet;

           quAccDet   .Close ;
           quAccDet .Parameters[0].Value := quDelGoodsAccident_no   .AsInteger ;
           quAccDet .Open ;

         end

end;
//*****************************************************************************
procedure TDelGoods.DisableMasterFields;
begin

      edDelete_no   .FieldType := ftDisplay;
      edDel_pass_no   .FieldType := ftDisplay;
      edDel_reason   .FieldType := ftDisplay;
      edDesc        .FieldType := ftDisplay;

      rbTrans  .Enabled := False;
      rbSale .Enabled := False;
      rbAcc  .Enabled := False;
      meDelete_date   .FieldType := ftDisplay;
      meDel_pass_date .FieldType := ftDisplay;
      meCreate_date    .FieldType := ftDisplay;

      dblCreator .FieldType := ftDisplay;
      dblSale .FieldType := ftDisplay;
      dblTrans  .FieldType := ftDisplay;
      dblAcc   .FieldType := ftDisplay;

      quTrans .Close;
      quTrans .Parameters[0].Value := 0;
      quTrans .Parameters[1].Value := 0;
      quTrans .open;
      quSale  .Close;
      quSale  .Parameters[0].Value := 0;
      quSale  .Parameters[1].Value := 0;
      quSale  .open;
      quAcc   .Close;
      quAcc   .Parameters[0].Value := 0;
      quAcc   .Parameters[1].Value := 0;
      quAcc   .open;
      FormInitializer1.Execute;
 end;
//*****************************************************************************
procedure TDelGoods.EnableMasterFields;
begin
      edDel_pass_no   .FieldType := ftRequired;
      edDel_reason   .FieldType := ftRequired;
      edDesc        .FieldType := ftNonRequired;
      rbTrans  .Enabled := True;
      rbSale .Enabled := True;
      rbAcc  .Enabled := True;
      meDel_pass_date .FieldType := ftRequired;
      paOkCancel .Visible := true;
      FormInitializer1.Execute;
end;
//------------------------ Detail  Region ------------------------------------
//****************************************************************************
//-----------------------------------------------------------------------------
//----------------------- End Of Detail Region --------------------------------
//*****************************************************************************
procedure TDelGoods.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FormDeactivate(nil);
   Action:=caFree;
end;
//*****************************************************************************
procedure TDelGoods.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam := 58 ;
   Application.MainForm.Dispatch(mes);

   SetDefaultMode(1);
   FormInitializer1.Execute;
end;
//*************************************************************************
procedure TDelGoods.FormDeactivate(Sender: TObject);
var  mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;
//****************************************************************************
procedure TDelGoods.FormShow(Sender: TObject);
var l,t:integer;
begin
  
  UUserMsg.GetRect(Width,Height,l,t);
  Left    := l;
  Top     := t;

  qudblEmp.Close;
  qudblEmp.Open;

  mde:=0;
        quDelGoods .Close;  // set values to Grid
        quDelGoods .Open;

        quTrans .Close;
        quTrans .Parameters[0].Value := 0;
        quTrans .Parameters[1].Value := 0;
        quTrans .open;

        quSale  .Close;
        quSale .Parameters[0].Value := 0;
        quSale .Parameters[1].Value := 0;
        quSale  .open;

        quAcc  .Close;
        quAcc  .Parameters[0].Value := 0;
        quAcc  .Parameters[1].Value := 0;
        quAcc  .open;

        if dblTrans .KeyValue <> -1  then
        begin
           quTransDet .Close ;
           quTransDet .Parameters[0].Value := quDelGoodsTransfer_no   .AsInteger ;
           quTransDet .Open ;
        end;
        if dblSale .KeyValue <> -1 then
        begin
           qusaleDet   .Close ;
           quSaleDet .Parameters[0].Value := quDelGoodsSale_no   .AsInteger ;
           quSaleDet .Open ;
        end;
        if dblAcc  .KeyValue <> -1 then
        begin
           quAccDet   .Close ;
           quAccDet .Parameters[0].Value := quDelGoodsAccident_no   .AsInteger ;
           quAccDet .Open ;
        end;

        DisableMasterFields();

        ChkDel_pass_date    := False;
        ChkempDel_pass_date := True;


        grDelGoods .SetFocus;
end;
//******************************************************************************
procedure TDelGoods.btRecCancelClick(Sender: TObject);
begin
   SetDefaultMode(2);
end;
//******************************************************************************
procedure TDelGoods.meRepayStartKeyPress(Sender: TObject; var Key: Char);
begin
   key := DabData.CheckKey(key);
end;
//******************************************************************************
procedure TDelGoods.grRecItemEnter(Sender: TObject);
begin
   ActiveGrid := 2 ;
   SetGridColor(2);
   DisableMasterFields();

   mde:=0;
//   PaDetailOper.Visible := False;
   paOkCancel.Visible := False;

end;
//****************************************************************************
procedure TDelGoods.quDelGoodsAfterScroll(DataSet: TDataSet);
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





procedure TDelGoods.grDelGoodsEnter(Sender: TObject);
begin
   ActiveGrid := 1;
   SetGridColor(1);

//   PaDetailOper.Visible := False;
   paOkCancel.Visible   := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();

end;

procedure TDelGoods.grItemEnter(Sender: TObject);
begin
   ActiveGrid := 2;
   SetGridColor(2);

   paOKCancel.Visible   := False;
//   PaDetailOper.Visible := False;

   mde:=0;
   DisableMasterFields();
   SetMasterFields();

end;

procedure TDelGoods.BtOkTransClick(Sender: TObject);
begin
   if ActiveGrid = 1 then
   begin
      case mde of
        1 :   begin
                  Str1 := '«Œÿ«—';
                  Str2 := '¬Ì« Ê«ﬁ⁄« „«Ì· »Â Õ–›  „«„Ì «Ì‰ «„Ê«· „Ì»«‘Ìœø';
                  ModalRes  := UFmShMsg.ShowMsgForm(Self,Str1,Str2,'',True,True);

                  if ModalRes <> mrOk then
                  begin
                    Mde := 0;
                    grDelGoods.SetFocus;
                    exit;
                  end;
               InsertMaster();
               end;
        2 : UpdateMaster();

      end;  // end case
      SetDefaultMode(1);
   end
   else
   if ActiveGrid = 2 then
   begin
//?   paMasterOper.Visible := True;
      SetDefaultMode(2);
    end;


end;

procedure TDelGoods.rbTransClick(Sender: TObject);
begin
     if mde<>0 then
     begin
         dblTrans .Enabled := true;
         dblTrans .color := clActiveFieldColor  ;
         dblTrans .SetFocus ;
         dblsale.Enabled := false;
         dblsale .Color := clDeActiveFieldColor   ;
         dblSale .KeyValue := -1;
         dblAcc  .Enabled :=false;
         dblAcc  .Color := cldeActiveFieldColor  ;
         dblAcc  .KeyValue := -1;
     end;
end;

procedure TDelGoods.rbSaleClick(Sender: TObject);
begin
     if mde<>0 then
     begin
         dblsale.Enabled := true;
         dblsale .Color := clActiveFieldColor   ;
         dblSale .SetFocus;

         dblTrans .Enabled :=false;
         dblTrans .Color := cldeActiveFieldColor  ;
         dblTrans .KeyValue := -1;
         dblAcc  .Enabled :=false;
         dblAcc  .Color := cldeActiveFieldColor  ;
         dblAcc  .KeyValue := -1;

     end;
end;

procedure TDelGoods.dblTransCloseUp(Sender: TObject);
begin
   dsDet .DataSet := quTransDet;

   quTransDet   .Close ;
   quTransDet .Parameters[0].Value := dblTrans.keyvalue ;
   quTransDet .Open ;
   rbTrans .Checked :=true;
end;

procedure TDelGoods.dblSaleCloseUp(Sender: TObject);
begin
   dsDet .DataSet := quSaleDet;

   quSaleDet .Close ;
   quSaleDet .Parameters[0].Value := dblsale.KeyValue  ;
   quSaleDet .Open ;
   rbSale .Checked :=true;
end;

////////////////////
procedure TDelGoods.rbAccClick(Sender: TObject);
begin
     if mde<>0 then
     begin
         dblAcc .Enabled := true;
         dblAcc  .Color := clActiveFieldColor  ;
         dblAcc .SetFocus ;
         dblsale.Enabled := false;
         dblsale .Color := clDeActiveFieldColor   ;
         dblSale .KeyValue := -1;
         dblTrans.Enabled := false;
         dblTrans  .Color := clDeActiveFieldColor   ;
         dblTrans  .KeyValue := -1;

     end;
end;

procedure TDelGoods.dblAccCloseUp(Sender: TObject);
begin
   dsDet .DataSet := quAccDet;

   quAccDet   .Close ;
   quAccDet .Parameters[0].Value := dblacc.keyvalue ;
   quAccDet .Open ;
   rbAcc  .Checked :=true;
end;



procedure TDelGoods.InsertAllDetails;
var i: integer;
    str1,str2:string;
begin
    if rbTrans.Checked then
    begin
       for i:=1 to quTransDet.RecordCount do
          begin
             DabData.quUpdateMovGood.Close;
             try
             begin
                DabData.ADOC.BeginTrans;

                DabData.quUpdateMovGood.parameters[0].value := 8;
                DabData.quUpdateMovGood.parameters[1].value := quTransDetGoods_code.AsString;

                DabData.quUpdateMovGood.Prepared := True;
                DabData.quUpdateMovGood.ExecSql;

                DabData.ADOC.CommitTrans;
             end;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (DabData.quUpdateMovGood.RowsAffected <> 1) then
             begin
                 Str1 := UUserMsg.SM_Pub_InsertMode;
                 Str2 := UUserMsg.SM_Pub_RetryMsg;
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;
          quTransDet.Next;
          end;
    end;
   if rbsale.Checked then
    begin
       for i:=1 to qusaleDet.RecordCount do
          begin
             DabData.quUpdateMovGood.Close;
             try
             begin
                DabData.ADOC.BeginTrans;

                DabData.quUpdateMovGood.parameters[0].value := 8;
                DabData.quUpdateMovGood.parameters[1].value := qusaleDetGoods_code.AsString;

                DabData.quUpdateMovGood.Prepared := True;
                DabData.quUpdateMovGood.ExecSql;

                DabData.ADOC.CommitTrans;
             end;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (DabData.quUpdateMovGood.RowsAffected <> 1) then
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
   if rbAcc.Checked then
    begin
       for i:=1 to quAccDet.RecordCount do
          begin
             DabData.quUpdateMovGood.Close;
             try
             begin
                DabData.ADOC.BeginTrans;

                DabData.quUpdateMovGood.parameters[0].value := 8;
                DabData.quUpdateMovGood.parameters[1].value := quAccDetGoods_code.AsString;

                DabData.quUpdateMovGood.Prepared := True;
                DabData.quUpdateMovGood.ExecSql;

                DabData.ADOC.CommitTrans;
             end;
             except
                DabData.ADOC.RollbackTrans;
             end;  //exception..
             if (DabData.quUpdateMovGood.RowsAffected <> 1) then
             begin
                 Str1 := UUserMsg.SM_Pub_InsertMode;
                 Str2 := UUserMsg.SM_Pub_RetryMsg;
                 ShowMessage2(Str2);
                 mde:=0;
                 exit;
             end;
          quAccDet.Next;
          end;
    end;

end;


procedure TDelGoods.BtCancelTransClick(Sender: TObject);
begin
  paOkCancel.Visible   := False;
  DisableMasterFields;
end;

end.
