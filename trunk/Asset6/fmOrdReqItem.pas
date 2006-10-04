unit fmOrdReqItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RSqlButton, ExtCtrls, SetForm, RSqlEdit, DBCtrls, RSqllookup,
  Db, ADODB, Buttons,Variants;

type
  TOrdReqItem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Action: TRSqlButton;
    Cancel: TRSqlButton;
    Label2: TLabel;
    Label3: TLabel;
    lkpItem: TRSqlDbLookup;
    edAmNumber: TRSqlEdit;
    edPrEstimate: TRSqlEdit;
    Main_FormInitializer: TFormInitializer;
    quItem: TADOQuery;
    dsItem: TDataSource;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure ActionClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Creation_Mode : SmallInt ;
  end;

var
  OrdReqItem: TOrdReqItem;

implementation
uses
    DabDmdle, fmItemOrderRequest, fmItemViewer ;

{$R *.DFM}

procedure TOrdReqItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TOrdReqItem.FormShow(Sender: TObject);
begin
    Left := 126 ;
    Top := 386 ;

    if(Creation_Mode = 1) then
    begin
        quItem.Close ;
        quItem.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;
        quItem.Open ;
        lkpItem.KeyValue := NULL ;
        Main_FormInitializer.FieldMode := fmInsert ;
    end;


    if(Creation_Mode = 2) then
    begin
        quItem.Close ;
        quItem.SQL.Text := 'SELECT * FROM Item' ;
        quItem.Open ;

        lkpItem.KeyValue := ItemOrderRequest.quOrdReqItemsItem_Code.Value ;

        edAmNumber.Text := ItemOrderRequest.quOrdReqItemsAmount_Number.AsString ;

        edPrEstimate.Text := ItemOrderRequest.quOrdReqItemsPrice_Estimate_Number.AsString ;

        Main_FormInitializer.FieldMode := fmEdit ;

    end;

    Main_FormInitializer.Execute ;
end;

procedure TOrdReqItem.CancelClick(Sender: TObject);
begin
    Close ;
end;

procedure TOrdReqItem.ActionClick(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
    if(Creation_Mode = 1) then
    begin
        quInsert.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;
        quInsert.Parameters[1].Value := lkpItem.KeyValue ;
        quInsert.Parameters[2].Value := StrToInt(edAmNumber.Text);
        quInsert.Parameters[3].Value := StrToFloat(edPrEstimate.Text);
        DabData.ADOC.BeginTrans ;
        try
            quInsert.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        ItemOrderRequest.quOrdReqItems.Close ;
        ItemOrderRequest.quOrdReqItems.Open ;
        ItemOrderRequest.quOrdReqItems.Last ;
    end;
    if(Creation_Mode = 2) then
    begin
        bmPlace := ItemOrderRequest.quOrdReqItems.GetBookmark ;
        quUpdate.Parameters[0].Value := StrToInt(TRIM(edAmNumber.Text));
        quUpdate.Parameters[1].Value := StrToFloat(TRIM(edPrEstimate.Text));
        quUpdate.Parameters[2].Value := ItemOrderRequest.quOrdReqItemsOrder_Req_No.Value ;
        quUpdate.Parameters[3].Value := ItemOrderRequest.quOrdReqItemsItem_Code.Value ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        ItemOrderRequest.quOrdReqItems.Close ;
        ItemOrderRequest.quOrdReqItems.Open ;
        ItemOrderRequest.quOrdReqItems.GotoBookmark(bmPlace);
        ItemOrderRequest.quOrdReqItems.FreeBookmark(bmPlace);
    end;
    Close ;
end;

procedure TOrdReqItem.SpeedButton1Click(Sender: TObject);
begin
  ItemVeiwer:=TItemVeiwer.Create(Application);
  ItemVeiwer.dblClass.Enabled:=False;
  ItemVeiwer.ItemObject:=lkpItem;
  DabData.quGoods.Close;
  DabData.quGoods.Open;
  ItemVeiwer.ShowModal;
end;

end.
