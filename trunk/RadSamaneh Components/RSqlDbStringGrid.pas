unit RSqlDbStringGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids,DB,StdCtrls,ComCtrls,RsqlEdit,RSqlbutton,RsqlComboBox,RSqlLookup,RSqlMaskEdit,RSqlMemo,
  SetForm,Consts,ComboItemsEditor,AdoDB,FmConfirm,ExtCtrls,UnAllChange,Variants;

const
  AllBtn = Wm_User+1000;

Var
 NMes,DMes,EMes : Cardinal;

type
  TSgColumns = class;
  TSgColumn = class;
  TRSqlDbStringGrid = class;
  TColDesigner = class;

  TMessagesEvent = procedure(Sender : TObject;Var Mes :TMessage;Var TitlesColor : TColor) of object;
  TCancelEvent = procedure(Sender : TObject;Var Color : TColor) of object;


  TDbLookupObj = class (TObject)
  public
   KeyValue : Variant;
  end;

  TComboBoxObj = class (TObject)
  public
   ItemIndex : integer;
  end;

  TMessages = class(TPersistent)
   private
    FNewMessage,FEditMessage,FDeleteMessage : string;
    function CheckMes (Value : string) : Boolean;
    procedure SetNewMes(Value : string);
    procedure SetEditMes(Value : string);
    procedure SetDeleteMes(Value : string);
    function GetMesNu (s : string) : Cardinal;
   published
    property NewMessage : string read FNewMessage write SetNEwMes;
    property EditMessage : string read FEditMessage write SetEditMes;
    property DeleteMessage : string read FDeleteMessage write SetDeleteMes;
  end;

  TSgDataLink = class(TDataLink)
   private
    FSg : TRSqlDbStringGrid;
   protected
    procedure ActiveChanged;override;
   public
    constructor Create(Var ASg : TRSqlDbStringGrid)overload;
  end;

  TRSqlDbStringGrid = class(TStringGrid)
   private
    FTitleExpand : boolean;
    FScrollData : boolean;
    FColumns : TSgColumns;
    FDataLink : TSgDataLink;
    FDesigner : TColDesigner;
    FDrawing : Boolean;
    FMessages : TMessages;
    FMainTableName : string;
    FRowColors : array of TColor;
    FRowChanged : array of boolean;

    FExitRow : LongInt;

    FOnSetParameters : TNotifyEvent;

    FBeforeTitleColorSet,FBeforeColumnColorSet : TCancelEvent;
    FAfterTitleColorSet,FAfterColumnColorSet : TCancelEvent;

    procedure CellSel(Sender: TObject; ACol, ARow: Longint; var CanSelect: Boolean);

    procedure WriteColumns(Writer: TWriter);
    procedure ReadColumns(Reader: TReader);

    procedure SgKeyPress(Sender : TObject;Var Key : Char);
    procedure SgDblClick(Sender : TObject);
    procedure SetTColors(Color : TColor);
    procedure SgEnter(Sender : TObject);
    procedure SgExit(Sender : TObject);

    procedure ArrangePanel;

    procedure DeleteUnValids;

    procedure EditKeyPress(Sender : TObject;Var Key : Char);
    procedure MemoKeyPress(Sender : TObject;Var Key : Char);
    procedure LookupKeyPress(Sender : TObject;Var Key : Char);
    procedure ComboKeyPress(Sender : TObject;Var Key : Char);
    procedure MaskEditKeyPress(Sender : TObject;Var Key : Char);

    procedure CancelClick (Sender : TObject); // Button Cancel
    procedure OkClick (Sender : TObject); //Button Ok

    procedure EditExit(Sender : TObject);
    procedure MaskEditExit(Sender : TObject);
    procedure MemoExit(Sender : TObject);
    procedure LookupExit(Sender : TObject);
    procedure ComboBoxExit(Sender : TObject);


    procedure WmKeyDown (Var Mes : TWmKEyDown);message WM_KeyDown;

    procedure DoDelete;
    procedure DoNew();
    procedure DoEdit;

    procedure CalcXy(Alg : TAlignment;Bidi : TBidiMode;Col,Row : LongInt);

    procedure DropIntoPanel;

    function ISRowEmpty(Row : integer) : boolean;
    function GetColByField(Fn : string) : integer;
    function GetColByIndex (Col : integer) : integer;// Gets Cell Index and Returns Column Index (Regarding To Visible Property of Columns
    function IsStringValid (s:string;Col : TSgColumn) : boolean; // Gets Cell Strings and verify the certification of them realted to their columns properties
    function GetFieldType(s:string;Col:TSgColumn) : TFieldType;

   protected
    procedure WndProc(Var Mes : TMessage);override;
    procedure WriteDs (Ds : TDataSource);
    function GetDs : TDataSource;
    procedure DefineProperties(Filer : TFiler); override;
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect;
      AState: TGridDrawState); override;
    function GetRowColor(Index : Integer):TColor;
    procedure SetRowColor(Index:Integer;Value:TColor);
    procedure UpdateColumns;

   public
    EditorHWND : HWND;
    FirstRow : boolean;

    FClPanel : TPanel;
    FPanel : TPanel;
    FCancelBtn,FOkBtn : TButton;

    NValidRows : integer;

    Edit : TRSqlEdit;
    DbLookup : TRSqlDbLookup;
    ComboBox : TRSqlComboBox;
    MaskEdit : TRSqlMaskEdit;
    Memo : TRSqlMemo;

    SCol,SRow : integer;
    Mde : integer;
    LastRowHeight : integer;

    InsertSQL : string;

    Ln : LongInt;

    procedure FirstEnable;
    procedure DeleteAll;

    procedure CreateComp(Column : TSgColumn;Col,Row:integer);
    procedure Dispatch(Var Mes : TMessage);overload;
    constructor Create (AOwner : TComponent);override;
    destructor Destroy; override;
    procedure DrawCompAtPos(Column : TSgColumn;Col,Row : integer);
    property Designer : TColDesigner read FDesigner write FDesigner;
    property RowColors[Index : Integer] : TColor read GetRowColor write SetRowColor;

   published
    property TitleExpand : boolean read FTitleExpand write FTitleExpand;
    property DataSource : TDataSource read GetDs write WriteDs;
    property Columns : TSgColumns read FColumns write FColumns;
    property Messages : TMessages read FMessages write FMessages;
    property MainTableName : string read FMainTableName write FMainTableName;
    property ScrollData : boolean read FScrollData write FScrollData;
    property OnSetParameters : TNotifyEvent read FOnSetParameters write FOnSetParameters;
    property BeforeTitleColorSet : TCancelEvent read FBeforeTitleColorSet write FBeforeTitleColorSet;
    property BeforeColumnColorSet : TCancelEvent read FBeforeColumnColorSet write FBeforeColumnColorSet;
    property AfterTitleColorSet : TCancelEvent read FAfterTitleColorSet write FAfterTitleColorSet;
    property AfterColumnColorSet : TCancelEvent read FAfterColumnColorSet write FAfterColumnColorSet;
  end;

  TColDesigner = class (TObject)
  private
   FSg : TRSqlDbStringGrid;
  public
   destructor Destroy; override;
   constructor Create (Sg : TRSqlDbStringGrid);
  end;

  // Columns
  TSgColumns = class (TCollection)
   private
    FSg : TRSqlDbStringGrid;
    function GetColumn(Index : integer) : TSgColumn;
    procedure SetColumn(Index : integer;Value : TSgColumn);

   protected
    function GetOwner : TPersistent; override;
    procedure Update(Item: TCollectionItem); override;

   public
    constructor Create(AOwner : TRSqlDbStringGrid);
    function GetFsg : TRSqlDbStringGrid;
    function Add : TSgColumn;
    property Items[index : integer] : TSgColumn read GetColumn write SetColumn;
    property Sg : TRSqlDbStringGrid read FSg write FSg;
  end;


  //Nested Properties
  TEditProps = class(TPersistent)
  private
   FEditType : TEditTYpe;
   FFieldType : TFieldType;
   FMaxLength : integer;
  published
   property EditType : TEditType read FEditType write FEditType;
   property FieldType : TFieldType read FFieldType write FFieldType;
   property MaxLength : integer read FMaxLength write FMaxLength;
  end;

  TComboBoxProps = class(TPersistent)
  private
   FFieldType : TFieldType;
   FComboRelatedField : string;
   FItems : TStrings;
   public
    FColumn : TSgColumn;
  published
   property FieldType : TFieldType read FFieldType write FFieldType;
   property ComboRelatedField : string read FComboRelatedField write FComboRelatedField;
   property Items : TStrings read FItems write FItems;
  end;

  TDbLookupProps = class(TPersistent)
  private
   FFieldType : TFieldType;
   FListSource : TDataSource;
   FListField : string;
   FKeyField : string;
   FLookupRelatedField : string;
   public
    FColumn : TSgColumn;
  published
   property FieldType : TFieldType read FFieldType write FFieldType;
   property ListSource : TDataSource read FListSource write FListSource;
   property ListField : string read FListField write FListField;
   property KeyField : string read FKEyField write FKeyField;
   property LookupRelatedField : string read FLookupRelatedField write FLookupRelatedField;
  end;

  TMaskEditProps = class(TPersistent)
  private
   FMaskEditType : TMaskEditType;
   FFieldType : TFieldType;
  published
   property MaskEditType : TMaskEditType read FMaskEditTYpe write FMaskEditType;
   property FieldType : TFieldType read FFieldType write FFieldType;
  end;

  TMemoProps = class(TPersistent)
  private
   FWantReturns : Boolean;
   FMultiLine : Boolean;
   FFieldType : TFieldType;
  published
   property FieldType : TFieldType read FFieldType write FFieldType;
   property MultiLine : boolean read FMultiLine write FMultiLine;
   property WantReturns : boolean read FWantReturns write FWantReturns;
  end;

  TRadSamanehComps = class(TPersistent)
   private
    FEdit : TEditProps;
    FComboBox : TComboBoxProps;
    FDbLookup : TDbLookupProps;
    FMaskEdit : TMaskEditProps;
    FMemo : TMemoProps;
   published
    property Edit : TEditProps read FEdit write FEdit;
    property ComboBox : TComboBoxProps read FComboBox write FComboBox;
    property DbLookup : TDbLookupProps read FDbLookup write FDbLookup;
    property MaskEdit : TMaskEditProps read FMaskEdit write FMaskEdit;
    property Memo : TMemoProps read FMemo write FMemo;
  end;


  // A Column
  TSgColumn = class (TCollectionItem)
   private
    FAlignment : TAlignment;
    FRadSamanehComps : TRadSamanehComps;
    FEnabled : Boolean;
    FCaption : string;
    FWidth : integer;
    FName : string;
    FTitleFont,FColumnFont : TFont;
    FColor : TColor;
    FTitleColor : TColor;
    FTColor : TColor;
    FField : string;
    FVisible : Boolean;
    FInPlaceComponent : string;
    FMainTableField : boolean;
    FDefaultValue : Variant;
    FMaxWidth : integer;
    FTag : integer;
    procedure SetCaption(Value : string);
    procedure SetWidth(Value : integer);
    procedure SetTitleFont(Value : TFont);
    procedure SetColumnFont(Value : TFont);
    function GetTitleFont : TFont;
    procedure SetColor (Value : TColor);
    procedure SetTitleColor (Value : TColor);
    procedure SetVisible(Value : Boolean);
    procedure SetField(Value : string);
    function GetField : string;
    function GetColumnFont: TFont;
   protected
    function GetDisplayName: string; override;

   public
    CompCr : boolean;
    property Tag : integer read FTag write FTag;
    constructor Create(Collection : TCollection); override;
   published
    property DefaultValue : Variant read FDefaultValue write FDefaultValue;
    property Caption : string read FCaption write SetCaption;
    property Width : integer read FWidth write SetWidth;
    property Name : string read FName write FName;
    property TitleFont : TFont read GetTitleFont write SetTitleFont;
    property ColumnFont : TFont read GetColumnFont write SetColumnFont;
    property Color : TColor read FColor write SetColor;
    property TitleColor : TColor read FTitleColor write SetTitleColor;
    property Field : string read GetField write SetField;
    property Visible : Boolean read FVisible write SetVisible;
    property RadSamanehComps : TRadSamanehComps read FRadSamanehComps write FRadSamanehComps;
    property InPlaceComponent : string read FInPlaceComponent write FInplaceComponent;
    property MainTableField : boolean read FMainTableField write FMainTableField;
    property Enabled : Boolean read FEnabled write FEnabled;
    property MaxWidth : integer read FMaxWidth write FMaxWidth;
    property Alignment : TAlignment read FAlignment write FAlignment;
  end;

