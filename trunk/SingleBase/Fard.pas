unit Fard;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls,DbTables,ADOdb;
type
   TFar_date=class(TComponent)
   private
     fdstr,dystr:string;
     procedure SetFdate(Value :string);
     procedure SetFday(Value:string);
   public
       Function disp_date_Local:string;
       Function disp_date:string;
       Function disp_date_SP:string;
       Function G2PDate(GDate:TDate):String;
       Function rdate(rtar :string):string;
       Function Prevent_str(keys:char):char;
       Function DayOfYear(Dty:TDate):integer;
       Function DiffDay(Dty1,Dty2:Tdate) :integer;
       Function Day(Adate:TdateTime):string;
       Function Chk_Kabise(Year:integer):integer;
       Function Mah:string;
       Function MahAdad(mm:string):Integer;
       Function CmpTar(tar1,tar2:string):integer;
   published
       property Farsi_Date :string Read fdstr write setFdate;
       property Farsi_Day :string Read Dystr write SetFDay;
end;
procedure register;
implementation
//var Qry :TQuery;
Uses DabDmdle;

procedure register;
begin
  RegisterComponents('samples',[Tfar_date]);
end;

procedure Tfar_date.SetFday(Value:string);
begin
 Dystr:=Day(Date);
end;

procedure Tfar_date.SetFdate(value:string);
begin
 fdstr:=Disp_date;
end;
Function Tfar_date.DayOfYear(Dty:TDate):integer;
 var y,m,d :word;
     Rday,i:integer;
     Darray :array[1..12] of integer;
 begin
   DecodeDate(Dty,y,m,d);
   Darray[1]:=31;
   if (y mod 4)=0 then
     Darray[2]:=29
   else
     Darray[2]:=28;
   Darray[3]:=31;
   Darray[4]:=30;
   Darray[5]:=31;
   Darray[6]:=30;
   Darray[7]:=31;
   Darray[8]:=31;
   Darray[9]:=30;
   Darray[10]:=31;
   Darray[11]:=30;
   Darray[12]:=31;
   Rday:=0;
   for i:=1 to m-1 do
    Rday:=Rday+Darray[i];
   Rday:=Rday+d;
   DayOfYear:=Rday;
 end;
Function Tfar_date.DiffDay(Dty1,Dty2:Tdate) :integer;
var y1,m1,d1,y2,m2,d2 :word;
    S,Rsu             :integer;
 begin
   DecodeDate(Dty1,y1,m1,d1);
   DecodeDate(Dty2,y2,m2,d2);
   if (y1 mod 4)=0 then S:=366
   else S:=365;
  if y1=y2 then
    Rsu:=DayofYear(Dty1)-DayofYear(Dty2)
  else
    Rsu:=DayofYear(Dty2)-DayofYear(Dty1)+S;
  DiffDay:=Rsu;
 end;
Function Tfar_date.Chk_Kabise(Year:integer):integer;
var dd:integer;
 begin
   if (year mod 4)=0 then
      dd:=20
   else
      dd:=21;
   Chk_Kabise:=dd;
 end;
Function Tfar_date.disp_date_Local     :string;
var dd,n,y,m,d,yy:word;
 var   mm:real;
    ss:string;
    vv,gg:string[1];
 Begin
    DecodeDate(Date,y,m,d);
    dd:=chk_kabise(y);
    if (m*100+d)<(300+dd) then
      begin
        Yy:=y-622;
        n:=DiffDay(EncodeDate(y-1,3,chk_kabise(y-1)),date)+1;
      end
    else
     begin
       Yy:=y-621;
       n:=DiffDay(date,EncodeDate(y,3,dd))+1;
     end;
    if n<=186 then
     begin
       mm:=int((n-1)/31)+1;
       d:=((n-1) mod 31)+1;
     end
    else
     begin
       mm:=int((n-187)/30)+7;
       d:=((n-187) mod 30)+1;
     end;
    if length(floattostr(mm))=1 then
      vv:='0'
    else
      vv:='';
    if length(inttostr(d))=1 then
      gg:='0'
    else
      gg:='';
    ss:=copy(inttostr(yy),3,2)+'/'+vv+floattostr(mm)+'/'+gg+inttostr(d);
    disp_date_Local:=ss;
 end;
 function Tfar_date.rdate(rtar :string):string;
   var   vtemp  : string;
 begin
   if rtar='' then
    begin
      Rtar:='';
      exit;
    end;
      vtemp:=rtar;
      if   (copy(rtar,1,1)<>' ') and (copy(rtar,2,1)<>' ')
       and (copy(rtar,4,1)<>' ') and (copy(rtar,5,1)<>' ') then
         if (strtoint(copy(rtar,4,2))>12) or (strtoint(copy(rtar,4,2))<1)  then vtemp:='';

      if  (copy(rtar,1,1)<>' ') and (copy(rtar,2,1)<>' ')
         and (copy(rtar,4,1)<>' ') and (copy(rtar,5,1)<>' ')
         and (copy(rtar,7,1)<>' ') and (copy(rtar,8,1)<>' ') then
        case strtoint(copy(rtar,4,2)) of
         1..6 :if (strtoint(copy(rtar,7,2))>31) or (strtoint(copy(rtar,7,2))<1) then vtemp:='';
         7..11:if (strtoint(copy(rtar,7,2))>30) or (strtoint(copy(rtar,7,2))<1) then vtemp:='';
           12 :if (strtoint(copy(rtar,7,2))>29) or (strtoint(copy(rtar,7,2))<1) then vtemp:='';
        end;
      rdate:=vtemp;
    end;
