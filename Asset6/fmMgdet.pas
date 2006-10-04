unit fmMgdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,fard, SmoothShow,
  SetForm, RSqlButton, RSqllookup, RSqlEdit,RadForms, RSQLComboBox, Buttons,
  RSqlMemo,Variants;

type
  Tmgdet = class(TRadForm)
    panel2: TPanel;
    btok:TRSqlButton;
    btca:TRSqlButton;
    quinsert: TADOQuery;
    quupdate: TADOQuery;
    Label12: TLabel;
    dsrec1: TDataSource;
    quitem: TADOQuery;
    quitemrec_no: TIntegerField;
    quitemitem_code: TStringField;
    quitembuy_price: TFloatField;
    quitemex_price: TFloatField;
    quitemamount2: TIntegerField;
    quitemitem_name: TStringField;
    quitemclass_name: TStringField;
    quMaxLabel: TADOQuery;
    quMaxLabelLastLabel: TIntegerField;
    dsRecno: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    edlable: TRSqlEdit;
    edeprice: TRSqlEdit;
    edbprice: TRSqlEdit;
    dblitem: TRSqlDbLookup;
    edclass: TRSqlDbLookup;
    quitemclass_code: TSmallintField;
    dsClass: TDataSource;
    quAllClass: TADOQuery;
    cbGetType: TRSqlComboBox;
    quSetOrg: TADOQuery;
    dsOrg: TDataSource;
    lkpOrg: TRSqlDbLookup;
    Label1: TLabel;
    edAmount: TRSqlEdit;
    dsItemClass: TDataSource;
    quItemClass: TADOQuery;
    quAllClassclass_code: TSmallintField;
    quAllClassclass_desc: TStringField;
    quAllClassclass_name: TStringField;
    quAllClassClass_Type: TSmallintField;
    quAllClassppc_code: TStringField;
    quAllClasspc_code: TStringField;
    quAllClassps_code: TStringField;
    Label11: TLabel;
    quLabelCheck: TADOQuery;
    quLabelCheckCount: TIntegerField;
    quItemAmount: TADOQuery;
    quItemAmountDefCount: TIntegerField;
    quItemAmountAmount: TIntegerField;
    quItemAmountitmcount: TIntegerField;
    dblrec: TRSqlDbLookup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    lbctg: TLabel;
    edcode: TRSqlEdit;
    SpeedButton3: TSpeedButton;
    cbOldLabel: TCheckBox;
    SpeedButton4: TSpeedButton;
    mmNote: TRSqlMemo;
    cbState: TRSqlDbLookup;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc1ID: TIntegerField;
    ADOStoredProc1desc: TStringField;
    DataSource1: TDataSource;
    dsCat: TDataSource;
    spCat1: TADOStoredProc;
    spCat1ID: TIntegerField;
    spCat1desc: TStringField;
    cbItemType: TRSqlDbLookup;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure edcodeKeyPress(Sender: TObject; var Key: Char);
    procedure edrecKeyPress(Sender: TObject; var Key: Char);
    procedure edlableKeyPress(Sender: TObject; var Key: Char);
    procedure editemKeyPress(Sender: TObject; var Key: Char);
    procedure edbpriceKeyPress(Sender: TObject; var Key: Char);
    procedure edepriceKeyPress(Sender: TObject; var Key: Char);
    procedure FormSet;
    procedure dblrecCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblitemCloseUp(Sender: TObject);
    procedure cbItemTypeClick(Sender: TObject);
    procedure edclassClick(Sender: TObject);
    procedure quItemClassBeforeOpen(DataSet: TDataSet);
    procedure RSqlButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure quAllClassAfterScroll(DataSet: TDataSet);
    procedure SetMde(Value:Integer);
    procedure dblrecKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     fmde:integer;
      GoodType  : Smallint;
      MyLabel   : integer;
    property mde : integer read fmde write SetMde;
  end;

var
  mgdet: Tmgdet;
  str1,Str2 : string;
  modalres  : Integer ;
  hasrec:boolean;

