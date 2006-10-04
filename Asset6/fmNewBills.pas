unit fmNewBills;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms
  , Dialogs ,RadForms, Grids, DBGrids, Db, ADODB, StdCtrls, Mask, DBCtrls,
  ExtCtrls,define, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, Buttons, RSqlButton,ppTypes;

type
  TNewBills = class(TRadForm)
    dsBill: TADODataSet;
    dsuBill: TDataSource;
    DBGrid1: TDBGrid;
    dsBillBill_TypeStr: TStringField;
    dsBillBill_no: TIntegerField;
    dsBillBill_type: TSmallintField;
    dsBillcreator: TStringField;
    dsBillcreate_date: TStringField;
    dsBillconfirmer: TStringField;
    dsBillconfirm_date: TStringField;
    dsBillconf_teller: TStringField;
    dsBillconf_date: TStringField;
    dsBillitem_req_no: TIntegerField;
    dsBillreceiver: TStringField;
    dsBilldelivery_man: TStringField;
    dsBillOrg_Code: TIntegerField;
    dsBillUnit_code: TSmallintField;
    dsBillLoc_code: TSmallintField;
    dsBillrec_Org_code: TIntegerField;
    dsBillrec_Unit_code: TSmallintField;
    dsBillrec_Loc_code: TSmallintField;
    dsBillState: TSmallintField;
    dsBillReason: TStringField;
    dsBillStateStr: TStringField;
    dsBillCreatorFLName: TStringField;
    dsBillConfirmerFLName: TStringField;
    dsBillConf_TellerFLName: TStringField;
    dsBillreceiverFLName: TStringField;
    dsBillDelivery_ManFLName: TStringField;
    DBGrid2: TDBGrid;
    dsuBillDetail: TDataSource;
    dsBillDetail: TADODataSet;
    dsBillDetailItemName: TStringField;
    dsBillDetailitem_code: TStringField;
    dsBillDetailbill_no: TIntegerField;
    dsBillDetailAmount: TIntegerField;
    dsBillDetaillabel: TIntegerField;
    dsBillDetailGoods_Code: TStringField;
    dsBillDetailMgNote: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    spDetailBillStor: TADOStoredProc;
    spDetailBillStorItem_Name: TStringField;
    spDetailBillStorUnit_Item_Desc: TStringField;
    spDetailBillStorLabel: TIntegerField;
    spDetailBillStorGoods_codeStr: TStringField;
    spDetailBillStorItem_Code: TStringField;
    spDetailBillStorGoods_code: TStringField;
    spDetailBillStorAmount: TIntegerField;
    spDetailBillStoruserReceiverName: TStringField;
    spDetailBillStoruserName: TStringField;
    spDetailBillStorUt_Name: TStringField;
    spDetailBillStorDescr: TStringField;
    spDetailBillStorOrg_Code: TIntegerField;
    spDetailBillStorUnit_Code: TSmallintField;
    spDetailBillStorLoc_Code: TSmallintField;
    spDetailBillStorLoc_Code_1: TSmallintField;
    spDetailBillStorUser_emp_no: TStringField;
    spDetailBillStorGet_Date: TStringField;
    spDetailBillStorDescr_1: TStringField;
    spDetailBillStorLoc_Code_2: TSmallintField;
    spDetailBillStorLoc_Desc: TStringField;
    spDetailBillStorUseLoc: TStringField;
    spDetailBillStorMgNote: TStringField;
    spDetailBillStorBill_no: TIntegerField;
    dsBillItems: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel12: TppLabel;
    ppImage1: TppImage;
    ppLabel16: TppLabel;
    edOrgan: TppLabel;
    ppLabel17: TppLabel;
    ppLabel14: TppLabel;
    ppDBText2: TppDBText;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppDBText6: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLine4: TppLine;
    ppLine17: TppLine;
    ppLine1: TppLine;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppVariable1: TppVariable;
    ppDBText8: TppDBText;
    DBGrid3: TDBGrid;
    dsGoodsUser: TADODataSet;
    DataSource1: TDataSource;
    dsBillDetailBill_Type: TSmallintField;
    Panel3: TPanel;
    RSqlButton1: TRSqlButton;
    RSqlButton2: TRSqlButton;
    ppLabel21: TppLabel;
    ppReportPDate: TppLabel;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel27: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape4: TppShape;
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppLabel5: TppLabel;
    ppLabel15: TppLabel;
    ppShape5: TppShape;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppPartAdminName: TppLabel;
    ppPartAdminConfirm: TppLabel;
    ppSignatureAsset: TppLabel;
    ppSignatureAssetSign: TppLabel;
    spDetailBillStorCreate_Date: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsBillDetailAfterRefresh(DataSet: TDataSet);
    procedure RSqlButton1Click(Sender: TObject);
    procedure dsBillAfterScroll(DataSet: TDataSet);
    procedure ppRadVariable1GetText(Sender: TObject; var Text: String);
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewBills: TNewBills;
  InConfirmState:Boolean;

