unit DbSgEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,RSqlDbStringGrid,
  ComCtrls, StdCtrls, ToolWin,DsgnIntf, ImgList,ExtCtrls,Buttons,DsgnWnds,Db,RSqlEdit,TypInfo,RSqlMaskEdit,
  RSqlMemo,RSqlLookup,RSqlComboBox,MaskProp,StrEdit;

type
  TFmDesigner = class;

  TFmEditCols = class(TDesignWindow)
    ToolBar1: TToolBar;
    LbItems: TListBox;
    AddBtn: TToolButton;
    ImageList1: TImageList;
    DelBtn: TToolButton;
    ToolButton3: TToolButton;
    AddAllBtn: TToolButton;
    ToolButton1: TToolButton;
    DownBtn: TToolButton;
    UpBtn: TToolButton;
    procedure AddBtnClick(Sender: TObject);
    procedure LbItemsClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddAllBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DownBtnClick(Sender: TObject);
    procedure UpBtnClick(Sender: TObject);
    procedure LbItemsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure LbItemsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);

   private
    FSg : TRSqlDbStringGrid;
    Sy : integer;
    procedure RefreshList;
   protected
    procedure DoAllBtn (Var Mes : TMessage); message AllBtn;
   public
    FColumns : TSgColumns;
    FmDesigner : TFmDesigner;
    constructor Create (AOwner : TComponent ; Sg : TRSqlDbStringGrid );overload;
    property Sg : TRSqlDbStringGrid read FSg write FSg;
    property Columns : TSgColumns read FColumns write FColumns;
  end;

  TSgFieldProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValueList(List: TStrings); virtual;
    procedure GetValues(Proc: TGetStrProc); override;
  end;

  TInPlaceProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
  end;

  TSgProperty = class(TClassProperty)
   public
    function GetAttributes: TPropertyAttributes; override;
    function GetDisplayName: string;
    procedure Edit; override;
  end;

  TComboItemProperty = class(TClassProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
  end;

  TSgEditor = class(TComponentEditor)
  public
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
  end;

  TFmDesigner = class(TColDesigner)
   private
    Fm : TFmEditCols;
   public
    destructor Destroy; override;
  end;


function CreateSgEditor (Designer : IFormDesigner;ASg : TRSqlDbStringGrid;FCols : TCollection) : TFmEditCols;
procedure ShowSgEditor(Designer: IFormDesigner; ASg: TRSqlDbStringGrid;FCols : TCollection);
procedure Register;


implementation

uses ComboItemsEditor;

{$R *.DFM}

function CreateSgEditor (Designer : IFormDesigner;ASg : TRSqlDbStringGrid;FCols : TCollection) : TFmEditCols;
begin
 if ASg.Designer<>nil then
  Result:=(ASg.Designer as TFmDesigner).Fm else
   begin
    Result:=TFmEditCols.Create(Application , ASg);
    Result.Designer := Designer ;
    Result.Sg:=ASg;
    ASg.Designer := Result.FmDesigner ;
    Asg.EditorHWND := Result.Handle ;
    Result.Columns:=TSgColumns(FCols);
   end;
end;

procedure ShowSgEditor(Designer: IFormDesigner; ASg: TRSqlDbStringGrid;FCols : TCollection);
Var
  SgEditor: TFmEditCols;
begin
  SgEditor := CreateSgEditor(Designer, ASg,FCols);
  if SgEditor <> nil then
   SgEditor.Show;
end;

procedure Register;
begin
 RegisterPropertyEditor(TypeInfo(TSgColumns),TRSqlDbStringGrid,'Columns',TSgProperty);

 RegisterComponentEditor(TRSqlDbStringGrid, TSgEditor);

 RegisterPropertyEditor(TypeInfo(string), TSgColumn,'Field', TSgFieldProperty);
 RegisterPropertyEditor(TypeInfo(string), TDbLookupProps,'KeyField', TSgFieldProperty);
 RegisterPropertyEditor(TypeInfo(string), TDbLookupProps,'ListField', TSgFieldProperty);

 RegisterPropertyEditor(TypeInfo(string), TDbLookupProps,'LookupRelatedField', TSgFieldProperty);
 RegisterPropertyEditor(TypeInfo(string), TComboBoxProps,'ComboRelatedField', TSgFieldProperty);

 RegisterPropertyEditor((TypeInfo(TRSqlEdit)),TRadSamanehComps,'Edit',TClassProperty);
 RegisterPropertyEditor((TypeInfo(TRSqlMaskEdit)),TRadSamanehComps,'MaskEdit',TClassProperty);
 RegisterPropertyEditor((TypeInfo(TRSqlMemo)),TRadSamanehComps,'Memo',TClassProperty);
 RegisterPropertyEditor((TypeInfo(TRSqlDbLookup)),TRadSamanehComps,'DbLookup',TClassProperty);
 RegisterPropertyEditor((TypeInfo(TRSqlComboBox)),TRadSamanehComps,'ComboBox',TClassProperty);
 RegisterPropertyEditor((TypeInfo(TRadSamanehComps)),TSgColumn,'RadSamanehComps',TClassProperty);

 RegisterPropertyEditor((TypeInfo(string)),TSgColumn,'InPlaceComponent',TInPlaceProperty);

 RegisterPropertyEditor(TypeInfo(string), TMaskEditProps, 'EditMask', TMaskProperty);

 RegisterPropertyEditor(TypeInfo(TStrings), TComboBoxProps, 'Items', TComboItemProperty);
end;

procedure TFmEditCols.AddBtnClick(Sender: TObject);
Var
 Col : TSgColumn;
begin
 DelBtn.Enabled:=True;
 Col:=Columns.Add;
 Designer.SelectComponent(Col);
 LbItems.Items.Add(Col.Name);
 Designer.Modified;
 LbItems.ItemIndex:=Columns.Count-1;
 LbItemsClick(Self);
 LbItems.SetFocus;
end;

procedure TFmEditCols.LbItemsClick(Sender: TObject);
begin
 with lbItems do
  begin
   if ItemIndex >=0 then
    Designer.SelectComponent(FColumns.Items[ItemIndex]);
   if ItemIndex>0 then UpBtn.Enabled:=True else
    UpBtn.Enabled:=False;
   if ItemIndex<Items.Count-1 then DownBtn.Enabled:=True else
    DownBtn.Enabled:=False;
  end;
end;

procedure TFmEditCols.RefreshList;
Var
 i : integer;
begin
 LbItems.Items.Clear;
 for i:=0 to Columns.Count-1 do
  begin
   LbItems.Items.Add(Columns.Items[i].Name);
  end;
end;

procedure TFmEditCols.DelBtnClick(Sender: TObject);
Var
 Temp : integer;
begin
 if LbItems.Items.Count>0 then
  begin
   Temp:=LbItems.ItemIndex;
   if Temp=0 then Temp:=1;
   Columns.Delete(LbItems.ItemIndex);
   RefreshList;
   Designer.Modified;
   LbItems.ItemIndex:=Temp-1;
  end;
 if LbItems.Items.Count=0 then DelBtn.Enabled:=False;
 if LbItems.ItemIndex<>-1 then Designer.SelectComponent(Columns.Items[LbItems.ItemIndex]) else
  Designer.NoSelection;
end;

procedure TSgProperty.Edit;
begin
 ShowSgEditor(Designer, TRSqlDbStringGrid(GetComponent(0)),TSgColumns(GetOrdValue));
end;

function TSgProperty.GetAttributes: TPropertyAttributes;
begin
 Result:=[paDialog,paReadOnly];
end;

function TSgProperty.GetDisplayName: string;
begin
 Result:='a';
end;

destructor TFmDesigner.Destroy;
begin
 if Fm <> nil then
  begin
   Fm.Designer:=nil;
   Fm.Release;
  end;
 inherited Destroy;
end;

constructor TFmEditCols.Create(AOwner: TComponent; Sg: TRSqlDbStringGrid);
begin
 inherited Create(AOwner) ;
 FmDesigner := TFmDesigner.Create(Sg) ;
 FmDesigner.Fm := Self ;
end;

procedure TFmEditCols.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Designer.SelectComponent(Sg);
end;

{ TSgEditor }

procedure TSgEditor.ExecuteVerb(Index: Integer);
begin
 if Index = 0 then
  ShowSgEditor(Designer, TRSqlDbStringGrid(Component),TSgColumns(TRSqlDbStringGrid(Component).Columns));
end;

function TSgEditor.GetVerb(Index: Integer): string;
begin
 Result:='Editing '+Component.Name+'.Columns';
end;

function TSgEditor.GetVerbCount: Integer;
begin
 Result:=1;
end;

procedure TFmEditCols.AddAllBtnClick(Sender: TObject);
Var
 i,j : integer;
 La : TLabel;
begin
 Sg.Columns.Clear;
 La:=TLabel.Create(Self);
 La.AutoSize:=True;
 for i:=0 to Sg.DataSource.DataSet.FieldCount-1 do
  begin
   Sg.Columns.Add;
   La.Caption:='';
   for j:=1 to Sg.DataSource.DataSet.Fields[i].DisplayWidth do
    La.Caption:=La.Caption+'W';
   Sg.Columns.Items[i].Width:=La.Width;
   Sg.Columns.Items[i].Caption:=Sg.DataSource.DataSet.Fields[i].Name;
   Sg.Columns.Items[i].Visible:=True;
   Sg.Columns.Items[i].Field:=Sg.DataSource.DataSet.Fields[i].DisplayName;
 end;
DelBtn.Enabled:=True;
RefreshList;
end;

procedure TFmEditCols.DoAllBtn(var Mes: TMessage);
begin
 if Mes.LParam=0 then
  AddAllBtn.Enabled:=False;
 if Mes.LParam=1 then
  AddAllBtn.Enabled:=True;
end;

procedure TFmEditCols.FormActivate(Sender: TObject);
begin
 Caption:='Editing '+Sg.Name+'.Columns';
 if(Assigned(Sg.DataSource)) then
 begin
  if(Sg.DataSource.DataSet <> nil ) then
         AddAllBtn.Enabled := TRUE
  else
         AddAllBtn.Enabled := FALSE ;
 end
 else
 begin
        AddAllBtn.Enabled := FALSE ;
 end;
 RefreshList;
 if LbItems.Items.Count<=0 then
  begin
   DelBtn.Enabled:=False;
   Designer.NoSelection;
   DownBtn.Enabled:=False;
   UpBtn.EnableD:=False;
  end
  else
  begin
   LbItems.ItemIndex:=0;
   Designer.SelectComponent(FColumns.Items[0]);
   LbItemsClick(Self);
  end;
end;

{ TFieldProperty }


{ TSgFieldProperty }

function TSgFieldProperty.GetAttributes: TPropertyAttributes;
begin
 Result := [paValueList, paSortList,paReadOnly];
end;

procedure TSgFieldProperty.GetValueList(List: TStrings);
var
  DataSource: TDataSource;
begin
  if GetName='Field' then
   DataSource := TSgColumns(TSgColumn(GetComponent(0)).Collection).Sg.DataSource else
    if ((GetName='KeyField') or (GetName='ListField')) then
     DataSource :=TDbLookupProps(GetComponent(0)).ListSource else
      if (GetName='LookupRelatedField') then
       DataSource :=TSgColumns(TSgColumn(TDbLookupProps(GetComponent(0)).FColumn).Collection).Sg.DataSource else
        if (GetName='ComboRelatedField') then
         DataSource :=TSgColumns(TSgColumn(TComboBoxProps(GetComponent(0)).FColumn).Collection).Sg.DataSource;

    if (DataSource <> nil) then if (DataSource.DataSet <> nil) then
     DataSource.DataSet.GetFieldNames(List);
end;

procedure TSgFieldProperty.GetValues(Proc: TGetStrProc);
var
  I: Integer;
  Values: TStringList;
begin
  Values := TStringList.Create;
  try
    GetValueList(Values);
    for I := 0 to Values.Count - 1 do Proc(Values[I]);
  finally
    Values.Free;
  end;

end;


{ TInPlaceProperty }

function TInPlaceProperty.GetAttributes: TPropertyAttributes;
begin
 Result := [paValueList, paSortList,paReadOnly];
end;


procedure TInPlaceProperty.GetValues(Proc: TGetStrProc);
begin
 Proc('ComboBox');
 Proc('DbLookup');
 Proc('Edit');
 Proc('MaskEdit');
 Proc('Memo');
end;

{ TComboItemProperty }

procedure TComboItemProperty.Edit;
Var
 Fm : TFmComboItems;
begin
 Fm:=TFmComboItems.Create(Application);
 Fm.Items:=TStrings.Create;
 Fm.Items:=TComboBoxProps(GetComponent(0)).Items;
 Fm.ShowModal;
 Fm.Free;
end;

function TComboItemProperty.GetAttributes: TPropertyAttributes;
begin
 Result := inherited GetAttributes + [paDialog] - [paSubProperties];
end;


procedure TFmEditCols.DownBtnClick(Sender: TObject);
Var
 Indx : integer;
begin
 Indx:=LbItems.ItemIndex;
 Sg.Columns.Items[LbItems.ItemIndex].Index:=Sg.Columns.Items[LbItems.ItemIndex].Index+1;
 RefreshList;
 LbItems.ItemIndex:=Indx+1;
 LbItemsClick(Self);
 LbItems.SetFocus;
end;

procedure TFmEditCols.UpBtnClick(Sender: TObject);
Var
 Indx : integer;
begin
 Indx:=LbItems.ItemIndex;
 Sg.Columns.Items[LbItems.ItemIndex].Index:=Sg.Columns.Items[LbItems.ItemIndex].Index-1;
 RefreshList;
 LbItems.ItemIndex:=Indx-1;
 LbItemsClick(Self);
 LbItems.SetFocus;
end;

procedure TFmEditCols.LbItemsDragDrop(Sender, Source: TObject; X,
  Y: Integer);
Var
 Value,Indx : integer;
begin
 Value:=Y-(LbItems.ItemHeight*LbItems.ItemIndex);

 Indx:=Value div LbItems.ItemHeight;

 if Value<0 then
  Indx:=Indx-1;

 if (((Indx+LbItems.ItemIndex)>=0) and ((Indx+LbItems.ItemIndex)<=LbItems.Items.Count-1)) then
  begin
   Value:=LbItems.ItemIndex;
   Sg.Columns.Items[LbItems.ItemIndex].Index:=Sg.Columns.Items[LbItems.ItemIndex].Index+Indx;
   RefreshList;
   LbItems.ItemIndex:=Value+Indx;
   LbItemsClick(Self);
   LbItems.SetFocus;
  end; 
end;

procedure TFmEditCols.LbItemsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept:=True;
end;

end.
