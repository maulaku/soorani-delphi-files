unit fmnewup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SetForm, StdCtrls, RSqlButton, DBCtrls, RSqllookup, ExtCtrls, Db, ADODB,
  Buttons, CheckLst,variants;

type
  Tnewup = class(TForm)
    dssystem: TDataSource;
    QuMenu: TADOQuery;
    QuMenuMCode: TIntegerField;
    QuMenuMDesc: TStringField;
    DsMenu: TDataSource;
    QuNSystem: TADOQuery;
    QuNSystemsyscode: TIntegerField;
    QuNSystemDescr: TStringField;
    QuNMenu: TADOQuery;
    QuNMenuMCode: TIntegerField;
    QuNMenuMDesc: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    RSqlDbLookup1: TRSqlDbLookup;
    RSqlButton1: TRSqlButton;
    RSqlButton2: TRSqlButton;
    FormInitializer1: TFormInitializer;
    quinssys: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure RSqlButton2Click(Sender: TObject);
    procedure RSqlButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    empno:string;
    syscode,state:integer;
    { Public declarations }
  end;

var
  newup: Tnewup;

implementation

uses DabDmdle, fmuserm;

{$R *.DFM}

procedure Tnewup.FormShow(Sender: TObject);
begin
 FormInitializer1.Execute;
 if state=1 then
 begin
  dssystem.DataSet:=QuNSystem;
  label1.caption:='”Ì” „';
  RSqlDbLookup1.keyField:='syscode';
  RSqlDbLookup1.ListField:='descr';
  QuNSystem.close;
  QuNSystem.Prepared;
  QuNSystem.Parameters[0].value:=empno;
  qunsystem.Open;
 end
 else if state=2 then
 begin
  dssystem.DataSet:=QuNmenu;
  label1.caption:='„‰‹‹‹Ê';
  RSqlDbLookup1.keyField:='mcode';
  RSqlDbLookup1.ListField:='mdesc';
  QuNMenu.close;
  QuNMenu.Prepared;
  QuNMenu.Parameters[0].value:=empno;
  QuNMenu.Parameters[1].value:=syscode;
  QuNMenu.Parameters[2].value:=empno;
  QuNMenu.Parameters[3].value:=syscode;
  QuNMenu.Open;

 end;
end;
procedure Tnewup.RSqlButton2Click(Sender: TObject);
begin
 close;
end;

procedure Tnewup.RSqlButton1Click(Sender: TObject);
begin
 if state=1 then
 begin
  quinssys.Parameters[0].Value:=empno;
  quinssys.Parameters[1].Value:=RSqlDbLookup1.KeyValue;
  quinssys.Parameters[2].Value:=-1;
  quinssys.ExecSQL;
  QuNSystem.close;
  QuNSystem.Prepared;
  QuNSystem.Parameters[0].value:=empno;
  qunsystem.Open;
  RSqlDbLookup1.KeyValue:=Null;
 end
 else if state=2 then
 begin
  quinssys.Parameters[0].Value:=empno;
  quinssys.Parameters[1].Value:=syscode;
  quinssys.Parameters[2].Value:=RSqlDbLookup1.KeyValue;
  quinssys.ExecSQL;
  QuNMenu.close;
  QuNMenu.Prepared;
  QuNMenu.Parameters[0].value:=empno;
  QuNMenu.Parameters[1].value:=syscode;
  QuNMenu.Parameters[2].value:=empno;
  QuNMenu.Parameters[3].value:=syscode;
  QuNMenu.Open;
  RSqlDbLookup1.KeyValue:=Null;
 end;
 UserM.QuMenu.close;
 UserM.qumenu.open;
end;

end.
