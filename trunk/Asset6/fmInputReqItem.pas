unit fmInputReqItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, SetForm, StdCtrls, RSqlEdit, DBCtrls, RSqllookup,
  RSQLComboBox,fmItemRequest, RSqlButton, Mask, RSqlMaskEdit,dabdmdle,
  Buttons,define,RadForms,Variants;

type
  TInputReqItem = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btOk: TRSqlButton;
    btCancel: TRSqlButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edReqAmount: TRSqlEdit;
    Label2: TLabel;
    edReqNo: TRSqlEdit;
    Label11: TLabel;
    quSelMax: TADOQuery;
    quEmp: TADOQuery;
    quEmpFLName: TStringField;
    quDetInsert: TADOQuery;
    quSelMaxmaxNo: TIntegerField;
    Label3: TLabel;
    edConf_Amount: TRSqlEdit;
    edRecAmount: TRSqlEdit;
    cmbState: TRSqlComboBox;
    dblItemName: TRSqlDbLookup;
    quDetUpdate: TADOQuery;
    quSelGoods: TADOQuery;
    quItemCheck: TADOQuery;
    quItemCheckitem_inventory: TIntegerField;
    quSelGoodsitem_code: TStringField;
    quSelGoodsitem_name: TStringField;
    quSelGoodsclass_code: TSmallintField;
    quSelGoodsitem_desc: TStringField;
    quSelGoodsitem_unit: TSmallintField;
    quSelGoodsItem_Inventory: TIntegerField;
    quSelGoodsOrder_Point: TSmallintField;
    quSelGoodsInventory_Limit: TSmallintField;
    quSelGoodsclass_code_1: TSmallintField;
    quSelGoodsclass_desc: TStringField;
    quSelGoodsclass_name: TStringField;
    quSelGoodsClass_Type: TSmallintField;
    quSelGoodsppc_code: TStringField;
    quSelGoodspc_code: TStringField;
    quSelGoodsps_code: TStringField;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    dsGoods: TDataSource;
    edExist: TRSqlEdit;
    procedure FormShow(Sender: TObject);

    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelClick(Sender: TObject);
    procedure edConf_AmountExit(Sender: TObject);
    procedure edRecAmountExit(Sender: TObject);
    procedure edReqAmountExit(Sender: TObject);
    procedure dblItemNameClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Mde:smallint;
    chk:Integer;
  end;

var
  InputReqItem: TInputReqItem;
  err:Integer;
implementation

uses fmItemViewer;



{$R *.DFM}

procedure TInputReqItem.FormShow(Sender: TObject);
begin
 DabData.quJustItem.Close;
 DabData.quJustItem.Open;
 if(DabData.quJustItem.Active) then
   edExist.Text:=DabData.quJustItemItem_Inventory.AsString;
 quSelMax.Close;
 quSelMax.Open;
 if Mde=1 then//insert
  begin
   edReqNo.Text:=inttostr(Dabdata.quItem_ReqReq_No.asInteger);
   cmbState.ItemIndex:=0;
   dblItemName.Enabled:=true;
  end;   // mde=1
 cmbState.FieldType:=ftDisplay;
 FormInitializer1.Execute;
 cmbState.Enabled:=False;
 if Mde=2 then
  begin
   dblItemName.Enabled:=false;
  end;
end;



procedure TInputReqItem.btOkClick(Sender: TObject);
 var
 bk:TBookMark;
begin
if (err=1) then
begin
Dabdata.ShowPopupMessage('„ﬁœ«—  ÕÊÌ·Ì »Ì‘ «“ „ﬁœ«—  «ÌÌœ ‘œÂ «” ');
edRecAmount.SetFocus;
Exit;
end
else if (err=2) then
begin
Dabdata.ShowPopupMessage('„ﬁœ«—  ÕÊÌ·Ì «“ „ÊÃÊœÌ «‰»«— »Ì‘ — «” ');
edRecAmount.SetFocus;
Exit;
end
else
begin
 if mde=1 then
  begin
    DabData.ADOC.BeginTrans;
    quDetInsert.Parameters[0].Value:=trim(edReqNo.Text);
    quDetInsert.Parameters[1].Value:=dblItemName.KeyValue;
    quDetInsert.Parameters[2].Value:=strtoint(edReqAmount.Text);
    if (chk=1) then
     begin
      quDetInsert.Parameters[3].Value:=strtoint(edconf_Amount.text);
      quDetInsert.Parameters[4].Value:=null;
     end;
    if (chk=2) then
     begin
      quDetInsert.Parameters[3].Value:=strtoint(edconf_Amount.text);
      quDetInsert.Parameters[4].Value:=null;
     end;
    if (chk=3) then
     begin
      quDetInsert.Parameters[3].Value:=strtoint(edconf_Amount.text);
      quDetInsert.Parameters[4].Value:=strtoint(edrecAmount.text);
     end;
    quDetInsert.Parameters[5].Value:=cmbState.ItemIndex;
    try
        quDetInsert.execsql;
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
      Dabdata.quReq_Item.Close;
      Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqReq_No.asInteger;
      Dabdata.quReq_Item.Open;
  end;//mde=1
 END;
 if mde=2 then
    begin
      bk:=Dabdata.quReq_Item.GetBookMark;
      quDetUpdate.Parameters[0].Value:=strtoint(edReqAmount.text);
      quDetUpdate.Parameters[1].Value:=strtoint(edConf_Amount.Text);
      if(edRecAmount.Text<>'') then
       quDetUpdate.Parameters[2].Value:=strtoint(edRecAmount.Text);
      quDetUpdate.Parameters[3].Value:=cmbState.ItemIndex;
      quDetUpdate.Parameters[4].Value:=dblItemName.keyValue;
      quDetUpdate.Parameters[5].Value:=strtoint(edReqNo.text);
      quDetUpdate.Parameters[6].Value:=DabData.quReq_ItemItem_Code.AsString;
      Dabdata.ADOC.BeginTrans;
      try
        quDetUpdate.execsql;
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
     end;
      Dabdata.quReq_Item.Close;
      Dabdata.quReq_Item.Open;
      if (chk=3) then
       Dabdata.quItem_ReqConfAfterScroll(Dabdata.quItem_ReqConf);
   if (mde=2) then Dabdata.quReq_Item.Gotobookmark(bk);
   if (mde=1) then Dabdata.quReq_Item.Last;
 Close;
