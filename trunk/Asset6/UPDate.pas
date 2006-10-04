unit UPDate;

interface

uses
  Dialogs,SysUtils,Controls;

//---------------------------------------------------------
//---------------------------------------------------------
const
  Numeric_Char_Set    = ['0'..'9'];
  Date_Valid_Char_Set = ['0'..'9']+[' ']+ ['/'] ;
//---------------------------------------------------------
//---------------------------------------------------------
type
//---------------------------------------------------------
//---------------------------------------------------------
  TPersianDate = Class(TObject)
  private

    function Get_Esfand_Num_Of_Day(const Year:word):word;

    function GetDatePart(
      const DateStr:string;
      const BeginIndex:integer;
      const EndIndex:integer;
      var   DatePart:string
      ):boolean;

  public

    function GetEmptyDateStr8:string;


    function CheckDateRange(const yy,mm,dd:word;var Err:integer):boolean;

    function CheckDateStr(
       const DateStr:string;
       var   CorrectDateStr8Char:string
       ):boolean;

    function ConvertDateStr2YyMmDd(
       const DateStr:string;
       var   CorrectDateStr8Char:string;
       var   yy,mm,dd:integer
       ):boolean;

    function CompareStrDates(
       const DateStr1,DateStr2:string;
       var   CmpResult:integer;
       var   Err:integer
       ):boolean;

    // return Maximum substr that match to datestr
    function GetDateSubStr(const DateStr:string):String;

  end;  // TPersianDate = Class(TObject)
//---------------------------------------------------------
//---------------------------------------------------------

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

implementation
//---------------------------------------------------------
//---------------------------------------------------------
// Begin Private Function
// not accessible from out
//---------------------------------------------------------
//---------------------------------------------------------

//---------------------------------------------------------
//---------------------------------------------------------
// End Private Function
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Begin Implementation Of TPersianDate = Class(TObject)
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.GetEmptyDateStr8: string;
begin
  // string            11/11/11
  GetEmptyDateStr8 := '  /  /  ';
end;  // function TPersianDate.GetEmptyDateStr8
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.GetDatePart(
  const DateStr:string;
  const BeginIndex:integer;
  const EndIndex:integer;
  var   DatePart:string
  ):boolean;

(*
DateStr
   all char of DateStr are in range [ 0..9 / space ]
   1 <= Len <= 8
   atmost 2 char between to slash

BeginIndex
   point to first char after slash

EndIndex
   point to Last  char before next slash

DatePart(OutPut) if return true
   a string by Length =2
   '00' < <= '99'

function Return
   True if Correct DatePart Like
   '01' '1' '11' '99'
   False else;

*)
var
  i:integer;

begin
  GetDatePart :=False;
  DatePart:='';

  for i:=BeginIndex to EndIndex do
  begin
    if DateStr[i]<>' ' then
      DatePart:=DatePart+DateStr[i]
    else
      DatePart:='0'+DatePart;
  end;  // for i:=BeginIndex to EndIndex do

  if Length(DatePart) < 2  then
      DatePart:='0'+DatePart;

  if DatePart = '00' then exit;

  GetDatePart := True;

end;  // function TPersianDate.GetDatePart(
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.Get_Esfand_Num_Of_Day(const Year: word): word;
begin
  // Check for Kabiseh ??

  Get_Esfand_Num_Of_Day := 30;
end;  // function TPersianDate.Get_Esfand_Num_Of_Day
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.CheckDateRange(const yy, mm, dd: word;var Err:integer): boolean;
begin

  CheckDateRange := false;
  Err:=0;

  Err:=1;
  if not    (yy > 0 ) then exit;

  Err:=2;
  if not  ( (mm > 0) and ( mm < 13)  ) then exit;

  Err:=3;
  if not  ( (dd > 0) and ( dd < 32)  ) then exit;

  // mm 1..6 is checked
  if mm > 6 then
     if dd > 30 then exit;


  if (mm=12) then
  begin
    // Must be Evaluate
    // Check for Kabiseh Years

    if not (dd <= Get_Esfand_Num_Of_Day(yy) ) then
      exit;

  end;  // if (mm=12) then

  Err:=0;
  CheckDateRange := True;

end;  // function TPersianDate.CheckDateRange
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.CheckDateStr(
  const DateStr:string;
  var   CorrectDateStr8Char:string
  ):boolean;
var
  yy,mm,dd:integer;
begin
  CheckDateStr := False;
  CorrectDateStr8Char :='';

  if not ConvertDateStr2YyMmDd(DateStr,CorrectDateStr8Char,yy,mm,dd) then
    exit;

  CheckDateStr := True;
end;  // function TPersianDate.CheckDateStr
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.ConvertDateStr2YyMmDd(
  const DateStr: string;
  var CorrectDateStr8Char: string;
  var yy, mm, dd: integer
  ): boolean;
var
  i,i1:integer;

  SlashPos : Array[0..3] of integer;
  StrAry   : Array[1..3] of string;

  Err : integer;