procedure Register;

{$R bitMaps.Res}

implementation


procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSqlDbStringGrid]);
end;

constructor TRSqlDbStringGrid.Create(AOwner: TComponent);
Var
 i : integer;
begin
 inherited;
 OnKeyPress:=SgKeyPress;
 OnDblClick:=SgDblClick;
 OnSelectCell:=CellSel;
 OnExit:=SgExit;
 OnEnter:=SgEnter;
 FColumns:=TSgColumns.Create(Self);
 FDataLink:=TSgDataLink.Create(Self);
 FMessages:=TMessages.Create;
 if (csDesigning in ComponentState) then
  begin
   RowCount:=2;
   FixedCols:=0;
   ColCount:=1;
  end;
 Mde:=0;
 FClPanel:=nil;
 Edit:=nil;
 DbLookup:=nil;
 ComboBox:=nil;
 MaskEdit:=nil;
 Memo:=nil;
 if Not(goRowSelect in Options) then
  Options:=Options+[goRowSelect]; 
 if (goRangeSelect in Options) then
  Options:=Options-[goRangeSelect];
end;

procedure TRSqlDbStringGrid.CreateComp(Column: TSgColumn;Col,Row:integer);
Var
 s : string;
 St : Integer;
begin
 SCol:=Col;
 SRow:=Row;

 if TitleExpand then
  begin
   if Columns.Items[GetColByIndex(Col)].Width<Columns.Items[GetColByIndex(Col)].MaxWidth then
    begin
     St:=Columns.Items[GetColByIndex(Col)].Width;
     Columns.Items[GetColByIndex(Col)].Tag:=St;
     Columns.Items[GetColByIndex(Col)].Width:=Columns.Items[GetColByIndex(Col)].MaxWidth;
    end
  end;

 // Create an instance of TRSqlEdit
 if Column.InPlaceComponent='Edit' then
  begin
   if Edit=Nil then
    begin
     Edit:=TRSqlEdit.Create(Self);
     Edit.Parent:=Self;
     Edit.OnKeyPress:=EditKeyPress;
     Edit.OnExit:=EditExit;
    end
     else Edit.Visible:=True;
    Edit.Color:=clYellow;
    Edit.Left:=CellRect(SCol,SRow).Left;
    Edit.Top:=CellRect(SCol,SRow).Top;
    Edit.Width:=CellRect(SCol,SRow).Right-CellRect(SCol,SRow).Left;
    Edit.EditType:=Column.RadSamanehComps.Edit.EditType;
    Edit.FieldType:=Column.RadSamanehComps.Edit.FieldType;
    Edit.MaxLength:=Column.RadSamanehComps.Edit.MaxLength;
    Edit.Text:=Cells[SCol,SRow];
    Edit.Height:=CellRect(SCol,SRow).Bottom-CellRect(SCol,SRow).Top;
    Edit.SetFocus;
  end;

 // Create an instance of TRSqlDbLookup
 if Column.InPlaceComponent='DbLookup' then
  begin
   if DbLookup=Nil then
    begin
     DbLookup:=TRSqlDbLookup.Create(Self);
     DbLookup.Parent:=Self;
     DbLookup.OnKeyPress:=LookupKeyPress;
     DbLookup.OnExit:=LookupExit;
    end
     else DbLookup.Visible:=True;

    DbLookup.KeyField:='';
    DbLookup.ListField:='';
    DbLookup.ListSource:=nil;

    DbLookup.ListSource:=Column.RadSamanehComps.DbLookup.ListSource;
    DbLookup.KeyField:=Column.RadSamanehComps.DbLookup.KeyField;
    DbLookup.ListField:=Column.RadSamanehComps.DbLookup.ListField;
    if Column.RadSamanehComps.DbLookup.KeyField='' then DbLookup.KeyValue:=Null;

    //if DbLookup.ListSource<>nil then
     //if DbLookup.ListSource.DataSet<>Nil then
      //begin
       //if Not(DbLookup.ListSource.DataSet.Active) then
        //begin
         DbLookup.ListSource.DataSet.Close;

         // Notify Event For Parameters
         if Assigned(FOnSetParameters) then
          FOnSetParameters(Self);

         DbLookup.ListSource.DataSet.Open;
        //end;
      //end;
    DbLookup.Color:=clYellow;
    DbLookup.Left:=CellRect(SCol,SRow).Left;
    DbLookup.Top:=CellRect(SCol,SRow).Top;
    DbLookup.Width:=CellRect(SCol,SRow).Right-CellRect(SCol,SRow).Left;
    DbLookup.FieldType:=Column.RadSamanehComps.Edit.FieldType;
    LastRowHeight:=RowHeights[SRow];
    RowHeights[SRow]:=DbLookup.Height;
    s:=Cells[SCol,SRow];

    if DbLookup.KeyField<>'' then
     begin
     { // Integer Field
      if DbLookup.ListSource.DataSet.FieldByName(DbLookup.KeyField) is TIntegerField then
       if s<>'' then
        DbLookup.KeyValue:=strtoint(Cells[SCol,SRow])
         else
          DbLookup.KeyValue:=null;}
      DbLookup.KeyValue:=TDbLookupObj(Objects[SCol,SRow]).KeyValue;
     end;

    DbLookup.SetFocus;
  end;

 // Creates an Instance of TRSqlComboBox;
 if Column.InPlaceComponent='ComboBox' then
  begin
   if ComboBox=Nil then
    begin
     ComboBox:=TRSqlComboBox.Create(Self);
     ComboBox.Parent:=Self.Parent;
//     ComboBox.Parent:=TForm(Self.Owner);
     ComboBox.OnKeyPress:=ComboKeyPress;
     ComboBox.OnExit:=ComboBoxExit;
    end
     else ComboBox.Visible:=True;

//    ComboBox.KeyField:=Column.RadSamanehComps.DbLookup.KeyField;
//    ComboBox.ListField:=Column.RadSamanehComps.DbLookup.ListField;
//    ComboBox.ListSource:=Column.RadSamanehComps.DbLookup.ListSource;

    if Column.RadSamanehComps.ComboBox.Items.Count<=0 then ComboBox.ItemIndex:=-1;

    ComboBox.Items:=Column.RadSamanehComps.ComboBox.Items;

    ComboBox.Color:=clYellow;
    ComboBox.Top:=CellRect(SCol,SRow).Top+Self.Top+2;
    ComboBOx.Width:=CellRect(SCol,SRow).Right-CellRect(SCol,SRow).Left;
    ComboBox.Left:=CellRect(SCol,SRow).Left+Self.Left+2;//+(Self.Width-Self.ClientWidth);
    ComboBox.FieldType:=Column.RadSamanehComps.ComboBox.FieldType;

    LastRowHeight:=RowHeights[SRow];
    RowHeights[SRow]:=ComboBox.Height;
    s:=Cells[SCol,SRow];

