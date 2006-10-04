unit help;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HTTPApp, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, Buttons,define,UnFillMenu,
  SmoothShow,RadForms, HTTPProd, DHTMLEDLib_TLB,FileCtrl;

type
  THtmlHelp = class(TRadForm)
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DHTMLEdit1: TDHTMLEdit;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure WebBrowser1NavigateComplete2(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HtmlHelp: THtmlHelp;

implementation

uses DabDmdle, UCommon, fmMfrm, BaseFrm;

{$R *.DFM}

procedure THtmlHelp.SpeedButton1Click(Sender: TObject);
begin
  try
//     DHTMLEdit1.he.GoBack;
  except
  end;
end;

procedure THtmlHelp.SpeedButton2Click(Sender: TObject);
begin
  try
//     WebBrowser1.GoForward;
  except
  end;
end;

procedure THtmlHelp.SpeedButton3Click(Sender: TObject);
var
 Path:OleVariant;
begin
  Path:=activePath+'\help\'+'Index.Htm';
  DHTMLEdit1.LoadDocument(Path);
end;

procedure THtmlHelp.FormShow(Sender: TObject);
var
  Path:OleVariant;
  Myd        :TDirectoryListBox;
begin
  top:=0;
  left:=0;
  if MFrm.LastMenuCliked<>'' then
    Path := GetCurrentDir+'\help\'+MFrm.LastMenuCliked+'.htm'
  else
    Path := GetCurrentDir+'\help\Index.htm';

  Caption:=UnFillMenu.GetMenuString(MFrm.Menu,MFrm.LastMenuCliked)+'         '+Caption;
  try
    DHTMLEdit1.LoadDocument(Path);
  except
    ShowAlertMessage('—«Â‰„« ÊÃÊœ ‰œ«—œ »’Ê—  ‘„« Ìﬂ ”«Œ Â „Ì‘Êœ ',1);
    if not DirectoryExists('Help') then
       CreateDir('Help');
    CreateHelpFile(MFrm.Menu);
    Path := GetCurrentDir+'\help\Index.htm';
    DHTMLEdit1.LoadDocument(Path);
    Path := GetCurrentDir+'\help\'+MFrm.LastMenuCliked+'.htm';
    DHTMLEdit1.LoadDocument(Path);
    DHTMLEdit1.Refresh;
  end;
  DabData.ShowPopupMessageSmall(path);
end;

procedure THtmlHelp.Button1Click(Sender: TObject);
begin
{ mes.Msg:=F_HTM;
 Self.DispatchMessageToActiveMdiChild(mes);}
end;

procedure THtmlHelp.FormActivate(Sender: TObject);
var
  mes : TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=30;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;

procedure THtmlHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DHTMLEdit1.Destroy;
  except;
  end;
  Action:=caFree;
end;


procedure THtmlHelp.SpeedButton4Click(Sender: TObject);
var
 lev:OleVariant;
begin
  inherited;
 if DHTMLEdit1.BrowseMode then
 begin
   DHTMLEdit1.BrowseMode:=False;
   Caption:=GetMenuString(MFrm.Menu,MFrm.LastMenuCliked)+'  '+MFrm.LastMenuCliked+'.htm ÿ—«ÕÌ  —«Â‰„«  ';
 end
 else
 begin
   DHTMLEdit1.BrowseMode:=True;
   Caption:=GetMenuString(MFrm.Menu,MFrm.LastMenuCliked)+'  '+MFrm.LastMenuCliked+'.htm  —«Â‰„«';
 end;
end;

procedure THtmlHelp.SpeedButton5Click(Sender: TObject);
var
  Path:OleVariant;
begin
  inherited;
  if MFrm.LastMenuCliked<>'' then
    Path := GetCurrentDir+'\help\'+MFrm.LastMenuCliked+'.htm'
  else
    Path := GetCurrentDir+'\help\Index.htm';
  DHTMLEdit1.SaveDocument(Path);
end;

procedure THtmlHelp.WebBrowser1NavigateComplete2(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  path:OleVariant;
begin
  inherited;
  path:=activePath+HelpPath+MFrm.LastMenuCliked+'.htm';
  DHTMLEdit1.LoadDocument(path);
end;

end.
