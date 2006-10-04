unit fmCheckUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, StdCtrls,RadForms;

type
  TForm1 = class(TRadForm)
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DabDmdle;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 ADODataSet1.Close;
 ADODataSet1.Open;
end;

end.
