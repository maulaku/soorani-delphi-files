unit ComboItemsEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFmComboItems = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Items : TStrings;
  end;

var
  FmComboItems: TFmComboItems;

implementation

{$R *.DFM}


procedure TFmComboItems.FormShow(Sender: TObject);
Var
 i: integer;
begin
 For i:=0 to Items.Count-1 do
  Memo1.Lines.Add(Items.Strings[i]);
end;

procedure TFmComboItems.Button1Click(Sender: TObject);
Var
 i :integer;
begin
 Items.Clear;
 for i:=0 to Memo1.Lines.Count-1 do
  Items.Add(Memo1.Lines[i]);
 Close; 
end;

end.