implementation

uses DabDmdle,  UUserMsg, UFmShMsg, fmGoodsRec, fmMfrm, fmgoods, fmMoveable,
  fmItemViewer;

{$R *.DFM}


procedure Tmgdet.btokClick(Sender: TObject);
var
   bk:TBookmark;
   LabelCounter,i : Integer ;
   LimLess, LimUp : Integer;
begin
  quMaxLabel.Close;
  quMaxLabel.Open;
  case mde of
  1: begin
     if trim(edlable.Text)<>'' then
     begin
       LimLess:=strtoint(trim(edlable.Text));
       LimUp   := LimLess + StrToInt( edAmount.Text)-1;
       quLabelCheck.Close;
       quLabelCheck.Parameters[0].Value := LimLess;
       quLabelCheck.Parameters[1].Value := LimUp;
       quLabelCheck.Parameters[2].Value := edclass.KeyValue;
       quLabelCheck.Open;

       if quLabelCheckCount.AsInteger <> 0 then
       begin
          DabData.ShowPopupMessage('»—ç”»Ì »« ‘„«—Â Ê«—œ ‘œÂ œ— Õ«· Õ«÷— „ÊÃÊœ «” ');
          exit;
       end;
     end;
     if trim(edlable.Text)='' then 
        LabelCounter:=-1
     else
        LabelCounter:=strtoint(edlable.Text);
     for i := 1 to StrToInt(edAmount.Text) do
     begin
       quInsert.Parameters[0].Value := dblitem.keyvalue;
       quInsert.Parameters[1].Value := dblrec.keyvalue;
       if LabelCounter >0 then
       begin
         if cbOldLabel.Checked then
           quInsert.Parameters[2].Value := -1*LabelCounter
         else
           quInsert.Parameters[2].Value := LabelCounter;
         LabelCounter := LabelCounter + 1 ;
       end
       else
         quInsert.Parameters[2].Value := Null;
       if (edbprice.text='') then
         quInsert.Parameters[3].Value:= NULL
       else
         quInsert.Parameters[3].Value:= edbprice.text;
       if (edeprice.text='')then
         quInsert.Parameters[4].Value:= NULL
       else
         quInsert.Parameters[4].Value:= edeprice.text;
       quInsert.Parameters[5].Value:= cbGetType.ItemIndex; //GoodType;
       quInsert.Parameters[6].Value:= cbState.KeyValue; //GoodType;
       if mmNote.Text<>'' then
         quInsert.Parameters[7].Value:= mmNote.Text;
       DabData.ADOC.BeginTrans;
       Try
         quInsert.ExecSQL;
         DabData.ADOC.CommitTrans;
       except
         DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
         DabData.ADOC.RollbackTrans;
       end;//try
     end; // for
     mde:=0;
     if(Not(MFrm.ChkChild(TMoveable))) then
        MFrm.RunForm(Tmoveable,Sender,moveable);
     Moveable.qumoveable.Close;
     Moveable.qumoveable.Parameters[2].value := '%';
     Moveable.qumoveable.Open;
     Moveable.qumoveable.Last;
  end; //case1
  2: begin //1
    if trim(edLable.Text)<>'' then
    begin
      if MyLabel <> strtoint(edlable.Text) then
      begin
        quLabelCheck.Close;
        quLabelCheck.Parameters[0].Value := StrToInt(edlable.Text);
        quLabelCheck.Parameters[1].Value := StrToInt(edlable.Text);
        quLabelCheck.Open;
        if quLabelCheckCount.AsInteger <> 0 then
        begin
          DabData.ShowPopupMessage('»—ç”»Ì »« ‘„«—Â Ê«—œ ‘œÂ œ— Õ«· Õ«÷— „ÊÃÊœ «” ');
          exit;
        end;
      end;
    end;
    if(Not(MFrm.ChkChild(TMoveable))) then
         MFrm.RunForm(Tmoveable,Sender,moveable);
    bk := Moveable.qumoveable.GetBookmark;
    if trim(edlable.Text) <>''then
      if cbOldLabel.Checked then
         quupdate.Parameters[0].Value :=-1*strtoint(edlable.Text)
      else
         quupdate.Parameters[0].Value :=strtoint(edlable.Text)
    else
      quupdate.Parameters[0].Value :=NULL;
    if edeprice.text <>''then
        quupdate.Parameters[1].Value :=strtoint(edeprice.text)
    else quupdate.Parameters[1].Value :=NULL;
    if edbprice.text <>''then
       quupdate.Parameters[2].Value :=strtoint(edbprice.text)
    else quupdate.Parameters[2].Value :=NULL;
    quupdate.Parameters[3].Value :=cbGetType.ItemIndex;
    if mmNote.Text<>'' then
      quupdate.Parameters[4].Value :=mmNote.Text;
    quupdate.Parameters[5].Value :=strtoint(Trim(edcode.Text));
    DabData.ADOC.BeginTrans;
    Try
      quUpdate.ExecSQL;
      DabData.ADOC.CommitTrans;
    except
      DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
      DabData.ADOC.RollbackTrans;
    end;//try
    mde:=0;
    if(Not(MFrm.ChkChild(TMoveable))) then
       MFrm.RunForm(Tmoveable,Sender,moveable);
    Moveable.qumoveable.Close;
    Moveable.qumoveable.Parameters[2].value := '%';
    Moveable.qumoveable.Open;
    Moveable.qumoveable.GotoBookmark(bk);
    Moveable.qumoveable.FreeBookmark(bk);
  end; //2
 end;//case
 mgdet.Close;