{    if s<>'' then
     ComboBox.ItemIndex:=strtoint(Cells[SCol,SRow])
      else
       ComboBox.ItemIndex:=-1;}
     ComboBox.ItemIndex:=TComboBoxObj(Objects[SCol,SRow]).ItemIndex;

    ComboBox.SetFocus;
  end;


 // Create an instance of TRSqlMaskEdit
 if Column.InPlaceComponent='MaskEdit' then
  begin
   if MaskEdit=Nil then
    begin
     MaskEdit:=TRSqlMaskEdit.Create(Self);
     MaskEdit.Parent:=Self;
     MaskEdit.OnKeyPress:=MaskEditKeyPress;
     MaskEdit.OnExit:=MaskEditExit;
    end
     else MaskEdit.Visible:=True;

    MaskEdit.Color:=clYellow;
    MaskEdit.Left:=CellRect(SCol,SRow).Left;
    MaskEdit.Top:=CellRect(SCol,SRow).Top;
    MaskEdit.Width:=CellRect(SCol,SRow).Right-CellRect(SCol,SRow).Left;
    MaskEdit.MaskEditType:=Column.RadSamanehComps.MaskEdit.MaskEditType;
    MaskEdit.FieldType:=Column.RadSamanehComps.MaskEdit.FieldType;
    MaskEdit.Text:=Cells[SCol,SRow];
    MaskEdit.Height:=CellRect(SCol,SRow).Bottom-CellRect(SCol,SRow).Top;
    MaskEdit.SetFocus;
  end;


 // Creates an instance of TRSqlMemo
 if Column.InPlaceComponent='Memo' then
  begin
   if Memo=Nil then
    begin
     Memo:=TRSqlMemo.Create(Self);
     Memo.Parent:=Self;
     MEmo.OnKeyPress:=MemoKeyPress;
     Memo.OnExit:=MemoExit;
    end
     else Memo.Visible:=True;

    Memo.Color:=clYellow;
    Memo.Left:=CellRect(SCol,SRow).Left;
    Memo.Top:=CellRect(SCol,SRow).Top;
    Memo.Width:=CellRect(SCol,SRow).Right-CellRect(SCol,SRow).Left;

    Memo.MultiLine:=Column.RadSamanehComps.Memo.MultiLine;
    Memo.WantReturns:=Column.RadSamanehComps.Memo.WantReturns;
    MEmo.FieldType:=Column.RadSamanehComps.Edit.FieldType;

    Memo.Text:=Cells[SCol,SRow];
    Memo.Height:=CellRect(SCol,SRow).Bottom-CellRect(SCol,SRow).Top;
    MEmo.SetFocus;
  end;

end;

procedure TRSqlDbStringGrid.DefineProperties(Filer: TFiler);
begin
 inherited;
 Filer.DefineProperty('Columns', ReadColumns, WriteColumns, Filer.Ancestor <> nil);
end;

destructor TRSqlDbStringGrid.Destroy;
begin
 FDesigner.Free;
{ FClPanel.Free;
 Edit.Free;
 DbLookup.Free;
 ComboBox.Free;
 MaskEdit.Free;
 Memo.Free;
 FMessages.Free;
//  FClPanel.Free;}
  inherited;
end;


procedure TRSqlDbStringGrid.Dispatch(var Mes: TMessage);
begin
 Perform(Mes.Msg,Mes.WParam,Mes.LParam);
end;

procedure TRSqlDbStringGrid.DrawCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState);
Var
 i,j,ColPos : integer;
 ClRect : TRect;
 Bm : TBitMap;
begin
 j:=-1;
 for i:=0 to Columns.Count-1 do
  begin
   if Columns.Items[i].Visible then j:=j+1;
   if j=ACol then
    begin
     ColPos:=i;
     break;
    end;
  end;

  if Columns.Count<>0 then
   begin
    if ARow=0 then
     Canvas.Font:=Columns.Items[ColPos].TitleFont
      else
       Canvas.Font:=Columns.Items[ColPos].ColumnFont;

    if ARow<>0 then Canvas.Brush.Color:=Columns.Items[ColPos].Color else
     Canvas.Brush.Color:=Columns.Items[ColPos].TitleColor;

    if ARow<>0 then
     begin
      if Not(csDesigning in ComponentState) then
       begin
         if RowColors[ARow-1]<>Color then
          Canvas.Brush.Color:=FRowColors[ARow-1] else
           Canvas.Brush.Color:=Columns.Items[ColPos].Color;
       end;
     end
       else Canvas.Brush.Color:=Columns.Items[ColPos].TitleColor;

    FDrawing:=True;
    Columns.Items[ACol].Width:=ColWidths[ColPos];
    FDrawing:=False;
   end;

 if ((gdFocused in AState) and (Not(goRowSelect in Options))) then
  begin
   Canvas.Brush.Color:=RGB(176,184,238);
   Canvas.FillRect(ARect);
   Canvas.DrawFocusRect(ARect);
  end;

 if ((Row=ARow) and (goRowSelect in Options) and (gdSelected in AState)) then
  begin
   Canvas.Brush.Color:=RGB(176,184,238);
   Canvas.FillRect(ARect);
  end;

 if ARow=0 then // Set the Fixed Rows of the Grid to 1
  begin
   FixedRows:=1;
  end;

 inherited;
 Changed;

 if Not(csDesigning in ComponentState) then
  if Columns.Count>0 then
   begin
    if (GetFieldType(Columns.Items[GetColByIndex(ACol)].InPlaceComponent,Columns.Items[GetColByIndex(ACol)]) in [ftKeyGm,ftKeyGo,ftRequired]) and (ARow=0) and Not(csLoading in ComponentState) then
     begin
      Bm:=TBitMap.Create;
      Bm.LoadFromResourceName(HInstance,'KEY');
      Bm.Transparent:=True;
      Canvas.Draw(ARect.Left+ColWidths[ACol]-Bm.Width,ARect.Top+(RowHeights[ARow]-Bm.Height) div 2,Bm);
      Bm.Free;
     end;
//    CalcXy(Columns.Items[GetColByIndex(ACol)].Alignment,BiDiMode,ACol,ARow);
   end;

end;

procedure TRSqlDbStringGrid.DrawCompAtPos(Column: TSgColumn; Col,
  Row: integer);
begin
end;

function TRSqlDbStringGrid.GetDs: TDataSource;
begin
 Result:=FDataLink.DataSource;
end;

procedure TRSqlDbStringGrid.EditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   if Edit<>Nil then
    begin
     if TitleExpand then
      Columns.Items[GetColByIndex(SCol)].Width:=Columns.Items[GetColByIndex(SCol)].Tag;
     Cells[SCol,SRow]:=Edit.Text;
     Edit.Visible:=False;
     Self.SetFocus;
     Columns.Items[GetColByIndex(SCol)].CompCr:=False;
     if SCol+1<=ColCount-1 then
      Col:=SCol+1;
    end;
  end;
end;

procedure TRSqlDbStringGrid.ReadColumns(Reader: TReader);
begin
 Columns.Clear;
 Reader.ReadValue;
 Reader.ReadCollection(Columns);
end;

procedure TRSqlDbStringGrid.UpdateColumns;
Var
 i,j : integer;
begin
 ColCount:=1;
 j:=0;
 for i:=0 to FColumns.Count-1 do
  begin
   if FColumns.Items[i].Visible then
    begin
     ColCount:=ColCount+1;
     Cells[j,0]:=FColumns.Items[i].Caption;
     ColWidths[j]:=FColumns.Items[i].Width;
     j:=j+1;
    end;
  end;
  if ColCount>1 then ColCount:=ColCount-1;
end;

procedure TRSqlDbStringGrid.WndProc(var Mes: TMessage);
Var
 Fm : TConfirm;
 Mess : TWmKeyDown;
 i : integer;
 NewColor : TColor;
begin
  //New Message
  if Mes.Msg=NMes then
   begin
    if Mde=0 then
     begin
      Options:=Options-[goRowSelect];
      if Assigned(FBeforeTitleColorSet) then
       begin
        FBeforeTitleColorSet(Self,NewColor);
        SetTColors(NewColor);
       end;
      Mde:=1;
      for i:=0 to ColCount-1 do
       begin
        if Assigned(FBeforeColumnColorSet) then
         FBeforeColumnColorSet(Self,NewColor) else
          NewColor:=RGB(224,224,224);
//        if Columns.Items[GetColByIndex(i)].DefaultValue<>Null then
//         Columns.Items[GetColByIndex(i)].Color:=NewColor;
        if Not(Columns.Items[GetColByIndex(i)].Enabled) then
         Columns.Items[GetColByIndex(i)].Color:=NewColor;
       end;
      DropIntoPanel;
      Mess.CharCode:=Vk_Down;
      Row:=RowCount-1;
      if DataSource.DataSet.IsEmpty then
       FirstRow:=True else
        FirstRow:=False;
      WmKeyDown(Mess);

      FirstRow:=False; // Important

      if (DataSource.DataSet.IsEmpty) then
       begin
        RowCount:=RowCount-1;
       end;
      Col:=0;
      RePaint;
      SetFocus;
     end;
   end;
  //Edit Message
  if Mes.Msg=EMes then
   begin
    if Mde=0 then
     begin
      if (DataSource.DataSet.Active) then
//       if (SRow<=DataSource.DataSet.RecordCount) then
       if (DataSource.DataSet.RecordCount>0) then
        begin
         Options:=Options-[goRowSelect];
         Ln:=Row;
         DropIntoPanel;
         Mde:=2;
         for i:=0 to ColCount-1 do
          begin
           if (GetFieldType(Columns.Items[GetColByIndex(i)].InPlaceComponent,Columns.Items[GetColByIndex(i)]) in [ftKeyGm,ftKeyGo]) then
            begin
             Columns.Items[GetColByIndex(i)].Enabled:=False;
             if Assigned(FBeforeColumnColorSet) then
              FBeforeColumnColorSet(Self,NewColor) else
               NewColor:=RGB(224,224,224);
             Columns.Items[GetColByIndex(i)].Color:=NewColor;
            end;
          end;
         FirstEnable;
        end;
     end;
    RePaint;
    SetFocus;
   end;
  //Delete Message
  if Mes.Msg=DMes then
   begin
    if Mde=0 then
     begin
      Mde:=3;
      SRow:=Row;
      if (DataSource.DataSet.Active) then
       if (SRow<=DataSource.DataSet.RecordCount) then
        begin
         Fm:=TConfirm.Create(Application);
