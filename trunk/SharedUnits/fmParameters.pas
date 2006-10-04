unit fmParameters;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RadForms, Db, ADODB, Grids, DBGrids, SetForm, XPMenu, ppEndUsr, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDB, ppDBPipe, ppModule, raCodMod, jpeg, Filter, Menus,
  StdCtrls, Buttons;

type
  TParametersFrm = class(TRadForm)
    dbgParameters: TDBGrid;
    dsParameters: TDataSource;
    quParameters: TADOQuery;
    quParametersPk_Key: TIntegerField;
    quParametersvertion: TStringField;
    quParametersCurrentYear: TSmallintField;
    quParametersMasterGroupLen: TSmallintField;
    quParametersDetailGroupLen: TSmallintField;
    quParametersItemLen: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParametersFrm: TParametersFrm;

implementation

uses DabDmdle;

{$R *.DFM}

end.