end;

procedure Tmgdet.btcaClick(Sender: TObject);
begin
   mgdet.Close;
end;



procedure Tmgdet.edcodeKeyPress(Sender: TObject; var Key: Char);
begin
key:=DabData.CheckKey(key);
end;

procedure Tmgdet.edrecKeyPress(Sender: TObject; var Key: Char);
begin
key:=DabData.CheckKey(key);
end;

procedure Tmgdet.edlableKeyPress(Sender: TObject; var Key: Char);
begin
   key:=DabData.CheckKey(key);
end;

procedure Tmgdet.editemKeyPress(Sender: TObject; var Key: Char);
begin
key:=DabData.CheckKey(key);
end;

procedure Tmgdet.edbpriceKeyPress(Sender: TObject; var Key: Char);
begin
  if (ord(key) < 48) or (ord(key) > 57) then
  if(ord(key) <> 8) then
    key := #0;
  if (edbprice.text <> '') then
  if (strtofloat(edbprice.text) >= 2000000000) and (ord(key) <> 8) then
    key := #0;
end;

procedure Tmgdet.edepriceKeyPress(Sender: TObject; var Key: Char);
begin
  if (ord(key) < 48) or (ord(key) > 57) then
  if(ord(key) <> 8) then
    key := #0;
  if (edeprice.text <> '') then
  if (strtofloat(edeprice.text) >= 2000000000) and (ord(key) <> 8) then
    key := #0;
end;


procedure Tmgdet.FormSet;
begin
  FormInitializer1.SearchFocusables :=true;
  cbGetType.ItemIndex:=0;
  edAmount.Text:='1';
  quSetOrg.Close;
  quSetOrg.Open;
  if mde <2 then
   begin
     lkpOrg.KeyValue:=OrganizCode;
     FormInitializer1.FieldMode :=fmInsert;
     cbItemType.FieldType :=ftDisplay;
     cbItemType.KeyValue :=2;
     if cbItemType.KeyValue<>-1 then
     begin
      quAllClass.Close ;
      quAllClass.Parameters[0].Value :=cbItemType.KeyValue;
      quAllClass.Open;
     end;
     quMaxLabel.Close;
     quMaxLabel.Open;
     edclass.KeyValue:=13;
     edclassClick(nil);
     cbState.KeyValue:=1;
   end
   else
    begin
     dblrec.KeyValue:=Moveable.qumoveablereceipt_no.AsInteger;
     cbGetType.itemindex :=Moveable.qumoveabletype.Asinteger;
     dblitem.KeyValue :=Moveable.qumoveableitem_code.Value;
     cbItemType.FieldType :=ftDisplay;

     SpeedButton2.Enabled:=false;
     SpeedButton1.Enabled:=false;
     edclass.FieldType :=ftDisplay;
     dblitem.FieldType :=ftDisplay;
     dblrec.FieldType :=ftDisplay;
     cbState.FieldType :=ftDisplay;
     cbState.KeyValue := Moveable.qumoveableState.Value;
     btok.Enabled :=true;
     FormInitializer1.FieldMode :=fmEdit;

    end;

   FormInitializer1.Execute;
