unit fmDefineOrg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB,define,IniFiles, SetForm, StdCtrls, RSqlButton, DBCtrls, RSqllookup, ExtCtrls,DabdmDle,
  RadForms;

type
  TDefineOrg = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dblOrg: TRSqlDbLookup;
    RSqlButton1: TRSqlButton;
    Label1: TLabel;
    RSqlButton2: TRSqlButton;
    procedure RSqlButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RSqlButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Inifile:TINIFile;
    AmvOrg:string;
  public
    { Public declarations }
  end;

var
  DefineOrg: TDefineOrg;

implementation

{$R *.DFM}

procedure TDefineOrg.RSqlButton2Click(Sender: TObject);
begin
 close;
end;

procedure TDefineOrg.FormShow(Sender: TObject);
begin
 DabData.quOrg.Close;
 DabData.quOrg.Parameters[0].Value:=-1;
 DabData.quOrg.Open;
 Inifile:=TIniFile.Create('Amval.ini');
 AmvOrg:=Inifile.ReadString('Organization','AmvOrg','10');
 dblOrg.KeyValue:=strtoint(AmvOrg);
end;

procedure TDefineOrg.RSqlButton1Click(Sender: TObject);
begin
 Inifile.WriteString('Organization','AmvOrg',inttostr(dblOrg.Keyvalue));
 DabData.ShowPopupMessage('.»—«Ì «⁄„«·  €ÌÌ—«  »«Ìœ œÊ»«—Â »—‰«„Â —« «Ã—« ﬂ‰Ìœ');
 OrganizCode:=inttostr(dblOrg.Keyvalue);
 close;
end;

procedure TDefineOrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Inifile.Free;
 Action:=cafree;
end;

end.
