unit RSqlColPropertyForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ComCtrls, StdCtrls, ToolWin, RSqlDbStringGrid, RSqlEdit;

type
  TColForm = class(TForm)
    ToolBar1: TToolBar;
    LbCols: TListBox;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    RSqlEdit1: TRSqlEdit;
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   FCol : ^TCol;
  end;

var
  ColForm: TColForm;

implementation

{$R *.DFM}

procedure TColForm.ToolButton1Click(Sender: TObject);
begin
FCol.Caption:=RSqlEdit1.Text;
end;

end.
