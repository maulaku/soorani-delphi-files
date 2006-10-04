unit RSqllookup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls,SetForm,UnAllChange,Variants;

type
  TRSqlDbLookup = class(TDBLookupComboBox)
  private
    { Private declarations }
    FFieldType :TFieldType;
    FProvider : TFormInitializer;
  protected
    { Protected declarations }
   procedure CloseUp(Action : Boolean);Override;
   procedure WmkeyDown (var mes:TWmKeyDown);message wm_keyDown;
   procedure Wmchar (var mes:TWmChar);message wm_Char;
   procedure KeyValueChanged;override;
  public
    { Public declarations }
   Mes : TMessage;
   LastValue : Variant;
   Flag : Boolean;
   Constructor Create (AOwner : TComponent);override;
  published
    { Published declarations }
      property FieldType : TFieldType read FFieldType write FFieldType default ftNone;
      property Provider : TFormInitializer read FProvider write FProvider;
 end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSqlDblookup]);
end;

{ TRSqlDblookup }



procedure TRSqlDblookup.CloseUp(Action: Boolean);
begin
 inherited;
{ if KeyValue<>Null then
   begin
    if LastValue=Null then
     Begin
      LastValue:=KeyValue;
      Mes.Msg:=Full;
      Provider.Dispatch(Mes);
     end;
   end
  else
   begin
    if LastValue<>Null then
     begin
      LastValue:=Null;
      Mes.Msg:=Empty;
      Provider.Dispatch(Mes);
     end;
   end;}

 if KeyValue=Null then
 if Not(Flag) then
  begin
  Flag:=True;
  Mes.Msg:=Empty;
  end
   else Mes.Msg:=None;

 if KeyValue<>Null then
  begin
    if Flag then
    begin
     Flag:=False;
     Mes.Msg:=Full;
    end
     else Mes.Msg:=None;
  end;
if FProvider<>nil then
 if ((FieldType=ftRequired) or (FieldType=ftKeyGo))then
   Provider.Dispatch(Mes);

end;

Constructor TRSqlDblookup.Create(AOwner : TComponent);
Begin
 inherited ;
 Parent:=TwinControl(owner);
 Font.Name:='MS Sans Serif';
 Font.Size:=10;
 Font.Style:=[fsBold];
 BidiMode:=bdRightToLeft;
End;


procedure TRSqlDbLookup.KeyValueChanged;
begin
  inherited;
  CloseUp(True);
end;

procedure TRSqlDblookup.Wmchar(var mes: TWmChar);
begin
 if Mes.CharCode=13 then
  NextControl(TForm(Owner).Handle);

 if Mes.CharCode=8 then
  KeyValue:=Null;

 inherited;

 CloseUp(True);
end;

procedure TRSqlDblookup.WmkeyDown(var mes: TWmKeyDown);
begin
    inherited;
    CloseUp(True);
end;

end.
