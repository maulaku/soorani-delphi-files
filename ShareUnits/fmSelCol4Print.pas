unit fmSelCol4Print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Buttons, ExtCtrls;

type
  TSelCol4Print = class(TForm)
    aveList: TCheckListBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    ckbSelAll: TCheckBox;
    procedure ckbSelAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelCol4Print: TSelCol4Print;

implementation

{$R *.dfm}

procedure TSelCol4Print.ckbSelAllClick(Sender: TObject);
var
  i:Integer;
begin
  for i:=0 to aveList.Count-1 do
    if ckbSelAll.Checked then
      aveList.Checked[i]:=True
    else
      aveList.Checked[i]:=False
end;

end.
