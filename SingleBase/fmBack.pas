unit fmBack;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, DBCtrls;

type
  TBack = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    quBack: TQuery;
    Label2: TLabel;
    dbsal: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbsalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Back: TBack;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TBack.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TBack.Button1Click(Sender: TObject);
begin
 try
  quBack.sql.text:='BackUp DataBase '+dbsal.text+' to Disk = '+''''+edit1.text+'''';
  quBack.execsql;
 Except
  Showmessage('Œÿ« œ— –ŒÌ—Â ”«“Ì');
 end;
end;

procedure TBack.Edit2Change(Sender: TObject);
begin
if (dbsal.text<>'') and (edit1.text<>'') then
  Button1.Enabled:=true
else
  Button1.Enabled:=false;

end;

procedure TBack.FormShow(Sender: TObject);
begin
  DabData.quConf.close;
  DabData.quConf.Open;
end;

procedure TBack.dbsalClick(Sender: TObject);
begin
if (dbsal.text<>'') and (edit1.text<>'') then
  Button1.Enabled:=true
else
  Button1.Enabled:=false;
end;

end.
