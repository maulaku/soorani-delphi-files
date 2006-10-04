unit fmGsnFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,FileCtrl,inifiles,RadForms, RSqlEdit, ExtCtrls,
  ADODB, Db, DBTables;

type
  TGsnFrm = class(TRadForm)
    edServer: TRSqlEdit;
    edDataBase: TRSqlEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edServerKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    Oky :boolean;
    { Public declarations }
  end;

var
  GsnFrm       :TGsnFrm;
implementation

uses UCommon;



{$R *.DFM}

procedure TGsnFrm.BitBtn2Click(Sender: TObject);
var   GenDataFile  :TiniFile;
begin
  GenDataFile:=TiniFile.Create(fullIniPath);
  GenDataFile.WriteString('Connection','SERVER',GsnFrm.edServer.text);
  GenDataFile.WriteString('Connection','db',GsnFrm.edDataBase.text);
  GenDataFile.Free;
  Oky:=true;
  Close;
end;
procedure TGsnFrm.BitBtn1Click(Sender: TObject);
begin
  Oky:=False;
  Close;
end;

procedure TGsnFrm.edServerKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then BitBtn2.setfocus;
end;

end.
