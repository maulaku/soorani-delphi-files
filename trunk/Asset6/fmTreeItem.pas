unit fmTreeItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Db, ADODB, DBCtrls, RSqllookup, StdCtrls,define,RadForms,
  Buttons;


type
  TTreeItem = class(TRadForm)
    MainTV: TTreeView;
    QudblClass: TADOQuery;
    dsClass: TDataSource;
    quItemType: TADOQuery;
    quGoodsClass: TADOQuery;
    quItem: TADOQuery;
    quItemitem_name: TStringField;
    quItemclass_code: TSmallintField;
    quItemitem_desc: TStringField;
    quItemitem_unit: TSmallintField;
    quItemItem_Inventory: TIntegerField;
    quItemOrder_Point: TSmallintField;
    quItemInventory_Limit: TSmallintField;
    quGoodsClassclass_code: TSmallintField;
    quGoodsClassclass_desc: TStringField;
    quGoodsClassclass_name: TStringField;
    quGoodsClassClass_Type: TSmallintField;
    quItemTypeClass_Type: TSmallintField;
    quGoodsClassppc_code: TStringField;
    quGoodsClasspc_code: TStringField;
    quGoodsClassps_code: TStringField;
    quMoveable: TADOQuery;
    quMoveablegoods_code: TStringField;
    quMoveableitem_code: TStringField;
    quMoveablereceipt_no: TIntegerField;
    quMoveablelabel: TIntegerField;
    quMoveableBprice: TFloatField;
    quMoveableEprice: TFloatField;
    quMoveableType: TSmallintField;
    quMoveableState: TSmallintField;
    quMoveableNote: TStringField;
    quItemItem_Code: TStringField;
    TreeProgress: TProgressBar;
    Panel1: TPanel;
    edSearch: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    sbSave: TSpeedButton;
    spExplode: TSpeedButton;
    sbCollapse: TSpeedButton;
    SaveDialog1: TSaveDialog;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSaveClick(Sender: TObject);
    procedure spExplodeClick(Sender: TObject);
    procedure sbCollapseClick(Sender: TObject);
    function FinderNode(FindNode:TTreeNode):TTreeNode;
    procedure SpeedButton1Click(Sender: TObject);
  public
    { Private declarations }
    procedure DoTreeView ;
  public
    { Public declarations }
  end;

var
  TreeItem: TTreeItem;
  retVal:LongWord;
  EndThread:Boolean;
implementation
uses
    DabDmdle ;

{$R *.DFM}

{ TTreeItem }

procedure TTreeItem.DoTreeView;
var
   MainNode ,
   TypeNode ,
   ClassNode ,
   MasterNode,
   DetailNode,
   ItemNode,
   MoveableNode: TTreeNode ;
