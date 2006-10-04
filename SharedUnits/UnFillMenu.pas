unit UnFillMenu;


interface
uses
   Dialogs,Menus,ADODB,DabDmdle,sysutils,classes;

function FillMenues (Menu : TMainMenu;sys:integer):Integer;
Procedure CreateHelpFile(Menu : TMainMenu);
function delamper(s:string):string;
function TrimDash(s:string):string;
function GetMenuString(Menu:TMenu;Const variable:String):String;

implementation

uses UCommon;

function delamper(s:string):string;
var t:integer;
begin
 s:=trim(s);
 t:=pos('&',s);
 if t<>0 then delete(s,t,1);
 result:=s;
end;

function TrimDash(s:string):string;
var t:integer;
begin
 s:=delamper(s);
 If(s='-') then
 begin
   Result:='<hr>';
   exit;
 end;
 t:=1;
 while(t<>0) do
 begin
  t:=pos('‹',s);
  if t<>0 then delete(s,t,1);
 end;
 result:=s;
end;

function FillMenues (Menu : TMainMenu;sys:integer):Integer;
Var
  RowInserted:Integer;
  i,j,k,l : integer;
  Qu,QuSel,quup,qumax : TAdoQuery;
  s,s2,s3:string;
function delamper(var s:string):string;
var t:integer;
begin
 s:=trim(s);
 t:=pos('&',s);
 if t<>0 then delete(s,t,1);
 result:=s;
end;
begin
Qu:=TADOQuery.Create(Menu);
Qu.Connection:=DabData.ADOC;
Qu.SQL.Text:='insert into Menues(MCode,SysCode,MDesc,MNum,mparent,vweb) Values(:p0,:p1,:p2,:p3,:p4,:p5)';
QuSel:=TADOQuery.Create(Menu);
QuSel.Connection:=DabData.ADOC;
QuSEl.SQL.Text:='select MCode,Mnum  from Menues where syscode='+inttostr(sys)+' order by MCode';
QuSel.Close;
QuSel.Open;
QuSel.Last;
qumax:=TADOQuery.Create(menu);
qumax.Connection:=dabdata.adoc;
qumax.SQL.text:='select max(mcode) as m from menues';
qumax.close;
qumax.open;
qumax.last;
quup:=TADOQuery.Create(menu);
quup.Connection:=dabdata.adoc;
quup.sql.text:='Update menues set mdesc=:p0,mparent=:p1,vweb=:p2 where mcode=:p3';
if Qumax.RecordCount<=0 then j:=1 else j:=Qumax.fieldbyname('M').AsInteger+1;
for i:=0 to Menu.Items.Count-1 do
 begin
  if not(Qusel.Locate('mnum',Menu.Items[i].Name,[])) then
  begin
    s2:=Menu.Items[i].Caption;
    if trim(s2)<>'' then
    begin
      Qu.Parameters[0].Value:=j;
      Qu.Parameters[1].Value:=sys;
      Qu.Parameters[2].Value:=delamper(s2);
      Qu.Parameters[3].Value:=Menu.Items[i].Name;
      Qu.Parameters[4].Value:='N0';
      Qu.Parameters[5].Value:=Menu.Items[i].tag;
      Qu.ExecSQL;
      j:=j+1;
    end;
  end
  else
  begin
    s2:=Menu.Items[i].Caption;
    if trim(s2)<>'' then
    begin
      quup.Parameters[0].value:=delamper(s2);
      Quup.Parameters[1].Value:='N0';
      Quup.Parameters[2].Value:=Menu.Items[i].tag;
      quup.Parameters[3].value:=qusel.fieldbyname('mcode').asinteger;
      quup.execsql;
    end;
  end;
  for k:=0 to Menu.Items[i].Count-1 do
   begin
   s2:=Menu.Items[i].Items[k].Caption;
   if pos('-',s2)=0 then
   begin
   if not(Qusel.Locate('mnum',Menu.Items[i].Items[k].Name,[])) then
   begin
    Qu.Parameters[0].Value:=j;
    Qu.Parameters[1].Value:=sys;
    Qu.Parameters[2].Value:=delamper(s2);
    Qu.Parameters[3].Value:=Menu.Items[i].Items[k].Name;
    Qu.Parameters[4].Value:=Menu.Items[i].Name;
    Qu.Parameters[5].Value:=Menu.Items[i].Items[k].tag;
    Qu.ExecSQL;
    j:=j+1;
   end
   else
   begin
    quup.Parameters[0].value:=delamper(s2);
    Quup.Parameters[1].Value:=Menu.Items[i].name;
    Quup.Parameters[2].Value:=Menu.Items[i].Items[k].tag;
    quup.Parameters[3].value:=qusel.fieldbyname('mcode').asinteger;
    quup.execsql;
   end;
   end;
   for l:=0 to menu.items[i].items[k].count-1 do
   begin
    s:=Menu.Items[i].Items[k].items[l].Caption;
    if pos('-',s)=0 then
    begin
    if not(Qusel.Locate('mnum',Menu.Items[i].Items[k].items[l].Name,[])) then
    begin
      Qu.Parameters[0].Value:=j;
      Qu.Parameters[1].Value:=sys;
      s3:='<'+s2+'> '+s;
      Qu.Parameters[2].Value:=delamper(s3);
      Qu.Parameters[3].Value:=Menu.Items[i].Items[k].items[l].Name;
      Qu.Parameters[4].Value:=Menu.Items[i].Items[k].Name;
      Qu.Parameters[5].Value:=Menu.Items[i].Items[k].items[l].tag;
      Qu.ExecSQL;
      j:=j+1;
     end
     else
     begin
      s3:='<'+s2+'> '+s;
      quup.Parameters[0].value:=delamper(s3);
      Quup.Parameters[1].Value:=Menu.Items[i].Items[k].name;
      Quup.Parameters[2].Value:=Menu.Items[i].Items[k].items[l].tag;
      quup.Parameters[3].value:=qusel.fieldbyname('mcode').asinteger;
      quup.execsql;
     end;
    end;
   end;
  end;
 end;
 result:=j-Qumax.fieldbyname('M').AsInteger-1;
