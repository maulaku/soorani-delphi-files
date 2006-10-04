unit FormCommon;


interface
uses  UCommon,Forms, fmPScrXP,fmPScr,SysUtils,windows,Graphics,
      fmMfrm,fmVerify,IniFiles,Dialogs,DateUtils;
const
  xxx='xxxx';
  Procedure AppplicationStart(ApplicationTitle : string);
  procedure ShowPassDlg(ApplicationTitle : string);

implementation

uses fmSetting, Splash, fmGsnFrm, DabDmdle;

procedure ShowPassDlg(ApplicationTitle : string);
var
    GenDataFile   :TiniFile;
    XPLogin :String;
begin
 GenDataFile:=TiniFile.Create(fullIniPath);
 XPLogin:=GenDataFile.ReadString('Mode','XPLogin','False');
 if(UpperCase(XPLogin)='TRUE') then
 begin
   XPPassWordDlg:=TXPPassWordDlg.Create(Application);
   XPPassWordDlg.showmodal;
   XPPassWordDlg.Update;
   if XPpassworddlg.okay then
   begin
      Application.CreateForm(TMFrm, MFrm);
     MFrm.Caption:=ApplicationTitle;
      if(XPPassWordDlg.Password.Text=ArshadPass) then
         MFrm.GetAccess;
      Application.CreateForm(TVerify,Verify);
   end;
   XPPassWordDlg.Free;
   XPPassWordDlg:=Nil;
 end
 else
 begin
   PassWordDlg:=TPassWordDlg.Create(Application);
   PassWordDlg.showmodal;
   PassWordDlg.Update;
   if passworddlg.okay then
   begin
     Application.CreateForm(TMFrm, MFrm);
     MFrm.Caption:=ApplicationTitle;
     if(PassWordDlg.Password.Text=ArshadPass) then
        MFrm.GetAccess;
     Application.CreateForm(TVerify, Verify);
   end;
   PassWordDlg.Free;
   PassWordDlg:=Nil;
 end;
 GenDataFile.Free;
end;
Procedure AppplicationStart(ApplicationTitle : string);
var
    ServerName    :String;
    DataBaseName    :String;
    GenDataFile   :TiniFile;
    FStart        :Integer;
    IsInDebug     :Boolean;
    IsInXpMode     :Boolean;
    DeviceResulation:_devicemode;
    w,h:Integer;
    SysVersion :integer;
begin
  Application.Initialize;
  h:=Screen.Height;
  w:=Screen.Width;
  if(Screen.Width<>800) then
  begin
   DeviceResulation.dmSize:=500;
   DeviceResulation.dmPelsWidth:=800;
   DeviceResulation.dmPelsHeight:=600;
   DeviceResulation.dmFields:=DM_PELSWIDTH+DM_PELSHEIGHT;
//   ChangeDisplaySettings(DeviceResulation,CDS_UPDATEREGISTRY);
  end;
//  if(Screen.Width<>800) then
//    ShowMessage('·ÿ›« »—«Ì «Ã—« ‘œ‰ »—‰«„Â Resulation —« œ— 800*600  ‰ŸÌ„ ﬂ‰Ìœ');

  AddLog('‘—Ê⁄ ﬂ«—');
  SysVersion:=LOBYTE(LOWORD(GetVersion()));
  AddLog('‰”ŒÂ ÊÌ‰œÊ“='+IntToStr(SysVersion)+'--‰”ŒÂ »—‰«„Â='+GetProductInformation('FileVersion'));
  IsInDebug :=False;
  IsInXpMode:=True;
  FStart:=0;
  if Not(FileExists(fullIniPath)) then
  begin
    Setting:=TSetting.Create(Application);
    Setting.ShowModal;
    Setting.Free;
    Setting:=nil;
  end;
  SplashForm := TSplashForm.Create(Application);
  //SplashForm.Show;
  SplashForm.Update;
  GenDataFile:=TiniFile.Create(fullIniPath);
  SerVerName:=GenDataFile.ReadString('Connection','SERVER','');
  DataBaseName:=GenDataFile.ReadString('Connection','db','');
  if(UpperCase(GenDataFile.ReadString('Mode','DebugMode',''))='TRUE') then
  begin
    IsInDebug:=True;
  end
  else
    GenDataFile.WriteString('Mode','DebugMode','False');
 if(UpperCase(GenDataFile.ReadString('Mode','XpMode',''))='FALSE') then
 begin
   IsInXpMode:=False;
 end
 else
    GenDataFile.WriteString('Mode','XpMode','TRUE');

 GenDataFile.Free;
 GsnFrm:=TGsnFrm.Create(Application);
 if ServerName='' then
 begin
   GsnFrm.ShowModal;
   GsnFrm.Update;
   Fstart:=1;