end;

procedure TInputReqItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TInputReqItem.btCancelClick(Sender: TObject);
begin
 edConf_amount.Text:='';
 edRecAmount.Text:='';
 edReqAmount.Text:='';
 close;
end;


procedure TInputReqItem.edConf_AmountExit(Sender: TObject);
var
temp1,temp2,temp3:Integer;
begin
 if(chk<>1) then
  begin
  if(edConf_Amount.Text<>'') then
  begin
  temp1:=strtoint(edReqAmount.Text);
  temp2:=strtoint(edConf_Amount.Text);
   if(temp2>temp1) then
   begin
    DabData.ShowPopupMessage('„ﬁœ«—  «ÌÌœ ‘œÂ »Ì‘ «“ „ﬁœ«— œ—ŒÊ«” Ì «” ');
    edConf_Amount.SetFocus;
   end;
  end
 else
   Dabdata.ShowPopupMessage('„ﬁœ«—  «ÌÌœ ‘œÂ Ê«—œ ‰‘œÂ «” ');
 if (chk<>2) then
  begin
   if(edRecAmount.text<>'') then
    begin
     temp3:=strtoint(edRecAmount.text);
      if(temp3>temp2) then
       begin
        DabData.ShowPopupMessage('„ﬁœ«—  ÕÊÌ·Ì »Ì‘ «“ „ﬁœ«—  «ÌÌœ ‘œÂ «” ');
        edRecAmount.SetFocus;
       end;
     end;
   end;
 end;
 end;

procedure TInputReqItem.edRecAmountExit(Sender: TObject);
var
temp1,temp2,Inv:Integer;
begin
err:=0;
 if (chk<>1) then
  begin
  if(edRecAmount.Text<>'') then
  begin
  temp1:=strtoint(edConf_Amount.Text);
  temp2:=strtoint(edRecAmount.Text);
  if(temp2>temp1) then
   begin
    {Dabdata.ShowPopupMessage('„ﬁœ«—  ÕÊÌ·Ì »Ì‘ «“ „ﬁœ«—  «ÌÌœ ‘œÂ «” ');
    edRecAmount.SetFocus;}
    err:=1;
   end;
   end
  else
   Dabdata.ShowPopupMessage('„ﬁœ«—  ÕÊÌ·Ì Ê«—œ ‰‘œÂ «” ');
 end;
 if (edReqAmount.Text<>'') and (edConf_Amount.Text<>'') then
  begin
   quItemCheck.close;
   quItemCheck.Parameters[0].Value:=dblItemName.KeyValue;
   quItemCheck.Open;
   if Not(quItemCheckitem_inventory.IsNull) then
    begin
     Inv:=strtoint(quItemCheckitem_inventory.AsString);
     if (temp2>Inv) then
      begin
       {Dabdata.ShowPopupMessage('„ﬁœ«—  ÕÊÌ·Ì «“ „ÊÃÊœÌ «‰»«— »Ì‘ — «” ');
       edRecAmount.SetFocus; }
       err:=2;
      end;
    end;
 end;
end;

procedure TInputReqItem.edReqAmountExit(Sender: TObject);
var
temp1,temp2:Integer;
begin
 if (chk=1) then
  edConf_Amount.Text:=edReqAmount.text;
 if (chk<>1) then
   begin
     if (edConf_Amount.Text<>'') then
      begin
        temp1:=strtoint(edReqAmount.text);
        temp2:=strtoint(edConf_Amount.text);
        if(temp2>temp1) then
          begin
           Dabdata.ShowPopupMessage('„ﬁœ«—  «ÌÌœ ‘œÂ »Ì‘ «“ „ﬁœ«— œ—ŒÊ«” Ì «” ');
           edConf_Amount.SetFocus;
          end
        else
           Dabdata.ShowPopupMessage('„ﬁœ«— œ—ŒÊ«” Ì Ê«—œ ‰‘œÂ «” ');
     end;
   end;
end;

procedure TInputReqItem.dblItemNameClick(Sender: TObject);
begin
  edExist.Text:=quSelGoodsItem_Inventory.AsString;
end;


procedure TInputReqItem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ItemVeiwer:=TItemVeiwer.Create(Application);
  ItemVeiwer.dblClass.Enabled:=False;
  ItemVeiwer.ItemObject:=dblItemName;
  DabData.quGoods.Close;
  DabData.quGoods.Open;
//  ItemVeiwer.dblClass.KeyValue:=DabData.quGoodsRecclass_code.Value;
  ItemVeiwer.ShowModal;
  FormInitializer1.Execute;
  dblItemNameClick(Sender);
end;

end.
