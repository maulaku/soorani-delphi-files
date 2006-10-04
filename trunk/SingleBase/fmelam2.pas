unit fmelam2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, XPMenu;

type
  Telam2 = class(TForm)
    lbfirst: TLabel;
    lbsecond: TLabel;
    btok: TButton;
    btca: TButton;
    XPMenu1: TXPMenu;
    procedure btcaClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
  private
    { Private declarations }
  public
   Prd : byte;
    { Public declarations }
  end;

var
  elam2: Telam2;

implementation

{$R *.DFM}

procedure Telam2.btcaClick(Sender: TObject);
begin
 prd := 2;
end;

procedure Telam2.btokClick(Sender: TObject);
begin
 prd := 1;
end;

end.
