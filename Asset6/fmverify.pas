unit fmVerify;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, XPMenu,RadForms;

type
  TVerify = class(TRadForm)
    lbRemark: TLabel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Verify: TVerify;

implementation

{$R *.DFM}

procedure TVerify.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