//   exit;
 end;
 Application.Title:=ApplicationTitle;
 Application.CreateForm(TDabData, DabData);
  if Fstart=1 then
 begin
   if  Gsnfrm.Oky  then
    begin
      GenDataFile:=TiniFile.Create(fullIniPath);
      SerVerName:=GenDataFile.ReadString('Connection','SERVER','');
      DataBaseName:=GenDataFile.ReadString('Connection','db','');
      GenDataFile.Free;
      DabData.SysVersion:=SysVersion;
      if(IsInDebug) then
        DabData.IsInDebug:=true;
      if(IsInXpMode) then
        DabData.IsInXpMode:=true;
      SplashForm.Timer1.Enabled:=False;
      ShowPassDlg(ApplicationTitle);
      SplashForm.Timer1.Enabled:=True;
    end;
 end
 Else
 begin
   DabData.SysVersion:=SysVersion;
  if(IsInDebug) then
     DabData.IsInDebug:=true;
  if(IsInXpMode) then
     DabData.IsInXpMode:=true;
   SplashForm.Timer1.Enabled:=False;
   ShowPassDlg(ApplicationTitle);
   GenDataFile:=TiniFile.Create(fullIniPath);
   if(UpperCase(GenDataFile.ReadString('Font','Name',''))='') then
   begin
     GenDataFile.WriteString('Font','Name','Ms Sans Serif');
     GenDataFile.WriteString('Font','Style','Ms Sans Serif');
     GenDataFile.WriteInteger('Font','Size',10);
     DabData.FontDialog1.Font.Size:=10;
     DabData.FontDialog1.Font.Style:=[fsBold];
     DabData.FontDialog1.Font.Name:='Ms Sans Serif';
   end
   else
   begin
     DabData.FontDialog1.Font.Name:=GenDataFile.ReadString('Font','Name','');
     DabData.FontDialog1.Font.Size:=StrToIntDef(GenDataFile.ReadString('Font','Size',''),10);
   end;
 end;
   GenDataFile.Free;
   DabData.ShowPopupMessageSmall('«Ã—« œ— „ÕÌÿ  «‘ﬂ«· “œ«ÌÌ'+' «ê— „œÌ— ”Ì” „ ‰Ì” Ìœ '+'»—‰«„Â —« œ— «Ì‰ Õ«·  «Ã—« ‰ﬂ‰Ìœ ');
  PassWordDlg.Free;
  SplashForm.Hide;
  GsnFrm.Hide;
  GsnFrm.Free;
  GsnFrm:=nil;
  Application.Run;
  if(w<>800) then
  begin
    DeviceResulation.dmSize:=500;
    DeviceResulation.dmPelsWidth:=w;
    DeviceResulation.dmPelsHeight:=h;
    DeviceResulation.dmFields:=DM_PELSWIDTH+DM_PELSHEIGHT;
//    ChangeDisplaySettings(DeviceResulation,CDS_UPDATEREGISTRY);
  end;
  AddLog('« „«„ ﬂ«—');
  SplashForm.Free;
  //DabData.SendLog2DB;
end;
end.
