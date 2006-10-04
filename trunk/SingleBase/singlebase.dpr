program singlebase;
uses
  Forms,
  sysutils,
  Dialogs,
  inifiles,
  DabDmdle in 'DabDmdle.pas' {DabData: TDataModule},
  fmUserD in 'fmUserD.pas' {UserD},
  fmUsrDef in 'fmUsrDef.pas' {UsrDef},
  fmAcc in 'fmAcc.pas' {Acc},
  fmPScr in 'fmPScr.pas' {PassWordDlg},
  fmElam in 'fmElam.pas' {Elam},
  Calc in 'Calc.pas' {CalcForm},
  fmRnama in 'fmRnama.pas' {Rnama},
  fmGsnFrm in 'fmGsnFrm.pas' {GsnFrm},
  fmVerify in 'fmVerify.pas' {Verify},
  fmTatil in 'fmTatil.pas' {Tatil},
  fmOrgInput in 'fmOrgInput.pas' {OrgInput},
  fmMfrm in 'fmMfrm.pas' {MFrm},
  fmuserm in 'fmuserm.pas' {UserM},
  fmopform in 'fmopform.pas' {opform},
  UnFillMenu in 'UnFillMenu.pas',
  ReUser in 'ReUser.pas' {reusers},
  fmemp in 'fmemp.pas' {Emp},
  fmempIn in 'fmempIn.pas' {EmpIn},
  fmlocspc in 'fmlocspc.pas' {GeoLoc},
  FmInsert in 'FmInsert.pas' {insert},
  fmcnty in 'fmcnty.pas' {Country},
  fmelam2 in 'fmelam2.pas' {elam2},
  fmOrganization in 'fmOrganization.pas' {Organization},
  fmPostInput in 'fmPostInput.pas' {PostInput},
  fmUnitInput in 'fmUnitInput.pas' {UnitInput},
  fmCourse in 'fmCourse.pas' {Course},
  fmJob in 'fmJob.pas' {Job},
  fmdegree in 'fmdegree.pas' {Degre},
  singlebase_TLB in 'singlebase_TLB.pas',
  BASEFRM in '..\ShareUnits\BASEFRM.pas' {BaseForm},
  UCommon in '..\SharedUnits\UCommon.pas',
  InRadForms in '..\ShareUnits\InRadForms.pas' {InRadForm},
  FormCommon in '..\SharedUnits\FormCommon.pas',
  fmSetting in '..\SharedUnits\fmSetting.pas' {Setting},
  Fard in '..\SharedUnits\Fard.pas',
  Splash in '..\name\Splash.pas' {SplashForm},
  fmPScrXP in '..\SharedUnits\fmPScrXP.pas' {XPPassWordDlg},
  fmSelCol4Print in '..\SharedUnits\fmSelCol4Print.pas' {SelCol4Print},
  RadForms in '..\SharedUnits\RadForms.pas' {RadForm},
  define in '..\SharedUnits\define.pas';

{$R *.TLB}

{$R *.RES}
var ServerName,db    :String;
    GenDataFile   :TiniFile;
    FStart        :Integer;
label l1,l2;
begin
  Application.Initialize;
  Application.Title := '”Ì” „ œ” —”Ì';
  FStart:=0;
///  SplashForm := TSplashForm.Create(Application);
///  SplashForm.Show;
///  SplashForm.Update;
  GenDataFile:=TiniFile.Create('singleBase.ini');
  SerVerName:=GenDataFile.ReadString('SerVerName','SERVER','');
  //GendataFile.WriteString('SAL','CurrentSal',Copy(DabData.Disp_date,1,2));
  db:=GenDataFile.ReadString('Db','Db','');
  GenDataFile.Free;
  GsnFrm:=TGsnFrm.Create(Application);
  if ServerName='' then
    begin
      GsnFrm.ShowModal;
      GsnFrm.Update;
      Fstart:=1;
    end;
  if Fstart=1 then
   begin
    if  Gsnfrm.Oky  then
      begin
        Application.CreateForm(TDabData, DabData);
  Application.CreateForm(TRadForm, RadForm);
  Application.CreateForm(TInRadForm, InRadForm);
  Application.CreateForm(TSetting, Setting);
  Application.CreateForm(TSplashForm, SplashForm);
  Application.CreateForm(TXPPassWordDlg, XPPassWordDlg);
  Application.CreateForm(TSelCol4Print, SelCol4Print);
  Application.CreateForm(TRadForm, RadForm);
  l1:     PassWordDlg:=TPassWordDlg.Create(Application);
        PassWordDlg.showmodal;
        PassWordDlg.Update;
        if DabData.ini then goto l1;
        if passworddlg.okay then
         begin
          Application.CreateForm(TMFrm, MFrm);
          Mfrm.ss:=passworddlg.PassWord.text;
          Application.CreateForm(TElam, Elam);
         end;
      end;
    end
   Else
     begin
      Application.CreateForm(TDabData, DabData);
l2:   PassWordDlg:=TPassWordDlg.Create(Application);
      PassWordDlg.showmodal;
      PassWordDlg.Update;
//      if DabData.ini then goto l2;
      if passworddlg.okay then
       begin
///        SplashForm.pb.Max:=100;
///        SplashForm.pb.Position:=0;
///        SplashForm.Show;
///        SplashForm.Update;

///        SplashForm.pb.Position:=SplashForm.pb.Position+14;
        Application.CreateForm(TMFrm, MFrm);
///        SplashForm.pb.Position:=SplashForm.pb.Position+14;
        Mfrm.ss:=passworddlg.PassWord.text;
        Application.CreateForm(TElam, Elam);
///        SplashForm.pb.Position:=SplashForm.pb.Position+14;
///        SplashForm.pb.Position:=SplashForm.pb.Position+14;
       end;
     end;
  PassWordDlg.Free;
///  SplashForm.Hide;
///  SplashForm.Free;
  GsnFrm.Hide;
  GsnFrm.Free;
  Application.Run;
end.