end;

procedure Tmgdet.dblrecCloseUp(Sender: TObject);
begin
   if dblrec.KeyValue <> null then
      begin
        cbGetType.FieldType :=ftDisplay;
        cbItemType.FieldType :=ftDisplay;
        edclass.FieldType :=ftDisplay;
        lkpOrg.FieldType :=ftDisplay;
        edAmount.FieldType :=ftDisplay;
        edbprice.FieldType :=ftDisplay;
        edeprice.FieldType :=ftNonRequired;
        cbState.FieldType :=ftDisplay;
        SpeedButton1.Enabled:=false;
        cbState.KeyValue := 0;

        cbGetType.ItemIndex:=DabData.quMgdetRecNoGetType.AsInteger-1;
        edclass.KeyValue:=DabData.quMgdetRecNoclass_code.AsInteger;
        if(DabData.quMgdetRecNoOrg_Code.AsString<>'') then
          lkpOrg.keyvalue:=DabData.quMgdetRecNoOrg_Code.AsString
        else
          lkpOrg.keyvalue:=-1;
        quitem.close;
        quitem.Parameters[0].Value:=dblrec.Text;
        quitem.Open;

        FormInitializer1.FieldMode:=fmInsert;
        FormInitializer1.Execute;
      end else
        begin
        SpeedButton1.Enabled:=True;
         cbGetType.FieldType :=ftRequired;
//         cbItemType.FieldType :=ftRequired;
        cbItemType.FieldType :=ftDisplay;
         edclass.FieldType :=ftRequired;
         lkpOrg.FieldType :=ftRequired;
         edAmount.FieldType :=ftRequired;
         edeprice.FieldType :=ftNonRequired;
         cbState.FieldType  := ftRequired;
        end;

     FormInitializer1.FieldMode:=fmInsert;
     FormInitializer1.Execute;



end;

//************************************************************************

procedure Tmgdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mgdet := nil;
  Action := caFree;
end;

procedure Tmgdet.dblitemCloseUp(Sender: TObject);
begin
if dblrec.text<>'' then
begin
   quItemAmount.Close;
   quItemAmount.Parameters[0].Value := dblrec.KeyValue;
   quItemAmount.Parameters[1].Value := dblitem.KeyValue;
   quItemAmount.Parameters[2].Value := dblrec.KeyValue;
   quItemAmount.Parameters[3].Value := dblitem.KeyValue;
   quItemAmount.Open;

   if Trim(dblitem.Text) <> ''  then
   begin
       if(quItemAmountDefCount.AsInteger=0) then
       begin
         dblitem.KeyValue := NULL;
         DabData.ShowPopupMessage('. „«„Ì «„Ê«· „—»Êÿ »Â «Ì‰ ﬂ«·« À»  ‘œÂ «‰œ');
         exit;
       end;
       edAmount.Text  := IntToStr(quItemAmountDefCount.AsInteger );
       edbprice .Text := IntToStr(quitembuy_price.AsInteger );
   end
   else
   begin
         edAmount.Text := '';
         edbprice.Text := '';
   end;
   if quItemAmountDefCount.AsInteger = 0 then edAmount.Clear;
end;
end;

