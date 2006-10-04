unit UCommon;

interface

uses ADOdb,SysUtils,Graphics,DB,Dialogs,Dabdmdle;

 function DelSpace(tempStr: string): String;
 function CorrectStr(tempStr: string): String;
 function CheckNoDuplicate(tempStr : string;quImport:TADOQuery;FieldText,FieldCode:String;CheckCode:Variant;Mode:Smallint):Boolean;
 function PassPreCondition(quImport:TADOQuery;BaseText,FieldText,FieldCode:String;CheckCode:Variant;Mode:Smallint) : Boolean;
//const
// clActiveGrid=$00A8FFFF;
// clDeactiveGrid=cl3DLight;
// clRequiredField=clInfobk;
// clOptionalField=clWhite;
// clDisabledField=$00FDD6BD;
// clSelectiveField=$00D8B88D;
var
 DupSearch : Boolean;
 bk : TBookmark;

implementation

function DelSpace(tempStr: string): String;
var  i,j:integer;
     St :String;
begin
   St:= Trim(tempStr);
   j := Length(St);
   i :=1;
   While i < j do
   begin
     if St[i] =' ' then
     begin
        Delete(St,i,1);
        i:= i-1;
        j:= Length(St);
     end;
     i:= i+1;
   end;
   DelSpace := St;
end;

function CorrectStr(tempStr: string): String;
var  i,j:integer;
     St :String;
begin
   St:= Trim(tempStr);
   j := Length(St);
   i :=1;
   While i < j do
   begin
     if St[i] =' ' then
        begin
           if St[i+1]= ' '
             then
             begin
                Delete(St,i,1);
                i:=i-1;
                j:= Length(St);
             end;
        end;
     i:= i+1;
   end;
   CorrectStr := St;
end;

function CheckNoDuplicate(tempStr : string;quImport:TADOQuery;FieldText,FieldCode:String;CheckCode:Variant;Mode:smallint):Boolean;
var  i :integer;
     StText,StTableField :String;
begin
   if quImport.RecordCount = 0 then CheckNoDuplicate := True
   else
   begin
      quImport.First;
      StText := DelSpace(tempStr);
      for i:=1 to quImport.RecordCount do
      begin
         StTableField := DelSpace(quImport.FieldByName(FieldText).Value);
         if (StText = StTableField) and
            (not((mode=2) or (mode=4))or
             not(quImport.FieldByName(FieldCode).Value = CheckCode)) then
         begin
            CheckNoDuplicate := False;
            exit;
         end;
         quImport.Next;
      end;
      CheckNoDuplicate := True;
   end;
end;

function PassPreCondition(quImport:TADOQuery;BaseText,FieldText,FieldCode:String;CheckCode:Variant;Mode:Smallint) : Boolean;
begin
  DupSearch:=True;
  quImport.DisableControls;
  PassPreCondition := True;
  bk := quImport.GetBookmark;
  if not(CheckNoDuplicate(BaseText,quImport,FieldText,FieldCode,CheckCode,Mode)) then
  begin
   ShowMessage2('!ÚäæÇä ÊßÑÇÑí ÇÓÊ');
   PassPreCondition := False;
  end;
  quImport.EnableControls;
  DupSearch:=False;
end;

end.
