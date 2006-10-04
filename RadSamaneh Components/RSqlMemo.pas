unit RSqlMemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,SetForm,UnAllChange;

type
  TRSqlMemo = class(TMemo)
  private
   FMultiLine : Boolean;
   FProvider : TFormInitializer;
   FFieldType : TFieldType;
   FRow : LongInt;
   FColumn : LongInt;
   FOnHScroll : TNotifyEvent;
   FOnVScroll : TNotifyEvent;
   procedure WmHScroll (Var Msg : TWmHScroll); message WM_HSCROLL;
   procedure WmVScroll (Var Msg : TWmVScroll); message WM_VSCROLL;
   procedure WmKeyDown (Var Msg : TWmKeyDown); message WM_KEYDOWN;
   procedure WmChar (Var Msg : TWmChar); message WM_CHAR;
   procedure SetRow (Value : LongInt);
   procedure SetColumn (Value : LongInt);
   procedure WriteFieldType (FType : TFieldType);
   function GetRow : LongInt;
   function GetColumn : LongInt;

  protected
   procedure HScroll; dynamic;
   procedure VScroll; dynamic;
   procedure Change;override;
   constructor Create(AOwner : TComponent);override;
  public
   Flag : Boolean;
   Mes : TMessage;
   property Row : LongInt read GetRow write SetRow;
   property Column : LongInt read GetColumn write SetColumn;

  published
   property OnHScroll : TNotifyEvent read FOnHScroll write FOnHScroll;
   property OnVScroll : TNotifyEvent read FOnVScroll write FOnVScroll;
   property FieldType : TFieldType read FFieldType write WriteFieldType default ftNone;
   property Provider : TFormInitializer read FProvider write FProvider;
   property MultiLine : Boolean read FMultiLine write FMultiLine default False;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSqlMemo]);
end;

procedure TRSqlMemo.Change;
begin
  inherited;
 if Lines.Text='' then
 if Not(Flag) then
  begin
  Flag:=True;
  Mes.Msg:=Empty;
  end
   else Mes.Msg:=None;

 if Lines.Text<>'' then
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

constructor TRSqlMemo.Create(AOwner: TComponent);
begin
  inherited;
  Font.Name:='MS Sans Serif';
  Font.Size:=10;
  Font.Style:=[fsBold];
end;

function TRSqlMemo.GetColumn: LongInt;
begin
 Result:=SelStart-Perform(Em_LineIndex,-1,0);
end;

function TRSqlMemo.GetRow: LongInt;
begin
 Result:=Perform(Em_LineFromChar,-1,0);
end;

procedure TRSqlMemo.HScroll;
begin
 if Assigned(FOnHScroll) then
  FOnHScroll(Self);
end;


procedure TRSqlMemo.SetColumn(Value: Integer);
begin
 FColumn:=Perform(Em_LineLength,Perform(Em_LineIndex,GetRow,0),0);
 if FColumn>Value then
  FColumn:=Value;
 SelStart:=Perform(Em_LineIndex,GetRow,0)+FColumn;
end;

procedure TRSqlMemo.SetRow(Value: Integer);
begin
 SelStart:=Perform(Em_LineIndex,Value,0);
 FRow:=SelStart;
end;

procedure TRSqlMemo.VScroll;
begin
 if Assigned(FOnVScroll) then
  FOnVScroll(Self);
end;

procedure TRSqlMemo.WmChar(var Msg: TWmChar);
begin
 if ((Msg.CharCode=13) and (WantReturns=False)) then
   NextControl(TForm(Owner).Handle);
 inherited;
end;

procedure TRSqlMemo.WmHScroll(var Msg: TWmHScroll);
begin
 inherited;
 HScroll;
end;

procedure TRSqlMemo.WmKeyDown(var Msg: TWmKeyDown);
begin
 inherited;
 if ((Msg.CharCode=Vk_Insert) and (WantReturns=False) and (MultiLine)) then
  begin
   WantReturns:=True;
   Perform(Wm_Char,13,0);
   WantReturns:=False;
  end;
end;

procedure TRSqlMemo.WmVScroll(var Msg: TWmVScroll);
begin
 inherited;
 VScroll;
end;

procedure TRSqlMemo.WriteFieldType(FType: TFieldType);
begin
 FFieldType:=FType;
end;

end.
