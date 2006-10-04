unit fmItemReqVerify;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RadForms, Forms, Dialogs,
  DBCtrls, RSqllookup, Mask, RSqlMaskEdit, StdCtrls, RSqlEdit,
  RSQLComboBox, SetForm, RSqlButton, ExtCtrls, Grids, DBGrids, Db, ADODB,define;

type
  TItemReqVerify = class(TRadForm)
    Panel1: TPanel;
    dbgDetail: TDBGrid;
    dbgMaster: TDBGrid;
    dsDetailSelect: TDataSource;
    dsMasterSelect: TDataSource;
    QuDetailDel: TADOQuery;
    quMasterDel: TADOQuery;
    quCascadeDel: TADOQuery;
    paButton: TPanel;
    quMastUpdate: TADOQuery;
    btVerify: TRSqlButton;
    quUpdateDet: TADOQuery;
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgDetailEnter(Sender: TObject);
    procedure dbgMasterEnter(Sender: TObject);
    procedure dbgMasterExit(Sender: TObject);
    procedure quMasterSelectCalcFields(DataSet: TDataSet);
    procedure btVerifyClick(Sender: TObject);
  private
    { Private declarations }
  public
    Flg:Boolean;
    MesCheck:Integer;
    { Public declarations }
  protected
   procedure DoNew(var mes :TMessage);message F_NEW;
   procedure DoEdit(var mes :TMessage);message F_EDIT;
   Procedure DoDelete(var mes :TMessage);message F_DEL;
   procedure AnswerToMes(Var mes:Tmessage);message SCROLL;
   procedure AnswerToOpen(var mes: Tmessage);message OPEN;
  end;

var
  ItemReqVerify: TItemReqVerify;
  ActiveGrid,mde:smallint;
  FirstShow : Boolean ;


implementation

{$R *.DFM}

uses dabdmdle, fmItemRequestInput, fmInputReqItem, fmVerify;


procedure TItemReqVerify.DoNew(var mes: TMessage);
begin
end;

procedure TItemReqVerify.DoEdit(var mes: TMessage);
begin
if (ActiveGrid=2) and (Dabdata.quItem_ReqVerState.Value=1) then
 begin
  InputReqItem:=TInputReqItem.Create(Application);
  InputReqItem.show;
  InputReqItem.dsGoods.DataSet:=DabData.quJustItem;
  DabData.quJustItem.Close;
  DabData.quJustItem.Open;
  InputReqItem.dblItemName.FieldType:=ftDisplay;
  InputReqItem.edReqAmount.fieldType:=ftDisplay;
  InputReqItem.edConf_Amount.fieldType:=ftDisplay;
  InputReqItem.edRecAmount.fieldType:=ftRequired;
  InputReqItem.cmbState.fieldType:=ftDisplay;
  InputReqItem.FormInitializer1.execute;
  InputReqItem.cmbState.Enabled:=False;
  InputReqItem.edReqNo.Text:=inttostr(Dabdata.quReq_ItemReq_No.asinteger);
  InputReqItem.dblItemName.KeyValue:=DabData.quReq_ItemItem_Code.AsString;
  InputReqItem.edExist.Text:=DabData.quJustItemItem_Inventory.AsString;
  InputReqItem.edReqAmount.Text:=inttostr(Dabdata.quReq_ItemReq_Amount.asinteger);
  InputReqItem.edRecAmount.Text:=inttostr(Dabdata.quReq_ItemReq_Amount.asinteger);
  InputReqItem.edConf_Amount.Text:=inttostr(Dabdata.quReq_ItemConf_Amount.asinteger);
  if Not(Dabdata.quReq_ItemRecieve_Amount.IsNull) then
   InputReqItem.edRecAmount.text:=inttostr(Dabdata.quReq_ItemRecieve_Amount.AsInteger);
  InputReqItem.cmbState.ItemIndex:=Dabdata.quReq_Itemr_state.AsInteger;
  InputReqItem.FormInitializer1.FieldMode:=fmedit;
  InputReqItem.mde:=2;
 end;
end;

procedure TItemReqVerify.btCancelClick(Sender: TObject);
begin
 close;
end;

procedure TItemReqVerify.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FormDeactivate(nil);
 action:=caFree;
end;

procedure TItemReqVerify.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=37;
  Application.MainForm.Dispatch(mes);
end;

procedure TItemReqVerify.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TItemReqVerify.FormShow(Sender: TObject);
begin
 MesCheck:=1;
 top:=0;
 left:=0;
{ Dabdata.quItem_ReqVer.Close;
 Dabdata.quItem_ReqVer.Open;
 Dabdata.quReq_Item.close;
 Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqVerReq_No.asinteger;
 Dabdata.quReq_Item.open;}
{ if (Dabdata.quItem_ReqVerState.asinteger=1) then
       btVerify.Enabled:=True
     else
       btVerify.Enabled:=False;}
end;

