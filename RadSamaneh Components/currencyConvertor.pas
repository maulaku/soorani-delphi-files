unit currencyConvertor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TcurrencyConvertor = class(TComponent)
  private
    Fnumber:int64;
    function Get3digit(digit:integer):string;
    function GetSadgan(Sad:integer):string;
    function GetDahgan(Dah:integer):string;
    function GetYekan(digit:integer;Mde:integer):string;

  protected

  public
    function GetText():string;
  published
    property number :int64 read Fnumber write Fnumber;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TcurrencyConvertor]);
end;
function TcurrencyConvertor.GetText():string;
var Milyard:int64;
    Milion:int64;
    Hezar:int64;
    Yekan:int64;
    str:string;
    Amount:int64;
begin
   str:='';
   if Number > 999999999999 then
   begin
     str:='OverFlow';
     exit;
   end;
   Amount:=number;
   Milyard:=(Amount div  1000000000);Amount:=(Amount Mod 1000000000);
   Milion:=(Amount  div 1000000);Amount:=(Amount Mod 1000000);
   Hezar:=(Amount   div 1000);Amount:=(Amount Mod 1000);
   Yekan:=Amount;
   if Milyard<> 0 then
   begin
      str:=str+Get3digit(Milyard);
      str:=str+' �������';
      if (Milion<> 0)or(Hezar<> 0)or(yekan<> 0) then
         str:=str+' � ';
   end;

   if Milion<> 0 then
   begin
      str:=str+Get3digit(Milion);
      str:=str+' ������';
      if (Hezar<> 0)or(yekan<> 0) then
         str:=str+' � ';
   end;
   if Hezar<> 0 then
   begin
      str:=str+Get3digit(Hezar);
      str:=str+' ����';
      if yekan<> 0 then
         str:=str+' � ';
   end;
   if Yekan<>0 then
   begin

      str:=str+Get3digit(Yekan);
   end;
   result:=str;
end;
function TcurrencyConvertor.Get3digit(digit:integer):string;
var Sadgan,Dahgan,Yekan:integer;
    str:string;
    temp:integer;
begin
  Sadgan:=(Digit div 100);Digit:=(Digit mod 100);
  temp:=Digit;
  Dahgan:=(Digit div 10);Digit:=(Digit mod 10);
  Yekan:=Digit;
  if Sadgan<>0 then
     begin
       str:=GetSadgan(Sadgan);
       if ((Dahgan <>0)) or (Yekan<>0) then
           str:=str+' � ';
   end;
  case temp of
             10:str:=str+'��';
             11:str:=str+'�����';
             12:str:=str+'������';
             13:str:=str+'�����';
             14:str:=str+'������';
             15:str:=str+'������';
             16:str:=str+'������';
             17:str:=str+'����';
             18:str:=str+'���';
             19:str:=str+'�����';
  else
  begin
     if Dahgan<>0 then
     begin
       Str:=str+GetDahgan(Dahgan);
       if (Yekan<>0) then
          str:=str+' � ';
     end;
     if (yekan<>0) then
     begin
       if Dahgan=1 then
          str:=str+GetYekan(yekan,1)
       else
          str:=str+GetYekan(yekan,0);
     end;
     result:=str;
     exit;
  end;
end;
  result:=str;
end;
function TcurrencyConvertor.GetYekan(digit:integer;Mde:integer):string;
var str:string;
begin
 case Mde of
      0:case digit of
             1:str:='��';
             2:str:='��';
             3:str:='��';
             4:str:='����';
             5:str:='���';
             6:str:='��';
             7:str:='���';
             8:str:='���';
             9:str:='��';
        end;
      1:case digit of
             0:str:='��';
             1:str:='�����';
             2:str:='������';
             3:str:='�����';
             4:str:='������';
             5:str:='������';
             6:str:='������';
             7:str:='����';
             8:str:='���';
             9:str:='�����';
         end;
   end;
   result:=str;
end;
function TcurrencyConvertor.GetDahgan(Dah:integer):string;
var str:string;
begin
    case Dah of
         2:str:='���� ';
         3:str:='�� ';
         4:str:='��� ';
         5:str:='����� ';
         6:str:='��� ';
         7:str:='����� ';
         8:str:='����� ';
         9:str:='��� ';
    end;
  result:=str;
end;
function TcurrencyConvertor.GetSadgan(Sad:integer):string;
var Str:string;
begin
    case Sad of
       1:Str:='�� ��';
       2:Str:='����� ';
       3:Str:='�� ��';
       4:Str:='������';
       5:Str:='�����';
       6:Str:='����';
       7:Str:='��� ��';
       8:Str:='��� ��';
       9:Str:='�� ��';
    end;
    result:=str;
end;

end.
 