procedure Tmgdet.cbItemTypeClick(Sender: TObject);
begin
      if mde <> 2 then
      begin
       if cbItemType.KeyValue<>-1 then
       begin
        quAllClass.Close ;
        quAllClass.Parameters[0].Value :=cbItemType.KeyValue;
        quAllClass.Open;
       end;
      end;
end;

procedure Tmgdet.edclassClick(Sender: TObject);
begin
  inherited;
  if mde<>2 then
  begin
    quItemClass.Close;
    quitemclass.open;
    dblitem.ListSource :=dsItemClass;
    dblitem.ListField :='Item_name';
    dblitem.KeyField :='item_code';
  end;


end;

procedure Tmgdet.quItemClassBeforeOpen(DataSet: TDataSet);
begin
  inherited;
    if TRIM(dblRec.Text) <> '' then
    begin
        quItemClass.Parameters[0].Value := dblRec.KeyValue ; ;
        quItemClass.Parameters[1].Value := edClass.KeyValue ;
        quItemClass.Parameters[2].Value := 1 ;
        quItemClass.Parameters[3].Value := edClass.KeyValue ;
        quItemClass.Parameters[4].Value := 0 ;

    end
    else
    begin
        quItemClass.Parameters[1].Value := edClass.KeyValue ;
        quItemClass.Parameters[2].Value := 0 ;
        quItemClass.Parameters[3].Value := edClass.KeyValue ;
        quItemClass.Parameters[4].Value := 1 ;
    end;

end;

procedure Tmgdet.RSqlButton1Click(Sender: TObject);
begin
  inherited;
  MFrm.RunForm(TGoodsRec,nil,GoodsRec);
end;

procedure Tmgdet.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  MFrm.RunForm(Tgoods,nil,goods);
  goods:=Tgoods(MFrm.CHILD(Tgoods));
  if DabData.qugoods.Active then
    DabData.qugoods.Locate('Class_code',edclass.KeyValue,[loPartialKey]);
  quAllClass.Close;
  quAllClass.Open;
  edclass.KeyValue:=DabData.qugoodsclass_code.Value;
  quItemClass.Close;
  quItemClass.Parameters[4].Value:=DabData.qugoodsclass_code.Value;
  quItemClass.Open;
  dblitem.KeyValue:=DabData.quDetKaritem_code.Value;

//  MFrm.N11Click(Sender);
end;


procedure Tmgdet.quAllClassAfterScroll(DataSet: TDataSet);
begin
  inherited;
  quMaxLabel.Close;
  quMaxLabel.Parameters[0].Value:=edclass.KeyValue;
  quMaxLabel.Open;
  if(quMaxLabelLastLabel.AsString<>'') then
    edlable.Text:=quMaxLabelLastLabel.AsString
  else
    edlable.Text:='1';
end;
procedure Tmgdet.SetMde(Value:Integer);
begin
  fmde:=Value;
  FormSet;
end;


procedure Tmgdet.dblrecKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dblrecCloseUp(Sender);
end;

procedure Tmgdet.SpeedButton3Click(Sender: TObject);
begin
  ItemVeiwer:=TItemVeiwer.Create(Application);
  ItemVeiwer.dblClass.KeyValue:=edclass.KeyValue;
  ItemVeiwer.ItemObject:=dblItem;
  DabData.quGoods.Close;
  DabData.quGoods.Parameters[0].Value:=2;
  DabData.quGoods.Open;
  ItemVeiwer.ShowModal;
  if ItemVeiwer.quItemClass_Type.Value =2 then
  begin
    edClass.KeyValue:=ItemVeiwer.quItemclass_code.Value;
    edclassClick(nil);
  end
  else
    DabData.ShowPopupMessage('›ﬁÿ «„Ê«· ⁄Ì— „’—›Ì —« «‰ Œ«» ﬂ‰Ìœ');
end;

procedure Tmgdet.FormShow(Sender: TObject);
begin
  inherited;
  ADOStoredProc1.Close;
  ADOStoredProc1.Open;
  spCat1.Close;
  spCat1.Open;
end;

end.
