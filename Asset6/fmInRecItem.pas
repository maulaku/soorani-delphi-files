unit fmInRecItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, StdCtrls, RSqlButton, RSqlEdit, DBCtrls, RSqllookup,
  SetForm, RadForms, Buttons, RSqlMemo;

type
  TInRecItem = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    lkpItem: TRSqlDbLookup;
    edPrice: TRSqlEdit;
    edAmount: TRSqlEdit;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    edLabel: TRSqlEdit;
    quMaxLabel: TADOQuery;
    quMaxLabelLastLabel: TIntegerField;
    quLabelCheck: TADOQuery;
    quLabelCheckCount: TIntegerField;
    Label4: TLabel;
    edNote: TRSqlMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure lkpItemCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Creation_Mode : SmallInt ;
  end;

var
  InRecItem: TInRecItem;

implementation
uses
    DabDmdle, fmItemViewer ;

{$R *.DFM}

procedure TInRecItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TInRecItem.FormShow(Sender: TObject);
begin
    DabData.quJustItem.Close ;
    DabData.quJustItem.Open ;
    if(Creation_Mode = 1) then
    begin
        FormInitializer1.FieldMode := fmINsert ;
    end;
    if(Creation_Mode = 2) then
    begin
        lkpItem.KeyValue := DabData.quRec_Itemitem_code.Value ;
        edPrice.Text := DabData.quRec_Itembuy_price.AsString ;
        edAmount.Text := DabData.quRec_Itemamount.AsString ;
        edNote.Text := DabData.quRec_ItemNotes.AsString;
//        if(DabData.quGoodsRecGetType.Value = 3) then
//            edAmount.FieldType := ftDisplay ;
            
        FormInitializer1.FieldMode := fmEdit ;
    end;
    FormInitializer1.Execute ;
end;

procedure TInRecItem.btnCancelClick(Sender: TObject);
begin
    Close ;
end;

procedure TInRecItem.btnOKClick(Sender: TObject);
var
    bmPlace : TBookmark ;
    e:Exception;
begin
    if(Creation_Mode = 1) then
    begin
        quLabelCheck.Close;
        if edLabel.Text<>'' then
        begin
          quLabelCheck.Parameters[0].Value:=StrToInt(edLabel.Text);
          quLabelCheck.Parameters[1].Value:=StrToInt(edLabel.Text)+StrToInt(edAmount.Text)+1;
          quLabelCheck.Parameters[2].Value:=DabData.quJustItemClass_Code.Value;
          quLabelCheck.Open;
          if quLabelCheckCount.Value>0 then
          begin
            DabData.ShowPopupMessage('‘„«—Â »—ç”»  ﬂ—«Ì');
            RaiseException(EXCEPTION_FLT_INVALID_OPERATION,0,0,0);
          end;
        end;
        quInsert.Parameters[0].Value := DabData.quGoodsRecrec_no.Value ;
        quInsert.Parameters[1].Value := lkpItem.KeyValue ;
        if(edPrice.Text <> '') then
            quInsert.Parameters[2].Value := StrToFloat(edPrice.Text);
        if(edLabel.Text <> '') then
           quInsert.Parameters[3].Value := StrToFloat(edLabel.Text)
        else
           quInsert.Parameters[3].Value := 0;
        quInsert.Parameters[4].Value := StrToInt(edAmount.Text);
        quInsert.Parameters[5].Value := edNote.Text;
        DabData.ADOC.BeginTrans ;
        try
           quInsert.ExecSQL ;
           DabData.ADOC.CommitTrans ;
        except
          on e: Exception  do
          begin
            raise e;
            DabData.ADOC.RollbackTrans ;
          end;
        end;
        DabData.ShowPopupMessageSmall(IntToStr(quInsert.RowsAffected));
        DabData.quRec_Item.Close ;
        DabData.quRec_Item.Open ;
        DabData.quRec_Item.Last ;
    end;
    if(Creation_Mode = 2) then
    begin
        bmPlace := DabData.quRec_Item.GetBookmark ;
        if(edPrice.Text <> '') then
            quUpdate.Parameters[0].Value := StrToFloat(edPrice.Text);
        quUpdate.Parameters[1].Value := StrToInt(edAmount.Text);
        quUpdate.Parameters[2].Value := edNote.Text ;
        quUpdate.Parameters[3].Value := DabData.quRec_Itemrec_no.Value ;
        quUpdate.Parameters[4].Value := DabData.quRec_Itemitem_code.Value ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        DabData.quRec_Item.Close ;
        DabData.quRec_Item.Open ;
        DabData.quRec_Item.GotoBookmark(bmPlace);
        DabData.quRec_Item.FreeBookmark(bmPlace);
    end;
    Close ;
end;

procedure TInRecItem.SpeedButton1Click(Sender: TObject);
begin
  ItemVeiwer:=TItemVeiwer.Create(Application);
  ItemVeiwer.dblClass.Enabled:=False;
  ItemVeiwer.ItemObject:=lkpItem;
  DabData.quGoods.Close;
  DabData.quGoods.Open;
  ItemVeiwer.ShowModal;
end;

procedure TInRecItem.lkpItemCloseUp(Sender: TObject);
begin
  inherited;
  quMaxLabel.Close;
  quMaxLabel.Parameters[0].Value:=DabData.quJustItemClass_Code.Value;
  quMaxLabel.Open;
  edLabel.Text:=quMaxLabelLastLabel.AsString;
end;

end.