end;
procedure CreateHelpFile(Menu : TMainMenu);
var
 i,k,l:Integer;
 OutLines1,
 OutLines2,
 OutLines3,
 OutLines4 :TStrings;
 EndPage,StartTemp,EOF,EndTemp:String;
 CurrentHelpPath:String;
begin
  CurrentHelpPath:=activePath+helpPath;
  EOF:=#13#10;
  EndTemp:='</Body>'+EOF+'</HTML>';
  StartTemp:='<html dir="rtl">'+EOF+
               '  <head>'+EOF+
               '  <meta http-equiv="Content-Language" content="ar-sa">'+EOF+
               '  <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">'+EOF+
               '  <title>$Title</title>'+EOF+
               '  <!--mstheme--><link rel="stylesheet" href="MyTem.css">'+EOF+
               '  <meta name="Microsoft Theme" content="copy-of-network-blitz 1111">'+EOF+
               '  </head>'+EOF+
               '  <body><font face="Nazanin"> <p align="center"><b>'+EOF+
               '  <font size="7" color="#3333CC">$Title</font></b></p>'+EOF;
  EndPage:='<Font color="#3366CC"> <ol>'+EOF+
               ' <li dir="ltr">'+EOF+
               '   <p align="left" dir="ltr">Insert</p>'+EOF+
               '   <Div Id=Insert style="VISIBILITY: hidden;">'+EOF+
               '     <p align="right" dir="ltr">⁄„· œ—Ã —ÊÌ ›—„</p>'+EOF+
               '   </Div>'+EOF+
               ' </li>'+EOF+
               ' <li dir="ltr">'+EOF+
               '   <p align="left" dir="ltr">Update</p>'+EOF+
               '   <Div Id=Update style="VISIBILITY: hidden;">'+EOF+
               '     <p align="right" dir="ltr">⁄„· ÊÌ—«Ì‘ —ÊÌ ›—„</p>'+EOF+
               '   </Div>'+EOF+
               ' </li>'+EOF+
               ' <li dir="ltr">'+EOF+
               '   <p align="left" dir="ltr">Delete</p>'+EOF+
               '   <Div Id=Delete style="VISIBILITY: hidden;">'+EOF+
               '     <p align="right" dir="ltr">⁄„· Õ–› —ÊÌ ›—„</p>'+EOF+
               '   </Div>'+EOF+
               ' </li>'+EOF+
               ' </ol>';

  OutLines1:=TStringList.Create;
  OutLines2:=TStringList.Create;
  OutLines3:=TStringList.Create;
  OutLines4:=TStringList.Create;
  OutLines1.Add(TrimDash(StringReplace(StartTemp,'$Title','«„Ê«·',[rfReplaceAll, rfIgnoreCase])));
  for i:=0 to Menu.Items.Count-1 do
   begin
    OutLines1.Add('<li><a href="'+Menu.Items[i].Name+'.htm">'+TrimDash(Menu.Items[i].Caption)+'</a></li><ul>'+EOF);
    OutLines2.Add(TrimDash(StringReplace(StartTemp,'$Title',TrimDash(Menu.Items[i].Caption),[rfReplaceAll, rfIgnoreCase])));
    if(Menu.Items[i].Count=0) then
      OutLines2.Add(EndPage);
    for k:=0 to Menu.Items[i].Count-1 do
     begin
        OutLines2.Add(' <li><a href="'+Menu.Items[i].Items[k].Name+'.htm">'+TrimDash(Menu.Items[i].Items[k].Caption)+'</a></li><ul>'+EOF);
        OutLines3.Add(TrimDash(StringReplace(StartTemp,'$Title',TrimDash(Menu.Items[i].Items[k].Caption),[rfReplaceAll, rfIgnoreCase])));
        if(Menu.Items[i].Items[k].Count=0) then
          OutLines3.Add(EndPage);
        for l:=0 to Menu.Items[i].Items[k].Count-1 do
        begin
           OutLines3.Add(' <li><a href="'+Menu.Items[i].Items[k].Items[l].Name+'.htm">'+TrimDash(Menu.Items[i].Items[k].Items[l].Caption)+'</a></li>'+EOF);
           OutLines4.Add(TrimDash(StringReplace(StartTemp,'$Title',TrimDash(Menu.Items[i].Items[k].Items[l].Caption),[rfReplaceAll, rfIgnoreCase])));
           OutLines4.Add(EndPage);
           OutLines4.Add(EndTemp);
           if Not(FileExists(CurrentHelpPath+''+Menu.Items[i].Items[k].Items[l].Name+'.htm')) then
             OutLines4.SaveToFile(CurrentHelpPath+''+Menu.Items[i].Items[k].Items[l].Name+'.htm');
           OutLines4.Clear;
        end;
        OutLines3.Add(EndTemp);
        if Not(FileExists(CurrentHelpPath+''+Menu.Items[i].Items[k].Name+'.htm')) then
           OutLines3.SaveToFile(CurrentHelpPath+''+Menu.Items[i].Items[k].Name+'.htm');
        OutLines3.Clear;
        OutLines2.Add('</ul>'+EOF);
     end;
     OutLines2.Add(EndTemp);
     if Not(FileExists(CurrentHelpPath+''+Menu.Items[i].Name+'.htm')) then
        OutLines2.SaveToFile(CurrentHelpPath+''+Menu.Items[i].Name+'.htm');
     OutLines2.Clear;
     OutLines1.Add('</ul>'+EOF);
   end;
   OutLines1.Add(EndTemp);
   if Not(FileExists(CurrentHelpPath+'Index.htm')) then
     OutLines1.SaveToFile(CurrentHelpPath+'Index.htm');
end;

function GetMenuString(Menu:TMenu;Const variable:String):String;
var
 tmp:TComponent;
begin
  tmp:=Menu.Owner.FindComponent(variable);
  if tmp<>nil then
    Result:=((TMenuItem(tmp)).Caption)
  else
    Result:='„‰ÊÌ «’·Ì';
end;

end.
