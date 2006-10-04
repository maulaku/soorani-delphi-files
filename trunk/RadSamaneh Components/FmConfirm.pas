unit FmConfirm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RSqlButton, ExtCtrls, XPMenu, Buttons;

type
  TConfirm = class(TForm)
    lbRemark: TLabel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    XPMenu1: TXPMenu;
    procedure RSqlButton1Click(Sender: TObject);
    procedure RSqlButton2Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Res : boolean;
  end;

var
  Confirm: TConfirm;

implementation

{$R *.DFM}

procedure TConfirm.RSqlButton1Click(Sender: TObject);
begin
 Res:=True;
 Close;
end;

procedure TConfirm.RSqlButton2Click(Sender: TObject);
begin
 Res:=False;
 Close;
end;

procedure TConfirm.bbCancelClick(Sender: TObject);
begin
Res:=False;
Close;
end;

procedure TConfirm.bbOkClick(Sender: TObject);
begin
Res:=True;
Close;
end;

end.
