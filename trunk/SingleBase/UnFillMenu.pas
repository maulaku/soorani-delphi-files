unit UnFillMenu;


interface
uses
   Menus,ADODB,DabDmdle,sysutils,dialogs;

procedure FillMenues (Menu : TMainMenu;sys:integer);

implementation


procedure FillMenues (Menu : TMainMenu;sys:integer);
Var
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
end;


end.
