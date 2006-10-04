unit RqlButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, Buttons;

type
  TRqlButton = class(TBitBtn)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Majid', [TRqlButton]);
end;

end.
