unit FmInsert;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, SetForm, RSqlButton, RSqlEdit;

type
  Tinsert = class(TForm)
    eddesc:TRSqlEdit;
    Label1: TLabel;
    btok:TRSqlButton;
    btcancle:TRSqlButton;
    quinsert: TADOQuery;
    quprv: TADOQuery;
    qucnt: TADOQuery;
    quinsection: TADOQuery;
    quinvil: TADOQuery;
FormInitializer1 : TFormInitializer;
    procedure btcancleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eddescChange(Sender: TObject);
    procedure btokClick(Sender: TObject);
  private
    { Private declarations }
  public
    state : integer;
    aun :integer;
    CountryInt,Province,County,Section  :Integer;
    { Public declarations }
  end;

var
  insert: Tinsert;

implementation

uses DabDmdle, fmcnty;

{$R *.DFM}

procedure Tinsert.btcancleClick(Sender: TObject);
begin
  insert.close;
end;

procedure Tinsert.FormShow(Sender: TObject);
begin
   eddesc.text:='';
   btok.Enabled:=false;
FormInitializer1.Execute;
   end;

procedure Tinsert.eddescChange(Sender: TObject);
begin
  if eddesc.text <> '' then
    btok.Enabled:=true
  else
    btok.Enabled:=false;
end;

procedure Tinsert.btokClick(Sender: TObject);
begin
  if state=1 then
  begin
    Country.qucountry.close;
    Country.qucountry.open;
    Country.qucountry.last;
    aun := Country.quCountryCountry_code.asinteger;
    DabData.ADOC.BeginTrans;
    quinsert.Parameters[0].Value:= aun+1 ;
    quinsert.Parameters[1].Value:= eddesc.text;
    Try
       begin
        quinsert.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
       except
        showmessage('áØÝÇ ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
        DabData.ADOC.RollbackTrans;
       end;
       close;
    end;
  if state=2 then
  begin
    Country.quprovince1.close;
    Country.quprovince1.parameters[0].value:=CountryInt;
    Country.quprovince1.open;
    Country.quprovince1.Last;
    aun := Country.quprovince1province_code.asinteger;
    DabData.ADOC.BeginTrans;
    quprv.Parameters[0].Value:= CountryInt;
    quprv.Parameters[1].Value:= aun+1 ;
    quprv.Parameters[2].Value:= eddesc.text;
    Try
       begin
        quprv.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
       except
        showmessage('áØÝÇ ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
        DabData.ADOC.RollbackTrans;
       end;
       close;
    end;
    if state=3 then
    begin
    Country.qucounty1.close;
    Country.qucounty1.Parameters[0].value:=CountryInt;
    Country.qucounty1.Parameters[1].value:=province;
    Country.qucounty1.open;
    Country.qucounty1.Last;
    aun := Country.qucounty1county_code.asinteger;
    DabData.ADOC.BeginTrans;
    qucnt.Parameters[0].Value:= CountryInt;
    qucnt.Parameters[1].Value:= province ;
    qucnt.Parameters[2].Value:= aun+1;
    qucnt.Parameters[3].Value:= eddesc.text;
    Try
       begin
        qucnt.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
       except
        showmessage('áØÝÇ ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
        DabData.ADOC.RollbackTrans;
       end;
       close;
    end;
    if state=4 then
    begin
    Country.qusection1.close;
    Country.qusection1.Parameters[0].value:=CountryInt;
    Country.qusection1.Parameters[1].value:=province;
    Country.qusection1.open;
    Country.qusection1.Last;
    aun := Country.qusection1section_code.asinteger;
    DabData.ADOC.BeginTrans;
    quinsection.Parameters[0].Value:= CountryInt;
    quinsection.Parameters[1].Value:= province ;
    quinsection.Parameters[2].Value:= County ;
    quinsection.Parameters[3].Value:= aun+1;
    quinsection.Parameters[4].Value:= eddesc.text;
    Try
       begin
        quinsection.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
       except
        showmessage('áØÝÇ ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
        DabData.ADOC.RollbackTrans;
       end;
       close;
    end;
     if state=5 then
    begin
    Country.quvillage1.close;
    Country.quvillage1.Parameters[0].value:=CountryInt;
    Country.quvillage1.Parameters[1].value:=province;
    Country.quvillage1.open;
    Country.quvillage1.Last;
    aun := Country.quvillage1village_code.asinteger;
    DabData.ADOC.BeginTrans;
    quinvil.Parameters[0].Value:= CountryInt;
    quinvil.Parameters[1].Value:= province ;
    quinvil.Parameters[2].Value:=County;
    quinvil.Parameters[3].Value:= section ;
    quinvil.Parameters[4].Value:= aun+1;
    quinvil.Parameters[5].Value:= eddesc.text;
    Try
       begin
        quinvil.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
       except
        showmessage('áØÝÇ ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
        DabData.ADOC.RollbackTrans;
       end;
       close;
    end;
end;

end.
