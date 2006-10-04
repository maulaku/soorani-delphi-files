unit QueryGenerator;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,dbctrls
  ,StdCtrls,db,ADODB,editor;

type

  TFieldItem = class;
  TFieldCollection=class;

////////////////////////////////////////////////////////////////////////////////////////

  TQGPropertyEditor=class(TStringProperty)
   function  GetValue:string;override;
   procedure SetValue(const value:string);override;
   function  Getattributes:TPropertyAttributes;override;
   procedure Edit;override;
  end; 

/////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////////////////


  TQueryGenerator = class(TComponent)
  private
    { Private declarations }
    FItems:TFieldCollection;
  protected
    { Protected declarations }
    Fprepared:Boolean;
    FDLink:TFieldDataLink;
    FActive:boolean;
    FADOConnection:TADOConnection;
    FADOQuery:TADOQuery;
    function  GetConnection:TADOConnection;
    procedure SetConnection(value:TADOConnection);
    function  GetActive:boolean;
    Procedure SetActive(value:boolean);
    procedure Loaded;override;
    function  FindPlace(Clause:string; number:integer):integer;
    procedure FADOConnectionDisconnect(Connection: TADOConnection; var EventStatus: TEventStatus);

  public
    { Public declarations }
    constructor Create(Aowner:TComponent);override;
    destructor  Destroy; override;
    Function    InsertQuery(var s:string):integer;
    Function    UpdateQuery(var s:string):integer;
  published
    { Published declarations }
     Property Items:TFieldCollection read FItems write FItems stored True;
     //Property Prepared:Boolean Read GetState Write SetState stored true;
     Property ADOConnection : TADOConnection Read GetConnection Write SETConnection stored true;
     Property Connected:Boolean Read GetActive Write SetActive stored true;
  end;

/////////////////////////////////////////////////////////////////////////////////////////////////

  TFieldItem = class(TCollectionItem)
   private
    FDisplayControl:TWinControl;
    FFieldNumber:smallint;
    FTableNumber:smallint;
    FPrimary:Boolean;
    FIsText:Boolean;
    FField:string;
    FTable:string;
    procedure WriteFieldNumber(value : smallint);
    procedure WriteTableNumber(value : smallint);
    procedure WriteField(value : string);
    procedure WriteTable(value : string);
    Function  ReadDControl:TwinControl;
    Procedure WriteDControl(value:TwinCOntrol);
   published
    Property IsText:boolean read FisText Write FisText stored true;
    property Field:string read FField write FField stored True;
    property Table:string read FTable write FTable stored True;
    property DisplayControl:TWinControl read ReadDControl write WriteDControl stored True;
    property Primary:boolean Read Fprimary Write FPrimary stored true;
    Property FieldNumber:smallint read FFieldNumber write WriteFieldNumber stored true;
    Property TableNumber:smallint read FtableNumber write WriteTableNumber stored true;

   public
    //FieldNumber:smallint;

    constructor Create(Collection:TCollection);override;
    function GetOwner:Tpersistent;override;
   end;

////////////////////////////////////////////////////////////////////////////////////////////////////

   TFieldCollection=class(TCollection)
   protected
    function GetOwner : TPersistent; override;
   private
    FQg:TQueryGenerator;
    function  GetFieldItem(Index : integer) : TFieldItem;
    procedure SetFieldItem(Index : integer;Value : TFieldItem);
   public
    Constructor Create(Aowner:TQueryGenerator);
    function Insert(Item:Integer):TFieldItem;reintroduce;overload;
    property Qg:TQueryGenerator Read FQg Write FQg;
    Property Items[index:integer]: TFieldItem read GetFieldItem write SetFieldItem stored true;default ;
   end;

 //////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////


procedure Register;

implementation

function TQueryGenerator.FindPlace(Clause:string; number:integer):integer;
 var p,counter:integer;
begin
  p:=1;
  counter:=0;
  while (counter<number) do
   begin
    if Clause[p]=',' then inc(counter);
    inc(p);
   end;


  Result:=p;
end;



procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TQueryGenerator]);
  RegisterPropertyEditor(TypeInfo(string),TFieldItem,'Field',TQGPropertyEditor);
end;

{ TFieldItem }

constructor TFieldItem.Create(Collection: TCollection);
begin
  inherited;
  FFieldNumber:=-1;
  FTableNumber:=-1;
  if Assigned(Collection)
  and (Collection is TFieldCollection) then
  inherited Create(Collection);
end;




procedure TFieldItem.WriteTableNumber(value: smallint);
begin
 if value<>-1 then
  begin
  if  not(csLoading in Tcomponent(TFieldCollection(self.GetOwner).GetOwner).ComponentState)
    then
     begin
      messageDlg('This Property is ReadOnly',mterror,[mbok],0);
     end
  else
    FTableNumber:=value;
  end;
end;

procedure TFieldItem.WriteFieldNumber(value: smallint);
begin
 if value<>-1 then
  begin
  if  not(csLoading in Tcomponent(TFieldCollection(self.GetOwner).GetOwner).ComponentState)
    then
     begin
      messageDlg('This Property is ReadOnly',mterror,[mbok],0);
     end
  else
    FFieldNumber:=value;
  end;
end;

function TFieldItem.GetOwner: Tpersistent;
begin
 result:=TFieldCollection(inherited GetOwner);
end;

procedure TFieldItem.WriteField(value: string);
begin
 if trim(value)<>'' then
  begin
  if  not(csLoading in Tcomponent(TFieldCollection(self.GetOwner).GetOwner).ComponentState)
    then
     begin
      messageDlg('This Property is ReadOnly',mterror,[mbok],0);
     end
  else
    FTable:=value;
  end;
end;

procedure TFieldItem.WriteTable(value: string);
begin
 if trim(value)<>'' then
  begin
  if  not(csLoading in Tcomponent(TFieldCollection(self.GetOwner).GetOwner).ComponentState)
    then
     begin
      messageDlg('This Property is ReadOnly',mterror,[mbok],0);
     end
  else
    FField:=value;
  end;
end;

function TFieldItem.ReadDControl: TwinControl;
begin
   result:=FDisplayControl;
end;

procedure TFieldItem.WriteDControl(value: TwinCOntrol);
begin
 if (FDisplayControl=nil) then
   FDisplayControl:=TCustomEdit.Create((TFieldCollection(Self.getowner)).QG);
 if value<>nil then
  begin
   FDisplayControl:=value;
  end
  else
   begin
    if FDisplayControl<>nil then
     begin
      FDisplayControl:=nil;
      FDisplayControl.free;
     end;
   end;
end;

{ TFieldCollection }


function TFieldCollection.Insert(Item:Integer): TFieldItem;
begin
 FQg.FPrepared:=false;
 //showmessage('yes');
 Result:=TFieldItem(inherited Add);

end;

constructor TFieldCollection.Create(Aowner: TQueryGenerator);
begin
 inherited Create(TFieldItem);
 FQg:=Aowner;
end;

function TFieldCollection.GetFieldItem(Index: integer): TFieldItem;
begin
 Result:=TFieldItem(inherited Items[Index]);
end;

function TFieldCollection.GetOwner: TPersistent;
begin
 result:=FQg;
end;

procedure TFieldCollection.SetFieldItem(Index: integer; Value: TFieldItem);
begin
 Items[Index].Assign(Value);
end;

{ TQueryGenerator }

constructor TQueryGenerator.Create(Aowner: TComponent);
begin
  inherited;
  FItems:=TFieldCollection.Create(self);
  FDLink:=TFieldDataLink.Create;
  FDLink.Control:=Self;
  //FADOConnection:=TADOConnection.Create(Self);
  FADOQuery:=TADOQuery.Create(self);
  //FActive:=false;
end;

destructor TQueryGenerator.Destroy;
begin
  FDLink.Free;
  inherited;
end;

function TQueryGenerator.GetActive: boolean;
begin
 result:=Factive;
end;



function TQueryGenerator.GetConnection: TADOConnection;
begin
  result:=FADOConnection;
