unit fmMoveable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow, RadForms, RSqlEdit, RSQLComboBox, Menus, Buttons,Variants;

type
 Tmoveable = class(TRadForm)
    DBGrid1: TDBGrid;
    dsmoveable: TDataSource;
    quDelete: TADOQuery;
    qumoveable: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    qumoveableitem_code: TStringField;
    qumoveablereceipt_no: TIntegerField;
    qumoveablelabel: TIntegerField;
    qumoveableBprice: TFloatField;
    qumoveableEprice: TFloatField;
    qumoveableType: TSmallintField;
    qumoveableState: TSmallintField;
    qumoveableitem_name: TStringField;
    qumoveableGoodS_CodeStr: TStringField;
    qumoveableState_Name: TStringField;
    qumoveablectype: TStringField;
    qumoveableLabelstr: TStringField;
    qumoveableBpriceStr: TStringField;
    edSearch: TRSqlEdit;
    qumoveableClass_code: TSmallintField;
    qumoveableClass_Type: TSmallintField;
    qumoveableRow: TStringField;
    Label2: TLabel;
    cbState: TRSqlComboBox;
    Label3: TLabel;
    edSearchLabel: TRSqlEdit;
    Label4: TLabel;
    qumoveablegoods_code: TStringField;
    qumoveableUser: TStringField;
    Panel2: TPanel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DataSource1: TDataSource;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    qumoveableMoveableNote: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure qumoveableRowGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cbStateClick(Sender: TObject);
    procedure cbStateKeyPress(Sender: TObject; var Key: Char);
    procedure SetUserClick(Sender: TObject);
    procedure qumoveableAfterScroll(DataSet: TDataSet);
  private
    procedure Delete();
    procedure MultiDel();
    { Private declarations }

  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  public
    { Public declarations }
  end;

var
  moveable: Tmoveable;

implementation
uses DabDmdle, fmElam, fmmgdet, UCommon, fmElamDel, fmMfrm,
  fmSetBillUserName;
{$R *.DFM}

procedure Tmoveable.DoNew(var mes :TMessage);
begin
   mgdet := Tmgdet.Create(Application);

   mgdet.Caption:='                                  À»  «ÿ·«⁄«  «„Ê«· „‰ﬁÊ·';

   DabData.quMgdetRecNo.Close;
   DabData.quMgdetRecNo.Open;

   qumoveable.Close;
   qumoveable.Parameters[2].Value := '%';
   qumoveable.Open;
   edSearch.Clear;
   qumoveable.Last;
   mgdet.dblitem.KeyValue:=null;
   mgdet.dblrec .KeyValue:=null;
   mgdet.edlable.text:='';
   mgdet.edbprice.text:='';
   mgdet.edeprice.text:='';
   mgdet.cbGetType.ItemIndex  :=-1;
   qumoveable.Last;
//   if(qumoveableGoods_code.AsString<>'') then
//     mgdet.edcode.text:= IntToStr(StrToInt(qumoveableGoods_code.AsString)+1)
//   else
//     mgdet.edcode.text:=IntToStr(DabData.SalVar)+'000001';
   mgdet.mde:=1;
   DBGrid1.Color := clDeactiveGridColor;
   setformColor(mgdet);
   mgdet.Show;
   DBGrid1.Color := clActiveGridColor;
end;