procedure TItemReqVerify.dbgDetailEnter(Sender: TObject);
begin
 ActiveGrid:=2;
 DbgDetail.Color:=clActiveGrid;
 DbgMaster.Color:=clDeactiveGrid;
end;

procedure TItemReqVerify.dbgMasterEnter(Sender: TObject);
begin
 dbgMaster.Color:=clActiveGrid;
 ActiveGrid:=1;
 dbgDetail.Color:=clDeactiveGrid;
end;

procedure TItemReqVerify.dbgMasterExit(Sender: TObject);
begin
 //ActiveGrid:=0;
end;
procedure TItemReqVerify.DoDelete(var mes: TMessage);
begin

end;


procedure TItemReqVerify.quMasterSelectCalcFields(DataSet: TDataSet);
begin
 //  quMasterSelectStateDesc.Value:=' ‰ŸÌ„ ‘œÂ';
end;
procedure TItemReqVerify.AnswerToMes(var mes: Tmessage);
begin
 if mes.Lparam=0 then
  begin
    Dabdata.quReq_Item.close;
    Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqVerReq_No.asinteger;
    Dabdata.quReq_Item.open;
    if (Flg=True) then
     begin
      if (Dabdata.quItem_ReqVerState.asinteger=1) then
       btVerify.Enabled:=True
     else
       btVerify.Enabled:=False;
     end
    else
       btVerify.Enabled:=False;
    if (Dabdata.quItem_ReqVerReq_Type.Value=2) and (DabData.quItem_ReqVerState.Value=1)
    then  btVerify.Enabled:=True;
  end;
end;

procedure TItemReqVerify.btVerifyClick(Sender: TObject);
var
bk:Tbookmark;
str:string;
Request:Integer;
begin
 if (Dabdata.quItem_ReqVer.RecordCount<>0) then
    begin
      Request:=Dabdata.quItem_ReqVerReq_No.asinteger;
      bk:=Dabdata.quItem_ReqVer.GetBookMark;
      str:=Dabdata.disp_date;
      quMastUpdate.Parameters[0].Value:=Dabdata.quItem_ReqverCreator.AsString;
      quMastUpdate.Parameters[1].Value:=Dabdata.quItem_ReqverCreate_Date.AsString;
      quMastUpdate.Parameters[2].Value:=Dabdata.quItem_Reqverorg_code.asinteger;
      quMastUpdate.Parameters[3].Value:=Dabdata.quItem_ReqverOrg_Unit_Code.AsInteger;
      quMastUpdate.Parameters[4].Value:=Dabdata.quItem_ReqVerConfirmer.AsString;
      quMastUpdate.Parameters[5].Value:=Dabdata.quItem_ReqVerConfirm_date.AsString;
      quMastUpdate.Parameters[6].Value:=DabData.emp_no;
      quMastUpdate.Parameters[7].Value:=str;
      quMastUpdate.Parameters[8].Value:=3;
      quMastUpdate.Parameters[9].Value:=Dabdata.quItem_ReqverReq_Type.asinteger;
      if not(Dabdata.quItem_ReqverGoods_Code.IsNull) then
        quMastUpdate.Parameters[10].Value:=Dabdata.quItem_ReqverGoods_Code.Value;
      quMastUpdate.Parameters[11].Value:=Dabdata.quItem_ReqverReq_No.asinteger;
      quUpdateDet.Parameters[0].Value:=1;
      quUpdateDet.Parameters[1].Value:=Dabdata.quItem_ReqVerReq_No.asinteger;
      Dabdata.ADOC.BeginTrans;
      try
        quMastUpdate.execsql;
        quUpdateDet.execsql;
        DabData.ADOC.CommitTrans;
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
      Dabdata.quItem_Reqver.Close;
      Dabdata.quItem_Reqver.Open;
      if (Dabdata.quItem_ReqVer.BookmarkValid(bk)) then
       Dabdata.quItem_ReqVer.GotoBookmark(bk);
       Dabdata.quItem_ReqVer.FreeBookmark(bk);
        Dabdata.quReq_Item.Close;
      DabData.quReq_Item.Parameters[0].Value:=Dabdata.quItem_ReqverReq_No.asinteger;
      Dabdata.quReq_Item.Open;
      Dabdata.quItem_ReqVer.Locate('Req_No',Request,[]);
  end;//mde=2
end;
procedure TItemReqVerify.AnswerToOpen(var mes: Tmessage);
begin
 Dabdata.quReq_Item.first;
 repeat
     if(Dabdata.quReq_ItemRecieve_Amount.IsNull) then
      begin
       Flg:=False;
       Break;
      end
     else
      Flg:=True;
  Dabdata.quReq_Item.Next;
  until  (Dabdata.quReq_Item.Eof );
 if (Flg=True) then
     begin
      if (Dabdata.quItem_ReqVerState.asinteger=1) then
       btVerify.Enabled:=True
     else
       btVerify.Enabled:=False;
     end
    else
       btVerify.Enabled:=False; 
 //Dabdata.quItem_ReqVerAfterScroll(Dabdata.quItem_ReqVer);
end;

end.
