unit fmShowMG;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls,DB, SmoothShow,RadForms, RSqlEdit,
  ADODB;

type
  TShowMvGood = class(TRadForm)
    Panel1: TPanel;
    edSearch: TEdit;
    Label1: TLabel;
    grItem: TDBGrid;
    edLabel: TRSqlEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure grItemDblClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grItemKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowMvGood: TShowMvGood;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TShowMvGood.grItemDblClick(Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TShowMvGood.edSearchChange(Sender: TObject);
begin
    DabData.qumoveable.Close;
    if Trim(edsearch.Text) = ''  then
    begin
       DabData.qumoveable.Parameters[0].Value := 0;
       DabData.qumoveable.Parameters[1].Value := 1;
       DabData.qumoveable.Parameters[2].Value := 2;
    end;
    DabData.qumoveable.Parameters[4].Value := Trim(edSearch.Text)+'%';
    DabData.qumoveable.Parameters[8].Value:=edLabel.Text;
    DabData.qumoveable.Open;
end;

procedure TShowMvGood.FormShow(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TShowMvGood.grItemKeyPress(Sender: TObject; var Key: Char);
begin
   if Key =#13 then  ModalResult := MrOK;
end;

end.
