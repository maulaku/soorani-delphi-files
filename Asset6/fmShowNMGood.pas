unit fmShowNMGood;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, SmoothShow,RadForms,Variants;

type
  TShowNonMGood = class(TRadForm)
    grItem: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    edSearch: TEdit;
    procedure grItemCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edSearchChange(Sender: TObject);
    procedure grItemKeyPress(Sender: TObject; var Key: Char);
    procedure grItemDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowNonMGood: TShowNonMGood;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TShowNonMGood.grItemCellClick(Column: TColumn);
begin
   close;
end;

procedure TShowNonMGood.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{  ShowNonMGood := nil;
  Action := caFree;}
end;

procedure TShowNonMGood.edSearchChange(Sender: TObject);
begin
    DabData.qunonmgood.Close;
    if Trim (edsearch.Text) = ''
        then
        begin
           DabData.qunonmgood.Parameters[0].Value := 0;
           DabData.qunonmgood.Parameters[1].Value := 1;
           DabData.qunonmgood.Parameters[2].Value := 2;
        end
        else
        begin
           DabData.qunonmgood.Parameters[0].Value := NULL;
           DabData.qunonmgood.Parameters[1].Value := NULL;
           DabData.qunonmgood.Parameters[2].Value := NULL;
        end;
    DabData.qunonmgood.Parameters[3].Value := NULL;
    DabData.qunonmgood.Parameters[4].Value := Trim(edSearch.Text)+'%';
    DabData.qunonmgood.Open;
end;

procedure TShowNonMGood.grItemKeyPress(Sender: TObject; var Key: Char);
begin
   if Key =#13 then  ModalResult := MrOK;
end;

procedure TShowNonMGood.grItemDblClick(Sender: TObject);
begin
    ModalResult := MrOK;
end;

procedure TShowNonMGood.FormShow(Sender: TObject);
begin
    ModalResult := MrCancel;
end;

end.