//         Fm.Label1.Caption:='¬Ì« Ê«ﬁ⁄« „«Ì· »Â Õ–› ﬂ—œ‰ «Ì‰ ”ÿ— Â” Ìœø';
         Fm.ShowModal;
         //Yes , Delete procedure
         if Fm.Res then
          begin
           DoDelete;// A Function that deeletes the selected row
           for i:=0 to ColCount-1 do
            begin
             Cells[i,RowCount-1]:='';
             Objects[i,RowCount-1]:=Nil;
            end;
           DataSource.DataSet.Close;
           DataSource.DataSet.Open;
           RePaint;
          end;
         Fm.Free;
        end;
      Mde:=0;
      if SRow<>1 then Row:=SRow-1
       else
        Row:=1;
      RePaint;
      SetFocus;
     end;
   end;
  inherited;
end;

procedure TRSqlDbStringGrid.WriteColumns(Writer: TWriter);
begin
 Writer.WriteCollection(Columns);
end;

procedure TRSqlDbStringGrid.WriteDs(Ds: TDataSource);
begin
 FDataLink.DataSource:=Ds;

 if(FDataLink.DataSource <> nil) then
 begin
  if Designer<>nil then
   begin
    if(FDataLink.DataSource.DataSet <> nil) then
      PostMessage(EditorHWND,AllBtn , 0 , 1)
    else
      PostMessage(EditorHWND,AllBtn , 0 , 0);
   end;
 end
 else
    if Designer<>nil then PostMessage(EditorHWND,AllBtn , 0 , 0);
end;


{ TSgColumns }

function TSgColumns.Add: TSgColumn;
begin
 Result:=TSgColumn(inherited Add);
 Result.FName:='Column'+inttostr(Count-1);
 Result.SetWidth(FSg.DefaultColWidth);
 Result.SetVisible(True);
end;

constructor TSgColumns.Create(AOwner: TRSqlDbStringGrid);
begin
 inherited Create(TSgColumn);
 FSg:=AOwner;
end;

function TSgColumns.GetColumn(Index: integer): TSgColumn;
begin
 Result:=TSgColumn(inherited Items[Index]);
end;

function TSgColumns.GetFsg: TRSqlDbStringGrid;
begin
 Result:=FSg;
end;

function TSgColumns.GetOwner: TPersistent;
begin
 Result:=FSg;
end;

procedure TSgColumns.SetColumn(Index: integer; Value: TSgColumn);
begin
 Items[Index].Assign(Value);
end;

procedure TSgColumns.Update(Item: TCollectionItem);
begin
 inherited;
 FSg.UpdateColumns;
end;

{ TSgColumn }

constructor TSgColumn.Create(Collection: TCollection);
begin
 inherited;
  CompCr:=False;
  FRadSamanehComps:=TRadSamanehComps.Create();
  FRadSamanehComps.Edit:=TEditProps.Create();
  FRadSamanehComps.ComboBox:=TComboBoxProps.Create();
  FRadSamanehComps.ComboBox.FColumn:=Self;
  FRadSamanehComps.ComboBox.Items:=TStringList.Create();
  FRadSamanehComps.DbLookup:=TDbLookupProps.Create();
  FRadSamanehComps.DbLookup.FColumn:=Self;
  FRadSamanehComps.MaskEdit:=TMaskEditProps.Create();
  FRadSamanehComps.Memo:=TMemoProps.Create();

 if Assigned(Collection)
  and (Collection is TSgColumns) then
  inherited Create(Collection);
 FTitleFont:=TFont.Create;
 FColumnFont:=TFont.Create;
 FTitleColor:=Rgb(192,192,192);
 FColor:=clWhite;
 DefaultValue:=Null;
 FEnabled:=True;
end;

function TSgColumn.GetDisplayName: string;
begin
 Result := FName;
end;

function TSgColumn.GetField: string;
begin
 Result:=FField;
end;

function TSgColumn.GetTitleFont: TFont;
begin
 Result:=FTitleFont;
end;

procedure TSgColumn.SetCaption(Value: string);
begin
 FCaption:=Value;
 TSgColumns(Collection).FSg.UpdateColumns;
end;

procedure TSgColumn.SetColor(Value: TColor);
begin
 FColor:=Value;
 TSgColumns(Collection).FSg.Repaint;
end;

procedure TSgColumn.SetField(Value: string);
begin
 FField:=Value;
{ if csDesigning in TSgColumns(Collection).Fsg.ComponentState then
  SetCaption(Value);}
end;

procedure TSgColumn.SetTitleFont(Value: TFont);
begin
  FTitleFont.Assign(Value);
  TSgColumns(Collection).FSg.Repaint;
end;

procedure TSgColumn.SetTitleColor(Value: TColor);
begin
 FTitleColor:=Value;
 TSgColumns(Collection).FSg.Repaint;
end;



procedure TSgColumn.SetVisible(Value: Boolean);
begin
 FVisible:=Value;
 TSgColumns(Collection).FSg.UpdateColumns;
 TSgColumns(Collection).FSg.FDataLink.ActiveChanged;
end;

procedure TSgColumn.SetWidth(Value: integer);
begin
 FWidth:=Value;
 if Not(TSgColumns(Collection).Fsg.FDrawing) then TSgColumns(Collection).FSg.UpdateColumns;
end;


procedure TSgDataLink.ActiveChanged;
Var
 i,j,k : integer;
 Lk : TRSqlDbLookup;
 Cm : TRSqlComboBox;
 LkObj : TDbLookupObj;
 CmObj : TComboBoxObj;
begin
 inherited;
 if Active then
  begin
   j:=1;
   DataSource.DataSet.First;
   FSg.RowCount:=2;
   While Not(DataSource.DataSet.Eof) do
    begin
     k:=0;
     for i:=0 to FSg.Columns.Count-1 do
      begin
       if FSg.Columns.Items[i].Visible then
        begin
         if FSg.Columns.Items[i].Field<>'' then
          begin
           if ((FSg.Columns.Items[i].InPlaceComponent<>'DbLookup') and (FSg.Columns.Items[i].InPlaceComponent<>'ComboBox')) then
            FSg.Cells[k,j]:=DataSource.DataSet.FieldByName(FSg.Columns.Items[i].Field).AsString else
             begin
              //DbLookup
              if (FSg.Columns.Items[i].InPlaceComponent='DbLookup') then
               begin
                Lk:=TRSqlDbLookup.Create(FSg);
                Lk.Parent:=FSg;
                Lk.KeyField:='';
                Lk.ListField:='';
                Lk.ListSource:=nil;

                Lk.ListSource:=FSg.Columns.Items[i].RadSamanehComps.DbLookup.ListSource;
                Lk.KeyField:=FSg.Columns.Items[i].RadSamanehComps.DbLookup.KeyField;
                Lk.ListField:=FSg.Columns.Items[i].RadSamanehComps.DbLookup.ListField;

                Lk.ListSource.DataSet.Close;
                if Assigned(FSg.FOnSetParameters) then
                 FSg.FOnSetParameters(Self);
                Lk.ListSource.DataSet.Open;

                Lk.KeyValue:=DataSource.DataSet.FieldByName(FSg.Columns.Items[i].Field).AsVariant;
                FSg.Cells[k,j]:=Lk.Text;
                LkObj:=TDbLookupObj.Create;
                LkObj.KeyValue:=Lk.KeyValue;
                FSg.Objects[k,j]:=LkObj;
                Lk.Free;
               end;

              //ComboBox
              if (FSg.Columns.Items[i].InPlaceComponent='ComboBox') then
               begin
                Cm:=TRSqlComboBox.Create(FSg);
                Cm.Parent:=FSg;
                Cm.Items:=FSg.Columns.Items[i].RadSamanehComps.ComboBox.Items;
                Cm.ItemIndex:=DataSource.DataSet.FieldByName(FSg.Columns.Items[i].Field).AsInteger;
                FSg.Cells[k,j]:=Cm.Text;
                CmObj:=TComboBoxObj.Create;
                CmObj.ItemIndex:=Cm.ItemIndex;
                FSg.Objects[k,j]:=CmObj;
                Cm.Free;
               end;
             end;
          end;
         k:=k+1;
        end;
      end;
     FSg.RowCount:=FSg.RowCount+1;
     j:=j+1;
     DataSource.DataSet.Next ;
    end;
   DataSource.DataSet.First;
   FSg.RowCount:=FSg.RowCount-1;
  end
   else
    begin
     if Not(csDestroying in FSg.ComponentState) then
      begin
       FSg.RowCount:=2;
       k:=-1;
       for i:=0 to FSg.Columns.Count-1 do
        begin
         if FSg.Columns.Items[i].Visible then
          begin
           k:=k+1;
           FSg.Cells[k,1]:='';
          end;
        end;
      end;
    end;

if Not((csDesigning in FSg.ComponentState) or (csDestroying in FSg.ComponentState)) then
 begin
  SetLength(FSg.FRowChanged,FSg.RowCount-1);
  for i:=0 to FSg.RowCount-2 do
   FSg.FRowChanged[i]:=False;

  SetLength(FSg.FRowColors,FSg.RowCount-1);

  //Recently Added
  if FSg.RowCount=1 then
   SetLength(FSg.FRowColors,1);
  if FSg.RowCount=1 then
   FSg.RowCount:=2;

  for i:=0 to FSg.RowCount-2 do
   FSg.FRowColors[i]:=FSg.Color;
 end;

if FSg.RowCount=1 then
 FSg.RowCount:=2;

end;

constructor TSgDataLink.Create(Var ASg : TRSqlDbStringGrid);
begin
 inherited Create;
 FSg:=ASg;
end;

constructor TColDesigner.Create(Sg: TRSqlDbStringGrid);
begin
 FSg := Sg;
 FSg.Designer := Self;
