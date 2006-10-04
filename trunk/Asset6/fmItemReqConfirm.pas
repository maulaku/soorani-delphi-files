unit fmItemReqConfirm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, RSqllookup, Mask, RSqlMaskEdit, StdCtrls, RSqlEdit,RadForms,
  RSQLComboBox, SetForm, RSqlButton, ExtCtrls, Grids, DBGrids, Db, ADODB,define;

type
  TItemReqConfirm = class(TRadForm)
    Panel1: TPanel;
    dbgDetail: TDBGrid;
    dbgMaster: TDBGrid;
    dsDetailSelect: TDataSource;
    dsMasterSelect: TDataSource;
    QuDetailDel: TADOQuery;
    quMasterDel: TADOQuery;
    quCascadeDel: TADOQuery;
    paButton: TPanel;
    btReject: TRSqlButton;
    btOK: TRSqlButton;
    quMastUpdate: TADOQuery;
    quUpdateDet: TADOQuery;
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgDetailEnter(Sender: TObject);
    procedure dbgMasterEnter(Sender: TObject);
    procedure dbgMasterExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure quMasterSelectCalcFields(DataSet: TDataSet);
    procedure btRejectClick(Sender: TObject);
    procedure dbgDetailExit(Sender: TObject);
  private

    { Private declarations }
  public
   Flag:Boolean;
    { Public declarations }
  protected
   procedure DoNew(var mes :TMessage);message F_NEW;
   procedure DoEdit(var mes :TMessage);message F_EDIT;
   Procedure DoDelete(var mes :TMessage);message F_DEL;
   procedure AnswerToMes(Var mes:Tmessage);message SCROLL;
   procedure AnswerToOpen(Var mes:Tmessage);message OPEN;
  end;

var
  ItemReqConfirm: TItemReqConfirm;
  ActiveGrid,mde:smallint;



implementation

{$R *.DFM}

uses dabdmdle, fmItemRequestInput, fmInputReqItem, fmVerify;


procedure TItemReqConfirm.DoNew(var mes: TMessage);
begin
end;

procedure TItemReqConfirm.DoEdit(var mes: TMessage);
begin
if (ActiveGrid=2) and (Dabdata.quItem_ReqConfState.Value=0) then
 begin
  InputReqItem:=TInputReqItem.Create(Application);
  InputReqItem.dsGoods.DataSet:=DabData.quJustItem;
  DabData.quJustItem.Close;
  DabData.quJustItem.Open;
  InputReqItem.dblItemName.FieldType:=ftDisplay;
  InputReqItem.edReqAmount.fieldType:=ftDisplay;
  InputReqItem.edConf_Amount.fieldType:=ftRequired;
  InputReqItem.edRecAmount.fieldType:=ftDisplay;
  InputReqItem.edRecAmount.clear;
  InputReqItem.cmbState.fieldType:=ftDisplay;
  InputReqItem.edReqNo.Text:=inttostr(Dabdata.quReq_ItemReq_No.asinteger);
  InputReqItem.dblItemName.KeyValue:=DabData.quReq_ItemItem_Code.AsString;
  InputReqItem.edReqAmount.Text:=inttostr(Dabdata.quReq_ItemReq_Amount.asinteger);
  InputReqItem.edConf_Amount.Text:=inttostr(Dabdata.quReq_ItemConf_Amount.asinteger);
  if Not(Dabdata.quReq_ItemRecieve_Amount.IsNull) then
   InputReqItem.edRecAmount.text:=inttostr(Dabdata.quReq_ItemRecieve_Amount.AsInteger);
  InputReqItem.cmbState.ItemIndex:=Dabdata.quReq_Itemr_state.AsInteger;
  InputReqItem.FormInitializer1.FieldMode:=fmedit;
  InputReqItem.chk:=2;
  InputReqItem.mde:=2;
  InputReqItem.FormInitializer1.execute;
  InputReqItem.cmbState.Enabled:=False;
  InputReqItem.edRecAmount.ReadOnly:=True;
  InputReqItem.show;
 end;
end;

procedure TItemReqConfirm.btCancelClick(Sender: TObject);
begin
 close;
end;

procedure TItemReqConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FormDeactivate(nil) ;        
 action:=caFree;
end;

procedure TItemReqConfirm.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=36;
  Application.MainForm.Dispatch(mes);
end;

procedure TItemReqConfirm.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TItemReqConfirm.FormShow(Sender: TObject);
var
 mes :TMessage;
begin
 mes.LParam:=0;
 top:=0;
 left:=0;
 Dabdata.quItem_ReqConf.Close;
 Dabdata.quItem_ReqConf.Open;
 DabData.quItem_ReqConf.Next;
 AnswerToMes(mes);
 Dabdata.quReq_Item.Close;
 DabData.quReq_Item.Parameters[0].Value:=Dabdata.quItem_ReqConfReq_No.asinteger;
 Dabdata.quReq_Item.Open;
 Dabdata.quReq_Item.Next;

end;

procedure TItemReqConfirm.dbgDetailEnter(Sender: TObject);
begin
 ActiveGrid:=2;
 DbgDetail.Color:=clActiveGrid;
 DbgMaster.Color:=clDeactiveGrid;
end;

procedure TItemReqConfirm.dbgMasterEnter(Sender: TObject);
begin
 dbgMaster.Color:=clActiveGrid;
 ActiveGrid:=1;
 dbgDetail.Color:=clDeactiveGrid;
end;

procedure TItemReqConfirm.dbgMasterExit(Sender: TObject);
begin
 //ActiveGrid:=0;
end;


