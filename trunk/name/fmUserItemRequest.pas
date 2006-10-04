unit fmUserItemRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,RadForms, DB, StdCtrls, Mask, DBCtrls, ADODB, ExtCtrls, Grids,Define,
   InRadForms, DBGrids, Buttons;

type
  TUserItemRequest = class(TRadForm)
    dstRequestItemMaster: TADODataSet;
    dstRequestItemMasterReq_no: TIntegerField;
    dstRequestItemMasterCreator: TStringField;
    dstRequestItemMasterCreate_Date: TStringField;
    dstRequestItemMasterOrg_Code: TIntegerField;
    dstRequestItemMasterOrg_Unit_Code: TSmallintField;
    dstRequestItemMasterConfirmer: TStringField;
    dstRequestItemMasterConfirm_date: TStringField;
    dstRequestItemMasterVerifier: TStringField;
    dstRequestItemMasterVerify_date: TStringField;
    dstRequestItemMasterState: TSmallintField;
    dstRequestItemMasterReq_Type: TSmallintField;
    dstRequestItemMasterGoods_code: TStringField;
    dstRequestItemMasterLoc_Code: TSmallintField;
    DataSource2: TDataSource;
    dstRequestItemDetail: TADODataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    cbDBCreateDate: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    dstRequestItemDetailReq_No: TIntegerField;
    dstRequestItemDetailItem_Code: TStringField;
    dstRequestItemDetailReq_Amount: TIntegerField;
    dstRequestItemDetailConf_Amount: TIntegerField;
    dstRequestItemDetailRecieve_Amount: TIntegerField;
    dstRequestItemDetailr_state: TSmallintField;
    dstRequestItemDetailitem_type: TSmallintField;
    dstRequestItemDetailReq_type: TSmallintField;
    dstRequestItemDetailReq_number: TStringField;
    MasterDBGrid: TDBGrid;
    dstRequestItemDetailStateName: TStringField;
    dstRequestItemDetailnItem: TStringField;
    cbDBOrg: TDBLookupComboBox;
    cbDBCreator: TDBLookupComboBox;
    DBEdit5: TDBLookupComboBox;
    DBEdit6: TDBLookupComboBox;
    DBEdit8: TDBLookupComboBox;
    cbDBItem: TDBLookupComboBox;
    DBEdit13: TDBLookupComboBox;
    DBEdit11: TDBLookupComboBox;
    cbdbState: TDBLookupComboBox;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    dstState: TADODataSet;
    dstReqType: TADODataSet;
    dstStateID: TIntegerField;
    dstStatedesc: TStringField;
    dstReqTypeID: TIntegerField;
    dstReqTypedesc: TStringField;
    dsItem: TDataSource;
    dstItem: TADODataSet;
    dstItemItem_Code: TStringField;
    dstItemItem_Name: TStringField;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    BitBtn1: TBitBtn;
    dsOrgUnit: TDataSource;
    dstOrgUnit: TADODataSet;
    dstLoc: TADODataSet;
    dsLoc: TDataSource;
    dstLocloc_code: TSmallintField;
    dstLocdescr: TStringField;
    dstOrgUnitUt_Code: TSmallintField;
    dstOrgUnitUt_Name: TStringField;
    dstItemClass_Type: TSmallintField;
    procedure btPrvClick(Sender: TObject);
    procedure btNxtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbDBOrgClick(Sender: TObject);
    procedure dstOrgUnitAfterScroll(DataSet: TDataSet);
    procedure DBLookupComboBox1Click(Sender: TObject);
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserItemRequest: TUserItemRequest;

implementation

uses DabDmdle, BaseFrm;

{$R *.dfm}

procedure TUserItemRequest.btPrvClick(Sender: TObject);
begin
  inherited;
  dstRequestItemMaster.Prior;
end;

procedure TUserItemRequest.btNxtClick(Sender: TObject);
begin
  inherited;
  dstRequestItemMaster.Next;

end;

// Event Messages
procedure TUserItemRequest.DoNew(var Mes : TMessage);
var
  tmpRec_No:Integer;
begin
  if ActiveDBGrid=MasterDBGrid then
  begin
    dstRequestItemMaster.Last;
    if Not(dstRequestItemMasterReq_no.IsNull) then
      tmpRec_No:=dstRequestItemMasterReq_no.Value+1
    else
      tmpRec_No:=StrToInt(Copy(DabData.disp_date,1,2)+'000001');
    Inherited;
    dstRequestItemMasterReq_no.value:=tmpRec_No;
    cbdbState.KeyValue:=0;
    cbDBCreator.KeyValue:=DabData.emp_no;
    cbDBCreateDate.Text:=DabData.disp_date;
    cbDBOrg.KeyValue:=OrganizCode;
  end
  else
  begin
    Inherited;
    dstRequestItemDetailReq_No.Value:=dstRequestItemMasterReq_no.Value;
    dstRequestItemDetailr_state.Value:=0;
  end;
end;

procedure TUserItemRequest.FormShow(Sender: TObject);
begin
  DabData.quOrg.Close;
  DabData.quOrg.Open;
  dstOrgUnit.Parameters[0].Value:=OrganizCode;
  dstLoc.Parameters[0].Value:=OrganizCode;
  inherited;
end;

procedure TUserItemRequest.cbDBOrgClick(Sender: TObject);
begin
  inherited;
  dstOrgUnit.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  dstLoc.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
end;

procedure TUserItemRequest.dstOrgUnitAfterScroll(DataSet: TDataSet);
begin
  inherited;
  dstLoc.Parameters[1].Value:=dstOrgUnitUt_Code.Value;
  dstLoc.Close;
  dstLoc.Open;

end;

procedure TUserItemRequest.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  dstRequestItemDetailitem_type.Value:=dstItemClass_Type.Value;
end;

end.
