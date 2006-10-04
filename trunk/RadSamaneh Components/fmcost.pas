unit fmcost;

interface

uses
  Windows, Messages, Define ,SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, ADODB, RSqlEdit, RSqlButton,
  SetForm, SmoothShow, RSqlDbStringGrid;

type
  Tcost = class(TForm)
    Panel1: TPanel;
    DbSg: TRSqlDbStringGrid;
    dsBType: TDataSource;
    quBType: TADOQuery;
    quBTypeUc_Code: TIntegerField;
    quBTypeUc_Desc: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbSgBeforeColumnColorSet(Sender: TObject; var Color: TColor);

  private
    { Private declarations }
  public
    mode : Smallint;
    RowShow  : Smallint;
    RowField : Smallint;
    NewKey,EditKey,DelKey : Boolean;
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  end;

var
  cost: Tcost;
  bk:TBookMark;

implementation

uses DabDmdle, fmVerify, UCommon;

{$R *.DFM}

procedure Tcost.DoDelete(var mes: TMessage);
begin
 DbSg.Dispatch(Mes);
end;

procedure Tcost.DoEdit(var mes: TMessage);
begin
 DbSg.Dispatch(Mes);
end;

procedure Tcost.DoNew(Var Mes: TMessage);
begin
 DbSg.Dispatch(Mes);
end;


procedure Tcost.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=5;
  Application.MainForm.Dispatch(mes);
end;

procedure Tcost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure Tcost.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure Tcost.FormShow(Sender: TObject);
begin
 quBType.Close;
 quBType.Open;
end;

procedure Tcost.DbSgBeforeColumnColorSet(Sender: TObject;
  var Color: TColor);
begin
 Color:=clYellow;
end;

end.






