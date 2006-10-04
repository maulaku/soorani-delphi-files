 unit fmItemRequestInput;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, SetForm, StdCtrls, RSqlEdit, DBCtrls, RSqllookup,
  RSQLComboBox, RSqlButton, Mask, RSqlMaskEdit,dabdmdle,
  Buttons,define, RadForms,Variants;

type
  TItemReqInput = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btOk: TRSqlButton;
    btCancel: TRSqlButton;
    edCreate_Date: TRSqlMaskEdit;
    Label5: TLabel;
    cmbType: TRSqlComboBox;
    Label1: TLabel;
    Label8: TLabel;
    dblUnit: TRSqlDbLookup;
    Label6: TLabel;
    Label7: TLabel;
    dblOrg: TRSqlDbLookup;
    edCreate: TRSqlEdit;
    Label2: TLabel;
    edReqNo: TRSqlEdit;
    Label11: TLabel;
    dsGoods: TDataSource;
    quGoods: TADOQuery;
    dsorg: TDataSource;
    quOrg: TADOQuery;
    quOrgOrg_Code: TIntegerField;
    quOrgOrg_Name: TStringField;
    quOrgOrg_Addr: TStringField;
    quOrgOrg_Mast_Code: TIntegerField;
    dsUnit: TDataSource;
    quUnit: TADOQuery;
    quSelMax: TADOQuery;
    quEmp: TADOQuery;
    quEmpFLName: TStringField;
    quMasCheck: TADOQuery;
    quMasInsert: TADOQuery;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label9: TLabel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label10: TLabel;
    quSelMaxmaxNo: TIntegerField;
    quMasCheckCreator: TStringField;
    quMasCheckCreate_Date: TStringField;
    quMasCheckOrg_Code: TSmallintField;
    quMasCheckOrg_Unit_Code: TSmallintField;
    quMasCheckConfirmer: TStringField;
    quMasCheckConfirm_date: TStringField;
    quMasCheckVerifier: TStringField;
    quMasCheckVerify_date: TStringField;
    quMasCheckState: TSmallintField;
    quMasCheckReq_Type: TSmallintField;
    quMastUpdate: TADOQuery;
    Bevel3: TBevel;
    Label3: TLabel;
    Label12: TLabel;
    edGoodName: TRSqlEdit;
    edGoodCode: TRSqlEdit;
    edState: TRSqlEdit;
    quGoodsitem_code: TStringField;
    quGoodsreceipt_no: TIntegerField;
    quGoodslabel: TIntegerField;
    quGoodsBprice: TFloatField;
    quGoodsEprice: TFloatField;
    quGoodsType: TSmallintField;
    quGoodsState: TSmallintField;
    quGoodsitem_code_1: TStringField;
    quGoodsitem_name: TStringField;
    quGoodsclass_code: TSmallintField;
    quGoodsitem_desc: TStringField;
    quGoodsitem_unit: TSmallintField;
    quGoodsItem_Inventory: TIntegerField;
    quGoodsOrder_Point: TSmallintField;
    quGoodsInventory_Limit: TSmallintField;
    quUnitUt_Org_Code: TIntegerField;
    quUnitUt_Code: TSmallintField;
    quUnitUt_Name: TStringField;
    quUnitUt_Mast_Code: TSmallintField;
    quGenCode: TADOQuery;
    quGenCodeReq_no: TIntegerField;
    quGenCodeCreator: TStringField;
    quGenCodeCreate_Date: TStringField;
    quGenCodeOrg_Code: TSmallintField;
    quGenCodeOrg_Unit_Code: TSmallintField;
    quGenCodeConfirmer: TStringField;
    quGenCodeConfirm_date: TStringField;
    quGenCodeVerifier: TStringField;
    quGenCodeVerify_date: TStringField;
    quGenCodeState: TSmallintField;
    quGenCodeReq_Type: TSmallintField;
    quMasCheckReq_no: TIntegerField;
    SpeedButton1: TButton;
    quMasCheckGoods_Code: TStringField;
    quGenCodeGoods_Code: TStringField;
    quGoodsgoods_code: TStringField;
    Label13: TLabel;
    dblLocUser: TRSqlDbLookup;
    Bevel12: TBevel;
    Label4: TLabel;
    Bevel7: TBevel;
    edGoodLable: TRSqlEdit;
    procedure FormShow(Sender: TObject);
    procedure dblOrgClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbTypeChange(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dblUnitClick(Sender: TObject);
  private
     GenCode : String ;
    { Private declarations }
  public
    { Public declarations }
    Mde:smallint;
  end;

var
  ItemReqInput: TItemReqInput;
implementation

uses fmGoodInfo, fmItemRequest;

{$R *.DFM}

procedure TItemReqInput.FormShow(Sender: TObject);
begin
 if (Dabdata.quItem_ReqReq_Type.Value<>2) then
  SpeedButton1.Enabled:=False;
 DabData.quDeployLoc.Close;
 DabData.quDeployLoc.Parameters[0].Value:=dblOrg.KeyValue;
 DabData.quDeployLoc.Parameters[1].Value:=dblUnit.KeyValue;
 DabData.quDeployLoc.Open;
 quOrg.Close;
 quOrg.Open;
 quGoods.close;
 quSelMax.Close;
 quSelMax.Open;
 edGoodCode.Readonly:=True;
 edGoodName.Readonly:=True;
 if Mde=1 then//insert
  begin
   DabData.quGetValues.Close;
   DabData.quGetValues.Parameters[0].Value:=DabData.emp_no;
   DabData.quGetValues.Open;
   if DabData.quGetValues.RecordCount>0 then
   begin
     dblOrg.KeyValue:=DabData.quGetValuesorg_code.Value;
     dblUnit.KeyValue:=DabData.quGetValuesunit_code.Value;
   end;
   DabData.quDeployLoc.Close;
   DabData.quDeployLoc.Parameters[0].Value:=dblOrg.KeyValue;
   DabData.quDeployLoc.Parameters[1].Value:=dblUnit.KeyValue;
   DabData.quDeployLoc.Open;
   dblLocUser.KeyValue:=DabData.quGetValuesloc_code.Value;
   quEmp.Close;
   quEmp.Parameters[0].Value:=DabData.emp_no;
   quEmp.Open;
   edState.text:=' ‰ŸÌ„ ';
   edCreate.text:=quEmpFLName.AsString;
   edCreate_Date.text:=Dabdata.disp_date;
   quGenCode.close;
   quGenCode.Open;
   cmbType.ItemIndex:=0;
   if(quGenCode.IsEmpty) then
        GenCode := Copy(Dabdata.disp_date , 1 , 2 ) + '000001'
     else
       begin
        quGenCode.Last ;
         GenCode := IntToStr( StrToInt(Copy(Dabdata.disp_date , 1 , 2 ) + Copy(quGenCodeReq_no.asstring, 3, 6)) + 1) ;
       end;
    edReqNo.Text:=GenCode;
    FormInitializer1.Execute;
  end;        //insert
 if Mde=2 then
  begin
    quEmp.Close;
    quEmp.Parameters[0].Value:=DabData.quItem_ReqCreator.AsString;
    quEmp.Open;
    edCreate.Text:=quEmpFLName.AsString;
    quUnit.close;
    quUnit.parameters[0].value:=Dabdata.quItem_ReqOrg_Code.AsInteger;
    quUnit.open;
    quGoods.Close;
    quGoods.Parameters[0].Value:=Dabdata.quItem_ReqGoods_Code.Value;
    quGoods.Open;
    edGoodName.Text:=quGoodsitem_name.AsString;
    FormInitializer1.Execute;
  end;
end;


procedure TItemReqInput.dblOrgClick(Sender: TObject);
begin
  dblUnit.KeyValue:=Null;
 if trim(dblOrg.Text)<>'' then
  begin
   quUnit.Close;
   quUnit.Parameters[0].Value:=dblOrg.KeyValue;
   quUnit.Open;
  end;
end;

procedure TItemReqInput.btOkClick(Sender: TObject);
 var
 bk:TBookMark;
begin
 if mde=1 then
  begin
    DabData.ADOC.BeginTrans;
    quMasInsert.Parameters[0].Value:=trim(edReqNo.Text);
    quMasInsert.Parameters[1].Value:=DabData.emp_no;
    quMasInsert.Parameters[2].Value:=edCreate_Date.Text;
    quMasInsert.Parameters[3].Value:=dblOrg.KeyValue;
    quMasInsert.Parameters[4].Value:=dblUnit.KeyValue;
    quMasInsert.Parameters[5].Value:='';
    quMasInsert.Parameters[6].Value:='';
    quMasInsert.Parameters[7].Value:='';
    quMasInsert.Parameters[8].Value:='';
    quMasInsert.Parameters[9].Value:=0;
    quMasInsert.Parameters[10].Value:=cmbType.ItemIndex;
    if(edGoodCode.Text<>'') then
      quMasInsert.Parameters[11].Value:=edGoodCode.Text;
    quMasInsert.Parameters[12].Value:=dblLocUser.KeyValue;
    try
        quMasInsert.execsql;
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
      Dabdata.quItem_Req.Close;
      Dabdata.quItem_Req.Parameters[0].Value:=0;
      Dabdata.quItem_Req.Open;
      Dabdata.quItem_Req.Locate('Req_no',edReqNo.Text,[lopartialkey]);
      ItemReq.dbgDetail.SetFocus;
  end;//mde=1
 if mde=2 then
  if (Dabdata.quItem_Req.RecordCount<>0) then
    begin
      bk:=Dabdata.quItem_Req.GetBookMark;
      quMastUpdate.Parameters[0].Value:=Dabdata.quItem_ReqCreator.AsString;
      quMastUpdate.Parameters[1].Value:=Dabdata.quItem_ReqCreate_Date.AsString;
      quMastUpdate.Parameters[2].Value:=dblOrg.KeyValue;
      quMastUpdate.Parameters[3].Value:=dblUnit.KeyValue;
      quMastUpdate.Parameters[4].Value:='';
      quMastUpdate.Parameters[5].Value:='';
      quMastUpdate.Parameters[6].Value:='';
      quMastUpdate.Parameters[7].Value:='';
      quMastUpdate.Parameters[8].Value:=DabData.quItem_ReqState.AsInteger;
      quMastUpdate.Parameters[9].Value:=cmbType.ItemIndex;
      if(edGoodCode.text<>'') then
       quMastUpdate.Parameters[10].Value:=strtoint(edGoodCode.Text);
      quMastUpdate.Parameters[11].Value:=dblLocUser.KeyValue;
      quMastUpdate.Parameters[12].Value:=strtoint(edReqNo.Text);
      Dabdata.ADOC.BeginTrans;
      try
        quMastUpdate.execsql;
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
      Dabdata.quItem_Req.Close;
      DabData.quItem_Req.parameters[0].value:=0;
      Dabdata.quItem_Req.Open;
  end;//mde=2
// If (mde=1) Then Dabdata.quItem_Req.Last;
 Close;
end;

procedure TItemReqInput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TItemReqInput.cmbTypeChange(Sender: TObject);
begin
  edGoodCode.Text:='';
  edGoodName.Text:='';
 if cmbType.ItemIndex=2 then
  begin
   SpeedButton1.Enabled:=True;
   edGoodCode.FieldType:=ftRequired;
   edGoodName.FieldType:=ftRequired;
   FormInitializer1.Execute;
   edGoodCode.Enabled:=False;
   edGoodName.Enabled:=False;
  end
 else
  begin
   SpeedButton1.Enabled:=False;
   edGoodCode.FieldType:=ftNonRequired;
   edGoodName.FieldType:=ftNonRequired;
   FormInitializer1.Execute;
   edGoodCode.Enabled:=False;
   edGoodName.Enabled:=False;
  end;
end;

procedure TItemReqInput.btCancelClick(Sender: TObject);
begin
 close;
end;

procedure TItemReqInput.SpeedButton1Click(Sender: TObject);
begin
Goodinfo:=TGoodInfo.Create(Application);
Goodinfo.ShowModal;
end;


procedure TItemReqInput.dblUnitClick(Sender: TObject);
begin
  inherited;
 DabData.quDeployLoc.Close;
 DabData.quDeployLoc.Parameters[0].Value:=dblOrg.KeyValue;
 DabData.quDeployLoc.Parameters[1].Value:=dblUnit.KeyValue;
 DabData.quDeployLoc.Open;
end;

end.