implementation

uses DabDmdle, fmInNewBills, fmMfrm, fmSetBillUserName, UCommon;

{$R *.DFM}

procedure TNewBills.FormShow(Sender: TObject);
begin
  Top:=0;
  Left:=0;
  dsBill.Close;
  if InConfirmState then
  begin
    Panel1.Visible:=True;
    Panel3.Visible:=True;
    dsBill.Parameters[0].Value:=1
  end
  else
  begin
    dsBill.Parameters[0].Value:=0;
    Panel1.Visible:=False;
    Panel3.Visible:=False;
  end;
  dsBill.Open;
  dsBillDetail.Close;
  dsBillDetail.Open;
  dsGoodsUser.Close;
  dsGoodsUser.Open;
end;

procedure TNewBills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;
procedure TNewBills.DoNew(var Mes: TMessage);
var
  bk:TBookmark;
begin
  if DBGrid1.Focused then
  begin
    InNewBills:=TInNewBills.Create(Self);
    InNewBills.InConfirmState:=InConfirmState;
    InNewBills.InInsertMode:=True;
    if InNewBills.ShowModal=mrOk then
    begin
//      dsBill.Close;
//      dsBill.Open;
       dsBillDetail.Close;
      dsBillDetail.Open;
   end;
  end
  else
  begin
    if MFrm.spRadEdit.Enabled then
    begin
      SetBillUserName:=TSetBillUserName.Create(Application);
      SetBillUserName.edBill.Text:=dsBillBill_no.AsString;
      SetBillUserName.spUpdateGoodsUser.Parameters[4].Value:=dsBillBill_type.Value;
      SetBillUserName.edGoods.Text:=dsBillDetailGoods_Code.Value;
      SetBillUserName.edItemName.Text:=dsBillDetailItemName.Value;
      SetBillUserName.ShowModal;
      bk:=dsBillDetail.GetBookmark;
      dsBillDetail.Close;
      dsBillDetail.Open;
      dsBillDetail.GotoBookmark(bk);
      dsBillDetail.FreeBookmark(bk);
      dsGoodsUser.Close;
      dsGoodsUser.Open;
    end
    else
      DabData.ShowPopupMessage('‘„« œ” —”Ì «Ì‰ ﬂ«— —« ‰œ«—Ìœ');
  end;

end;
procedure TNewBills.DoEdit(var Mes: TMessage);
var
  bk:TBookmark;
