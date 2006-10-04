unit fmUsrL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ExtCtrls, Grids, DBGrids;

type
  TUsrL = class(TForm)
    Timer1: TTimer;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsrL: TUsrL;

implementation

//uses fmSdata;

{$R *.DFM}

procedure TUsrL.FormShow(Sender: TObject);
begin
  SData.quList.Close;
  SData.quList.Open;
  Timer1.Enabled :=true;
end;

procedure TUsrL.Timer1Timer(Sender: TObject);
begin
  SData.quList.Close;
  SData.quList.Open;
end;
end.
