unit fmActiveUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,RadForms,
  StdCtrls, RSqlMemo, Db, ADODB, DBCGrids, DBCtrls, ExtCtrls, Grids,
  DBGrids, Buttons, RSqlEdit,Variants;

type
  TActiveUser = class(TRadForm)
    dsActiveUser: TDataSource;
    quActiveUser: TADOQuery;
    DBGrid1: TDBGrid;
    quActiveUserhostname: TWideStringField;
    quActiveUsertime: TStringField;
    quActiveUserstatus: TWideStringField;
    quActiveUsercmd: TWideStringField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    SpeedButton3: TSpeedButton;
    quKill: TADOQuery;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    quActiveUserspid: TSmallintField;
    quActiveUserFLName: TStringField;
    SpeedButton4: TSpeedButton;
    quSendMessage: TADOQuery;
    WideStringField4: TWideStringField;
    StringField2: TStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    edMessage: TRSqlEdit;
    quActiveUserDBName: TWideStringField;
    quActiveUserprogram_name: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActiveUser: TActiveUser;

implementation

uses DabDmdle;

{$R *.DFM}


procedure TActiveUser.FormShow(Sender: TObject);
begin
  quActiveUser.Close;
  quActiveUser.Open;
//  Self.Maximum:=true;
//  WindowState:=wsMaximized;
end;

procedure TActiveUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TActiveUser.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;


procedure TActiveUser.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  try
    if(quActiveUserspid.Value<>null) then
    begin
      quKill.SQL.Text:='Kill '+quActiveUserspid.AsString;
      quKill.ExecSQL;
    end;
  Except
  end
end;
procedure TActiveUser.Timer1Timer(Sender: TObject);
var bk:TBookmark;
begin
  inherited;
  try
    bk:=quActiveUser.GetBookmark;
    quActiveUser.close;
    quActiveUser.Open;
  except
    Application.Terminate;
  end;
  try
    quActiveUser.GotoBookmark(bk);
  except
  end;
end;

procedure TActiveUser.SpeedButton4Click(Sender: TObject);
begin
 quSendMessage.Parameters[0].Value:=edMessage.Text;
 quSendMessage.Parameters[1].Value:=quActiveUserspid.Value;
 quSendMessage.ExecSQL;
end;

end.