procedure Tmoveable.DoEdit(var mes :TMessage);
begin
  if ( qumoveable.RecordCount<>0)then
  begin
    mgdet := Tmgdet.Create(Application);
    mgdet.mde:=2;
    mgdet.Caption:='                                  ÊÌ—«Ì‘ «ÿ·«⁄«  «„Ê«· „‰ﬁÊ·';
    DabData.quMgdetRecNo.Close;
    DabData.quMgdetRecNo.Open;
    mgdet.Label4.Caption   := ': ‘„«—Â »‹—ç‹”‹» ';
    mgdet.Label1.Visible   := False;
    mgdet.edAmount.Visible := False;
    mgdet.edcode.text:= qumoveableGoods_code.AsString;

    mgdet.dblrec.keyvalue := qumoveablereceipt_no.asinteger;
{    DabData.qurec.close;
    DabData.qurec.Parameters[0].Value := mgdet.dblrec.KeyValue;
    DabData.qurec.open;}

    mgdet.cbItemType.KeyValue := qumoveableClass_Type.AsInteger;

    mgdet.quAllClass.Close;
    mgdet.quAllClass.Parameters[0].Value:=qumoveableClass_Type.AsInteger;
    mgdet.quAllClass.Open;
    mgdet.edclass.KeyValue := qumoveableClass_code.AsInteger;

    mgdet.quItemClass.Close;
    mgdet.quItemClass.Parameters[0].Value :=mgdet.edclass.KeyValue;
    mgdet.quitemclass.open;
    mgdet.dblitem.ListSource :=mgdet.dsItemClass;
    mgdet.dblitem.ListField :='Item_name';
    mgdet.dblitem.KeyField :='item_code';
    mgdet.mmNote.Text:=qumoveableMoveableNote.Value;
    if qumoveablelabel.Asinteger<0 then
    begin
      mgdet.cbOldLabel.Checked:=True;
      mgdet.edlable.text     := IntToStr(-1*qumoveablelabel.Asinteger)
    end
    else
    begin
      mgdet.cbOldLabel.Checked:=False;
      mgdet.edlable.text     := qumoveablelabel.AsString;
    end;
    mgdet.mylabel          := qumoveablelabel.Asinteger;
    mgdet.edeprice.text    := qumoveableeprice.AsString;
    mgdet.edbprice.text  := qumoveablebprice.AsString;
    mgdet.GoodType      := qumoveabletype.AsInteger;


    DBGrid1.Color := clDeactiveGridColor;
    mgdet.Show;
    DBGrid1.Color := clActiveGridColor;
  end;
end;
procedure Tmoveable.DoDelete(var mes :TMessage);
begin
//  if(qumoveableState.Value=0) then
//  begin
    if  (qumoveable.RecordCount <> 0)  then
    begin
      //Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
      elamdel:=telamdel.create(application);
      setformColor(elamdel);
      Elamdel.showmodal;
      if (Elamdel.bbOk.modalResult=mrOk)
        then
         if (Elamdel.CurrRec=true) then delete()
           else MultiDel();
    end;
//  end
//  else
//    DabData.ShowPopupMessage('›ﬁÿ ﬂ«·«Â«Ì „ÊÃÊœ œ— «‰»«— ‰Ê ﬁ«»· Õ–› ‘œ‰ „Ìù»«‘œ .');
end;

(*** This procedure Delete a chosen row***)
procedure Tmoveable.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value := qumoveablegoods_code.AsString;
    quDelete.parameters[1].value := qumoveablegoods_code.AsString;
    quDelete.ExecSql;
    qumoveable.close;
    if Trim (edsearch.Text) = ''
        then  qumoveable.Parameters[2].Value := '%'
        else  qumoveable.Parameters[2].Value := '%'+Trim(edSearch.Text)+'%';
    qumoveable.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tmoveable.FormShow(Sender: TObject);
begin
     qumoveable.close;
     qumoveable.Parameters[0].Value := 0;
     qumoveable.Parameters[1].Value := -1;
     qumoveable.Parameters[2].Value := '%';
     qumoveable.open;
     cbState.ItemIndex:=0;
     DBGrid1.Color := clActiveGridColor;
end;



procedure Tmoveable.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=76;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tmoveable.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  moveable:=nil;
  Action:=caFree;
end;

procedure Tmoveable.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;


