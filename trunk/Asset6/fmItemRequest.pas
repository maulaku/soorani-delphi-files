unit fmItemRequest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, RSqllookup, Mask, RSqlMaskEdit, StdCtrls, RSqlEdit,
  RSQLComboBox, SetForm, RSqlButton, ExtCtrls, Grids, DBGrids, Db, ADODB,define,
  RadForms;

type
  TItemReq = class(TRadForm)
    Panel1: TPanel;
    dbgDetail: TDBGrid;
    dbgMaster: TDBGrid;
    dsDetailSelect: TDataSource;
    dsMasterSelect: TDataSource;
    QuDetailDel: TADOQuery;
    quMasterDel: TADOQuery;
    quCascadeDel: TADOQuery;
    procedure quDetailSelectCalcFields(DataSet: TDataSet);
    procedure quOrgCalcFields(DataSet: TDataSet);
    procedure cmbStateChange(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dblOrgClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgDetailEnter(Sender: TObject);
    procedure dbgDetailExit(Sender: TObject);
    procedure dbgMasterEnter(Sender: TObject);
    procedure dbgMasterExit(Sender: TObject);
    procedure EnableControls;
    procedure DisableControls;
    procedure cmbTypeChange(Sender: TObject);
    procedure quGoodsBeforeScroll(DataSet: TDataSet);
    procedure EnableInsertPanel;
    Procedure DisableInsertPanel;
    procedure btOkClick(Sender: TObject);
    procedure quMasterSelectAfterScroll(DataSet: TDataSet);
    procedure quMasterSelectCalcFields(DataSet: TDataSet);
  private

    { Private declarations }
  public
    { Public declarations }
  protected
   procedure DoNew(var mes :TMessage);message F_NEW;
   procedure DoEdit(var mes :TMessage);message F_EDIT;
   Procedure DoDelete(var mes :TMessage);message F_DEL;
  end;

var
  ItemReq: TItemReq;
  ActiveGrid,mde:smallint;


implementation

{$R *.DFM}

uses dabdmdle, fmItemRequestInput,fmInputReqItem, fmVerify;


procedure TItemReq.DoNew(var mes: TMessage);
begin
 if ActiveGrid=1 then
    begin
     ItemReqInput:=TItemReqInput.Create(Application);
     ItemReqInput.FormInitializer1.FieldMode:=fmInsert;
     ItemReqInput.Mde:=1;
     ItemReqInput.dblOrg.KeyValue:=OrganizCode;
     ItemReqInput.quUnit.Close;
     ItemReqInput.quUnit.Parameters[0].Value:=OrganizCode;
     ItemReqInput.quUnit.Open;
     ItemReqInput.FormInitializer1.execute;
     ItemReqInput.showmodal;
    end;
 if ActiveGrid=2 then
    begin
     if Dabdata.quItem_Req.IsEmpty then exit;
     InputReqItem:=TInputReqItem.Create(Application);
     InputReqItem.quSelGoods.close;
     InputReqItem.quSelGoods.Parameters[0].Value:=DabData.quItem_ReqReq_no.Value;
     InputReqItem.quSelGoods.Open;
     InputReqItem.dsGoods.DataSet:=InputReqItem.quSelGoods;
     InputReqItem.FormInitializer1.FieldMode:=fmInsert;
     InputReqItem.Mde:=1;
     InputReqItem.edConf_Amount.FieldType:=ftDisplay;
     InputReqItem.edRecAmount.FieldType:=ftDisplay;
     InputReqItem.edRecAmount.text:='';
     InputReqItem.FormInitializer1.execute;
     InputReqItem.chk:=1;
     InputReqItem.showmodal;
    end;
end;

procedure TItemReq.DoEdit(var mes: TMessage);
begin
  if ActiveGrid=1 then
    begin
      if Dabdata.quItem_Req.IsEmpty then exit;
     ItemReqInput:=TItemReqInput.Create(Application);
     ItemReqInput.FormInitializer1.FieldMode:=fmEdit;
     ItemReqInput.mde:=2;
     ItemReqInput.edCreate_Date.Text:=DabData.quItem_ReqCreate_Date.AsString;
      if (dabdata.quItem_ReqState.Value=0) then
      ItemReqInput.edState.Text:=' ‰ŸÌ„ ‘œÂ'
     else
     ItemReqInput.edState.Text:='';
     ItemReqInput.edReqNo.Text:=inttostr(DabData.quItem_ReqReq_no.asinteger);
     ItemReqInput.dblOrg.KeyValue:=Dabdata.quItem_ReqOrg_Code.AsInteger;
     ItemReqInput.cmbType.ItemIndex:=Dabdata.quItem_ReqReq_Type.asInteger;
     if (Dabdata.quItem_ReqReq_Type.Value=2) then
      ItemReqInput.SpeedButton1.Enabled:=True;
     if Not(Dabdata.quItem_ReqGoods_Code.IsNull) then
      ItemReqInput.edGoodCode.Text:=Dabdata.quItem_ReqGoods_Code.asstring;
     ItemReqInput.dblUnit.KeyValue:=Dabdata.quItem_ReqOrg_Unit_Code.asinteger;
     ItemReqInput.dblLocUser.KeyValue:=DabData.quItem_ReqLoc_code.asinteger;
     ItemReqInput.show;
    end;

 if ActiveGrid=2 then
    begin
     if Dabdata.quItem_Req.IsEmpty then exit;
     if not(Dabdata.quReq_Item.isempty) then
     begin
     InputReqItem:=TInputReqItem.Create(Application);
     DabData.quJustItem.Close;
     DabData.quJustItem.Open;
     InputReqItem.dsGoods.DataSet:=DabData.quJustItem;
     InputReqItem.edReqNo.Text:=inttostr(Dabdata.quReq_ItemReq_No.asinteger);
     InputReqItem.dblItemName.KeyValue:=DabData.quReq_ItemItem_Code.AsString;
     InputReqItem.edReqAmount.Text:=inttostr(Dabdata.quReq_ItemReq_Amount.asinteger);
     InputReqItem.edConf_Amount.Text:=inttostr(Dabdata.quReq_ItemConf_Amount.asinteger);
     if Not(Dabdata.quReq_ItemRecieve_Amount.IsNull) then
      InputReqItem.edRecAmount.text:=inttostr(Dabdata.quReq_ItemRecieve_Amount.AsInteger);
     InputReqItem.cmbState.ItemIndex:=Dabdata.quReq_Itemr_state.AsInteger;
     InputReqItem.FormInitializer1.FieldMode:=fmedit;
     InputReqItem.mde:=2;
     InputReqItem.chk:=1;
     InputReqItem.edConf_Amount.FieldType:=ftDisplay;
     InputReqItem.edRecAmount.FieldType:=ftDisplay;
     InputReqItem.FormInitializer1.execute;
     InputReqItem.show;
     end;
    end;
end;



procedure TItemReq.EnableControls;
 begin
    {dblUnit.Enabled:=true;
    dblOrg.Enabled:=true;
    cmbType.Enabled:=true;
    dblGoods.Enabled:=true;}
  end;

procedure TItemReq.DisableControls;
 begin
    {dblUnit.Enabled:=false;
    dblOrg.Enabled:=false;
    cmbType.Enabled:=false;
    dblGoods.Enabled:=false;}
 end;


procedure TItemReq.quDetailSelectCalcFields(DataSet: TDataSet);
begin
 {case  quDetailSelectr_state.Value  of
   1 : quDetailSelectnrstate.Value:='œ—ŒÊ«”  ‘œÂ';
   2 : quDetailSelectnrstate.Value:=' ⁄ÌÌ‰ „Ì“«‰  ÕÊÌ·Ì';
   3 : quDetailSelectnrstate.Value:=' ÕÊÌ· ‰«ﬁ’';
   4 : quDetailSelectnrstate.Value:=' ÕÊÌ· ﬂ«„·';
 end;
  if quDetailSelectItem_Code.Value= '1' then quDetailSelectnitem.Value:='„’—›Ì';
  if quDetailSelectItem_Code.Value= '2' then quDetailSelectnitem.Value:='œ— Õﬂ„ „’—›Ì';
  if quDetailSelectItem_Code.Value= '3' then quDetailSelectnitem.Value:='«„Ê«·Ì „‰ﬁÊ·';
  }
  end;

procedure TItemReq.quOrgCalcFields(DataSet: TDataSet);
begin
 //quOrgKeyField.Value:=trim(quOrgUt_Org_Code.AsString)+trim(quOrgUt_Code.asstring);
end;

procedure TItemReq.cmbStateChange(Sender: TObject);
begin
 {quMasterSelect.Close;
 quMasterSelect.Parameters[0].Value:=cmbState.ItemIndex+1;
 quMasterSelect.Open;
 DisableControls;
 ActiveControl:=DBGrid1;   }
end;

procedure TItemReq.btCancelClick(Sender: TObject);
begin
 close;
end;

procedure TItemReq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FormDeactivate(nil);   
 action:=caFree;
end;

procedure TItemReq.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  top:=0;
  left:=0;
  mes.Msg:=FORM_STATE;
  mes.Lparam:=35;
  Application.MainForm.Dispatch(mes);
end;

procedure TItemReq.FormDeactivate(Sender: TObject);
var
    mes : TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TItemReq.dblOrgClick(Sender: TObject);
begin
 {dblUnit.KeyValue:=Null;
 if trim(dblOrg.Text)<>'' then
  begin
   quUnit.Close;
   quUnit.Parameters[0].Value:=dblOrg.KeyValue;
   quUnit.Open;
  end;   }

end;

procedure TItemReq.FormShow(Sender: TObject);
begin
 Top := 0;
 Left := 0 ;
 Dabdata.quItem_Req.Close;
 Dabdata.quItem_Req.Parameters[0].Value:=0;
 Dabdata.quItem_Req.Open;
 Dabdata.quReq_Item.Close;
 Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqReq_No.asInteger;
 Dabdata.quReq_Item.Open;
end;

procedure TItemReq.dbgDetailEnter(Sender: TObject);
begin
 (sender as tdbgrid).color:=clactivegrid;
 ActiveGrid:=2;
end;

procedure TItemReq.dbgDetailExit(Sender: TObject);
begin
 //ActiveGrid:=0;
end;

procedure TItemReq.dbgMasterEnter(Sender: TObject);
begin
 (sender as tdbgrid).color:=clactivegrid;
 ActiveGrid:=1;
end;

procedure TItemReq.dbgMasterExit(Sender: TObject);
begin
 (sender as tdbgrid).color:=cldeactivegrid;
end;


procedure TItemReq.cmbTypeChange(Sender: TObject);
begin
 {if cmbType.itemindex=2 then
  begin
    quGoods.Close;
    quGoods.Open;
  end
 else
    quGoods.Close;
  }
end;

procedure TItemReq.quGoodsBeforeScroll(DataSet: TDataSet);
begin

 //quGoodsNew.Value:=quGoodsgoods_code.value;
end;

procedure TItemReq.DisableInsertPanel;
begin
 {quItem.Close;
 dblItems.KeyValue:=Null;
 edReqAm.Clear;
 edAppAm.Clear;
 edDelAm.Clear;
 cmbReqSate.ItemIndex:=-1;
 cmbGoodsType.ItemIndex:=-1;
 InsertPanel.Visible:=false; }
end;

procedure TItemReq.EnableInsertPanel;
begin
{ quItem.Close;
 quItem.Open;
 InsertPanel.Visible:=true;
 FormInitializer1.Execute;}
end;

procedure TItemReq.btOkClick(Sender: TObject);
begin
{ DabData.ADOC.BeginTrans;
 if mde=1 then
  begin
   if ActiveGrid=1 then
    begin
     with quMasCheck do
      begin
       Parameters[0].Value:=edReqNo.Text;
       Close;
       Open;
      end;
     if quMasCheck.IsEmpty then
      begin
       with quMasInsert do
        begin
         Parameters[0].Value:=trim(edReqNo.Text);
         Parameters[1].Value:=DabData.emp_no;
         Parameters[2].Value:=meCreate.Text;
         Parameters[3].Value:=dblOrg.KeyValue;
         Parameters[4].Value:=dblUnit.KeyValue;
         Parameters[5].Value:=Null;
         Parameters[6].Value:=Null;
         Parameters[7].Value:=Null;
         Parameters[8].Value:=Null;
         Parameters[9].Value:=cmbState.ItemIndex+1;
         Parameters[10].Value:=cmbType.ItemIndex+1;
         if cmbType.ItemIndex=2 then
           Parameters[11].Value:=dblGoods.KeyValue
         else
           Parameters[11].Value:=Null;
         Parameters[12].Value:=trim(edReqNo.Text);
         ExecSQL;
       end;//with
       try
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
       quMasterSelect.Close;
       quMasterSelect.Parameters[0].Value:=cmbState.ItemIndex+1;
       quMasterSelect.Open;
       quMasterSelect.Last;
      end//quMasCheck.IsEmpty thwn
     else
      begin
        dabdata.ShowPopupMessage('‘„«—Â œ—ŒÊ«”   ﬂ—«—Ì «” ');
      end;
     quMasCheck.Close;
    end;//if ActiveGrid=1 then
   if ActiveGrid=2 then
    begin
     with quDetCheck do
      begin
       Parameters[0].Value:=edReqNo.Text;
       Parameters[1].Value:=dblItems.KeyValue;
       Close;
       Open;
      end;
     if quDetCheck.IsEmpty then
      begin
       with quDetInsert do
        begin
         Parameters[0].Value:=trim(edReqNo.Text);
         Parameters[1].Value:=dblItems.KeyValue;
         Parameters[2].Value:=edReqAm.Text;
         Parameters[3].Value:=Null;// edAppAm.Text;
         Parameters[4].Value:=Null;//edDelAm.Text;
         Parameters[5].Value:=cmbReqSate.ItemIndex+1;
         Parameters[6].Value:=cmbReqSate.ItemIndex+1;
         Parameters[7].Value:=cmbGoodsType.ItemIndex+1;
         Parameters[8].Value:=trim(edReqNo.Text);
         ExecSQL;
       end;//with
       try
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
       quDetailSelect.Close;
       quDetailSelect.Parameters[0].Value:=edReqNo.Text;
       quDetailSelect.Open;
       quDetailSelect.Last;
       DisableInsertPanel;
      end//quMasCheck.IsEmpty thwn
     else
      begin
        dabdata.ShowPopupMessage('!„ﬁ«œÌ— Ê—ÊœÌ  ﬂ—«—Ì «” ');
      end;
     quDetCheck.Close;

    end;//if ActiveGrid=2 then

  end;//if mde=1 then
 if mde=2 then
  begin
   if ActiveGrid=1 then
    begin


    end;
   if ActiveGrid=2 then
    begin

    end;//if ActiveGrid=2 then

  end;//if mde=2 then

 }
end;

procedure TItemReq.quMasterSelectAfterScroll(DataSet: TDataSet);
begin
{ dblUnit.KeyValue:=null;
 quEmp.Close;
 quEmp.Parameters[0].Value:=quMasterSelectCreator.AsString;
 quEmp.Open;
 quUnit.Close;
 quUnit.Parameters[0].Value:=dblOrg.KeyValue;
 quUnit.Open;

 dblOrg.KeyValue:=Null;
 dblUnit.KeyValue:=Null;
 dblGoods.KeyValue:=Null;
 cmbType.ItemIndex:=-1;
 edCreate.Clear;
 meCreate.Clear;
 edReqNo.Text:=quMasterSelectreq_number.AsString;
 edCreate.Text:=quEmpFLName.AsString;
 meCreate.Text:=quMasterSelectCreate_Date.AsString;
 dblOrg.KeyValue:=quMasterSelectOrg_Code.AsInteger;
 dblUnit.KeyValue:=quMasterSelectOrg_Unit_Code.AsInteger;
 cmbType.ItemIndex:=quMasterSelectReq_Type.AsInteger-1;
 if cmbType.itemindex=2 then
  begin
    quGoods.Close;
    quGoods.Open;
  end
 else
    quGoods.Close;
 dblGoods.KeyValue:=quMasterSelectGoods_Code.AsInteger;
 quDetailSelect.Close;
 quDetailSelect.Parameters[0].Value:=quMasterSelectreq_number.AsString;
 quDetailSelect.Open;  }
end;

procedure TItemReq.DoDelete(var mes: TMessage);
begin
 if ActiveGrid=1 then
 begin//3
   if (Dabdata.quItem_Req.RecordCount<>0) then
   begin      //1
     Verify:=TVerify.Create(Application);
     if Verify.ShowModal=mrok then
     begin //2
       quMasterDel.Parameters[0].Value:=Dabdata.quItem_ReqReq_No.AsInteger;
       quCascadeDel.Parameters[0].Value:=Dabdata.quItem_ReqReq_No.AsInteger;
       Dabdata.ADOC.BeginTrans;
      try
       quMasterDel.ExecSQL;
       quCascadeDel.ExecSQL;
       Dabdata.ADOC.CommitTrans;
       Dabdata.quItem_Req.Close;
       Dabdata.quItem_Req.Parameters[0].Value:=0;
       Dabdata.quItem_Req.Open;
       Dabdata.quReq_Item.Close;
       Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqReq_No.asInteger;
       Dabdata.quReq_Item.Open;
      except
       Dabdata.ShowPopupMessage('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
       Dabdata.ADOC.RollbackTrans;
      end;        //exept
     end;//2
   end;     //1
 end     //3
 else if(ActiveGrid=2) Then
   begin
   if (Dabdata.quReq_Item.RecordCount<>0) then
   begin
      Verify:=TVerify.Create(Application);
      if Verify.ShowModal=mrok then
      begin
       quDetailDel.Parameters[0].Value:=Dabdata.quItem_ReqReq_No.AsInteger;
       quDetailDel.Parameters[1].Value:=Dabdata.quReq_itemitem_code.Asstring;
       Dabdata.ADOC.BeginTrans;
      try
       qudetailDel.ExecSQL;
       Dabdata.ADOC.CommitTrans;

       Dabdata.quReq_Item.Close;
       Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqReq_No.asInteger;
       Dabdata.quReq_Item.Open;
      except
       Dabdata.ShowPopupMessage('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
       Dabdata.ADOC.RollbackTrans;
      end;
     end;
   end;
 end;
end;


procedure TItemReq.quMasterSelectCalcFields(DataSet: TDataSet);
begin
 //  quMasterSelectStateDesc.Value:=' ‰ŸÌ„ ‘œÂ';
end;

end.