begin
  if DBGrid1.Focused then
  begin
    InNewBills:=TInNewBills.Create(Self);
    InNewBills.InConfirmState:=InConfirmState;
    InNewBills.InInsertMode:=False;
    InNewBills.ShowModal;
  end
  else
  begin
    if MFrm.spRadEdit.Enabled then
    begin
      SetBillUserName:=TSetBillUserName.Create(Application);
      SetBillUserName.edBill.Text:=dsBillBill_no.AsString;
      SetBillUserName.spUpdateGoodsUser.Parameters[4].Value:=dsBillBill_type.Value;
      SetBillUserName.edGoods.Text:=dsBillDetailGoods_Code.Value;
      SetBillUserName.edItemName.Text:=dsBillDetailItemName.Value;
      SetBillUserName.ShowModal;
      bk:=dsBillDetail.GetBookmark;
      dsBillDetail.Close;
      dsBillDetail.Open;
      dsBillDetail.GotoBookmark(bk);
      dsBillDetail.FreeBookmark(bk);
      dsGoodsUser.Close;
      dsGoodsUser.Open;
    end
    else
      DabData.ShowPopupMessage('‘„« œ” —”Ì «Ì‰ ﬂ«— —« ‰œ«—Ìœ');
  end;
end;


procedure TNewBills.dsBillDetailAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if (dsBillDetailGoods_Code.IsNull) or (dsBillDetail.RecordCount=0) then
    DBGrid3.Visible:=False
  else
  begin
    dsGoodsUser.Close;
    dsGoodsUser.Parameters[0].Value:=dsBillBill_no.Value;
    dsGoodsUser.Parameters[1].Value:=dsBillBill_type.Value;
    dsGoodsUser.Parameters[2].Value:=dsBillDetailGoods_Code.Value;
    dsGoodsUser.Open;
    DBGrid3.Visible:=True;
  end;
end;
procedure TNewBills.DoPrint(var mes :TMessage);
var
 RoundShape:TppShape;
begin
  if ReadFromIniFile('Print','Default','False')='False' then
  begin
     if ReadFromIniFile('Print','SignatureAsset','True')='True' then
     begin
        ppSignatureAsset.Visible:=True;
        ppSignatureAssetSign.Visible:=True;
     end
     else
     begin
        ppSignatureAsset.Visible:=False;
        ppSignatureAssetSign.Visible:=False;
     end;

     RoundShape:=CheckPrintPage(ppReport1);
     if MessageDlg('Œÿ «„÷«Ì „œÌ— ﬁ”„  »«‘œ ø', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
     begin
       ppPartAdminName.Visible:=False;
       ppPartAdminConfirm.Visible:=False;
     end
     else
     begin
       ppPartAdminName.Visible:=True;
       ppPartAdminConfirm.Visible:=True;
     end;
     ppReportPDate.Text:=Dabdata.disp_date;
     spDetailBillStor.Close;
     spDetailBillStor.Parameters[1].Value:=dsBillBill_no.Value;
     spDetailBillStor.ExecProc;
     spDetailBillStor.Open;
     edOrgan.Caption:=OrganizName;
//     lbDate.Caption:=Dabdata.disp_date;
     ppDBPipeline1.DataSource:= dsBillItems;
     ppReport1.Print;
     if RoundShape<>nil then
       RoundShape.Free;
  end
  else
   inherited;

end;

procedure TNewBills.RSqlButton1Click(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
        bmPlace := dsBill.GetBookmark ;
        dsBill.Edit;
        if(TButton(Sender).Caption='—œ') then
            dsBillState.Value := 3
        else
            dsBillState.Value := 2 ;
        dsBill.Post;
        dsBill.Close ;
        dsBill.Open ;
        dsBill.GotoBookmark(bmPlace);
        dsBill.FreeBookmark(bmPlace);
end;

procedure TNewBills.dsBillAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Not(InConfirmState) or (dsBillState.Value > 1) then
    Panel3.Visible:=False
  else
    Panel3.Visible:=True;

end;

procedure TNewBills.DoDelete(var Mes: TMessage);
begin
  if MessageDlg('¬Ì« „ÿ„∆‰ Â” Ìœ',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if DBGrid1.Focused then
       dsBill.Delete
    else
       dsBillDetail.Delete;
  end;

end;

procedure TNewBills.ppRadVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=IntToStr(spDetailBillStor.RecNo); 
end;

end.
