unit RSqlEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,SetForm,UnAllChange,Variants;

type
  TEditType = (etAlphaNumeric,etNumeric,etNonNumeric,etFloat);
  TRSqlEdit = class(Tedit)

  private
   FValue : Variant;
   FProvider : TFormInitializer;
   FFieldType : TFieldType;
   FEditType : TEditType;
   Space : Boolean;
   procedure ReadWriteEditType(EType : TEditType);
   procedure SetValue(Val : Variant);
   function GetValue : Variant;
  protected
   procedure Wmchar (Var Mes : TWmChar);message WM_CHAR;
   procedure Change;override;
  public
   Mes : TMessage;
   Flag: Boolean;
   property Value : Variant read GetValue write SetValue;
   constructor Create (AOwner : TComponent);override;
  published
   property FieldType : TFieldType read FFieldType write FFieldType default ftNone;
   property EditType : TEditType read FEditType write ReadWriteEditType default etAlphaNumeric;
   property Provider : TFormInitializer read FProvider write FProvider;
  end;

procedure Register;

implementation

//uses setForm,Define;

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSqlEdit]);
end;

{ TSqlEdit }

procedure TRSqlEdit.Change;
begin
 inherited;
 Value:=Text;
 if Text='' then
 if Not(Flag) then
  begin
  Flag:=True;
  Mes.Msg:=Empty;
  end
   else Mes.Msg:=None;

 if Text<>'' then
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

Constructor TRSqlEdit.Create(AOwner : TComponent);
begin
  inherited;
  Font.Name:='MS Sans Serif';
  Font.Size:=10;
  Font.Style:=[fsBold];
  Flag:=False;
end;

function TRSqlEdit.GetValue: Variant;
begin
 if FEditType=etNumeric then
  Result:=Integer(FValue);
 if ((FEditType=etNonNumeric) or (FEditType=etAlphaNumeric)) then
  Result:=VarToStr(FValue);
 if FEditType=etFloat then
  Result:=Double(FValue);
end;

procedure TRSqlEdit.ReadWriteEditType(EType: TEditType);
begin
 FEditType:=EType;
 if ((EType=etNumeric) or (EType=etFloat)) then
   BidiMode:=bdleftToRight
 else
  BidiMode:=bdRightToLeft;
end;


procedure TRSqlEdit.SetValue(Val: Variant);
begin
 FValue:=Val;
 Text:=VartoStr(Val);
end;

procedure TRSqlEdit.Wmchar(var Mes: TWmChar);
Var
  x : integer;
begin
 Space:=False;
 if Mes.CharCode=32 then
  begin
   if not Space then
    Begin
     if Text='' then
      Space:=True else
       if Length(Text)>1 then
        if Text[Length(Text)]=' ' then
         Space:=True;
    end;
  end;

  if Mes.CharCode=13 then
   NextControl(TForm(Owner).Handle);

  if Not(Space) then
  begin
    if FEditType = etAlphaNumeric then inherited;

    if ((FEditType = etNumeric)) then
      if ((Mes.CharCode>=48) and (Mes.CharCode<=57)) or ((Mes.CharCode=8)  or (Mes.CharCode=13)) then
       inherited;

    if ((FEditType = etFloat)) then
      if ((((Mes.CharCode>=48) and (Mes.CharCode<=57)) or (Mes.CharCode=8) or (Mes.CharCode=13)) or
       ((Mes.CharCode=Ord('.')) and (Pos('.',Text)=0))) then
        inherited;


    if FEditType = etNonNumeric then if Not((Mes.CharCode>=48) and (Mes.CharCode<=57)) then inherited;
  end;
end;


end.
