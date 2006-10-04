unit fmItemViewer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RadForms, SetForm, XPMenu, Db, Grids, DBGrids, StdCtrls, RSqlEdit,
  DBCtrls, RSqllookup, ExtCtrls, ADODB, Buttons, ppEndUsr, ppBands, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppCache,
  ppDB, ppDBPipe,Variants, Danhint, Menus, Filter, RXDBCtrl, ppModule,
  raCodMod, jpeg;

type
  TItemVeiwer = class(TRadForm)
    dsdet: TDataSource;
    dsgoods: TDataSource;
    Panel1: TPanel;
    quItem: TADOQuery;
    quDetRadif: TIntegerField;
    quItemitem_code: TStringField;
    quItemitem_name: TStringField;
    quItemclass_code: TSmallintField;
    quItemitem_desc: TStringField;
    quItemitem_unit: TSmallintField;
    quItemItem_Inventory: TIntegerField;
    quItemOrder_Point: TSmallintField;
    quItemInventory_Limit: TSmallintField;
    quItemCode: TSmallintField;
    quItemUnit_Item_Desc: TStringField;
    quItemPk_Item: TIntegerField;
    quItemPK_DetailGroups: TSmallintField;
    quItemPK_MasterGroups: TSmallintField;
    quItemPosition_Code: TStringField;
    quItemClass_Type: TSmallintField;
    spGetItem_code: TADOStoredProc;
    dsItemUnit: TDataSource;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edDesc: TRSqlEdit;
    dblItemUnit: TRSqlDbLookup;
    btOk: TBitBtn;
    Panel3: TPanel;
    BtNewItem: TBitBtn;
    edItemCode: TRSqlEdit;
    Label3: TLabel;
    edSearch: TRSqlEdit;
    Label2: TLabel;
    dblMaster: TRSqlDbLookup;
    dblClass: TRSqlDbLookup;
    Label1: TLabel;
    Label5: TLabel;
    dblDetail: TRSqlDbLookup;
    quInsertdet: TADOQuery;
    Label4: TLabel;
    grItem: TRxDBGrid;
    procedure FormShow(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure quDetRadifGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grItemDblClick(Sender: TObject);
    procedure dblMasterClick(Sender: TObject);
    procedure dblDetailClick(Sender: TObject);
    procedure checkEnableInsert;
    procedure BtNewItemClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dblItemUnitExit(Sender: TObject);
    procedure grItemGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure grItemTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    i:Integer;
    PrvOrd:String;
    { Private declarations }
  public
    ItemObject: TRSqlDbLookup;
    ItemAdded:Boolean;
    NotInListItem:String;
    { Public declarations }
  end;

var
  ItemVeiwer: TItemVeiwer;

implementation

uses DabDmdle, fmMfrm, fmMasterGroups, fmDetailGroups;

{$R *.DFM}

procedure TItemVeiwer.FormShow(Sender: TObject);
begin
  inherited;
  edSearchChange(Sender);
  checkEnableInsert;
  btOk.Enabled:=False;
  Panel2.Visible:=False;
  PrvOrd:='Item_Name';
end;

procedure TItemVeiwer.edSearchChange(Sender: TObject);
begin
  inherited;
  DabData.quMasterGroups.Close;
  DabData.quMasterGroups.Parameters[0].Value:=DabData.quGoodsclass_code.AsInteger;
  DabData.quMasterGroups.Open;
//    end
 //set Master

  quItem.Close;
  quItem.Parameters[0].Value:=edItemCode.Text;
  quItem.Parameters[1].Value:=edSearch.Text;
  if DabData.qugoods.Active then
     quItem.Parameters[2].Value:=dblClass.KeyValue
  else
  begin
    DabData.qugoods.Close;
    DabData.qugoods.Open;
  end;
  quItem.Open;
  checkEnableInsert;
end;

procedure TItemVeiwer.quDetRadifGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
   Text:=IntToStr(quItem.RecNo);
end;

procedure TItemVeiwer.grItemDblClick(Sender: TObject);
begin
  inherited;
  if ItemObject <> nil then
     ItemObject.KeyValue:=quItemitem_code.Value
  else
    Caption:=quItemitem_code.Value;
  Close;
end;

procedure TItemVeiwer.dblMasterClick(Sender: TObject);
begin
 DabData.quDetailGroups.Close;
 DabData.quDetailGroups.Parameters[0].Value:=DabData.quGoodsclass_code.AsInteger;
 DabData.quDetailGroups.Parameters[1].Value:=DabData.quMasterGroupsPk_MasterGroup.AsInteger;
 DabData.quDetailGroups.Open;
end;

procedure TItemVeiwer.dblDetailClick(Sender: TObject);
begin
 spGetItem_code.Parameters[1].Value:=DabData.quDetailGroupsClass_Code.Value;
 spGetItem_code.Parameters[2].Value:=DabData.quDetailGroupsPK_MasterGroup.Value;
 spGetItem_code.Parameters[3].Value:=DabData.quDetailGroupsPK_DetailGroup.Value;
 spGetItem_code.ExecProc;
 edItemCode.Text:=Copy(VarToStr(spGetItem_code.Parameters[5].Value),1,6);
 checkEnableInsert;
end;
procedure TItemVeiwer.checkEnableInsert;
begin
 if
        ((dblDetail.KeyValue<>Null)
    and
         (edSearch.Value<>'')
    and
         (quItem.RecordCount=0))
 then
    BtNewItem.Enabled:=true
 else
    BtNewItem.Enabled:=False;
end;

procedure TItemVeiwer.BtNewItemClick(Sender: TObject);
begin
  inherited;
  Panel2.Visible:=true;
  DabData.quItemKar.Close;
  DabData.quItemKar.Open;
end;

procedure TItemVeiwer.btOkClick(Sender: TObject);
begin
  inherited;
   quInsertdet.Parameters[0].Value:= edSearch.Value;
   quInsertdet.Parameters[1].Value:= dblClass.KeyValue;
   quInsertdet.Parameters[2].Value:= edDesc.Value;
   quInsertdet.Parameters[3].Value:=dblItemUnit.keyvalue;
   quInsertdet.Parameters[4].Value:=0; //Item amount
   quInsertdet.Parameters[5].value:=0; //Limit item hi
   quInsertdet.Parameters[6].value:=0;
   quInsertdet.Parameters[7].Value:=dblMaster.KeyValue;
   quInsertdet.Parameters[8].Value:=dblDetail.KeyValue;
   quInsertdet.Parameters[9].Value:='';
   DabData.ADOC.BeginTrans;
   Try
   begin//1
      quInsertdet.ExecSQL;
      DabData.ADOC.CommitTrans;
      ItemAdded:=True;
   end; //1
   except
      DabData.ShowPopupMessage('.áØÝÇ" ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
      DabData.ADOC.RollbackTrans;
   end;//try
  if ItemAdded then
  begin
    quItem.Close;
    quItem.Open;
    if ItemObject<>nil then
    begin
      ItemObject.ListSource.DataSet.Close;
      ItemObject.ListSource.DataSet.Open;
    end;
    Panel2.Visible:=False
  end;
end;

procedure TItemVeiwer.dblItemUnitExit(Sender: TObject);
begin
  inherited;
  if dblItemUnit.KeyValue<>Null then
     btOk.Enabled:=True
  else
     btOk.Enabled:=False;
end;

procedure TItemVeiwer.grItemGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  inherited;
  if quItemItem_Inventory.Value<1 then
    Background:=clSilver ;
//  if
end;

procedure TItemVeiwer.grItemTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
  if ACol<>0 then
  begin
    // Delete end Enter Null lien from end of sql statement
    while trim(quItem.SQL.Strings[quItem.SQL.Count-1])='' do
    begin
      quItem.SQL.Delete(quItem.SQL.Count-1);
    end;
    // find line have order sql and delete it
    if Pos('order',quItem.SQL.Strings[quItem.SQL.Count-1])>0 then
    begin
     quItem.SQL.Delete(quItem.SQL.Count-1);
     //add new order
     if (PrvOrd=Field.FieldName) and (Pos('desc',quItem.SQL.Strings[quItem.SQL.Count-1])=0) then
        quItem.SQL.Add('order by '+Field.FieldName+' desc')
     else
        quItem.SQL.Add('order by '+Field.FieldName);
     DabData.ShowPopupMessageSmall(quItem.SQL.Text);
     quItem.Close;
     quItem.Open;
     PrvOrd:=Field.FieldName;
    end;
  end;
end;

end.
