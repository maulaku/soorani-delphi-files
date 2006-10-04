unit define;

interface
uses Messages,forms,extctrls,dbgrids,graphics,stdctrls,controls,mask,comctrls,sysutils;
Const
F_EDIT=WM_USER;
F_NEW=WM_USER+1;
F_DEL=WM_USER+2;
F_SRCH=WM_USER+3;
F_Init=WM_USER+4;
F_PRINT=WM_USER+5;
CHN_TAB=WM_USER+6;
CHN_STATE=WM_USER+7;
CRD_VRD=WM_USER+8;
SCROLL_HOKM=WM_USER+9;
SCROLL=WM_USER+10;
NEXT_STAGE=WM_USER+11;
PREV_STAGE=WM_USER+12;
CRD_RCV=WM_USER+13;
CRD_ERJA=WM_USER+14;
CRD_RN=WM_USER+15;
CRD_INTER=WM_USER+16;
CRD_NOTE=WM_USER+17;
CHN_FILES=WM_USER+18;
FORM_STATE=WM_USER+19;
FORM_DEACT=WM_USER+20;
WRITE_TOOL=WM_USER+21;
RUN_CMD=WM_USER+22;
NEXT_LET=WM_USER+23;
CHN_RN=WM_USER+24;
CHN_SAD=WM_USER+25;
CHN_RN1=WM_USER+26;
CHN_RN2=WM_USER+27;
CHN_INT=WM_USER+28;
F_SCROLL=WM_USER+29;
clactivegrid=$00FfE8F8;
cldeactivegrid=$00E0E0E0;
cldisablefield=$00FDD6BD;
cldisabledfield=cl3dlight;
procedure setcolorform(a: tform);
function diffdate(dt1,dt2:string):integer;
implementation
uses dabdmdle;

function diffdate(dt1,dt2:string):integer;
var y1,y2,m1,m2,d1,d2,r1,r2:integer;
begin
 y1:=strtoint(dt1[1]+dt1[2]);
 y2:=strtoint(dt2[1]+dt2[2]);
 m1:=strtoint(dt1[4]+dt1[5]);
 m2:=strtoint(dt2[4]+dt2[5]);
 d1:=strtoint(dt1[7]+dt1[8]);
 d2:=strtoint(dt2[7]+dt2[8]);
 if m1>6 then r1:=y1*365+(186)+(m1-6)*30+d1
 else  r1:=y1*365+(m1*31)+d1;
 if m2>6 then r2:=y2*365+(186)+(m2-6)*30+d2
 else  r2:=y2*365+(m2*31)+d2;
 result:=abs(r2-r1);
end;

procedure setcolorform(a: tform);
var
i:integer;
j:integer;
begin
 for i:=0 to a.ComponentCount-1 do
  begin
   if (a.Components[i] is tcombobox)  then
   begin
    if (a.Components[i] as Tcombobox).Tag<>1010 then
      (a.Components[i] as tcombobox).Color:=clinfobk
   end
   else
   if (a.Components[i] is tpanel) then
   begin

    if (a.Components[i] as TPanel).Tag<>1010 then
      (a.Components[i] as tpanel).Color:=$00DFBDBD
   end
   else
   if (a.Components[i] is tdbgrid) then
   begin
      if (a.Components[i] as Tdbgrid).Tag<>1010 then
        (a.Components[i] as tdbgrid).FixedColor:=$00DFBDBD
   end
   else
   if (a.Components[i] is tlabel) then
   begin
      (a.Components[i] as tlabel).Transparent:=true;
   end
   else
   if (a.Components[i] is tedit) then
   begin
      if (a.Components[i] as tedit).color=claqua then (a.Components[i] as tedit).color:=clinfobk;
   end;
  end;//for
 if a.tag<>1010 then a.color:=$00DFBDBD;

end;
end.
