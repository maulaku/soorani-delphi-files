unit define;

interface
uses Messages,forms,extctrls,dbgrids,graphics,stdctrls;
Const
F_EDIT=WM_USER;
F_NEW=WM_USER+1;
F_DEL=WM_USER+2;
F_SRCH=WM_USER+3;
F_Init=WM_USER+4;
F_PRINT=WM_USER+5;
F_NEXT=WM_USER+83;
F_PRV=WM_USER+84;
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
F_SEARCH=WM_USER+85;
F_OK=WM_USER+86;
F_Cancel=WM_USER+87;
F_MAINFRM=WM_USER+80;
XPMODE=WM_USER+81;
OPEN=WM_USER+82;
RAD_SHOWMESSAGE=WM_USER+88;
RAD_FILTERED=WM_USER+89;
F_DESIGN=WM_USER+90;
clactivegrid=$00FFE8F8;
cldeactivegrid=cl3dlight;
clMandatory=$00A8FFFF;//$009FFFFF
RAD_NOTIFYICON=WM_USER+91;
procedure setformColor(a: tform);
implementation
procedure setformColor(a: tform);
var
i,j:integer;
begin
 for i:=0 to a.ComponentCount-1 do
  begin
   if (a.Components[i] is TComboBox) then
   if (a.Components[i] as TComboBox).Color=$0080FFFF then
      (a.Components[i] as TComboBox).Color:=clinfobk;
   if (a.Components[i] is tpanel) then
    if (a.Components[i] as TPanel).Tag<>1010 then
      (a.Components[i] as tpanel).Color:=$00DFBDBD;
   if (a.Components[i] is tdbgrid) then
   if (a.Components[i] as tdbgrid).tag<>1010 then
    begin
     (a.Components[i] as tdbgrid).FixedColor:=$00DFBDBD;
     for j:= 0 to (a.Components[i] as tdbgrid).Columns.Count-1 do
      begin
       (a.Components[i] as tdbgrid).Columns.Items[j].Title.Font.Color:= clYellow;
       (a.Components[i] as tdbgrid).Columns.Items[j].Title.Color:= $00c08080;
      end;
    end;
  end;
  if a.tag<>1010 then a.color:=$00dfbdbd;
end;
end.












