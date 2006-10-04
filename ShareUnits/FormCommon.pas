unit FormCommon;


interface
uses  UCommon,Forms, fmPScrXP,fmPScr,SysUtils,
      fmMfrm,fmVerify,IniFiles;
const
  xxx='xxxx';
  procedure ShowPassDlg;

implementation

procedure ShowPassDlg;
var
    GenDataFile   :TiniFile;
    XPLogin :String;
begin
 GenDataFile:=TiniFile.Create('Amval.ini');
 XPLogin:=GenDataFile.ReadString('Mode','XPLogin','False');
 if(UpperCase(XPLogin)='TRUE') then
 begin
   XPPassWordDlg:=TXPPassWordDlg.Create(Application);
   XPPassWordDlg.showmodal;
   XPPassWordDlg.Update;
   if XPpassworddlg.okay then
   begin
      Application.CreateForm(TMFrm, MFrm);
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
     if(PassWordDlg.Password.Text=ArshadPass) then
        MFrm.GetAccess;
     Application.CreateForm(TVerify, Verify);
   end;
   PassWordDlg.Free;
   PassWordDlg:=Nil;
 end;
 GenDataFile.Free;
end;
end.
 