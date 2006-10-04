unit fmConstParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB,RadForms;

type
  TConstParam = class(TRadForm)
    dsuCONST_PARAM: TADODataSet;
    dsCONST_PARAM: TDataSource;
    Z: TDBGrid;
    dsuCONST_PARAMCONST_SRL: TStringField;
    dsuCONST_PARAMCONST_DESC: TStringField;
    dsConstVal: TDataSource;
    dsuCOSTVAL: TADODataSet;
    DBGrid2: TDBGrid;
    dsuCOSTVALCONST_SRL: TStringField;
    dsuCOSTVALAPPLY_DATE: TStringField;
    dsuCOSTVALCONST_VAL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConstParam: TConstParam;

implementation

uses DabDmdle;

{$R *.dfm}

end.
