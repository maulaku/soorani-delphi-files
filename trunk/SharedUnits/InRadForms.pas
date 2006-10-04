{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{       Majid Sourani Email soorani@gawab.com          }
{                                                       }
{*******************************************************}
unit InRadForms;

interface

{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}


uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms,  Dialogs, StdCtrls  ,BaseFrm,
  ExtCtrls, Grids, DBGrids, Define,db,DBCtrls,Buttons,ADodb ,Variants;

type
  TfmMode = (fmInsert, fmUpdate, fmDelete);
  TInRadForm = class(TBaseForm)
    RadDataSchema: TADODataSet;
    RadDataSchemaCOLUMN_NAME: TStringField;
    RadDataSchemaIS_NULLABLE: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetFieldColors(Plan:TWinControl);
    procedure FormShow(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure BeforPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  protected
    procedure DoNext(var Mes : TMessage);message F_Next ;
    procedure DoPrv(var Mes : TMessage);message F_Prv ;
  private
    PrvBtOKClickFunc:TNotifyEvent;
    { Private declarations }
{    procedure WndProc (var Message: TMessage);Override;}
  public
    { Public declarations }
    EmptyRequiredFeild:TWinControl;
    FMax :Boolean;
    First : Boolean;
    FOptionalField :TWinControl;
    FInsert:Boolean;
    fmMode:TfmMode;
    Property Insert : Boolean read FInsert Write FInsert;
    Property Maximum : Boolean read FMax Write FMax;
    Property OptionalField:TWinControl read  FOptionalField Write FOptionalField;

//    Procedure SetFocusNextObject( Sender:TObject ) ;
//    procedure SetXpMode(var mes :TMessage);message XPMODE;
  end;

var
  InRadForm: TInRadForm;
  MustClose:Boolean;
//    Procedure SetFocusNextObject( Sender:TObject ) ;
implementation

uses DabDmdle, fmRadMfrm, UCommon;

{$R *.DFM}



procedure TInRadForm.FormClose(Sender: TObject; var Action: TCloseAction);
Var
 BkMark:TBookmark;
begin
   if Owner is TBaseForm then
     if TBaseForm(Owner).ActiveDBGrid<>nil then
     begin
        TBaseForm(Owner).ActiveDBGrid.Options:=[dgRowSelect,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
        if ActiveDataSet<>nil then
        begin
          BkMark:=ActiveDataSet.GetBookmark;
          ActiveDataSet.Close;
          ActiveDataSet.Open;
          ActiveDataSet.GotoBookmark(BkMark);
          ActiveDataSet.FreeBookmark(BkMark);
        end;
     end;
   Action:=caFree;
end;
procedure TInRadForm.SetFieldColors(Plan:TWinControl);
 var
   i,CompCount:Integer;
   DBEditComp:TComponents;
   Filters:String;
begin
  if Owner IS TBaseForm then
  begin
    with TBaseForm(Owner) do
    begin
      if ActiveDataSet.CommandType=cmdText then
      begin
//        ShowDebugMessage(GetTableNames(ActiveDataSet.CommandText)[0]);
//        ShowDebugMessage(ActiveDataSet.CommandText);
        DabData.ADOC.OpenSchema(siColumns,VarArrayOf([Unassigned, Unassigned,TRIM(GetTableNames(ActiveDataSet.CommandText)[0]), Unassigned]), EmptyParam, RadDataSchema);
        DBEditComp:=FindComponents(Self,TDBEdit);
        for i:=0 to Length(DBEditComp)-1 do
        begin
           Filters:='COLUMN_NAME='''+TDBEdit(DBEditComp[i]).DataField+'''';
           RadDataSchema.Filtered:=true;
           RadDataSchema.Filter:=Filters;
           if RadDataSchema.RecordCount>0 then
           if Not(RadDataSchema.FieldByName('IS_NULLABLE').AsBoolean) then
             if
                (TDBEdit(DBEditComp[i]).Color=clWindow) or
                (TDBEdit(DBEditComp[i]).Color=clInfoBk)
              then
             TDBEdit(DBEditComp[i]).Color:=$009FFFFF

        end;
        DBEditComp:=FindComponents(Self,TDBCheckBox);
        for i:=0 to Length(DBEditComp)-1 do
        begin
           Filters:='COLUMN_NAME='''+TDBCheckBox(DBEditComp[i]).DataField+'''';
           RadDataSchema.Filtered:=true;
           RadDataSchema.Filter:=Filters;
           if Not(RadDataSchema.FieldByName('IS_NULLABLE').AsBoolean) then
             if TDBCheckBox(DBEditComp[i]).ParentColor then
                TDBCheckBox(DBEditComp[i]).Color:=$009FFFFF

        end;
        DBEditComp:=FindComponents(Self,TDBLookupComboBox);
        for i:=0 to Length(DBEditComp)-1 do
        begin
           Filters:='COLUMN_NAME='''+TDBLookupComboBox(DBEditComp[i]).DataField+'''';
           RadDataSchema.Filtered:=true;
           RadDataSchema.Filter:=Filters;
           if Not(RadDataSchema.FieldByName('IS_NULLABLE').AsBoolean) then
             if
                (TDBLookupComboBox(DBEditComp[i]).Color=clWindow) or
                (TDBLookupComboBox(DBEditComp[i]).Color=clInfoBk)
              then
               TDBLookupComboBox(DBEditComp[i]).Color:=clMandatory

        end
      end;
    end;
  end;
{  for CompCount:=0 to ComponentCount do
  begin
     if Components[CompCount] is TADODataSet then
  end}
end;

procedure TInRadForm.FormShow(Sender: TObject);
begin
  inherited;
  SetFieldColors(Self);
  if Owner is TBaseForm then
    with TBaseForm(Owner) do
    begin
      if ActiveDataSet<>nil then
         ActiveDataSet.BeforePost:=BeforPost;
    end;
end;
procedure TInRadForm.BeforPost(DataSet: TDataSet);
begin
  CheckRequired(Self);
end;

procedure TInRadForm.FormCreate(Sender: TObject);
var
  tmp:TComponents;
  i:integer;
begin
  inherited;
  tmp:=FindComponents(Self,TButton);
  for i:=0 to Length(tmp)-1 do
    if
       ((TButton(tmp[i]).Caption='ÊÇÆíÏ') or
       (TButton(tmp[i]).Caption='ÊÇííÏ')) and
       (tmp[i].Tag<>1010)
    then
    begin
       if tmp[i] is TBitBtn then
       begin
         TBitBtn(tmp[i]).ModalResult:=mrNone;
         MustClose:=True;
         PrvBtOKClickFunc:=TBitBtn(tmp[i]).OnClick;
         TBitBtn(tmp[i]).OnClick:=BtOKClick;
       end
       else
       begin
         PrvBtOKClickFunc:=TButton(tmp[i]).OnClick;
         TButton(tmp[i]).OnClick:=BtOKClick;
       end;
    end;

end;
procedure TInRadForm.DoNext(var Mes : TMessage);
begin
 if ActiveDataSet<>nil then
    ActiveDataSet.Next;
end;
procedure TInRadForm.DoPrv(var Mes : TMessage);
begin
 if ActiveDataSet<>nil then
    ActiveDataSet.Prior;
end;
procedure TInRadForm.BtOKClick(Sender: TObject);
begin
  if Sender=nil then exit;
  if Not(CheckRequired(Self)) then
  begin
    if Assigned(PrvBtOKClickFunc) then
       PrvBtOKClickFunc(nil);
    if MustClose Then Close;
  end;
end;

end.
