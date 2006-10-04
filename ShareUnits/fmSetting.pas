unit fmSetting;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB,define,IniFiles, SetForm, StdCtrls, RSqlButton, DBCtrls, RSqllookup, ExtCtrls,DabdmDle,
  RadForms, RSQLComboBox, RSqlEdit;

type
  TSetting = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dblOrg: TRSqlDbLookup;
    RSqlButton1: TRSqlButton;
    RSqlButton2: TRSqlButton;
    quOrg: TADOQuery;
    dsOrg: TDataSource;
    quOrgOrg_Code: TIntegerField;
    quOrgOrg_Name: TStringField;
    quOrgOrg_Addr: TStringField;
    quOrgOrg_Mast_Code: TIntegerField;
    Label3: TLabel;
    edYear: TRSqlEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    edRunID: TRSqlEdit;
    cbXPMode: TRSqlComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cbXPLogin: TRSqlComboBox;
    Label7: TLabel;
    cbServer: TComboBox;
    cbDataBase: TRSqlDbLookup;
    dsDataBases: TDataSource;
    quDataBases: TADOQuery;
    quDataBasesname: TWideStringField;
    procedure RSqlButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RSqlButton1Click(Sender: TObject);
    function DataBaseString(Dbn,SrvN:string):String;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbServerExit(Sender: TObject);
    procedure cbDataBaseExit(Sender: TObject);
  private
    { Private declarations }
    Inifile:TINIFile;
    AmvOrg:string;
  public
    { Public declarations }
  end;

var
  Setting: TSetting;

implementation

uses UCommon, BaseFrm, Fard;

{$R *.DFM}

procedure TSetting.RSqlButton2Click(Sender: TObject);
begin
 close;
end;

function TSetting.DataBaseString(Dbn,SrvN:string):String;
var ss,ss1,ss2  :string;
begin
  ss:='Provider=SQLOLEDB.1;password=ladyofrings;Persist Security Info=true;User ID=sima2;';
  ss1:='Initial Catalog='+DbN+';';
  ss2:='Data Source='+SrVN;
  DataBaseString:=ss+ss1+ss2;
end;

procedure TSetting.FormShow(Sender: TObject);
var
  ServerName:String;
  DBName:string;
begin
 Inifile:=TIniFile.Create(fullIniPath);
 ServerName:=Inifile.ReadString('Connection','Server','');
 DBName:=Inifile.ReadString('Connection','DB','Hrs');
 if ServerName<>'' then
 Begin
   cbServer.Items.Add(ServerName);
   cbServer.ItemIndex:=0;
   quDataBases.ConnectionString:=DataBaseString('Master',cbServer.Text);
   quDataBases.Open;
   cbDataBase.KeyValue:=DBName;
   quOrg.ConnectionString:=DataBaseString(quDataBasesname.Text,cbServer.Text);
   quDataBases.Close;
   quDataBases.Open;
   quOrg.Close;
   quOrg.Open;
 End;
 AmvOrg:=Inifile.ReadString('Organization','AmvOrg','10');
 dblOrg.KeyValue:=strtoint(AmvOrg);
 cbDataBase.KeyValue:=Inifile.ReadString('Connection','DB','Hrs');
 edYear.Text:=Inifile.ReadString('Year','CurrentYear',Copy(fDate.disp_date_Local,1,2));
 cbXPLogin.ItemIndex:=0;
 cbXPMode.ItemIndex:=0;
end;

procedure TSetting.RSqlButton1Click(Sender: TObject);
begin
 if Inifile=nil then
   Inifile:=TIniFile.Create(fullIniPath);
 Inifile.WriteString('Connection','Server',cbServer.Text);
 Inifile.WriteString('Connection','DB',cbDataBase.Text);
 Inifile.WriteString('Run','RunID',edRunID.Text);
 Inifile.WriteString('Year','CurrentYear',edYear.Text);
 Inifile.WriteString('Organization','AmvOrg',inttostr(dblOrg.Keyvalue));
 if(cbXPMode.Text='XP') then
   Inifile.WriteString('Mode','XpMode','True')
 else
   Inifile.WriteString('Mode','XpMode','False');

 if(cbXPLogin.Text='XP') then
   Inifile.WriteString('Mode','XPLogin','True')
 else
   Inifile.WriteString('Mode','XPLogin','False');
 AmvOrg:=dblOrg.KeyValue;
 ShowAlertMessage('.»—«Ì «⁄„«·  €ÌÌ—«  »«Ìœ œÊ»«—Â »—‰«„Â —« «Ã—« ﬂ‰Ìœ',1);
 close;
end;

procedure TSetting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Inifile.Free;
 Action:=cafree;
end;

procedure TSetting.cbServerExit(Sender: TObject);
begin
  inherited;
 quDataBases.ConnectionString:=DataBaseString('Master',cbServer.Text);
 quDataBases.Close;
 quDataBases.Open;
end;

procedure TSetting.cbDataBaseExit(Sender: TObject);
begin
  inherited;
 quOrg.Close;
 quOrg.ConnectionString:=DataBaseString(cbDataBase.Text,cbServer.Text);
 quOrg.Open;
end;

end.
