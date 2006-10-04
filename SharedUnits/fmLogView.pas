unit fmLogView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,RadForms,
  StdCtrls, RSqlMemo, Db, ADODB, DBCGrids, DBCtrls, ExtCtrls, Buttons,
  Mask, RSqlMaskEdit, RSqlEdit, RSqllookup,Shellapi;

type
  TLogView = class(TRadForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    dsLog: TDataSource;
    quLog: TADOQuery;
    quLogLog: TMemoField;
    quLogFlName: TStringField;
    SpeedButton1: TSpeedButton;
    edSreach: TRSqlEdit;
    edDate: TRSqlMaskEdit;
    dblUser: TRSqlDbLookup;
    quUser: TADOQuery;
    quUserFlName: TStringField;
    quUseremp_no: TStringField;
    dsUser: TDataSource;
    quLognet_address: TWideStringField;
    DBText2: TDBText;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogView: TLogView;

implementation

uses DabDmdle;

{$R *.DFM}


procedure TLogView.FormShow(Sender: TObject);
begin
  Left:=0;
  Top:=0;
  quUser.Close;
  quUser.Open;
  quLog.Close;
  quLog.Parameters[0].Value:='';
  quLog.Parameters[2].Value:=Dabdata.disp_date;
  edDate.Text:=Dabdata.disp_date;
  quLog.Open;

end;

procedure TLogView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TLogView.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  quLog.Close;
  quLog.Parameters[0].Value:=edSreach.Text;
  quLog.Parameters[1].Value:=dblUser.KeyValue;
  if edDate.Text<>'  /  /  ' then
    quLog.Parameters[2].Value:=edDate.Text
  else
    quLog.Parameters[2].Value:='';
  quLog.Open;
end;

procedure TLogView.SpeedButton2Click(Sender: TObject);
var
 MailStr,DBText:String;
begin
  inherited;
  MailStr:='mailto:' +
             'soorani@gawab.com' +
             '?Subject=«‘ﬂ«·«  ”Ì” „ «„Ê«·' +
             '&Body=';
  quLog.First;
  while Not(quLog.Eof) do
  begin
    DBText:=DBText+quLogLog.Value;
    quLog.Next;
  end;
   ShellExecute(Self.Handle,
             nil,
             PChar(MailStr+DBText),
             nil,
             nil,
             SW_NORMAL);

end;

end.