begin
  ConvertDateStr2YyMmDd :=False;
  CorrectDateStr8Char :='';

   //----------------------------------
   // atleast 2 slash + 3 digit
   if Length(DateStr) < 5 then exit;
   if Length(DateStr) > 8 then exit;
   //----------------------------------

   //----------------------------------
   // Check Slash Position

   // i1 number of slash
   i1:=0;
   for i:=1 to Length(DateStr) do
   begin
     if not (DateStr[i] in Date_Valid_Char_Set) then
       exit;

     if DateStr[i]='/' then
     begin
       if i1 = 2 then exit;
       inc(i1);

       SlashPos[i1]:=i;
     end;  // if

   end;  // for i

   if i1<>2 then exit;

   SlashPos[0]:=0;
   SlashPos[3]:=Length(DateStr)+1;

   for i:=1 to 3 do
   begin
     if not( SlashPos[i] > (SlashPos[i-1]+1) )then
       exit;

     if not( (SlashPos[i] - SlashPos[i-1]) <= 3) then
       exit;
   end;
   //----------------------------------
   // all slash position are correct
   //----------------------------------
   for i:=1 to 3 do
     if not (GetDatePart(DateStr, SlashPos[i-1]+1,SlashPos[i]-1,StrAry[i])) then
       exit;
   //----------------------------------
   // StrAry[i] is 2char integer <> 00
   //----------------------------------
   try
     yy := strtoint(StrAry[1]);
     mm := strtoint(StrAry[2]);
     dd := strtoint(StrAry[3]);
   except
     exit;
   end;

   if not CheckDateRange(yy,mm,dd,Err) then exit;

   CorrectDateStr8Char := StrAry[1]+'/'+StrAry[2]+'/'+StrAry[3];
   ConvertDateStr2YyMmDd :=True;

end;  // function TPersianDate.ConvertDateStr2YyMmDd(
//---------------------------------------------------------
//---------------------------------------------------------
{
Return True
  if  strings be convertable to
  Datestr correct Format and then
  Err=0 and CmpResult(Compare Result) will be
    -1     DateStr1 < DateStr2
    0     DateStr1  = DateStr2
    +1     DateStr1 > DateStr2

else Return False
    Err = 1 if DateStr1 could not be convertable
       to correct format
    Err = 2 if DateStr2 could not be convertable
       to correct format
    Err = 3 if both of DateStr1 and DateStr2 could not be
    convertable to correct format

}
function TPersianDate.CompareStrDates(
  const DateStr1,DateStr2:string;
  var   CmpResult:integer;
  var   Err:integer
  ):boolean;
var
  dstr1,dstr2:string;
  bool1,bool2:boolean;
begin
  CompareStrDates := False;
  Err:=0;

  bool1:= Self.CheckDateStr(DateStr1,dstr1);
  bool2:= Self.CheckDateStr(DateStr2,dstr2);

  Err:=1;
  if (not Bool1) and bool2 then exit;

  Err:=2;
  if Bool1 and (not bool2) then exit;

  Err:=3;
  if not(Bool1 or bool2) then exit;

  // both  DateStr 1 and 2 are correct
  Err:=0;

  if dstr1 > dstr2 then CmpResult := 1
  else
  if dstr1 < dstr2 then CmpResult := -1
  else CmpResult:=0;

  CompareStrDates := True;

end;  // function TPersianDate.CompareStrDates
//---------------------------------------------------------
//---------------------------------------------------------
function TPersianDate.GetDateSubStr(const DateStr: string): String;
var
  i,i1:integer;

  SlashPos : Array[0..3] of integer;
  StrAry   : Array[1..3] of string;

  tmpstr:string;
  yy,mm,dd:integer;
  Err:integer;


begin
  // onlt for test
  Result:= DateStr;
  exit;

  Result:='';
   //----------------------------------
   if DateStr='' then exit;
   //----------------------------------

   //----------------------------------
   // Check Slash Position

   // i1 number of slash
   tmpstr:='';

   i1:=0;

   for i:=1 to Length(DateStr) do
   begin
     if not (DateStr[i] in Date_Valid_Char_Set) then
       break;

     if DateStr[i]='/' then
     begin
       if i1 = 2 then exit;
       inc(i1);

       SlashPos[i1]:=i;
     end;  // if

   end;  // for i

   if i1<>2 then exit;

   SlashPos[0]:=0;
   SlashPos[3]:=Length(DateStr)+1;

   for i:=1 to 3 do
   begin
     if not( SlashPos[i] > (SlashPos[i-1]+1) )then
       exit;

     if not( (SlashPos[i] - SlashPos[i-1]) <= 3) then
       exit;
   end;
   //----------------------------------
   // all slash position are correct
   //----------------------------------
   for i:=1 to 3 do
     if not (GetDatePart(DateStr, SlashPos[i-1]+1,SlashPos[i]-1,StrAry[i])) then
       exit;
   //----------------------------------
   // StrAry[i] is 2char integer <> 00
   //----------------------------------
   try
     yy := strtoint(StrAry[1]);
     mm := strtoint(StrAry[2]);
     dd := strtoint(StrAry[3]);
   except
     exit;
   end;

   if not CheckDateRange(yy,mm,dd,Err) then exit;

   Result := StrAry[1]+'/'+StrAry[2]+'/'+StrAry[3];

end;  // function TPersianDate.GetDateSubStr
//---------------------------------------------------------
//---------------------------------------------------------
// End Implementation Of TPersianDate = Class(TObject)
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TestUnit;
begin

end;  // procedure TestUnit;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------


begin
  TestUnit;
end.  // unit UPDate;