end;

destructor TColDesigner.Destroy;
begin
  inherited;
end;


function TMessages.CheckMes(Value: string): Boolean;
begin
 if Value<>'' then
 begin
  if Pos('wm_user',LowerCase(Value))=0 then
   begin
    MessageDlg('Invalid Message',mtError,[mbOk],0);
    Result:=False;
   end
    else
     Result:=True;
 end
  else Result:=True;
end;

function TMessages.GetMesNu(s: string): Cardinal;
Var
 s2 : string;
begin
 if Pos('+',s)>0 then
  begin
   s2:=Copy(s,Pos('+',s)+1,Length(s)-Pos('+',s));
   Result:=strtoint(trim(s2))+Wm_User;
   exit;
  end
   else
    Result:=Wm_User;
end;

procedure TMessages.SetDeleteMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FDeleteMessage:=Value;
    DMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TMessages.SetEditMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FEditMessage:=Value;
   EMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TMessages.SetNewMes(Value: string);
begin
 if CheckMes(Value) then
  begin
   FNewMessage:=Value;
   NMes:=GetMesNu(Value);
  end
   else exit;
end;

procedure TRSqlDbStringGrid.SgKeyPress(Sender: TObject; var Key: Char);
begin
 if DataSource<>nil then
  if DataSource.DataSet<>nil then
 if DataSource.DataSet.Active then
  begin
   SRow:=Row;
   SCol:=Col;
   if ((Mde>=1) and (Mde<=3)) then
    begin
     if Not(GetFieldType(Columns.Items[GetColByIndex(SCol)].InPlaceComponent,Columns.Items[GetColByIndex(SCol)]) in [ftKeyGm]) then
      begin
       //Insert Mode
       if ((Mde=1) and (Key=#13) and (SRow>DataSource.DataSet.RecordCount)) then //Insert Mode - Mde=1
        begin
         if Not(Columns.Items[GetColByIndex(SCol)].CompCr) then
          CreateComp(Columns.Items[GetColByIndex(SCol)],SCol,SRow);
        end;
       //Update Mode
       if (DataSource.DataSet.Active) then
        if DataSource.DataSet.RecordCount>=1 then
         if ((Mde=2) and (Key=#13) and (SRow<=DataSource.DataSet.RecordCount) and
          Not(GetFieldType(Columns.Items[GetColByIndex(SCol)].InPlaceComponent,Columns.Items[GetColByIndex(SCol)]) in [ftKeyGm,ftKeyGo])) then
          begin
           if Not(Columns.Items[GetColByIndex(SCol)].CompCr) then
            CreateComp(Columns.Items[GetColByIndex(SCol)],SCol,SRow);
           FRowChanged[SRow-1]:=True;
          end;
      end;
    end;
  end;
end;
procedure TRSqlDbStringGrid.WmKeyDown(var Mes: TWmKEyDown);
Var
 i,j,Last : integer;
 LkObj : TDbLookupObj;
 CmObj : TComboBoxObj;
 Value : string;
 Fl : Boolean;
begin
 if DataSource<>nil then
  if DataSource.DataSet<>nil then
 if (DataSource.DataSet.Active) then
 begin

  SRow:=Row;
  SCol:=Col;

  if ((Mde>=1) and (Mde<=3)) then
   begin
    if Mde=1 then //Insert Mode
     begin
//      if Not(DataSource.DataSet.IsEmpty) then // The DataSet is Active But It's Empty
 //      begin

        //New Row in Insert Mode
        if ((SRow=RowCount-1) and (Mes.CharCode=Vk_Down)) then //Last Row and Down Arrow Key Pressed -> New Line for Insert
         begin
          // Set Objects of related Cell for ComboBox and DbLookup
          for i:=0 to ColCount-1 do
           begin

            //Creates Value of Gm Fields Automaticly

            if (GetFieldType(Columns.Items[GetColByIndex(i)].InPlaceComponent,Columns.Items[GetColByIndex(i)]) in [ftKeyGm]) then
             begin

//              if Not(DataSource.DataSet.IsEmpty) then
              if Not(FirstRow) then
               begin
                Last:=0;
                for j:=1 to RowCount-1 do
                 begin
                  if Cells[i,j]<>'' then
                   if strtoint(Trim(Cells[i,j]))>Last then
                    Last:=strtoint(Trim(Cells[i,j]));
                 end;
                Cells[i,SRow+1]:=inttostr(Last+1);
               end
                else
                 begin
                  Cells[i,1]:=inttostr(1);
                 end;
              //Empty Table - 1 Value for Gm Filed
             end;
            //End

            if Columns.Items[GetColByIndex(i)].InPlaceComponent='DbLookup' then
             begin
              LkObj:=TDbLookupObj.Create;

              if Columns.Items[GetColByIndex(i)].DefaultValue=Null then
               begin
                LkObj.KeyValue:=Null;
                Fl:=False;
               end
                else
                 begin
                  LkObj.KeyValue:=Columns.Items[GetColByIndex(i)].DefaultValue;
                  Fl:=True;
                 end;

              if Fl then
                if LkObj.KeyValue <>  null then
                    Columns.Items[GetColByIndex(i)].RadSamanehComps.DbLookup.ListSource.DataSet.
                     Locate(Columns.Items[GetColByIndex(i)].RadSamanehComps.DbLookup.KeyField,LkObj.KeyValue,[]);

              if Not(FirstRow) then
               begin
                Objects[i,RowCount]:=LkObj;
                if Fl then
                 Cells[i,RowCount]:=Columns.Items[GetColByIndex(i)].RadSamanehComps.DbLookup.ListSource.DataSet.FieldByName(Columns.Items[GetColByIndex(i)].RadSamanehComps.DbLookup.ListField).AsString;
               end else
                begin
                 Objects[i,1]:=LkObj;
                 if Fl then
                  Cells[i,1]:=Columns.Items[GetColByIndex(i)].RadSamanehComps.DbLookup.ListSource.DataSet.FieldByName(Columns.Items[GetColByIndex(i)].RadSamanehComps.DbLookup.ListField).AsString;
//                 FirstRow:=False;
               end;
             end;

            if Columns.Items[GetColByIndex(i)].InPlaceComponent='ComboBox' then
             begin
              CmObj:=TComboBoxObj.Create;
              if Columns.Items[GetColByIndex(i)].DefaultValue=Null then
               begin
                CmObj.ItemIndex:=-1;
                Fl:=False;
               end
                else
                 begin
                  CmObj.ItemIndex:=Columns.Items[GetColByIndex(i)].DefaultValue;
                  Fl:=True;
                 end;
              if Not(FirstRow) then
                begin
                 Objects[i,RowCount]:=CmObj;
                 if Fl then
                  Cells[i,RowCount]:=Columns.Items[GetColByIndex(i)].RadSamanehComps.ComboBox.Items[Columns.Items[GetColByIndex(i)].DefaultValue];
                end
                 else
                   begin
                    Objects[i,1]:=CmObj;
                    if Fl then
                     Cells[i,1]:=Columns.Items[GetColByIndex(i)].RadSamanehComps.ComboBox.Items[Columns.Items[GetColByIndex(i)].DefaultValue];
                   end;
             end;

            if ((Columns.Items[GetColByIndex(i)].InPlaceComponent='Edit') or
                 (Columns.Items[GetColByIndex(i)].InPlaceComponent='MaskEdit') or
                  (Columns.Items[GetColByIndex(i)].InPlaceComponent='Memo')) then
             begin
              if Columns.Items[GetColByIndex(i)].DefaultValue<>Null then
               begin
                Value:=VarToStr(Columns.Items[GetColByIndex(i)].DefaultValue);
                if Not(FirstRow) then
                 Cells[i,RowCount]:=Value
                   else
                    Cells[i,1]:=Value;
               end;
             end;
           end;

 //     if Not(DataSource.DataSet.IsEmpty) then
  //     begin
        RowCount:=RowCount+1;

        SRow:=SRow+1;Row:=Row+1;
        SCol:=0;Col:=0;
    //   end;
          SetLength(FRowColors,Length(FRowColors)+1);
          FRowColors[Length(FRowColors)-1]:=Color;
          RePaint;
         end;
      //5 end;
     end;
   end;
 end;
 inherited;
end;

procedure TRSqlDbStringGrid.LookupKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   if DbLookup<>Nil then
    begin
     if TitleExpand then
      Columns.Items[GetColByIndex(SCol)].Width:=Columns.Items[GetColByIndex(SCol)].Tag;
     Cells[SCol,SRow]:=DbLookup.Text;
     TDbLookupObj(Objects[SCol,SRow]).KeyValue:=DbLookup.KeyValue;

     // Fills the related field of the lookup
     if Columns.Items[GetColByIndex(SCol)].RadSamanehComps.DbLookup.LookupRelatedField<>'' then
      Cells[GetColByField(Columns.Items[GetColByIndex(SCol)].RadSamanehComps.DbLookup.LookupRelatedField),SRow]:=DbLookup.Text;

     DbLookup.Visible:=False;
     RowHeights[SRow]:=LastRowHeight;
     Self.SetFocus;
     Columns.Items[GetColByIndex(SCol)].CompCr:=False;
     if SCol+1<=ColCount-1 then
      Col:=SCol+1;
    end;
  end;
end;

function TRSqlDbStringGrid.GetColByField(Fn: string): integer;
Var
 i : integer;
begin
 for i:=0 to Columns.Count-1 do
  if Columns.Items[i].Field=Fn then
   begin
    Result:=i;
    exit;
   end;
end;


procedure TRSqlDbStringGrid.ComboKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   if ComboBox<>Nil then
    begin
     if TitleExpand then
      Columns.Items[GetColByIndex(SCol)].Width:=Columns.Items[GetColByIndex(SCol)].Tag;
     if ComboBox.ItemIndex<>-1 then
      Cells[SCol,SRow]:=ComboBox.Text else
       Cells[SCol,SRow]:='';

     TComboBoxObj(Objects[SCol,SRow]).ItemIndex:=ComboBox.ItemIndex;
     // Fills the related field of the lookup
     if Columns.Items[GetColByIndex(SCol)].RadSamanehComps.ComboBox.ComboRelatedField<>'' then
      Cells[GetColByField(Columns.Items[GetColByIndex(SCol)].RadSamanehComps.ComboBox.ComboRelatedField),SRow]:=ComboBox.Text;

     ComboBox.Visible:=False;
     RowHeights[SRow]:=LastRowHeight;
     Self.SetFocus;
     Columns.Items[GetColByIndex(SCol)].CompCr:=False;
     if SCol+1<=ColCount-1 then
      Col:=SCol+1;
    end;
  end;
end;

procedure TRSqlDbStringGrid.MaskEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  begin
   if MaskEdit<>Nil then
    begin
     if TitleExpand then
      Columns.Items[GetColByIndex(SCol)].Width:=Columns.Items[GetColByIndex(SCol)].Tag;
//     if MaskEdit.IsTextValid then
//      begin
       Cells[SCol,SRow]:=MaskEdit.Text;
       MaskEdit.Visible:=False;
       Self.SetFocus;
       Columns.Items[GetColByIndex(SCol)].CompCr:=False;
//      end
//       else MaskEdit.SetFocus;
     if SCol+1<=ColCount-1 then
      Col:=SCol+1;
    end;
  end;
end;

procedure TRSqlDbStringGrid.MemoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   if Memo<>Nil then
    begin
     if Not(Memo.WantReturns) then
      begin
       if TitleExpand then
        Columns.Items[GetColByIndex(SCol)].Width:=Columns.Items[GetColByIndex(SCol)].Tag;
       Cells[SCol,SRow]:=Memo.Text;
       Memo.Visible:=False;
       Self.SetFocus;
       Columns.Items[GetColByIndex(SCol)].CompCr:=False;
       if SCol+1<=ColCount-1 then
        Col:=SCol+1;
      end;
    end;
  end;
end;

procedure TRSqlDbStringGrid.EditExit(Sender: TObject);
Var
 Key : Char;
begin
 Key:=#13;
 EditKeyPress(Edit,Key);
end;

procedure TRSqlDbStringGrid.MaskEditExit(Sender: TObject);
Var
 Key : Char;
begin
 Key:=#13;
 MaskEditKeyPress(MaskEdit,Key);
end;

procedure TRSqlDbStringGrid.ComboBoxExit(Sender: TObject);
Var
 Key : Char;
begin
 Key:=#13;
 ComboKeyPress(ComboBox,Key);
end;

procedure TRSqlDbStringGrid.LookupExit(Sender: TObject);
Var
 Key : Char;
begin
 Key:=#13;
 LookupKeyPress(DbLookup,Key);
end;

procedure TRSqlDbStringGrid.MemoExit(Sender: TObject);
Var
 Key : Char;
begin
 Key:=#13;
 MemoKeyPress(Memo,Key);
end;

procedure TRSqlDbStringGrid.DoNew;
Var
 i,j,k,l : integer;
 Flag : boolean;
 Value : string;
 Qu : TAdoQuery;
 Temp : string;
 ClrTmp : TColor;
 T : TObject;
 Empty : boolean;
 EmptyNo : integer;
begin
 Qu:=TAdoQuery.Create(Self);
 Qu.Connection:=TADoQuery(DataSource.DataSet).Connection;

 NValidRows:=0;
 for i:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
  begin
   Flag:=True;

   // Checking Validity of Required and Key fields
   for j:=0 to ColCount-1 do
    begin
     if (Not(IsStringValid(Cells[j,i],Columns.Items[GetColByIndex(j)])))
      and (GetFieldType(Columns.Items[GetColByIndex(j)].InPlaceComponent,Columns.Items[GetColByIndex(j)]) in [ftRequired,ftKeyGm,ftKeyGo])   then
      begin
       Flag:=False;
       break;
      end;
    end;

   if Flag then
    begin
     for l:=i-1 downto DataSource.DataSet.RecordCount+1 do
      begin
       if RowColors[l-1]=clGreen then
        begin
         for k:=0 to ColCount-1 do
          begin
           if (GetFieldType(Columns.Items[GetColByIndex(k)].InPlaceComponent,Columns.Items[GetColByIndex(k)]) in [ftKeyGm,ftKeyGo]) then
            if Cells[k,l]=Cells[k,i] then
             Flag:=False;
          end;
        end;
      end;
    end;

   //Repeatative records
   if Flag then
    begin
     Qu.Close;
     Qu.SQL.Clear;
     Qu.SQL.Add('Select * from '+ MainTableName+' where 1=1 ');
     for j:=0 to ColCount-1 do
      begin
        if (GetFieldType(Columns.Items[GetColByIndex(j)].InPlaceComponent,Columns.Items[GetColByIndex(j)]) in [ftKeyGm,ftKeyGo]) then
        begin
         if ((Columns.Items[GetColByIndex(j)].InPlaceComponent='Edit') or
              (Columns.Items[GetColByIndex(j)].InPlaceComponent='MaskEdit') or
               (Columns.Items[GetColByIndex(j)].InPlaceComponent='Memo')) then
                Value:=''''+Cells[j,i]+'''';
         if (Columns.Items[GetColByIndex(j)].InPlaceComponent='DbLookup') then
          Value:=vartostr(TDbLookupObj(Objects[j,i]).KeyValue);
         if (Columns.Items[GetColByIndex(j)].InPlaceComponent='ComboBox') then
          Value:=inttostr(TComboBoxObj(Objects[j,i]).ItemIndex);

         if Pos('''',Value)=0 then
          if DataSource.DataSet.FieldByName(Columns.Items[GetColByIndex(j)].Field) is TStringField then
           Value:=''''+Value+'''';

         Qu.SQL.Add('and '+Columns.Items[GetColByIndex(j)].Field+'='+Value+' ');
        end;
      end;
     Qu.Close;
     Qu.Open;
     if Qu.RecordCount>0 then Flag:=False;
    end;

  if Flag then
   RowColors[i-1]:=clGreen else
    begin
     RowColors[i-1]:=clRed;
     Inc(NValidRows);
    end;
 end;
 RePaint;

 // Moves UnCertified rows to the end of the rows
 for j:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
  begin
   if RowColors[j-1]=clGreen then
    begin
     for k:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
      begin
       if RowColors[k-1]=clRed then
        begin
         //Swapping
         for l:=0 to ColCount-1 do
          begin
           Temp:=Cells[l,k];
           Cells[l,k]:=Cells[l,j];
           Cells[l,j]:=Temp;

           if Columns.Items[l].InPlaceComponent='DbLookup' then
            begin
             T:=Objects[l,k];
             Objects[l,k]:=Objects[l,j];
             Objects[l,j]:=T;
            end;

           if Columns.Items[l].InPlaceComponent='ComboBox' then
            begin
             T:=Objects[l,k];
             Objects[l,k]:=Objects[l,j];
             Objects[l,j]:=T;
            end;

          end;
         ClrTmp:=RowColors[j-1];
         RowColors[j-1]:=RowColors[k-1];
         RowColors[k-1]:=ClrTmp;
        end;
      end;
    end;
  end;

 //Deletes Empty Rows
 for j:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
  begin
   if ((RowColors[j-1]=clRed) and (Not(IsRowEmpty(j)))) then
    begin
     for k:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
      begin
       if ((RowColors[k-1]=clRed) and (IsRowEmpty(k))) then
        begin
         //Swapping
         for l:=0 to ColCount-1 do
          begin
           Temp:=Cells[l,k];
           Cells[l,k]:=Cells[l,j];
           Cells[l,j]:=Temp;

           if Columns.Items[l].InPlaceComponent='DbLookup' then
            begin
             T:=Objects[l,k];
             Objects[l,k]:=Objects[l,j];
             Objects[l,j]:=T;
            end;

           if Columns.Items[l].InPlaceComponent='ComboBox' then
            begin
             T:=Objects[l,k];
             Objects[l,k]:=Objects[l,j];
             Objects[l,j]:=T;
            end;

          end;
         ClrTmp:=RowColors[j-1];
         RowColors[j-1]:=RowColors[k-1];
         RowColors[k-1]:=ClrTmp;
        end;
      end;
    end;
  end;

 for j:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
  if IsRowEmpty(j) then
   Inc(EmptyNo);

 // Empty Object and cells
 for i:=RowCount-EmptyNo to RowCount-1 do
  begin
   for j:=0 to ColCount-1 do
    begin
     Cells[j,i]:='';
     Objects[j,i]:=nil;
    end;
  end;
  NValidRows:=NValidRows-EmptyNo;


 //Insert Records
 Qu.Close;
 Qu.Connection.BeginTrans;
 Try
 Begin
 for j:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
  begin
   if RowColors[j-1]=clGreen then
    begin
     InsertSQL:='';
     InsertSQL:='insert into '+MainTableName+' (';
     for i:=0 to ColCount-1 do
      begin
       if Columns.Items[GetColByIndex(i)].MainTableField then
        InsertSQL:=InsertSQL+Columns.Items[GetColByIndex(i)].Field+',';
      end;
     InsertSQL[Length(InsertSQL)]:=')';
     InsertSQL:=InsertSQL+' Values (';

     for i:=0 to ColCount-1 do
      begin
       if Columns.Items[GetColByIndex(i)].MainTableField then
        begin
         if ((Columns.Items[GetColByIndex(i)].InPlaceComponent='Edit') or
              (Columns.Items[GetColByIndex(i)].InPlaceComponent='MaskEdit') or
              (Columns.Items[GetColByIndex(i)].InPlaceComponent='Memo') or
               (Columns.Items[GetColByIndex(i)].InPlaceComponent='')) then
                begin
                 Value:=''''+Cells[i,j]+'''';
                end;

         if (Columns.Items[GetColByIndex(i)].InPlaceComponent='DbLookup') then
          Value:=vartostr(TDbLookupObj(Objects[i,j]).KeyValue);

         if (Columns.Items[GetColByIndex(i)].InPlaceComponent='ComboBox') then
          Value:=inttostr(TComboBoxObj(Objects[i,j]).ItemIndex);

         if Pos('''',Value)=0 then
          if DataSource.DataSet.FieldByName(Columns.Items[GetColByIndex(i)].Field) is TStringField then
           Value:=''''+Value+'''';

        InsertSQL:=InsertSQL+Value+',';
        end;
      end;
     InsertSQL[Length(InsertSQL)]:=')';
     Qu.SQL.Clear;
     Qu.SQL.Add(InsertSQL);
     Qu.ExecSQL;
     //QuInsert ExecSQL
    end;
  end;
 Qu.Connection.CommitTrans;
 end;
 Except
 Qu.Connection.RollbackTrans;
 end;//Try Except

 DataSource.DataSet.Close;
 DataSource.DataSet.Open;
 SetLength(FRowColors,Length(FRowColors)+NValidRows);
 RowCount:=RowCount+NValidRows;
 for i:=1 to NValidRows do RowColors[RowCount-NValidRows+i-2]:=clRed;
 Qu.Free;
 //?Mde:=0;
end;

// Col : Index of the Cell Col - Result : Index of the Realted Column in Columns Property
function TRSqlDbStringGrid.GetColByIndex(Col: integer): integer;
Var
 i,j : integer;
begin
 j:=0;
 for i:=0 to Columns.Count-1 do
  begin
   if Columns.Items[i].Visible then
    begin
     if j=Col then
      begin
       Result:=j;
       exit;
      end
       else j:=j+1;
    end;
  end;
end;

function TRSqlDbStringGrid.IsStringValid(s: string;
  Col: TSgColumn): boolean;
Var
 Me : TRSqlMaskEdit;
begin
 if Col.InPlaceComponent='Edit' then
  begin
   if s<>'' then Result:=True else Result:=False;
  end;
 if Col.InPlaceComponent='MaskEdit' then
  begin
   Me:=TRSqlMaskEdit.Create(nil);
   Me.MaskEditType:=metDate;
   Me.Text:=s;
   if Me.IsTextValid then Result:=True else Result:=False;
   Me.Free;
  end;
 if Col.InPlaceComponent='ComboBox' then
  begin
   if s<>'' then Result:=True else Result:=False;
  end;
 if Col.InPlaceComponent='DbLookup' then
  begin
   if s<>'' then Result:=True else Result:=False;
  end;
 if Col.InPlaceComponent='Memo' then
  begin
   if s<>'' then Result:=True else Result:=False;
  end;
end;

function TRSqlDbStringGrid.GetRowColor(Index: Integer): TColor;
begin
 Result:=FRowColors[Index];
end;

procedure TRSqlDbStringGrid.SetRowColor(Index: Integer; Value: TColor);
begin
 FRowColors[Index]:=Value;
Repaint;
end;

function TRSqlDbStringGrid.GetFieldType(s: string;Col:TSgColumn): TFieldType;
begin
if s='DbLookup' then
 Result:=Col.RadSamanehComps.DbLookup.FieldType;
if s='ComboBox' then
 Result:=Col.RadSamanehComps.ComboBox.FieldType;
if s='Edit' then
 Result:=Col.RadSamanehComps.Edit.FieldType;
if s='Memo' then
 Result:=Col.RadSamanehComps.Memo.FieldType;
if s='MaskEdit' then
 Result:=Col.RadSamanehComps.MaskEdit.FieldType;
if s='' then
 Result:=ftNone;
end;

procedure TRSqlDbStringGrid.DoDelete;
Var
 Qu : TAdoQuery;
 j : integer;
 Value : string;
begin
 Qu:=TAdoQuery.Create(Self);
 Qu.Connection:=TADoQuery(DataSource.DataSet).Connection;
 Qu.Connection.BeginTrans;
 Try
 Qu.SQL.Text:='';
 Qu.SQL.Text:='delete from '+ MainTableName+' where 1=1 ';
 for j:=0 to ColCount-1 do
  begin
   if (GetFieldType(Columns.Items[GetColByIndex(j)].InPlaceComponent,Columns.Items[GetColByIndex(j)]) in [ftKeyGm,ftKeyGo]) then
    begin
     if ((Columns.Items[GetColByIndex(j)].InPlaceComponent='Edit') or
         (Columns.Items[GetColByIndex(j)].InPlaceComponent='MaskEdit') or
          (Columns.Items[GetColByIndex(j)].InPlaceComponent='Memo')) then
            Value:=''''+Cells[j,SRow]+'''';
     if (Columns.Items[GetColByIndex(j)].InPlaceComponent='DbLookup') then
      Value:=vartostr(TDbLookupObj(Objects[j,SRow]).KeyValue);
     if (Columns.Items[GetColByIndex(j)].InPlaceComponent='ComboBox') then
      Value:=inttostr(TComboBoxObj(Objects[j,SRow]).ItemIndex);

     if Pos('''',Value)=0 then
      if DataSource.DataSet.FieldByName(Columns.Items[GetColByIndex(j)].Field) is TStringField then
       Value:=''''+Value+'''';

     Qu.SQL.Text:=Qu.SQL.Text+'and '+Columns.Items[GetColByIndex(j)].Field+'='+Value+' ';
    end;
  end;
 Qu.ExecSQL;
 Qu.Connection.CommitTrans;
 except
 Qu.Connection.RollBackTrans;
 End;//Try Except
 Qu.Free;
end;

procedure TRSqlDbStringGrid.DoEdit;
Var
 i,j : integer;
 Qu : TAdoQuery;
 Flag : boolean;
 Value : String;
begin
 Qu:=TAdoQuery.Create(Self);
 Qu.Connection:=TADoQuery(DataSource.DataSet).Connection;
 NValidRows:=0;
 Qu.Connection.BeginTrans;
 Try
 for i:=1 to RowCount-1 do
  begin
   if FRowChanged[i-1] then
    begin
     Flag:=True;
     // Checking Validity of Required Fields
     for j:=0 to ColCount-1 do
      begin
       if (Not(IsStringValid(Cells[j,i],Columns.Items[GetColByIndex(j)])))
        and (GetFieldType(Columns.Items[GetColByIndex(j)].InPlaceComponent,Columns.Items[GetColByIndex(j)]) in [ftRequired])   then
        begin
         Flag:=False;
         break;
        end;
      end;

    if Flag then // The Row is Valid for Update
     begin
      Qu.SQL.Clear;
      Qu.SQL.Add('Update '+MainTableName+' Set ');
      for j:=0 to ColCount-1 do
       begin
        if Columns.Items[j].MainTableField then // MainTableField
         begin
          if Not(GetFieldType(Columns.Items[GetColByIndex(j)].InPlaceComponent,Columns.Items[GetColByIndex(j)]) in [ftKeyGm,ftKeyGo]) then
           begin
            if ((Columns.Items[GetColByIndex(j)].InPlaceComponent='Edit') or
                (Columns.Items[GetColByIndex(j)].InPlaceComponent='MaskEdit') or
                 (Columns.Items[GetColByIndex(j)].InPlaceComponent='Memo')) then
                  Value:=''''+Cells[j,i]+'''';
            if (Columns.Items[GetColByIndex(j)].InPlaceComponent='DbLookup') then
             Value:=vartostr(TDbLookupObj(Objects[j,i]).KeyValue);
            if (Columns.Items[GetColByIndex(j)].InPlaceComponent='ComboBox') then
             Value:=inttostr(TComboBoxObj(Objects[j,i]).ItemIndex);

            if Pos('''',Value)=0 then
             if DataSource.DataSet.FieldByName(Columns.Items[GetColByIndex(j)].Field) is TStringField then
              Value:=''''+Value+'''';

             Qu.SQL.Add(Columns.Items[GetColByIndex(j)].Field+'='+Value+' , ');

           end;
         end;
       end;
      Qu.SQL.Text:=Copy(Qu.SQL.Text,1,Length(Qu.SQL.Text)-4);
      Qu.SQL.Add(' Where ');
      for j:=0 to ColCount-1 do
       begin
        if (GetFieldType(Columns.Items[GetColByIndex(j)].InPlaceComponent,Columns.Items[GetColByIndex(j)]) in [ftKeyGm,ftKeyGo]) then
         begin
          if ((Columns.Items[GetColByIndex(j)].InPlaceComponent='Edit') or
              (Columns.Items[GetColByIndex(j)].InPlaceComponent='MaskEdit') or
               (Columns.Items[GetColByIndex(j)].InPlaceComponent='Memo')) then
                Value:=''''+Cells[j,i]+'''';
          if (Columns.Items[GetColByIndex(j)].InPlaceComponent='DbLookup') then
           Value:=vartostr(TDbLookupObj(Objects[j,i]).KeyValue);
          if (Columns.Items[GetColByIndex(j)].InPlaceComponent='ComboBox') then
           Value:=inttostr(TComboBoxObj(Objects[j,i]).ItemIndex);

          if Pos('''',Value)=0 then
           if DataSource.DataSet.FieldByName(Columns.Items[GetColByIndex(j)].Field) is TStringField then
            Value:=''''+Value+'''';

           Qu.SQL.Add(Columns.Items[GetColByIndex(j)].Field+'='+Value+' and ');
         end;
       end;
      Qu.SQL.Text:=Copy(Qu.SQL.Text,1,Length(Qu.SQL.Text)-6);
      Qu.ExecSQL;
     end else
      begin
       RowColors[i-1]:=clRed;//Flag
       Inc(NValidRows);
      end;
    end;// RowChanged
  end;//For i
 Qu.Connection.CommitTrans;
 except
 Qu.Connection.RollBackTrans;
 end;//Try Except
end;

procedure TRSqlDbStringGrid.DropIntoPanel;
Var
 i :integer;
begin
 if FClPanel=Nil then
  begin
   FClPanel:=TPanel.Create(Self.Owner);
   FClPanel.Parent:=Self.Parent;

   FClPanel.Width:=Self.Width;
   FClPanel.Height:=Self.Height;
   FClPanel.Left:=Self.Left;
   FClPanel.Top:=Self.Top;
//   FClPanel.Name:='MyPanel';
   FClPanel.BevelInner:=bvNone;
   FClPanel.BevelOuter:=bvNone;
   FClPanel.BorderWidth:=1;
   FClPanel.BevelWidth:=1;

   FPanel:=TPanel.Create(FClPanel);
   FPanel.Parent:=FClPanel;
   FPanel.ParentBiDiMode:=True;
   FPanel.Align:=alBottom;

   FPanel.BevelInner:=bvLowered;
   FPanel.BevelOuter:=bvRaised;
   FPanel.BorderWidth:=1;
   FPanel.BevelWidth:=1;
//   FPanel.Color:=$00ffe8f8;

   FPanel.Font.Name:='Ms Sans Serif';
   FPanel.Font.Size:=10;
   FPanel.Font.Color:=clBlack;
   FPanel.Font.Style:=[fsBold];

   FOkBtn:=TButton.Create(FPanel);
   FOkBtn.Parent:=FPanel;
   FOkBtn.Caption:=' «ÌÌœ';
   FOkBtn.ParentBiDiMode:=True;
   FOkBtn.ParentFont:=True;
   FOkBtn.Width:=75;
   FOkBtn.OnClick:=OkClick;

   FCancelBtn:=TButton.Create(FPanel);
   FCancelBtn.Parent:=FPanel;
   FCancelBtn.Caption:='·€Ê';
   FCancelBtn.ParentBiDiMode:=True;
   FCancelBtn.ParentFont:=True;
   FCancelBtn.Width:=75;
   FCancelBtn.OnClick:=CancelClick;

   Self.Parent:=FClPanel;
   Self.Align:=alClient;

   ArrangePanel;

   FClPanel.SendToBack;
 end;
 FPanel.Height:=0;
 for i:=1 to 35 do
 begin
  FPanel.Height:=FPanel.Height+1;
  Sleep(2);
 end;
 FPanel.Visible:=True;
end;

procedure TRSqlDbStringGrid.ArrangePanel;
begin
 FOkBtn.Left:=(Self.Width-200) div 2;
 FCancelBtn.Left:=FOkBtn.Left+125;
 FCancelBtn.Top:=5;
 FOkBtn.Top:=5;
end;

procedure TRSqlDbStringGrid.CancelClick(Sender: TObject);
Var
 i : integer;
 Cl : TColor;
begin
 for i:=1 to 35 do
  begin
   FPanel.Height:=FPanel.Height-1;
   Sleep(2);
  end;
 FPanel.Height:=0;

 if Mde=1 then
  DeleteUnValids;

 DataSource.DataSet.Close;
 DataSource.DataSet.Open;
 DeleteUnValids;

 Mde:=0;

 if Assigned(FAfterTitleColorSet) then
  FAfterTitleColorSet(Self,Cl) else
   Cl:=clSilver;

 SetTColors(Cl);

 for i:=0 to ColCount-1 do
  begin
//   if (GetFieldType(Columns.Items[GetColByIndex(i)].InPlaceComponent,Columns.Items[GetColByIndex(i)]) in [ftKeyGm,ftKeyGo]) then
   if Not(Columns.Items[GetColByIndex(i)].Enabled) then
    begin
     Columns.Items[GetColByIndex(i)].Enabled:=True;
     if Assigned(FAfterColumnColorSet) then
      FAfterColumnColorSet(Self,Cl) else
       Cl:=clWhite;
     Columns.Items[GetColByIndex(i)].Color:=Cl;
    end;
  end;

Self.Repaint;
Self.Refresh;
Self.SetFocus;
if Ln<>0 then
 Row:=Ln;
Options:=Options+[goRowSelect];
end;

procedure TRSqlDbStringGrid.OkClick(Sender: TObject);
begin
 if Mde=1 then
   begin
    DoNew();
    if NValidRows=0 then
     CancelClick(Self)
      else
       begin
//        DeleteUnValids;
       end;
   end;
 if Mde=2 then
  begin
   DoEdit();
    if NValidRows=0 then
     CancelClick(Self);
  end;
Self.SetFocus;
if Ln<>0 then
 Row:=Ln;
end;

procedure TRSqlDbStringGrid.DeleteUnValids;
Var
 i,j : integer;
begin
 for i:=DataSource.DataSet.RecordCount+1 to RowCount-1 do
  begin
   for j:=0 to ColCount-1 do
    begin
     Cells[j,i]:='';
     Objects[j,i]:=nil;
    end;
  end;
end;

function TRSqlDbStringGrid.ISRowEmpty(Row: integer): boolean;
Var
 j : integer;
 Re : boolean;
begin
 Re:=True;
 for j:=0 to ColCount-1 do
  if Cells[j,Row]<>'' then
   Re:=False;
 Result:=Re;
end;

procedure TRSqlDbStringGrid.CellSel(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 if Not((csLoading in ComponentState) or (csDesigning in ComponentState)) then
 begin
 if ((Row<>ARow) and (Mde=0)) then
 begin
  if FScrollData then
   if DataSource<>nil then
    if DataSource.DataSet<>nil then
     if DataSource.DataSet.Active then
      if DataSource.DataSet.RecordCount>0 then
        DataSource.DataSet.MoveBy(ARow-Row);
 end;
  if (((Mde=2) or (Mde=1)) and (Not(Columns.Items[GetColByIndex(ACol)].Enabled))) then
   CanSelect:=False;
 end;
end;

procedure TRSqlDbStringGrid.SgDblClick(Sender: TObject);
Var
 Key : Char;
 C,R,st,Mw,X,Y : integer;
begin
 X:=ScreenToClient(Mouse.CursorPos).x;
 Y:=ScreenToClient(Mouse.CursorPos).y;
 MouseToCell(X,Y,C,R);

 // Extending the Col Widths
if TitleExpand then
 begin
 if (C<>-1) and (R=0) then //DblClick On the Titles
  begin
   Mw:=Columns.Items[GetColByIndex(C)].MaxWidth;
   if Columns.Items[GetColByIndex(C)].Width=Mw then
    begin
     st:=Columns.Items[GetColByIndex(C)].Width;
     Columns.Items[GetColByIndex(C)].Width:=Columns.Items[GetColByIndex(C)].Tag;
    end
   else
    begin
     st:=Columns.Items[GetColByIndex(C)].Width;
     Columns.Items[GetColByIndex(C)].Tag:=st;
     Columns.Items[GetColByIndex(C)].Width:=Mw;
    end;
  end;
 end;
 //End Extending

 if (C<>-1) and (R>0) then
 if ((Columns.Items[GetColByIndex(C)].Enabled)) then
  begin
   Key:=#13;
   SgKeyPress(nil,Key);
  end;
end;

procedure TRSqlDbStringGrid.SetTColors(Color: TColor);
Var
 i : integer;
begin
 for i:=0 to ColCount-1 do
  begin
   if GetFieldType(Columns.Items[GetColByIndex(i)].InPlaceComponent,Columns.Items[GetColByIndex(i)]) in [ftKeyGm,ftKeyGo,ftRequired] then
     Columns.Items[GetColByIndex(i)].TitleColor:=Color;
  end;
end;

procedure TRSqlDbStringGrid.SgEnter(Sender: TObject);
Var
 i : integer;
begin
 if (FExitRow<>0)  and  (FExitRow <= Rowcount-1)then
  begin
   Row:=FExitRow;
  end
   else
    Row:=RowCount-1;
end;

procedure TRSqlDbStringGrid.SgExit(Sender: TObject);
begin
 FExitRow:=Row;
end;

procedure TRSqlDbStringGrid.FirstEnable;
Var
 i : integer;
begin
 if Mde<>0 then
  begin
   for i:=0 to ColCount-1 do
    if Columns.Items[GetColByIndex(i)].Enabled then
     begin
      Col:=i;
      break;
     end;
  end;
 if Mde=1 then
  Row:=RowCount-1;
end;

procedure TRSqlDbStringGrid.DeleteAll;
Var
 i,j : integer;
begin
 for i:=1 to RowCount-1 do
  begin
   for j:=0 to ColCount-1 do
    begin
     Cells[j,i]:='';
     Objects[j,i]:=nil;
    end;
  end;
end;

function TSgColumn.GetColumnFont: TFont;
begin
 Result:=FColumnFont;
end;

procedure TSgColumn.SetColumnFont(Value: TFont);
begin
 FColumnFont.Assign(Value);
 TSgColumns(Collection).FSg.Repaint;
end;

procedure TRSqlDbStringGrid.CalcXy(Alg: TAlignment; Bidi: TBidiMode; Col,
  Row: Integer);
Var
 Rec : TRect;
 x,y : integer;
begin
 Rec:=CellRect(Col,Row);
 Canvas.FillRect(Rec);
 y:=Rec.Top+((RowHeights[Row]-Canvas.TextHeight(Cells[Col,Row])) div 2);

 if Alg=taCenter then
  x:=Rec.Left+((ColWidths[Col]-Canvas.TextWidth(Cells[Col,Row])) div 2) else
 begin
   if BidiMode=bdLeftToRight then
    begin
     if Alg=taLeftJustify then
      x:=Rec.Left+2;

     if Alg=taRightJustify then
      x:=Rec.Right-Canvas.TextWidth(Cells[Col,Row])-2;
    end;

   if BidiMode=bdRightToLeft then
    begin
     if Alg=taRightJustify then
      x:=Rec.Left+2;

     if Alg=taLeftJustify then
      x:=Rec.Right-Canvas.TextWidth(Cells[Col,Row])-2;
    end;
 end;

   Canvas.TextOut(x,y,Cells[Col,Row]);


end;

end.
