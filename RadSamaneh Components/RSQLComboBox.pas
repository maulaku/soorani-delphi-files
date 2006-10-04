unit RSQLComboBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,SetForm,UnAllChange;

type
 TRSqlComboBox = class(TComboBox)
  private
    { Private declarations }
    Mes : TMessage;
    FFieldType :TFieldType;
    FProvider : TFormInitializer;
  protected
    { Protected declarations }
   procedure Change;Override;
   procedure Wmchar (Var Mes : TWmChar);message WM_CHAR;
   procedure CB_SETCURSEL(Var Mes : TMessage);message CB_SETCURSEL;
  public
    { Public declarations }
    Flag : Boolean;
   constructor Create (AOwner : TComponent);override;
   published
    { Published declarations }
     property FieldType : TFieldType read FFieldType write FFieldType default ftNone;
     property Provider : TFormInitializer read FProvider write FProvider;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSQLComboBox]);
end;

{ TRSQLComboBox }



{ TRSqlComboBox }


procedure TRSqlComboBox.CB_SETCURSEL(var Mes: TMessage);
begin
inherited;
 if Mes.WParam=-1 then
  Change;
end;

procedure TRSqlComboBox.Change;
begin
  inherited;

 if ItemIndex<0 then
 if Not(Flag) then
  begin
  Flag:=True;
  Mes.Msg:=Empty;
  end
   else Mes.Msg:=None;

 if ItemIndex>=0 then
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

constructor TRSqlComboBox.Create(AOwner: TComponent);
begin
  inherited;
  Flag:=False;
  Font.Name:='MS Sans Serif';
  Font.Size:=10;
  Font.Style:=[fsBold];
  BidiMode:=bdRightToLeft;
  Style:=csDropDownList;
end;

procedure TRSqlComboBox.Wmchar(var Mes: TWmChar);
begin
 if Mes.CharCode=13 then
  NextControl(TForm(Owner).Handle);

 if Mes.CharCode=8 then
  begin
   ItemIndex:=-1;
   Change;
  end;

 inherited;
end;

end.
