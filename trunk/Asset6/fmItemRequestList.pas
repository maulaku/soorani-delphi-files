unit fmItemRequestList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls , define ;

type
  TItemRequestList = class(TForm)
    dbgItems: TDBGrid;
    Panel1: TPanel;
    quItems: TADOQuery;
    dsItems: TDataSource;
    quItemsOrder_Type: TSmallintField;
    quItemsOrder_Req_No: TStringField;
    quItemsRow: TSmallintField;
    quItemsOrder_Req_Amount: TSmallintField;
    quItemsR_Type: TSmallintField;
    quItemsItem_name: TStringField;
    quItemsReqType: TStringField;
    btnDelete: TButton;
    Button2: TButton;
    quItemsReq_No: TIntegerField;
    quItemsItem_Code: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure quItemsCalcFields(DataSet: TDataSet);
    procedure quItemsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Order_Req_No : String ;
    Item_Code : String ;
  end;

var
  ItemRequestList: TItemRequestList;

implementation
uses
    DabDmdle ;

{$R *.DFM}

procedure TItemRequestList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TItemRequestList.FormShow(Sender: TObject);
begin
    quItems.Close ;
    quItems.Parameters[0].Value := Order_Req_No ;
    quItems.Parameters[1].Value := Item_Code ;
    quItems.Open ;

    dbgItems.Color := clactivegrid ;

    btnDelete.Enabled := FALSE ; 
end;

procedure TItemRequestList.quItemsCalcFields(DataSet: TDataSet);
begin
    case quItemsR_Type.Value of
    1: quItemsReqType.Value := 'ÅÌ—Ê œ—ŒÊ«”  ﬂ«·«' ;
    2: quItemsReqType.Value := ' «„Ì‰ –ŒÌ—Â «ÿ„Ì‰«‰' ;
    end;
end;

procedure TItemRequestList.quItemsAfterScroll(DataSet: TDataSet);
begin
    if(not quItems.IsEmpty) then
    begin
        if(quItemsR_Type.Value = 2) then
            btnDelete.Enabled := TRUE
        else
            btnDelete.Enabled := FALSE ;
    end;
end;

end.