begin
    MainTV.Items.Clear ;
    MainNode := MainTV.Items.Add(nil,'ÿ»ﬁÂ »‰œÌ ﬂ«·«Â«') ;
    MainTV.Items.AddChild(MainNode , '') ;

    if MainTV.Items.Count <> 2 then
        exit;
    with  MainTV.Items  do
     begin                                            
      MainTV.Items.Clear;
      MainNode :=Add( nil ,'ÿ»ﬁÂ »‰œÌ ﬂ«·«Â«');
      quItemType.Close ;
      quItemType.Open ;
      quItemType.First ;
      while not quItemType.Eof do
      begin
        if EndThread then Exit;
        case quItemTypeClass_Type.Value of
        0: TypeNode := AddChild(MainNode , '«„Ê«·Ì „‰ﬁÊ· „’—›Ì' );
        1: TypeNode := AddChild(MainNode , '«„Ê«·Ì „‰ﬁÊ· œ— Õﬂ„ „’—›Ì' );
        2: TypeNode := AddChild(MainNode , '«„Ê«·Ì „‰ﬁÊ· €Ì— „’—›Ì' );
        3: TypeNode := AddChild(MainNode , '«„Ê«·Ì €Ì— „‰ﬁÊ·' );
        end;

        quGoodsClass.Close;
        quGoodsClass.Parameters[0].Value:= quItemTypeClass_Type.Value ;
        quGoodsClass.Open;
        quGoodsClass.First;
        while not quGoodsClass.Eof do
        begin
          if EndThread then Exit;
          ClassNode :=AddChild(TypeNode, quGoodsClassClass_Name.AsString );
          DabData.quMasterGroups.Close;
          DabData.quMasterGroups.Parameters[0].Value:=quGoodsClassclass_code.Value;
          DabData.quMasterGroups.Open;
          while not DabData.quMasterGroups.Eof do
          begin
            if EndThread then Exit;
            MasterNode :=AddChild(TypeNode, DabData.quMasterGroupsDesc.AsString );
            DabData.quDetailGroups.Close;
            DabData.quDetailGroups.Parameters[0].Value:=quGoodsClassclass_code.Value;
            DabData.quDetailGroups.Parameters[1].Value:=DabData.quMasterGroupsPk_MasterGroup.Value;
            DabData.quDetailGroups.Open;
            while not DabData.quDetailGroups.Eof do
            begin
              if EndThread then Exit;
              DetailNode :=AddChild(MasterNode, DabData.quDetailGroupsDesc.AsString );
              quItem.Close;
              quItem.Parameters[0].Value:= DabData.quMasterGroupsPk_MasterGroup.Value ;
              quItem.Parameters[1].Value:= DabData.quDetailGroupsPk_DetailGroup.Value ;
              quItem.Parameters[2].Value:= quGoodsClassclass_code.Value ;
              quItem.Open;
              quItem.first;
              while Not quItem.Eof do
              begin
                if EndThread then Exit;
                itemNode:=AddChild(DetailNode , quItemItem_Name.AsString);
                quMoveable.Close;
                quMoveable.Parameters[0].Value:= quItemitem_code.Value ;
                quMoveable.Open;
                quMoveable.first;
                while Not quMoveable.Eof do
                begin
                  if EndThread then Exit;
                  DabData.quGoodsUser.Close;
                  DabData.quGoodsUser.Parameters[0].Value:= quMoveablegoods_code.Value;
                  DabData.quGoodsUser.Open;
                  DabData.quGoodsUser.Last;
                  if DabData.quGoodsUser.RecordCount>0 then
                     AddChild(itemNode ,'»—ç”» ->'+quMoveablelabel.AsString+
                                     '  ﬂœ „«·->'+quMoveablegoods_code.AsString+
                                     '  ﬂ«—»—->'+DabData.quGoodsUseruserName.Value)
                  else
                     AddChild(itemNode ,'»—ç”»->'+quMoveablelabel.AsString+'  ﬂœ „«·->'+quMoveablegoods_code.AsString);
                  quMoveable.Next;
                  TreeProgress.Position:=TreeProgress.Position+1;
                  if EndThread then Exit;
                end;
                quItem.Next;
                TreeProgress.Position:=TreeProgress.Position+1;
                if EndThread then Exit;
              end;
              DabData.quDetailGroups.Next;
              TreeProgress.Position:=TreeProgress.Position+1;
              if EndThread then Exit;
            end;
            DabData.quMasterGroups.Next;
            TreeProgress.Position:=TreeProgress.Position+1;
            if EndThread then Exit;
          end;
          quGoodsClass.Next;
          TreeProgress.Position:=TreeProgress.Position+1;
          if EndThread then Exit;
       end;
        quItemType.Next;
        TreeProgress.Position:=TreeProgress.Position+1;
        if EndThread then Exit;
      end;
    end;
    TreeProgress.Position:=TreeProgress.Max;
    if EndThread then Exit;
    Sleep(1000);
    TreeProgress.Visible:=False;

end;
function ThreadFunc(Parameter: Pointer): Integer;
var
   tmpForm:^TTreeItem;
begin
// Sleep(1000);
// tmpForm:=Parameter;
try
 TreeItem.DoTreeView;
except
end;
end;
procedure TTreeItem.FormShow(Sender: TObject);
begin
  TreeItem:=Self;
  EndThread:=False;
//  TreeItem.DoTreeView;
  BeginThread(nil,2000000,ThreadFunc,self,0,retVal);
//  MainTV.prin
end;

procedure TTreeItem.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=115;
  Application.MainForm.Dispatch(mes);
  Top := 0 ;
  Left := 0 ;
end;

procedure TTreeItem.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;


procedure TTreeItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  EndThread:=True;
  Sleep(3000);
  Action:=CaFree;
end;

procedure TTreeItem.sbSaveClick(Sender: TObject);
begin
  inherited;
  SaveDialog1.Execute;
  MainTV.SaveToFile(SaveDialog1.FileName);
end;

procedure TTreeItem.spExplodeClick(Sender: TObject);
begin
  inherited;
  MainTV.FullExpand;
end;

procedure TTreeItem.sbCollapseClick(Sender: TObject);
begin
  inherited;
  MainTV.FullCollapse;
end;
function TTreeItem.FinderNode(FindNode:TTreeNode):TTreeNode;
var
  Child,Next:TTreeNode;
begin
  while FindNode<>nil do
  begin
    if Pos(edSearch.Text,FindNode.Text)>0 Then   Begin Result:=FindNode; Exit; end;;
    Child:=FinderNode(FindNode.getFirstChild);
    if Child<> nil then Begin Result:=Child; exit; end;
    FindNode:=FindNode.GetNext;
  end;
  Result:=nil;
end;

procedure TTreeItem.SpeedButton1Click(Sender: TObject);
var
 FindNode:TTreeNode;
begin
  inherited;
  FindNode:=FinderNode(MainTV.TopItem);
  FindNode.MakeVisible;
  FindNode.Selected:=True;
end;

end.