function Tfar_date.Day(Adate:TdateTime):string;
var Dhaf :string;
begin
  Case DayOfWeek(date) of
   7:Dhaf:='ÔäÈå';
   1:Dhaf:='íßÔäÈå';
   2:Dhaf:='ÏæÔäÈå';
   3:Dhaf:='Óå ÔäÈå';
   4:Dhaf:='åÇÑÔäÈå';
   5:Dhaf:='äÌ ÔäÈå';
   6:Dhaf:='ÌãÚå';
  end;
Day:=Dhaf;
end;
function Tfar_date.Mah:string;
var Tmah :string;
    mah1:integer;
 begin
   mah1:=strtoint(copy(disp_date,4,2));
  case mah1 of
   1:tmah:='ÝÑæÑÏíä';
   2:tmah:='ÇÑÏíÈåÔÊ';
   3:tmah:='ÎÑÏÇÏ';
   4:tmah:='ÊíÑ';
   5:tmah:='ãÑÏÇÏ';
   6:tmah:='ÔåÑíæÑ';
   7:tmah:='ãåÑ';
   8:tmah:='ÂÈÇä';
   9:tmah:='ÂÐÑ';
   10:tmah:='Ïí';
   11:tmah:='Èåãä';
   12:tmah:='ÇÓÝäÏ';
  end;
 Mah:=tmah;
 end;
Function Tfar_date.MahAdad(mm:string):Integer;
var tmp:integer;
begin
   tmp:=1;
   if mm='ÝÑæÑÏíä' then tmp:=1;
   if mm='ÇÑÏíÈåÔÊ' then tmp:=2;
   if mm='ÎÑÏÇÏ' then tmp:=3;
   if mm='ÊíÑ'then   tmp:=4 ;
   if mm='ãÑÏÇÏ' then  tmp:=5;
   if mm='ÔåÑíæÑ' then  tmp:=6 ;
   if mm='ãåÑ' then    tmp:=7 ;
   if mm='ÂÈÇä' then   tmp:=8 ;
   if mm='ÂÐÑ' then    tmp:=9 ;
   if mm='Ïí'  then    tmp:=10;
   if mm='Èåãä'then    tmp:=11;
   if mm='ÇÓÝäÏ' then   tmp:=12;
  MahAdad:=tmp;
end;

Function Tfar_date.CmpTar(tar1,tar2:string):integer;
var y1,m1,d1,y2,m2,d2,m,dm1 :integer;
   begin
      m:=0;
      y1:=strtoint(copy(tar1,1,4)) ;
      m1:=strtoint(copy(tar1,6,2)) ;
      d1:=strtoint(copy(tar1,9,2)) ;

      y2:=strtoint(copy(tar2,1,4)) ;
      m2:=strtoint(copy(tar2,6,2)) ;
      d2:=strtoint(copy(tar2,9,2)) ;
      if m2>m1 then
       begin
        if  m1<=6 then
           dm1:=31-d1
        else
           dm1:=30-d1;
        dm1:=dm1+d2;
        if dm1>=30 then m:=((y2-y1)*12)+(m2-m1)
        else m:=0
       end;
       CmpTar:=m;
   end;
Function Tfar_date.Prevent_str(keys:char):char;
var key:char;
 begin
   if (keys<>'1') and  (keys<>'2') and (keys<>'3') and (keys<>'4') and
      (keys<>'5') and  (keys<>'6') and (keys<>'7') and (keys<>'8') and
      (keys<>'9') and  (keys<>'0') and (ord(keys)<>8) then
     key:=#0
   else
     Key:=Keys;
   Prevent_str:=Key;
end;

function Tfar_date.disp_date: String;
var Qr:TADOQuery;
begin
 if (dabdata<>nil) then
 begin
 if (dabdata.adoc.connected) then
 begin
  Qr:=TADOQuery.Create(nil);
  Qr.Connection:=DabData.ADOC;
  Qr.SQL.Text:='SELECT GETDATE() GeregorianDate';
  Qr.Close;
  Qr.Open;
  disp_date:=G2PDate(Qr.Fields[0].AsDateTime);
 end
 end
 else result:=disp_date_local;
end;

function Tfar_date.disp_date_SP: String;
var Qr:TADOQuery;
begin
 if (dabdata<>nil) then
 begin
 if (dabdata.adoc.connected) then
 begin
  Qr:=TADOQuery.Create(nil);
  Qr.Connection:=DabData.ADOC;
  Qr.SQL.Text:='SELECT DBO.GETPDATE(GETDATE()) PersianDate';
  Qr.Close;
  Qr.Open;
  disp_date_SP:=Qr.Fields[0].AsString;
 end
 end
 else result:=disp_date_local;

end;

function Tfar_date.G2PDate(GDate: TDate): String;
var dd,n,y,m,d,yy:word;
 var   mm:integer;
    ss:string;
    vv,gg:string[2];
 Begin

        DecodeDate(GDate,y,m,d);
    dd:=chk_kabise(y);
    if (m*100+d)<(300+dd) then
      begin
        Yy:=y-622;
        n:=DiffDay(EncodeDate(y-1,3,chk_kabise(y-1)),GDate)+1;
      end
    else
     begin
       Yy:=y-621;
       n:=DiffDay(GDate,EncodeDate(y,3,dd))+1;
     end;
    if n<=186 then
     begin
       mm:=Trunc((n-1)/31)+1;
       d:=((n-1) mod 31)+1;
     end
    else
     begin
       mm:=Trunc((n-187)/30)+7;
       d:=((n-187) mod 30)+1;
     end;
    if mm<10 then
      vv:='0'+IntToStr(mm)
    else
      vv:=IntToStr(mm);
    if d<10 then
      gg:='0'+IntToStr(d)
    else
      gg:=IntToStr(d);
    ss:=copy(inttostr(yy),3,2)+'/'+vv+'/'+gg;
    G2PDate:=ss;
end;
end.