end;

function TQueryGenerator.Insertquery(var s:string): integer;
var
  SelectWhereClause,SelectQuery,InsertIntoClause,InsertValuesClause,InsertQuery:string;
  ControlField:array [0..200] of string;
  i,temp:integer;
begin
 for i:=0 to 200 do
  ControlField[i]:='';
 InsertIntoClause:='';
 InsertValuesClause:='';
 InsertQuery:='';
 SelectWhereClause:='';
 SelectQuery:='';
 InsertQuery:='';
 for i:=0 to Self.FItems.Count-1 do
  begin
   if Self.FItems.Items[i].DisplayControl is TCustomEdit then ControlField[i]:=TCustomEdit(Self.FItems.Items[i].DisplayControl).Text;
   if Self.FItems.Items[i].DisplayControl is TCustomComboBox then ControlField[i]:=inttostr(TCustomComboBox(Self.FItems.Items[i].DisplayControl).itemindex);
   if Self.FItems.Items[i].DisplayControl is TCustomListBox then ControlField[i]:=inttostr(TCustomListBox(Self.FItems.Items[i].DisplayControl).itemindex);
   if Self.FItems.Items[i].DisplayControl is TdbLookupcombobox then ControlField[i]:= widestring(TdbLookupCombobox(Self.FItems.Items[i].DisplayControl).keyvalue);
   if Self.FItems.Items[i].DisplayControl is TdbLookupListbox then ControlField[i]:= widestring(TdbLookupListbox(Self.FItems.Items[i].DisplayControl).keyvalue);
  end;

 SelectWhereClause:='';
 for i:=0 to Self.FItems.Count-1 do
  begin
   if Self.FItems.Items[i].FPrimary then
    begin
      if Self.FItems.Items[i].FIsText then
         SelectWhereClause:=SelectWhereClause+' '+Self.FItems.Items[i].FField+' = '''+controlField[i]+''' and'
      else
         SelectWhereClause:=SelectWhereClause+' '+Self.FItems.Items[i].FField+' = '+controlField[i]+' and';
    end;
  end;

 if Length(SelectWhereClause)>0 then
    Delete(SelectWhereClause,length(SelectWhereClause)-3,4);
 SelectQuery:='Select * from '+Self.FItems.Items[0].FTable+' where '+SelectWhereClause;
 FADOQuery.Close;
 FADOQuery.SQL.Clear;
 FADOQuery.SQL.Add(SelectQuery);
 FADOQuery.Open;
 if FADOQuery.IsEmpty then
  begin
   FADOQuery.Close;
   FADOQuery.SQL.Clear;
   FADOQuery.SQL.Add('select * from '+Self.FItems.Items[0].FTable);
   FADOQuery.Open;

   for i:=0 to FADOQuery.FieldCount-1 do
      if trim(ControlField[i])<>'' then
       InsertIntoClause:=trim(InsertIntoClause)+',';

   InsertIntoClause[length(InsertIntoClause)]:=' ';

   for i:=0 to FADOQuery.FieldCount-1 do
      if trim(ControlField[i])<>'' then
        begin
         insert(Self.FItems.Items[i].FField,InsertIntoClause,(FindPlace(InsertIntoClause,i)));
        end;
   InsertIntoClause:='('+InsertIntoClause+')';

   for i:=0 to FADOQuery.FieldCount-1 do
      if trim(ControlField[i])<>'' then
       InsertValuesClause:=trim(InsertValuesClause)+',';

   InsertValuesClause[length(InsertValuesClause)]:=' ';

   for i:=0 to FADOQuery.FieldCount-1 do
     begin
      if trim(ControlField[i])<>'' then
        begin
         temp:=FindPlace(trim(InsertValuesClause),i);
         if Self.FItems.Items[i].FIsText then
            insert(''''+ControlField[i]+'''',InsertValuesClause,temp)
         else
            insert(ControlField[i],InsertValuesClause,temp);
        end;
     end;
   InsertValuesClause:='('+InsertValuesClause+')';
   InsertQuery:='Insert into '+Self.FItems.Items[0].FTable+' '+InsertIntoClause+' values '+InsertValuesClause ;
   FADOConnection.BeginTrans;
   FADOQuery.Close;
   FADOQuery.SQL.Clear;
   FADOQuery.SQL.Add(InsertQuery);
   try
    FADOQuery.ExecSQL;
    FADOConnection.CommitTrans;
    result:=0;
   except
    FADOConnection.RollbackTrans;
    Result:=2;
   end;
  end
  else
   result:=1;
 s:=InsertQuery;

end;

procedure TQueryGenerator.Loaded;
begin
 inherited Loaded;
 if  FADOConnection.ConnectionString<>'' then
  begin
   FADOConnection.Connected:=true;
   FActive:=True;
   FADOQuery.Connection:=FADOConnection;
  end;
end;

procedure TQueryGenerator.SetActive(value: boolean);
var i: integer;
begin
 if value then
   begin
    if FActive then
     begin
       Factive:=true;
       FADOQuery.Connection:=FADOConnection;
     end
    else
      begin
        if FADOConnection.Connected then
           begin
            FActive:=true;
            FADOQuery.Connection:=FADOConnection;
           end//if
        else
         begin
           Factive:=false;
           if trim(FADOConnection.ConnectionString)<>'' then showmessage('Connection is not established');
         end;//else
      end;//else
   end//value
 else
 Factive:=false;

end;

{ TQGEditor }

procedure TQGPropertyEditor.Edit;
var FI:TFieldItem;
    FC:TFieldCollection;
    QG:TQueryGenerator;
    i:integer;
    QGEditor:TQGEditor;
begin
  inherited;
  FI:=TfieldItem(getcomponent(0));
  Fc:=TFieldCollection(Fi.getOwner);
  QG:=TQueryGenerator(Fc.GetOwner);
  if Qg.Connected then
   begin
    Qg.FADOQuery.Close;
    Qg.FADOQuery.SQL.Clear;
    Qg.FADOQuery.SQL.Add('EXEC sp_tables  "%","%", '+Qg.FADOConnection.DefaultDatabase+', "''TABLE''"');
    Qg.FADOQuery.Open;
    Qg.FADOQuery.First;
    QGEditor:=TQGEditor.Create(Application);
    for i:=0 to Qg.FADOQuery.RecordCount-1 do
      begin
        QGEditor.cmbTable.Items.Add(Qg.FADOQuery.Fields[2].AsString);
        Qg.FADOQuery.next;
      end;
    QGEditor.Database:=Qg.FADOConnection.DefaultDatabase;
    QGEditor.CString:=Qg.FADOConnection.ConnectionString;
    if Fi.FFieldNumber>=0 then
     begin
      QGEditor.cmbTable.ItemIndex:=Fi.FTableNumber;
      QGEditor.OpenQuery;
      QGEditor.fillLB;
      QGEditor.LBField.ItemIndex:=Fi.FFieldNumber;
      QGEditor.btok.Enabled:=true;
      if Fi.FPrimary then QGEditor.chkPk.Checked:=true;
     end;
    QGEditor.showmodal;
    Fi.FFieldNumber:=QgEditor.FieldNumber;
    Fi.FTableNumber:=QGEditor.TableNumber;
    Fi.FPrimary:=QgEditor.Fprimary;
    Fi.FTable:=QGEditor.TableName;
    SetValue(QGEditor.FieldName);
    QGEditor.free;
   end
  else
   messageDlg('Connection Failed',mtError,[mbok],0);
end;

function TQGPropertyEditor.Getattributes: TPropertyAttributes;
begin
 result:=[Padialog];
end;

function TQGPropertyEditor.GetValue: string;
begin
 result:=GetStrValue;
end;

procedure TQGPropertyEditor.SetValue(const value: string);
begin
  inherited;
  SetStrValue(value);
end;

procedure TQueryGenerator.SetConnection(value: TADOConnection);
begin
 if (FADOConnection=nil) then
   FADOConnection:=TADOConnection.Create(Self);
 if value<>nil then
  begin
   FADOConnection:=value;
   if ADOConnection.Connected then
      Factive:=true
  end
  else
   begin
    FActive:=false;
    if FADOConnection<>nil then
     begin
      FADOConnection:=nil;
      FADOConnection.free;
     end;
   end;
end;



function TQueryGenerator.UpdateQuery(var s: string): integer;
  var SelectWhereClause,SelectQuery,UpdateClause:string;
  ControlField:array [0..200] of string;
  i,temp:integer;
begin
 for i:=0 to 200 do
  ControlField[i]:='';
 UpdateClause:='';
 SelectWhereClause:='';
 SelectQuery:='';

 for i:=0 to Self.FItems.Count-1 do
  begin
   if Self.FItems.Items[i].DisplayControl is TCustomEdit then ControlField[i]:=TCustomEdit(Self.FItems.Items[i].DisplayControl).Text;
   if Self.FItems.Items[i].DisplayControl is TCustomComboBox then ControlField[i]:=inttostr(TCustomComboBox(Self.FItems.Items[i].DisplayControl).itemindex);
   if Self.FItems.Items[i].DisplayControl is TCustomListBox then ControlField[i]:=inttostr(TCustomListBox(Self.FItems.Items[i].DisplayControl).itemindex);
   if Self.FItems.Items[i].DisplayControl is TdbLookupcombobox then ControlField[i]:= widestring(TdbLookupCombobox(Self.FItems.Items[i].DisplayControl).keyvalue);
   if Self.FItems.Items[i].DisplayControl is TdbLookupListbox then ControlField[i]:= widestring(TdbLookupListbox(Self.FItems.Items[i].DisplayControl).keyvalue);
  end;
 UpdateClause:='';
 SelectWhereClause:='';
 for i:=0 to Self.FItems.Count-1 do
  begin
   if Self.FItems.Items[i].FPrimary then
    begin
      if Self.FItems.Items[i].FIsText then
         SelectWhereClause:=SelectWhereClause+' '+Self.FItems.Items[i].FField+' = '''+controlField[i]+''' and'
      else
         SelectWhereClause:=SelectWhereClause+' '+Self.FItems.Items[i].FField+' = '+controlField[i]+' and';
    end;
  end;

 if Length(SelectWhereClause)>0 then
    Delete(SelectWhereClause,length(SelectWhereClause)-3,4);
 FADOQuery.Close;
 FADOQuery.SQL.Clear;
 FADOQuery.SQL.Add('select * from '+Self.FItems.Items[0].FTable);
 FADOQuery.Open;
 UpdateClause:='UPDATE '+Self.FItems.Items[0].FTable+' SET ';
 for i:=0 to FADOQuery.FieldCount-1 do
  if ((trim(ControlField[i])<>'') and (not Self.FItems.Items[i].FPrimary))  then
    begin
       if Self.FItems.Items[i].FIsText then
         UpdateClause:=trim(UpdateClause)+' '+Self.FItems.Items[i].FField+' = '+''''+ControlField[i]+''''+' , '
       else
         UpdateClause:=trim(UpdateClause)+' '+Self.FItems.Items[i].FField+' = '+ControlField[i]+' , ';
    end;
 if Length(UpdateClause)>0 then
    Delete(UpdateClause,length(UpdateClause)-2,3);
 UpdateClause:=UpdateClause+' where '+SelectWhereClause;
 s:=updateClause;

 FADOConnection.BeginTrans;
 FADOQuery.Close;
 FADOQuery.SQL.Clear;
 FADOQuery.SQL.Add(UpdateClause);

 try
  FADOQuery.ExecSQL;
  FADOConnection.CommitTrans;
  result:=0;
 except
  FADOConnection.RollbackTrans;
  Result:=1
 end;
end;

{ TQGADOConnection }


procedure TQueryGenerator.FADOConnectionDisconnect(
  Connection: TADOConnection; var EventStatus: TEventStatus);
begin
 inherited;
 Self.FActive:=false;
end;

end.
