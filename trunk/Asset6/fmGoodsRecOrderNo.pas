unit fmGoodsRecOrderNo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RSqlButton, ExtCtrls, Grids, DBGrids, Db,RadForms;

type
  TGoodsRecOrderNo = class(TRadForm)
    dbgOrderReq: TDBGrid;
    Panel1: TPanel;
    RSqlButton1: TRSqlButton;
    RSqlButton2: TRSqlButton;
    dsGoodsRecOrderNo: TDataSource;
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
  GoodsRecOrderNo: TGoodsRecOrderNo;

implementation
uses
    DabDmdle ;

{$R *.DFM}

procedure TGoodsRecOrderNo.RSqlButton1Click(Sender: TObject);
begin
    Result := TRUE ;
    Close ;
end;

procedure TGoodsRecOrderNo.RSqlButton2Click(Sender: TObject);
begin
    Result := FALSE ;
    Close ;
end;

procedure TGoodsRecOrderNo.dbgOrderReqDblClick(Sender: TObject);
begin
    Result := TRUE ;
    Close ;
end;

end.
