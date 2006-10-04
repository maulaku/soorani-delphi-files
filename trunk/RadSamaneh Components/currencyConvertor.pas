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
      str:=str+' ãíáíÇÑÏ';
      if (Milion<> 0)or(Hezar<> 0)or(yekan<> 0) then
         str:=str+' æ ';
   end;

   if Milion<> 0 then
   begin
      str:=str+Get3digit(Milion);
      str:=str+' ãíáíæä';
      if (Hezar<> 0)or(yekan<> 0) then
         str:=str+' æ ';
   end;
   if Hezar<> 0 then
   begin
      str:=str+Get3digit(Hezar);
      str:=str+' åÒÇÑ';
      if yekan<> 0 then
         str:=str+' æ ';
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
           str:=str+' æ ';
   end;
  case temp of
             10:str:=str+'Ïå';
             11:str:=str+'íÇÒÏå';
             12:str:=str+'ÏæÇÒÏå';
             13:str:=str+'ÓíÒÏå';
             14:str:=str+'åÇÑÏå';
             15:str:=str+'ÇäÒÏå';
             16:str:=str+'ÔÇäÒÏå';
             17:str:=str+'åİÏå';
             18:str:=str+'åÏå';
             19:str:=str+'äæÒÏå';
  else
  begin
     if Dahgan<>0 then
     begin
       Str:=str+GetDahgan(Dahgan);
       if (Yekan<>0) then
          str:=str+' æ ';
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
             1:str:='íß';
             2:str:='Ïæ';
             3:str:='Óå';
             4:str:='åÇÑ';
             5:str:='äÌ';
             6:str:='ÔÔ';
             7:str:='åİÊ';
             8:str:='åÔÊ';
             9:str:='äå';
        end;
      1:case digit of
             0:str:='Ïå';
             1:str:='íÇÒÏå';
             2:str:='ÏæÇÒÏå';
             3:str:='ÓíÒÏå';
             4:str:='åÇÑÏå';
             5:str:='ÇäÒÏå';
             6:str:='ÔÇäÒÏå';
             7:str:='åİÏå';
             8:str:='åÏå';
             9:str:='äæÒÏå';
         end;
   end;
   result:=str;
end;
function TcurrencyConvertor.GetDahgan(Dah:integer):string;
var str:string;
begin
    case Dah of
         2:str:='ÈíÓÊ ';
         3:str:='Óí ';
         4:str:='åá ';
         5:str:='äÌÇå ';
         6:str:='ÔÕÊ ';
         7:str:='åİÊÇÏ ';
         8:str:='åÔÊÇÏ ';
         9:str:='äæÏ ';
    end;
  result:=str;
end;
function TcurrencyConvertor.GetSadgan(Sad:integer):string;
var Str:string;
begin
    case Sad of
       1:Str:='íß ÕÏ';
       2:Str:='ÏæíÓÊ ';
       3:Str:='Óí ÕÏ';
       4:Str:='åÇÑÕÏ';
       5:Str:='ÇäÕÏ';
       6:Str:='ÔÔÕÏ';
       7:Str:='åİÊ ÕÏ';
       8:Str:='åÔÊ ÕÏ';
       9:Str:='äå ÕÏ';
    end;
    result:=str;
end;

end.
 