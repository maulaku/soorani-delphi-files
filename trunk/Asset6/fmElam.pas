unit fmElam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, RadForms, ExtCtrls;

type
  TElam = class(TRadForm)
    Panel1: TPanel;
    bbCanc: TBitBtn;
    bbOk: TBitBtn;
    Panel2: TPanel;
    lbStr: TLabel;
    procedure bbOkClick(Sender: TObject);
    procedure bbCancClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Elam: TElam;

implementation

{$R *.DFM}

procedure TElam.bbOkClick(Sender: TObject);
begin
  bbOk.modalResult:=mrok;
end;

procedure TElam.bbCancClick(Sender: TObject);
begin
  bbOk.modalResult:=mrCancel;
end;

end.