procedure TItemReqConfirm.btOkClick(Sender: TObject);
var
bk:Tbookmark;
str:string;
begin
 if (Dabdata.quItem_ReqConf.RecordCount<>0) then
    begin
      bk:=Dabdata.quItem_Reqconf.GetBookMark;
      str:=Dabdata.disp_date;
      quMastUpdate.Parameters[0].Value:=Dabdata.quItem_ReqConfCreator.AsString;
      quMastUpdate.Parameters[1].Value:=Dabdata.quItem_ReqConfCreate_Date.AsString;
      quMastUpdate.Parameters[2].Value:=Dabdata.quItem_ReqConforg_code.asinteger;
      quMastUpdate.Parameters[3].Value:=Dabdata.quItem_ReqConfOrg_Unit_Code.AsInteger;
      quMastUpdate.Parameters[4].Value:=DabData.emp_no;
      quMastUpdate.Parameters[5].Value:=str;
      quMastUpdate.Parameters[6].Value:='';
      quMastUpdate.Parameters[7].Value:='';
      quMastUpdate.Parameters[8].Value:=1;
      quMastUpdate.Parameters[9].Value:=Dabdata.quItem_ReqConfReq_Type.asinteger;
      if not(Dabdata.quItem_ReqConfGoods_Code.IsNull) then
         quMastUpdate.Parameters[10].Value:=Dabdata.quItem_ReqConfGoods_Code.AsString;
      quMastUpdate.Parameters[11].Value:=Dabdata.quItem_ReqConfReq_No.Value;
      //quUpdateDet.Parameters[0].Value:=1;
      //quUpdateDet.Parameters[1].Value:=Dabdata.quItem_ReqConfReq_No.asinteger;
      Dabdata.ADOC.BeginTrans;
      try
        quMastUpdate.execsql;
        //quUpdateDet.ExecSQL;
        DabData.ADOC.CommitTrans;
        Dabdata.quItem_ReqConf.Close;
        Dabdata.quItem_ReqConf.Open;
        if (Dabdata.quItem_ReqConf.BookmarkValid(bk)) then
          Dabdata.quItem_ReqConf.GotoBookmark(bk);
        Dabdata.quItem_ReqConf.FreeBookmark(bk);
       except
        begin
         dabdata.ShowPopupMessage('!·ÿ›« œÊ»«—Â ”⁄Ì ﬂ‰Ìœ ');
         DabData.ADOC.RollbackTrans;
        end;
       end;//try
      Dabdata.quReq_Item.Close;
      DabData.quReq_Item.Parameters[0].Value:=Dabdata.quItem_ReqConfReq_No.asinteger;
      Dabdata.quReq_Item.Open;
  end;//mde=2
end;

procedure TItemReqConfirm.DoDelete(var mes: TMessage);
begin

end;


procedure TItemReqConfirm.quMasterSelectCalcFields(DataSet: TDataSet);
begin
 //  quMasterSelectStateDesc.Value:=' ‰ŸÌ„ ‘œÂ';
end;

procedure TItemReqConfirm.btRejectClick(Sender: TObject);
var
bk:Tbookmark;
str:string;
begin
 if (Dabdata.quItem_ReqConf.RecordCount<>0) then
    begin
      bk:=Dabdata.quItem_Reqconf.GetBookMark;
      str:=Dabdata.disp_date;
      quMastUpdate.Parameters[0].Value:=Dabdata.quItem_ReqConfCreator.AsString;
      quMastUpdate.Parameters[1].Value:=Dabdata.quItem_ReqConfCreate_Date.AsString;
      quMastUpdate.Parameters[2].Value:=Dabdata.quItem_ReqConforg_code.asinteger;
      quMastUpdate.Parameters[3].Value:=Dabdata.quItem_ReqConfOrg_Unit_Code.AsInteger;
      quMastUpdate.Parameters[4].Value:=DabData.emp_no;
      quMastUpdate.Parameters[5].Value:=str;
      quMastUpdate.Parameters[6].Value:='';
      quMastUpdate.Parameters[7].Value:='';
      quMastUpdate.Parameters[8].Value:=2;
      quMastUpdate.Parameters[9].Value:=Dabdata.quItem_ReqConfReq_Type.asinteger;
      quMastUpdate.Parameters[10].Value:=Dabdata.quItem_ReqConfGoods_Code.asinteger;
      quMastUpdate.Parameters[11].Value:=Dabdata.quItem_ReqConfReq_No.asinteger;
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
      Dabdata.quItem_ReqConf.Close;
      Dabdata.quItem_ReqConf.Open;
      if (Dabdata.quItem_ReqConf.BookmarkValid(bk)) then
       Dabdata.quItem_ReqConf.GotoBookmark(bk);
       Dabdata.quItem_ReqConf.FreeBookmark(bk);
  end;//mde=2
end;
procedure TItemReqConfirm.AnswerToMes(var mes: Tmessage);
begin
 if mes.Lparam=0 then
  begin
    Dabdata.quReq_Item.close;
    Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqConfReq_No.asinteger;
    Dabdata.quReq_Item.open;
      if (Dabdata.quItem_ReqConfState.asinteger=0) then
       begin
        btok.Enabled:=True;
        btReject.Enabled:=True;
       end
     else
       begin
        btok.Enabled:=False;
        btReject.Enabled:=False;
       end;
  end;
end;
procedure TItemReqConfirm.dbgDetailExit(Sender: TObject);
begin
DbgMaster.Color:=clActiveGrid;
DbgDetail.Color:=clDeactiveGrid;
end;

procedure TItemReqConfirm.AnswerToOpen(var mes: Tmessage);
begin
{ Dabdata.quReq_Item.first;
 repeat
     if(Dabdata.quReq_ItemConf_Amount.AsInteger=0) then
      begin
       Flag:=False;
       Break;
      end
     else
      Flag:=True;
  Dabdata.quReq_Item.Next;
  until  (Dabdata.quReq_Item.Eof );}
end;

end.
