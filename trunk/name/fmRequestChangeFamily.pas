unit fmRequestChangeFamily;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,RadForms, Grids, DBGrids, DB, BaseGrid, AdvGrid, DBAdvGrid,
  ADODB,define;

type
  TRequestChangeFamily = class(TRadForm)
    dsoRequestChangeFamily: TADODataSet;
    DBAdvGrid1: TDBAdvGrid;
    DataSource1: TDataSource;
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoPrint(var Mes : TMessage);message F_PRINT ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequestChangeFamily: TRequestChangeFamily;

implementation

uses fmInRequestChangeFamily, DabDmdle;



{$R *.dfm}

procedure TRequestChangeFamily.DoPrint(var Mes: TMessage);
begin
//   DBAdvGrid1.PreviewPage:=1;
//   DBAdvGrid1.Print;
end;

procedure TRequestChangeFamily.DoEdit(var Mes: TMessage);
begin
 ActiveDataSet :=     dsoRequestChangeFamily;
 InRequestChangeFamily:=TInRequestChangeFamily.create(Self);
 InRequestChangeFamily.ShowModal;
  InRequestChangeFamily.Refresh;
 dsoRequestChangeFamily.Close;
 dsoRequestChangeFamily.Open;
end;

procedure TRequestChangeFamily.DoNew(var Mes: TMessage);
begin
 ActiveDataSet :=     dsoRequestChangeFamily;
 dsoRequestChangeFamily.Append;
 InRequestChangeFamily:=TInRequestChangeFamily.create(Self);
 InRequestChangeFamily.ShowModal;
  InRequestChangeFamily.Refresh;
 dsoRequestChangeFamily.Close;
 dsoRequestChangeFamily.Open;

end;

end.
