unit fmSelAvailableGoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  XPMenu, SetForm, StdCtrls, RSqlButton, ExtCtrls, Buttons, RSqlEdit,
  DBCtrls, Db, ADODB, CheckLst,RadForms, Mask;

type
  TSelAvailableGoods = class(TRadForm)
    Panel1: TPanel;
    quAvaGoods: TADOQuery;
    dsAvaPerson: TDataSource;
    GroupBox1: TGroupBox;
    aveList: TCheckListBox;
    quAvaGoodsGoodItem: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    edName: TRSqlEdit;
    edItemCode: TRSqlEdit;
    Label2: TLabel;
    Panel3: TPanel;
    RSqlButton1: TRSqlButton;
    edBillNo: TRSqlEdit;
    Label3: TLabel;
    Label4: TLabel;
    edCount: TRSqlEdit;
    RSqlButton2: TRSqlButton;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    quAvaGoodsLabel: TIntegerField;
    quIn2BillGoods: TADOQuery;
    quAvaGoodsGoods_Code: TStringField;
    quAvaGoodsNote: TStringField;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    quAvaBilledGoods: TADOQuery;
    quUpdateItem_requested: TADOQuery;
    quUpdateGoodsState: TADOQuery;
    quAvaBilledGoodsGoodItem: TStringField;
    quAvaBilledGoodsLabel: TIntegerField;
    quAvaBilledGoodsGoods_Code: TStringField;
    quAvaBilledGoodsNote: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RSqlButton1Click(Sender: TObject);
    procedure RSqlButton2Click(Sender: TObject);
    procedure aveListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Bill_Type : Integer ;

  end;

var
  SelAvailableGoods: TSelAvailableGoods;

implementation
uses
    DabDmdle ;

{$R *.DFM}

procedure TSelAvailableGoods.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TSelAvailableGoods.FormShow(Sender: TObject);
begin
  if Bill_Type = 0 then
    dsAvaPerson.DataSet:=quAvaGoods
  else
    dsAvaPerson.DataSet:=quAvaBilledGoods;
  if Bill_Type = 0 then
  begin
    quAvaGoods.Close;
    quAvaGoods.Parameters[0].Value:=edItemCode.Text;
    quAvaGoods.Open;
    aveList.Items.Text:='';
    while Not(quAvaGoods.Eof) do
    begin
      aveList.Items.Add(quAvaGoodsGoodItem.AsString);
      if quAvaGoods.RecNo<=StrToInt(edCount.Text) then
         aveList.Checked[quAvaGoods.RecNo-1]:=True;
      quAvaGoods.Next;
    end;
  end
  else
  begin
    quAvaBilledGoods.Close;
    quAvaBilledGoods.Parameters[0].Value:=edItemCode.Text;
    quAvaBilledGoods.Open;
    aveList.Items.Text:='';
    while Not(quAvaBilledGoods.Eof) do
    begin
      aveList.Items.Add(quAvaBilledGoodsGoodItem.AsString);
      if quAvaBilledGoods.RecNo<=StrToInt(edCount.Text) then
         aveList.Checked[quAvaBilledGoods.RecNo-1]:=True;
      quAvaBilledGoods.Next;
    end;
  end;
end;

procedure TSelAvailableGoods.RSqlButton1Click(Sender: TObject);
var i:integer;
  InsertCount:Integer;
begin
 InsertCount:=0;
 if quAvaGoods.State=dsEdit then
   quAvaGoods.Post;
 for i:=0 to aveList.Items.Count-1 Do
   if aveList.Checked[i] then
   begin
    quIn2BillGoods.Parameters.ParamByName('Bill_No').Value:=edBillNo.Text;
    quIn2BillGoods.Parameters.ParamByName('Bill_Type').Value:=Bill_Type;
    if Bill_Type = 0 then
    begin
      quAvaGoods.RecNo:=i+1;
      quIn2BillGoods.Parameters.ParamByName('Goods_Code').Value:=quAvaGoodsGoods_Code.Value
    end
    else
    begin
      quAvaBilledGoods.RecNo:=i+1;
      quIn2BillGoods.Parameters.ParamByName('Goods_Code').Value:=quAvaBilledGoodsGoods_Code.Value;
    end;
    try
     inc(InsertCount);
     quIn2BillGoods.ExecSQL;
    except
      on e:Exception do
      begin
        DabData.ShowPopupMessage('ÇÔßÇá ÏÑ ËÈÊ æÑæÏ ÇØáÇÚÇÊ ßÇáÇåÇ');
        raise e;
      end;
    end;
    //remarked by soorani that is Trigger UpdateGoodsState
{    quUpdateGoodsState.Parameters.ParamByName('Goods_Code').Value:=quAvaGoodsGoods_Code.Value;
    try
       quUpdateGoodsState.ExecSQL;
    except
      on e:Exception do
      begin
        DabData.ShowPopupMessage('ÇãßÇä ÊÛííÑ æÖÚíÊ Çíä ßÇáÇ æÌæÏ äÏÇÑÏ');
        raise e;
      end;
    end;
    quUpdateItem_requested.Parameters.ParamByName('Goods_Code').Value:=quAvaGoodsGoods_Code.Value;
    try
       quUpdateItem_requested.ExecSQL;
    except
      on e:Exception do
      begin
        DabData.ShowPopupMessage('ÇãßÇä ÊÛííÑ æÖÚíÊ Çíä ÏÑÎæÇÓÊ ßÇáÇ æÌæÏ äÏÇÑÏ');
        raise e;
      end;
    end;   }

   end;
 edCount.Text:=IntToStr(InsertCount);
 Close;
 ModalResult := mrOK;
end;

procedure TSelAvailableGoods.RSqlButton2Click(Sender: TObject);
begin
    if MessageDlg('ÏÑ ÕæÑÊí ßå ÔãÇ ÝÑã ÑÇ ßäÓá ßäíÏ ÊãÇã ÑæäÏ ÏÑÌ áÛæ ÎæÇåÏ ÔÏ',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
       ModalResult := mrCancel;
       Close;
    end
end;

procedure TSelAvailableGoods.aveListClick(Sender: TObject);
begin
  if quAvaGoods.State=dsEdit then
    quAvaGoods.Post;
  quAvaGoods.RecNo:=aveList.ItemIndex+1;
end;

end.
