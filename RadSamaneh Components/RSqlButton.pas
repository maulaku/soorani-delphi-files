unit RSqlButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,UnAllChange;

type

  TRSqlButton = class(TButton)
  private
   FButtonType : TButtonType;
   procedure SetButtonType(FbType:TButtonType);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
   constructor Create (AOwner : TComponent);override;
  published
    { Published declarations }
   property ButtonType : TButtonType read FButtonType write SetButtonType;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSqlButton]);
end;

constructor TRSqlButton.Create(AOwner: TComponent);
Begin
 inherited;
 Font.Name:='MS Sans Serif';
 Font.Size:=10;
 Font.Style:=[fsBold];
 SetButtonType(btOk);
End;
procedure TRSqlButton.SetButtonType(FbType: TButtonType);
begin
 if csDesigning in ComponentState then
  begin
   if FbType=btOk then
     begin
       caption:=' «∆Ìœ' ;
     end;
   if FbType=btCancel then
    begin
       caption:='·€Ê' ;
    end;
  end;
 FbuttonType:=FbType;
end;

end.
