unit fmShowMal;

interface

uses
  Windows,Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, SmoothShow,RadForms, RSqlEdit;

type
  TShowMal = class(TRadForm)
    grItem: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    edSearch: TRSqlEdit;
    procedure FormShow(Sender: TObject);
    procedure grItemKeyPress(Sender: TObject; var Key: Char);
    procedure grItemDblClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
//    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowMal: TShowMal;

  ClassCode: integer;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TShowMal.FormShow(Sender: TObject);
begin
   ClassCode := DabData.quMalClassclass_code.AsInteger;
   ModalResult := mrCancel;

   DabData.quMalClass.Close;
//   ShowMessage(IntToStr(ClassCode));
   DabData.quMalClass.Parameters[0].Value := ClassCode;
//   DabData.quMalClass.Parameters[1].Value := NULL;
   DabData.quMalClass.Parameters[2].Value := NULL;
   DabData.quMalClass.Parameters[3].Value := NULL;
   DabData.quMalClass.Open;

end;

procedure TShowMal.grItemKeyPress(Sender: TObject; var Key: Char);
begin
   if Key =#13 then  ModalResult := MrOK;
end;

procedure TShowMal.grItemDblClick(Sender: TObject);
begin
   ModalResult := MrOK;
end;

procedure TShowMal.edSearchChange(Sender: TObject);
begin
    DabData.quMalClass.Close;
    if Trim(edsearch.Text) = ''
        then  DabData.quMalClass.Parameters[0].Value := ClassCode
        else  DabData.quMalClass.Parameters[0].Value := NULL ;
    DabData.quMalClass.Parameters[1].Value := NULL;
    DabData.quMalClass.Parameters[2].Value := Trim ( edSearch.Text)+'%' ;
    DabData.quMalClass.Parameters[3].Value := ClassCode ;
    DabData.quMalClass.Open;
end;

end.
