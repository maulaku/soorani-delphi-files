unit fmTransOrderNo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RSqlButton, ExtCtrls, Grids, DBGrids, Db,RadForms;

type
  TTransOrderNo = class(TRadForm)
    dbgOrderReq: TDBGrid;
    Panel1: TPanel;
    RSqlButton1: TRSqlButton;
    RSqlButton2: TRSqlButton;
    dsTransRecOrderNo: TDataSource;
    procedure RSqlButton1Click(Sender: TObject);
    procedure RSqlButton2Click(Sender: TObject);
    procedure dbgOrderReqDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Result : Boolean ; 
  end;

var
  TransOrderNo: TTransOrderNo;

implementation
uses
    DabDmdle ;

{$R *.DFM}

procedure TTransOrderNo.RSqlButton1Click(Sender: TObject);
begin
    Result := TRUE ;
    Close ;
end;

procedure TTransOrderNo.RSqlButton2Click(Sender: TObject);
begin
    Result := FALSE ;
    Close ;
end;

procedure TTransOrderNo.dbgOrderReqDblClick(Sender: TObject);
begin
    Result := TRUE ;
    Close ;
end;

end.