procedure Tmoveable.edSearchChange(Sender: TObject);
begin
    qumoveable.Close;
    if Trim (edsearch.Text) = ''
        then  qumoveable.Parameters[2].Value := '%'
        else  qumoveable. Parameters[2].Value := '%'+Trim(edSearch.Text)+'%';
    if Trim (edsearchLabel.Text) = ''
        then  qumoveable.Parameters[1].Value := -1
        else  qumoveable.Parameters[1].Value := StrToInt(edsearchLabel.Text);
    qumoveable.Parameters[0].Value := cbState.ItemIndex;
    qumoveable.Open;
end;

procedure Tmoveable.DBGrid1ColEnter(Sender: TObject);
begin
 {if (dbgrid1.SelectedIndex>=5) then
     dbgrid1.ReadOnly:=false
 else
     dbgrid1.ReadOnly:=true; }
end;

procedure Tmoveable.MultiDel;
begin

//  for i:=strtoint(elamdel.edfnumber.text) to strtoint(elamdel.edlnumber.text) do
  // begin
    DabData.ADOC.BeginTrans;
    try
    begin
      //qumoveable.Locate('Row',i,[loCaseInsensitive]);
      //if strtoint(elamdel.edlnumber.text)< qumoveablegoods_code.Asinteger then exit;
      quDelete.parameters[0].value := elamdel.edfnumber.text;
      quDelete.Parameters[1].Value := elamdel.edlnumber.text;
      quDelete.ExecSql;

      DabData.ADOC.CommitTrans;
    end;
    except
      DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
      DabData.ADOC.RollbackTrans;
    end;
  //end;
  qumoveable.close;
      if Trim (edsearch.Text) = ''
          then  qumoveable.Parameters[2].Value := '%'
          else  qumoveable.Parameters[2].Value := '%'+Trim(edSearch.Text)+'%';
      qumoveable.Open;end;

procedure Tmoveable.qumoveableRowGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
if  qumoveable.IsEmpty  then  Text:=''
   else  Text:=IntToStr(qumoveable.recno) ;
end;

procedure Tmoveable.cbStateClick(Sender: TObject);
begin
  inherited;
  edSearchChange(Sender);
end;
procedure Tmoveable.cbStateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  edSearchChange(Sender);
end;
procedure Tmoveable.SetUserClick(Sender: TObject);
begin
 if MFrm.spRadedit.Enabled then
 begin
   if qumoveableState.Value=1 then
   begin
     SetBillUserName:=TSetBillUserName.Create(Application);
     SetBillUserName.edBill.Text:='-1';
     SetBillUserName.edItemName.Text:=qumoveableitem_name.Value;
     SetBillUserName.edGoods.Text:=qumoveableGoodS_CodeStr.Value;
     SetBillUserName.ShowModal;
     qumoveableAfterScroll(nil);
   end
   else
     DabData.ShowPopupMessage('‘„« «Ì‰ ﬂ«·« —« »«Ìœ œ— ÕÊ«·Â «‰»«—  ÕÊÌ· œÂÌœ');
 end
 else
  DabData.ShowPopupMessage('‘„« œ” —”Ì «Ì‰ ﬂ«— —« ‰œ«—Ìœ');

end;
procedure Tmoveable.qumoveableAfterScroll(DataSet: TDataSet);
begin
   if qumoveable.RecordCount>0 then
   begin
     DabData.quGoodsUser.Close;
     DabData.quGoodsUser.Parameters[0].Value:=qumoveableGoodS_CodeStr.Value;
     DabData.quGoodsUser.Open;
     if not(SpeedButton1.Enabled) then
     begin
       SpeedButton1.Enabled:=True;
       SpeedButton2.Enabled:=True;
       SpeedButton3.Enabled:=True;
     end;
   end
   else
   begin
//     DabData.quGoodsUser.Close;
     SpeedButton1.Enabled:=False;
     SpeedButton2.Enabled:=False;
     SpeedButton3.Enabled:=False;
   end;


end;

end.
