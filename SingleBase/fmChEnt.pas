
unit fmChEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, Db, DBTables, ExtCtrls;

type
  TchEnt = class(TForm)
    Query1: TQuery;
    Panel1: TPanel;
    edSal: TEdit;
    edMah: TEdit;
    edRouz: TEdit;
    edDesc: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    cbKTag: TCheckBox;
    rgpTT: TRadioGroup;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edSalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRouzKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
   mde,pp :integer;
   cdv,er,es,em :string;
    { Public declarations }
  end;

var
  chEnt: TchEnt;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TchEnt.BitBtn2Click(Sender: TObject);
var ccc:integer;
begin
if cbKtag.checked then
   ccc:=1
else
   ccc:=0;
if mde=1 then
 begin
  if pp=1 then
    Query1.SQL.TEXT:='insert into ChTab (CHCD,CHdesc,Ckey) values ('+cdv+','+''''+edit1.text+''''+','+inttostr(ccc)+')'
  else
    Query1.SQL.TEXT:='insert into CalnDr (Sal,Mah,Rouz,Cdesc,Ttag) values ('+edSal.text+','+edMah.text+','+edRouz.text+','+''''+edDesc.text+''''+','+inttostr(rgptt.itemindex)+')';
 end
else
 begin
  if pp=1 then
    Query1.SQL.TEXT:='update ChTab set chdesc='+''''+edit1.text+''''+', ckey='+inttostr(ccc)+' where chCd='+cdv
  else
    Query1.SQL.TEXT:='update CalnDr set Sal='+edSal.text+','+'Mah='+edMah.text+','+'Rouz='+edRouz.text+','+'Cdesc='+''''+edDesc.text+''''+','+' Ttag='+inttostr(rgptt.itemindex)+' where Sal='+eS+' and '+'Mah='+eM+' and '+'Rouz='+eR;
 end;
 Query1.ExecSql;
 Close;
end;

procedure TchEnt.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TchEnt.edSalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edmah.setfocus;
end;

procedure TchEnt.edMahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edRouz.setfocus;
end;

procedure TchEnt.edRouzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edDesc.setfocus;
end;

procedure TchEnt.edDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then RgpTt.setfocus;
end;

end.
