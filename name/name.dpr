program  name;
{%File 'ModelSupport\default.txvpck'}

uses
  Forms,
  sysutils,
  Dialogs,
  inifiles,
  Budget_TLB in 'Budget_TLB.pas',
  fmFormDesigner in 'fmFormDesigner.pas' {FormDesigner},
  fmMfrm in 'fmMfrm.pas' {MFrm},
  fmDesignShow in 'fmDesignShow.pas' {DesignShow},
  fmlocspc in '..\SharedUnits\fmlocspc.pas' {GeoLoc},
  fmTreeTest in 'fmTreeTest.pas' {TreeTest},
  Splash in 'Splash.pas' {SplashForm},
  fmUserItemRequest in 'fmUserItemRequest.pas' {UserItemRequest},
  fmConstParam in 'fmConstParam.pas' {ConstParam},
  fmCalendar in '..\ShareUnits\fmCalendar.pas' {Calendar},
  UCommon in '..\SharedUnits\UCommon.pas',
  RadForms in '..\ShareUnits\RadForms.pas' {RadForm},
  UUserMsg in '..\ShareUnits\UUserMsg.pas',
  fmSearch in '..\ShareUnits\fmSearch.pas' {Search},
  BaseFrm in '..\ShareUnits\BaseFrm.pas' {BaseForm},
  UnFillMenu in '..\ShareUnits\UnFillMenu.pas',
  define in '..\ShareUnits\define.pas',
  fmVerify in '..\ShareUnits\fmVerify.pas' {Verify},
  unDllFunction in '..\ShareUnits\unDllFunction.pas',
  fmSelCol4Print in '..\ShareUnits\fmSelCol4Print.pas' {SelCol4Print},
  fmCheckUser in '..\ShareUnits\fmCheckUser.pas' {Form1},
  fmCalendarTest in '..\ShareUnits\fmCalendarTest.pas' {CalendarTest},
  fmSetting in '..\ShareUnits\fmSetting.pas' {Setting},
  fmDefineOrg in 'fmDefineOrg.pas' {DefineOrg},
  help in 'help.pas' {HtmlHelp},
  CalculatorP in '..\ShareUnits\CalculatorP.pas' {CalculatorForm},
  Draw in '..\ShareUnits\Draw.pas' {FunctionF},
  fmAbout in '..\Asset6\fmAbout.pas' {About},
  fmNameMain in 'fmNameMain.pas' {NameMain},
  fmRadMfrm in '..\SharedUnits\fmRadMfrm.pas',
  fmPassChanger in '..\SharedUnits\fmPassChanger.pas',
  fmCatalog in '..\SharedUnits\fmCatalog.pas' {Catalog},
  fmLogView in '..\SharedUnits\fmLogView.pas' {LogView},
  fmActiveUser in '..\SharedUnits\fmActiveUser.pas' {ActiveUser},
  fmNotes in '..\SharedUnits\fmNotes.pas' {Note},
  fmParameters in '..\SharedUnits\fmParameters.pas' {ParametersFrm},
  fmPrintSetting in '..\SharedUnits\fmPrintSetting.pas' {PrintSetting},
  SciCalc in '..\ShareUnits\SciCalc.pas' {SciCalcForm},
  FormCommon in '..\SharedUnits\FormCommon.pas',
  fmNEdit in '..\SharedUnits\fmNEdit.pas' {Nedit},
  fmGsnFrm in '..\SharedUnits\fmGsnFrm.pas' {GsnFrm},
  Fard in '..\SharedUnits\Fard.pas',
  fmPScrXP in '..\SharedUnits\fmPScrXP.pas',
  fmPScr in '..\SharedUnits\fmPScr.pas' {PassWordDlg},
  Windows {InNameMain},
  fmRequestChangeFamily in 'fmRequestChangeFamily.pas',
  DabDmdle in 'DabDmdle.pas',
  InRadForms in '..\ShareUnits\InRadForms.pas' {InRadForm},
  fmInRequestChangeFamily in 'fmInRequestChangeFamily.pas' {InRequestChangeFamily},
  fmcnty in '..\SharedUnits\fmcnty.pas' {Country},
  FmInsert in '..\SharedUnits\FmInsert.pas' {insert},
  fmElam in '..\SharedUnits\fmElam.pas' {Elam},
  fmelam2 in '..\SharedUnits\fmelam2.pas' {elam2},
  fmAppUpdate in '..\SharedUnits\fmAppUpdate.pas' {AppUpdater},
  fmSendMessage in '..\SharedUnits\fmSendMessage.pas' {SendMessage},
  fmInNameMain in 'fmInNameMain.pas';

{$R *.TLB}

{$R *.RES}

var ServerName    :String;
    GenDataFile   :TiniFile;
    FStart        :Integer;
begin
  AppplicationStart( '”Ì” „ ‰«„ Ê ‰«„ Œ«‰Ê«œêÌ');
end.

