unit fmMfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmRadMfrm, MDIWallp, Menus, DB, ADODB, AppEvnts, ImgList,
  ExtCtrls, ComCtrls, fcStatusBar, StdCtrls, Buttons, antMovablePanel,
  ToolWin,IniFiles, XPMenu, RXShell, frmshape, ToolPanels,
  cxLookAndFeelPainters, cxButtons, fcOutlookList, fcButton, fcImgBtn,
  fcShapeBtn, fcClearPanel, fcButtonGroup, fcOutlookBar, AdvMenuStylers,
  AdvMenus, Grids, BaseGrid, AdvGrid, DBAdvGrid;

type
  TMFrm = class(TRadMFrm)
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N28: TMenuItem;
    N1: TMenuItem;
    N415: TMenuItem;
    N416: TMenuItem;
    N3: TMenuItem;
    N9: TMenuItem;
    N15: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N415Click(Sender: TObject);
    procedure N145Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N149Click(Sender: TObject);
    procedure N150Click(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MFrm: TMFrm;

implementation

uses fmParameters,fmSetting,fmActiveUser,fmlogview,DabDmdle,SciCalc,UCommon,
  fmNameMain, fmRequestChangeFamily;

{$R *.dfm}


procedure TMFrm.N17Click(Sender: TObject);
begin
  RunForm(TSciCalcForm,Sender,SciCalcForm);
end;

procedure TMFrm.N15Click(Sender: TObject);
begin
 //?\\\ RunForm(TdefineOrg,Sender,defineOrg);
end;


procedure TMFrm.N29Click(Sender: TObject);
var
    GenDataFile   :TiniFile;
begin
  inherited;
  DabData.FontDialog1.Execute;
  GenDataFile:=TiniFile.Create(fullIniPath);
  GenDataFile.WriteString('Font','Name',DabData.FontDialog1.Font.Name);
  GenDataFile.WriteString('Font','Style',DabData.FontDialog1.Font.Name);
  GenDataFile.WriteInteger('Font','Size',DabData.FontDialog1.Font.Size);
  GenDataFile.Free;
end;
procedure TMFrm.N149Click(Sender: TObject);
begin
  RunForm(TLogView,Sender,LogView);
end;

procedure TMFrm.N150Click(Sender: TObject);
begin
  RunForm(TActiveUser,Sender,ActiveUser);
end;
procedure TMFrm.N34Click(Sender: TObject);
begin
  RunForm(TSetting,Sender,Setting);
end;



procedure TMFrm.N151Click(Sender: TObject);
begin
  inherited;
  RunForm(TParametersFrm,Sender,ParametersFrm);
end;
procedure TMFrm.N145Click(Sender: TObject);
var
 MenuIni:TIniFile;
begin
  inherited;
  MenuIni:=TIniFile.Create(fullCmdPath);
  MenuIni.EraseSection('Menu');
  MenuIni.Free;
//  OptionsPanel.Destroy;
end;

procedure TMFrm.FormShow(Sender: TObject);
var
    IniFile : TIniFile ;
begin
  inherited;
end;

procedure TMFrm.N415Click(Sender: TObject);
begin
  inherited;
  RunForm(TNameMain,Sender,NameMain);
end;

procedure TMFrm.N3Click(Sender: TObject);
begin
  inherited;
  RunForm(TRequestChangeFamily,sender,RequestChangeFamily);
end;

end.
