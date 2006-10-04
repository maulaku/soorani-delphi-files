
unit fmRadMfrm;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls,DBCtrls, ComCtrls,iniFiles,
  Buttons, ToolWin,DB,DBTables, StdCtrls,define, MPlayer,comobj,OleCtnrs,
  ImgList, jpeg, MDIWallp, XPMenu, AppEvnts, RSqlButton,BaseFrm ,ADODB,
  Spin, antMovablePanel, Danhint, ActnMan, ActnCtrls, ActnMenus,
  CustomizeDlg, ActnList,shellapi, fcOutlookList, fcButton, fcImgBtn,
  fcShapeBtn, fcClearPanel, fcButtonGroup, fcOutlookBar, fcStatusBar,
  RadForms, RXShell, Planner, frmshape, WPCTRRich, WPGutter, ToolPanels,
  cxLookAndFeelPainters, cxButtons, Grids, BaseGrid, AdvGrid, DBAdvGrid,
  AdvMenus, AdvMenuStylers;
type
  TRadMFrm = class(TBaseForm)
    RadToolBar: TToolBar;
    spRadPanelTop: TPanel;
    spRadShowHideCoolBar: TSpeedButton;
    RadDesignChenger: TSpeedButton;
    spRadHint: TSpeedButton;
    RadPanel4: TPanel;
    spRadVersion: TSpeedButton;
    spRadSetForm: TToolButton;
    spRadHelp: TToolButton;
    RadToolButton3: TToolButton;
    spRadSearch: TToolButton;
    spRadRun: TToolButton;
    spRadPrint: TToolButton;
    RadToolButton2: TToolButton;
    spRadDel: TToolButton;
    spRadEdit: TToolButton;
    spRadNew: TToolButton;
    RadStatusBar: TfcStatusBar;
    RadStatusBarShowHint: TStatusBar;
    RadTimeDisplay: TTimer;
    RadImageList: TImageList;
    RadApplicationEvents: TApplicationEvents;
    quRadGetMessage: TADOQuery;
    quRadGetMessageMessage: TStringField;
    RadMDIWallpaper: TMDIWallpaper;
    RxRadTrayIcon: TRxTrayIcon;
    Formshape1: TFormshape;
    AdvToolPanelTab1: TAdvToolPanelTab;
    RadOptionsPanel: TAdvToolPanel;
    RadAddCommand: TfcImageBtn;
    tempImage: TImage;
    AdvToolPanel1: TAdvToolPanel;
    dsActiveUser: TDataSource;
    DBAdvGrid1: TDBAdvGrid;
    quActiveUser: TADOQuery;
    quActiveUserhostname: TWideStringField;
    quActiveUsertime: TStringField;
    quActiveUserstatus: TWideStringField;
    quActiveUsercmd: TWideStringField;
    quActiveUserspid: TSmallintField;
    quActiveUserFLName: TStringField;
    quActiveUserDBName: TWideStringField;
    quActiveUserprogram_name: TWideStringField;
    AdvPopupMenu1: TAdvPopupMenu;
    N1111: TMenuItem;
    AdvMenuStyler1: TAdvMenuStyler;
    RadPopupMenu: TAdvPopupMenu;
    N950: TMenuItem;
    N951: TMenuItem;
    N952: TMenuItem;
    N953: TMenuItem;
    N954: TMenuItem;
    N955: TMenuItem;
    N956: TMenuItem;
    N957: TMenuItem;
    N958: TMenuItem;
    N959: TMenuItem;
    N960: TMenuItem;
    N961: TMenuItem;
    N962: TMenuItem;
    N963: TMenuItem;
    N964: TMenuItem;
    N965: TMenuItem;
    N967: TMenuItem;
    N968: TMenuItem;
    N969: TMenuItem;
    N940: TMenuItem;
    N941: TMenuItem;
    N942: TMenuItem;
    HideCoolBar: TMenuItem;
    N966: TMenuItem;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    PopupMenu1: TPopupMenu;
    procedure N1111Click(Sender: TObject);
    procedure DBAdvGrid1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);

    procedure DispatchMessageToActiveFrom(ActiveForm :TForm;var Msg:TMessage);

    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFillMenuesClick(Sender: TObject);
    procedure btFillHelpClick(Sender: TObject);
    procedure spRadNewClick(Sender: TObject);
    procedure spRadEditClick(Sender: TObject);
    procedure spRadRunClick(Sender: TObject);
    procedure spRadDelClick(Sender: TObject);
    procedure spRadPrintClick(Sender: TObject);
    procedure spRadSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadTimeDisplayTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RadApplicationEventsException(Sender: TObject; E: Exception);
    procedure RadApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure OnActiveFormChange(Sender: TObject);
    procedure RadAddCommandClick(Sender: TObject);
    procedure RadOptionsPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RadOptionsPanelMoveEnd(Sender: TObject);
    procedure N940Click(Sender: TObject);
    procedure RadAddCommandMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RadDesignChengerClick(Sender: TObject);
    procedure spRadHintClick(Sender: TObject);
    procedure RadApplicationEventsMinimize(Sender: TObject);

    procedure N918Click(Sender: TObject);
    procedure N903Click(Sender: TObject);
    procedure N901Click(Sender: TObject);
    procedure N902Click(Sender: TObject);
    procedure N905Click(Sender: TObject);
    procedure N907Click(Sender: TObject);
    procedure N906Click(Sender: TObject);
    procedure N908Click(Sender: TObject);
    procedure N909Click(Sender: TObject);
    procedure N913Click(Sender: TObject);
    procedure N915Click(Sender: TObject);
    procedure N941Click(Sender: TObject);
    procedure N942Click(Sender: TObject);
    procedure N916Click(Sender: TObject);
    procedure N914Click(Sender: TObject);
    procedure spRadSetFormClick(Sender: TObject);
    procedure RadStatusBarClick(Sender: TObject);
    procedure HideCoolBarClick(Sender: TObject);
    procedure RxRadTrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N904Click(Sender: TObject);
  private
   ArShad           :Boolean;
   prvActivated       :String;
   procedure RunDef;
   procedure SetAccess(Mnitem:string);
   procedure SetComp(CmpName:string;mde :boolean);
   procedure SetRight(Mnu:string;GetMes:integer);
   Function  ExitSys:Boolean;
    { Private declarations }
  protected
    procedure AnserToDeAct(var mes :TMessage);message FORM_DEACT;
    Procedure GetDabDataMes(var mes :TMessage);message CHN_TAB;
    procedure Set_Chn_file (var Mes:TMessage);message CHN_FILES;
    procedure AnserToState(var mes :TMessage);message FORM_STATE;
    procedure AnswerToAll(var mes :TMessage);message SCROLL;
    procedure DoFiltered(var Mes : TMessage);message RAD_FILTERED ;
    procedure Answer_To_F_Scroll(var Mes : TMessage); message F_SCROLL;
    procedure DoCalc(var Mes : TMessage);message WM_USER+101;
    procedure loadCommand;
  Protected
    procedure DoShowMessage(var Mes : TMessage);message RAD_SHOWMESSAGE ;
   public
    Function  ChkChild(Cform :TformClass):Boolean;
    Function Child(Cform :TformClass):TRadForm;
    procedure RunForm(Cform :TRadFormClass;Sender:TObject;var fromPtr);
    procedure refreshActiveForm;
    procedure GetAccess;
   public
    LastMenuCliked:String;
    tag,ic,tag1,ic1,vtag,Dtag :integer;
    TmpC,TmpT :integer;
    MorGen    :string;
    Abend     :string;
//    StartDate,FinishDate:string;
    WatchReport:boolean;
    NumOffLastMenu:Integer;
    MouseInComObjCoolBar:Boolean;
    { Public declarations }

  end;
   //Function ShowMes: ; External 'TestDll.Dll'

var
  RadMFrm : TRadMFrm;
  FormFirstShowed :Boolean;


implementation

uses DabDmdle, Splash, help, SciCalc,    fmPassChanger, UCommon,
  fmVerify, UnFillMenu, fmLogView, fmActiveUser, fmParameters,
  fmPrintSetting, Windows, CalculatorP, fmCatalog, fmNotes, fmSetting,
  fmAppUpdate, fmSendMessage;


{$R *.DFM}
procedure TRadMFrm.DoShowMessage(var Mes : TMessage);
begin
   if DabData<>nil then
     if Mes.LParam=0 then
        DabData.ShowPopupMessageSmall(String(Mes.wParam))
     else
        DabData.ShowPopupMessage(String(Mes.wParam))
   else
     ShowMessage(String(Mes.wParam));
end;
procedure TRadMFrm.DoFiltered(var Mes: TMessage);
begin
  if Mes.WParam=2 then
    spRadSearch.ImageIndex:=19
  else
    spRadSearch.ImageIndex:=17;
end;
procedure TRadMFrm.Answer_To_F_Scroll(var Mes : TMessage);
begin
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;

procedure TRadMFrm.AnserToState(var mes :TMessage);
begin
if Not ArShad then
 begin
  if  mes.LParam=0 then
    SetRight('',mes.LParam)
  else
    SetRight('N'+inttostr(mes.LParam),mes.LParam);
 end;        
end;
Procedure TRadMFrm.GetDabDataMes(var mes :TMessage);
begin
end;

procedure TRadMFrm.FormActivate(Sender: TObject);
var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=0;
  Dispatch(mes);
  tag:=0;
  ic:=1;
  tag1:=0;
  ic1:=1;
  vtag:=0;
end;

procedure TRadMFrm.N903Click(Sender: TObject);
begin
 RunForm(TCatalog,Sender,Catalog);
end;

Function TRadMFrm.ChkChild(Cform :TformClass):Boolean;
var i    :integer;
    flg  :boolean;
begin
 flg:=false;
 for i:=0 to  MdiChildCount-1 do
    if (MdiChildren[i] is Cform) then
     begin
      Flg:=true;
      SetWindowPos(MdiChildren[i].Handle,HWND_TOP,
                 MdiChildren[i].Left,
                 MdiChildren[i].Top,
                 MdiChildren[i].Width,
                 MdiChildren[i].Height,SWP_SHOWWINDOW);
      break;

     end;
 ChkChild:=flg;
end;
Function TRadMFrm.Child(Cform :TformClass):TRadForm;
var i    :integer;
begin
 child:=nil;
 for i:=0 to  MdiChildCount-1 do
    if (MdiChildren[i] is Cform) then
     begin
      Child:=TRadForm(MdiChildren[i]);
      break;
     end;
end;

procedure TRadMFrm.FormShow(Sender: TObject);
var
  InstQry :TADOQuery;
  tmpImg:TImage;
begin
  spRadVersion.Caption:='‰”ŒÂ '+GetProductInformation('FileVersion');
  spRadVersion.Hint:='‰”ŒÂ '+GetProductInformation('FileVersion');
  SplashForm:=TSplashForm.Create(Application);
  if Not(FileExists(fullImagePath)) then
  begin
    if SplashForm.Image1<>nil then
    begin
      SplashForm.Image1.Picture.SaveToFile(fullImagePath);
      RadMDIWallpaper.Picture.LoadFromFile(fullImagePath);
    end
  end
  else
      RadMDIWallpaper.Picture.LoadFromFile(fullImagePath);
  InstQry:=TADOQuery.Create(Application);
  InstQry.Connection:=DabData.ADOC;
  InstQry.SQL.Text:='if isnull((Select Max(PK_Key) from Parameters),'''')='''''+
                    ' insert into Parameters(Pk_key,Vertion,CurrentYear) values(1,''1.1.2'',82) '+
                    'update Parameters Set CurrentYear='+IntToStr(DabData.SalVar)+',OrganizCode='+OrganizCode;
  InstQry.ExecSQL;
  InstQry.Destroy;
  RadStatusBar.Panels[4].Text:=inttostr(DabData.SalVar)+'  :”‹‹«·';
  RadStatusBar.Panels[5].Text:=trim(DabData.Fname);
  RadStatusBar.Panels[6].Text:=trim(DabData.Lname);
  DabData.quAccEssF.Close;
  DabData.quAccEssF.parameters[0].value:=DabData.emp_no;
  DabData.quAccEssF.parameters[1].value:=GetProductInformation('syscode');
  DabData.quAccEssF.Open;
  {DabData.quConf.close;
  DabData.quConf.Open; }
  RunDef;
  Dtag:=0;
  RadTimeDisplay.Enabled :=true;
  loadCommand;
  RxRadTrayIcon.Icon:=Application.Icon;
  RxRadTrayIcon.PopupMenu:=RadPopupMenu;
  FormFirstShowed := true;
  quActiveUser.Close;
  quActiveUser.Open;
end;

procedure TRadMFrm.spRadNewClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_NEW;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
 end;
procedure TRadMFrm.spRadEditClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_EDIT;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
 end;
procedure TRadMFrm.Set_Chn_File(var Mes:TMessage);
begin
//****
end;
procedure TRadMFrm.FormCreate(Sender: TObject);
const
  MenuNames :array[1..26] of String=('N900','N901','N902','N903','N904','N905','N906',
  'N907','N908','N909','N910','N911','N912','N913','N914','N915',
  'N916','N917','N918','N919','N931','N932','N933','N934','N944','N4');
  MenuCaptions :array[1..26] of String=('”Ì” „','„⁄—›Ì ”Ì” ‹‹„','—«Â‰‹‹‹‹‹‹‹‹‹‹„«','›Â—”  Ãœ«Ê· ',' ﬁÊÌ„ Ê Ì«œœ«‘ ','„‹‹‹«‘Ì‰ Õ”«»',
                 ' €ÌÌ— ›Ê‰ ',' €ÌÌ— ﬂ·„Â ⁄»Ê—','‰„«Ì‘ ⁄„·Ì« Ì','ﬂ«—»—«‰ ›⁄«·','–ŒÌ—Â «ÿ·«⁄‹« ',' ‹‹⁄‹ÿ‹Ì‹‹‹‹·«   —”„‹Ì   ”‹‹«·',
                 '«ÌÃ«œ ”«· ÃœÌœ',' ‰ŸÌ„ ”Ì” „',' ‰ŸÌ„ ’›ÕÂ Å—Ì‰ ',
                 ' ‰ŸÌ„ Å«—«„ —Â«Ì ”Ì” „','ÿ—«ÕÌ ›—„',
                 '„Œ›Ì ﬂ—œ‰ „‰ÊÌ Õ—ﬂ  ﬂ‰‰œÂ','„Œ›Ì ﬂ—œ‰ ›—„',
                 'Œ‹‹‹‹‹‹‹‹‹‹—ÊÃ','-','-','-','-','-','œ—Ì«›  ‰”ŒÂ ÃœÌœ');

var
  RadMainMenu: TAdvMainMenu;
  Menus :array[0..26] of  TMenuItem;
  MenuFunctions:array[1..26] of TNotifyEvent;
  i,j:Integer;
  MenuInfo:tagMENUITEMINFO;
begin
  FormFirstShowed := false;
  MenuFunctions[2]:=N901Click;
  MenuFunctions[3]:=N902Click;
  MenuFunctions[4]:=N903Click;
  MenuFunctions[5]:=N904Click;
  MenuFunctions[6]:=N905Click;
  MenuFunctions[7]:=N906Click;
  MenuFunctions[8]:=N907Click;
  MenuFunctions[9]:=N908Click;
  MenuFunctions[10]:=N909Click;
  MenuFunctions[11]:=nil;
  MenuFunctions[12]:=nil;
  MenuFunctions[13]:=nil;
  MenuFunctions[14]:=N913Click;
  MenuFunctions[15]:=N914Click;
  MenuFunctions[16]:=N915Click;
  MenuFunctions[17]:=N916Click;
  MenuFunctions[18]:=HideCoolBarClick;
  MenuFunctions[19]:=nil;
  MenuFunctions[20]:=N918Click;
  MenuFunctions[21]:=nil;
  MenuFunctions[22]:=nil;
  MenuFunctions[23]:=nil;
  MenuFunctions[24]:=nil;
  MenuFunctions[25]:=nil;
  MenuFunctions[26]:=N4Click;
  Menus[1] := TMenuItem.Create(Self);
  Menus[1].Name := 'N900';
  Menus[1].Caption := MenuCaptions [1];
  Menu.BiDiMode:=bdRightToLeft;
  Menu.ParentBiDiMode:=False;
  Menu.Items.Add(Menus[1]);
  for i:=2 to 26 do
  begin
    Menus[i]:=TMenuItem.Create(Self);
    Menus[i].Name:=MenuNames[i];
    Menus[i].Caption:=MenuCaptions[i];
    Menus[i].OnClick:=MenuFunctions[i];
{    GetMenuItemInfo(Menus[i].Handle,1,FALSE,MenuInfo);
    MenuInfo.fType:=MFT_RIGHTORDER;
    SetMenuItemInfo(Menus[i].Handle,1,FALSE,MenuInfo);}
    Menu.Items[Menu.Items.Count-1].Add(Menus[i]);
  end;
    Menu.BiDiMode:=bdRightToLeft;
    Menu.ParentBiDiMode:=True;
  inherited;
  ArShad:=false;
  RadStatusBar.Panels[3].Text:=DabData.disp_date;
  RadStatusBar.Panels[2].Text:=TimeToStr(Time);
  Screen.OnActiveControlChange:=OnActiveFormChange;
end;
procedure TRadMFrm.SetComp(CmpName:string;mde :boolean);
var cc:string;
begin
 if FindComponent(CmpName) is TmenuItem then TmenuItem(FindComponent(CmpName)).Enabled:=mde;
 cc:='sp'+CmpName;
 if FindComponent(cc) is TSPeedButton then TSPeedButton(FindComponent(cc)).Enabled:=mde;
end;

procedure TRadMFrm.RadTimeDisplayTimer(Sender: TObject);
begin
  RadStatusBar.Panels[2].Text:=TimeToStr(Time);
end;

procedure TRadMFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Screen.OnActiveControlChange:=nil;;
   Action:=cafree;
end;

procedure TRadMFrm.spRadRunClick(Sender: TObject);
var mes:TMessage;
begin
  refreshActiveForm;
  mes.MSg:=RUN_CMD;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;

procedure TRadMFrm.spRadDelClick(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=F_DEL;
   DispatchMessageToActiveFrom(ActiveMdiChild,mes);
   exit;
end;

procedure TRadMFrm.SetAccess(Mnitem:string);
begin
  dabdata.quaccessf.locate('Mnum',mnitem,[]);
  if DabData.quAccEssFNewTag.value=1 then
    spRadNew.Enabled:=True
  else
   spRadNew.Enabled:=false;
  if DabData.quAccEssFEditTag.value=1 then
    spRadEdit.Enabled:=True
  else
   spRadEdit.Enabled:=false;
  if DabData.quAccEssFDelTag.value=1 then
    spRadDel.Enabled:=True
  else
   spRadDel.Enabled:=false;
  if DabData.quAccEssFPrintTag.value=1 then
    spRadPrint.Enabled:=True
  else
    spRadPrint.Enabled:=false;
  if DabData.quAccEssFRunTag.value=1 then
    spRadRun.Enabled:=True
  else
    spRadRun.Enabled:=false;
end;

procedure TRadMFrm.AnswerToAll(var mes :TMessage);
begin
 if(ActiveMDIChild <> nil) then
    ActiveMDIChild.Dispatch(Mes);
end;


procedure TRadMFrm.N918Click(Sender: TObject);
begin
  Close;
end;
Function TRadMFrm.ExitSys:Boolean;
var ss :string;
    dd :boolean;
begin
 if Verify=nil then
   Verify:=TVerify.Create(Application);
 ss:=Verify.lbRemark.caption;
 Verify.lbRemark.caption:='¬Ì« «“ ”Ì” „ Œ«—Ã „Ì‘ÊÌœø  ';
 Verify.showmodal;
 Verify.lbRemark.caption:=ss;
 if Verify.modalResult=mrOk then
  begin
     RadTimeDisplay.Enabled:=false;
     dd:=true;
  end
 else
  dd:=false;
  Verify.Free;
  Verify:=nil;
  ExitSys:=dd;
end;

procedure TRadMFrm.SetRight(Mnu:string;GetMes:integer);
begin
  if GetMes=0 then
   begin
     while not DabData.quAccEssF.Eof do
       begin
         if DabData.quAccEssFExTag.value=1 then
           SetComp(DabData.quAccEssFmnum.value, true)
         else
           SetComp(DabData.quAccEssFmnum.value, false);
        DabData.quAccEssF.Next;
       end;
      spRadNew.enabled:=false;
      spRadEdit.enabled:=false;
      spRadDel.enabled:=false;
      spRadSearch.Enabled:=False;
      spRadPrint.enabled:=false;
      spRadRun.enabled:=false;
   end
  else
  begin
    spRadSearch.Enabled:=True;
    SetAccess(Mnu);
  end;
end;
procedure TRadMFrm.RunDef;
begin
end;

procedure TRadMFrm.spRadPrintClick(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=F_PRINT;
   DispatchMessageToActiveFrom(ActiveMdiChild,mes);
   exit;
end;

procedure TRadMFrm.FormDestroy(Sender: TObject);
begin
 RadTimeDisplay.Enabled:=false;
 Screen.OnActiveFormChange:=nil;
end;

procedure TRadMFrm.GetAccess;
var i   :integer;
 begin
  ArShad:=true;
  for i:=1 to ComponentCount-1 do
    if Components[i] is TMenuItem then TMenuItem(Components[i]).Enabled:=True;
 end;
procedure TRadMFrm.N901Click(Sender: TObject);
begin
{  scrollform:=Tscrollform.Create(Application);
     LastMenuCliked:=TMenuItem(Sender).Name;
  scrollform.Showmodal;
  scrollform.Free;}
end;

procedure TRadMFrm.N902Click(Sender: TObject);
begin
  //\\RunForm(THTMLHelp,sender,HTMLHelp);
end;

procedure TRadMFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (ExitSys) then
     CanClose:=true
  else
     CanClose:=False;
end;

{procedure TMFrm.spN17Click(Sender: TObject);
begin
   N17Click(nil);
end;}

procedure TRadMFrm.N905Click(Sender: TObject);
begin
  RunForm(TSciCalcForm,Sender,SciCalcForm);
end;

procedure TRadMFrm.DispatchMessageToActiveFrom(ActiveForm: TForm;
  var Msg: TMessage);
begin
  if ActiveForm = nil then exit;
  case Msg.Msg of
    F_NEW:AddLog(tempIns);
    F_EDIT:AddLog(tempEdt);
    F_DEL:AddLog(tempDel);
  end;
  ActiveForm.Dispatch(Msg);
end;

procedure TRadMFrm.btFillMenuesClick(Sender: TObject);
begin
 ShowAlertMessage(' ⁄œ«œ „‰ÊÂ«Ì «÷«›Â ‘œÂ Ê ÃœÌœ'+IntToStr(FillMenues(Menu,StrToInt(GetProductInformation('syscode')))),1);
end;


procedure TRadMFrm.RadApplicationEventsException(Sender: TObject; E: Exception);
var
  x:Cardinal;
  msgError:String;
begin
  x:=0;
  if(Pos('Connection',e.Message)>0) then
  begin
    ShowMessage('œ” Ê— Œ—ÊÃ «“ »—‰«„Â  Ê”ÿ ﬂ«—»— «’·Ì »—«Ì ‘„«');
    ExitProcess(x);
  end
  else if(Pos('Access violation',e.Message)>0) then
  begin
    msgError:='Œÿ«Ì œ” —”Ì »Â Õ«›ŸÂ œ— '+Copy(e.Message,29,8);
    msgError:=StringReplace(tempExcp,'%Message%',msgError,[]);
    msgError:=StringReplace(msgError,'%Name%',' “Ì— ',[]);
    msgError:=StringReplace(msgError,'%Caption%',' “Ì— ',[]);
    AddLog(msgError);
  end
  else
  begin
    if(Pos('start more transaction',e.Message)>0) then
    begin
      DabData.ADOC.CommitTrans;
    end;
    msgError:=StringReplace(tempExcp,'%Message%',e.Message,[]);
    msgError:=StringReplace(msgError,'%Name%',' “Ì— ',[]);
    msgError:=StringReplace(msgError,'%Caption%',' “Ì— ',[]);
    DabData.ShowPopupMessageSmall(msgError);
  end;
end;

procedure TRadMFrm.RadApplicationEventsMessage(var Msg: tagMSG;var Handled: Boolean);
var
  mes : Tmessage;
  ClassName:PChar;
begin
 If(Msg.message=WM_KEYDOWN) Then
 begin
//   DabData.ShowPopupMessageSmall();
   ClassName:=AllocMem(101);
   GetClassName(Msg.hwnd,ClassName,100);
   if  Msg.wParam=116 then
      refreshActiveForm
   else if(Pos('Grid',ClassName)<>0) then
     case Msg.wParam of
       107://'+'
         if(spRadNew.Enabled=True) then
         begin
             Mes.Msg:= F_NEW;
             DispatchMessageToActiveFrom(ActiveMdiChild,Mes);
         end;
       109://'-'
         if(spRadDel.Enabled=True) then
         begin
             Mes.Msg:= F_DEL;
             DispatchMessageToActiveFrom(ActiveMdiChild,Mes);
         end;
       106://'*'
         if(spRadEdit.Enabled=True) then
         begin
             Mes.Msg:= F_EDIT;
             DispatchMessageToActiveFrom(ActiveMdiChild,Mes);
         end;
     end;
    SysFreeMem(ClassName);
 end;
end;


procedure TRadMFrm.btFillHelpClick(Sender: TObject);
begin
  CreateHelpFile(Menu);
end;

procedure TRadMFrm.N907Click(Sender: TObject);
begin
 RunForm(TPassChanger,Sender,PassChanger);
end;

procedure TRadMFrm.N906Click(Sender: TObject);
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
procedure TRadMFrm.RunForm(Cform :TRadFormClass;Sender:TObject;var fromPtr);
var
  MenuIniFile:TIniFile;
  i:Integer;
begin

  if(Not(ChkChild(CForm))) then
  begin
    if(Sender<>nil) and (Cform<>THtmlHelp)  then
       LastMenuCliked:=TMenuItem(Sender).Name;
    TRadForm(fromPtr):=CForm.Create(RadMFrm);
    TRadForm(fromPtr).show;
    if Not(RadAddCommand.Enabled) then
    begin
       i:=1;
       MenuIniFile:=TIniFile.Create(fullCmdPath);
       while MenuIniFile.ReadString('Menu',IntToStr(i),'')<>'' do
          inc(i);
       MenuIniFile.WriteString('Menu',IntToStr(i),LastMenuCliked);
       RadAddCommand.Enabled:=True;
       loadCommand;
    end;
  end;
end;


procedure TRadMFrm.N908Click(Sender: TObject);
begin
  RunForm(TLogView,Sender,LogView);
end;

procedure TRadMFrm.N909Click(Sender: TObject);
begin
  RunForm(TActiveUser,Sender,ActiveUser);
end;

procedure TRadMFrm.refreshActiveForm;
var
  tmpSource:TDataSource;
  tmpQuery: TADOQuery;
begin
   tmpSource:=GetFirstDataSoure(TForm(Screen.ActiveCustomForm));
   if  tmpSource<>nil then
   begin
     TmpQuery:=TAdoQuery(tmpSource.DataSet);
     if tmpQuery<>nil then
     begin
       tmpQuery.Close;
       tmpQuery.Open;
     end;
   end;
end;
procedure TRadMFrm.OnActiveFormChange(Sender: TObject);
var tmpString:String;
    tmpForm:TForm;
begin
  if Not(FormFirstShowed) then
    FormShow(sender);
  if sender=nil then Sender:=spRadSetForm;
  tmpForm:=Screen.ActiveForm;
  if tmpForm<>nil then
  begin
    if tmpForm is TRadForm then
      SetRight(TRadForm(tmpForm).FormID,1)
    else
      SetRight('-1',0);
    if (trim(tmpForm.Caption)<>'') and (Pos('”Ì” „ «„Ê«· Ê «‰»«—',tmpForm.Caption)=0) then
    begin
      if (prvActivated<>tmpForm.Name) or (Sender.ClassName='TToolButton') then
      begin
        prvActivated:=tmpForm.Name;
        tmpString:=StringReplace(tempForm,'%Caption%',trim(tmpForm.Caption),[]);
        tmpString:=StringReplace(tmpString,'%Name%',tmpForm.Name,[]);
        AddLog(tmpString);
        if  tmpForm.FormStyle=fsMDIChild then
          if ({( DabData.SysVersion>4) and }(tmpForm.Left<5)) then
          begin
            tmpForm.Height:=ClientHeight-54;// tmpForm.Height-GetSystemMetrics(SM_CYSIZE)+10 ;
            tmpForm.Width:=ClientWidth-5;// tmpForm.Height-GetSystemMetrics(SM_CYSIZE)+10 ;
            tmpForm.Left:=0;
            tmpForm.Top:=0;
          end;
      end;
    end;
  end;
end;
procedure TRadMFrm.N913Click(Sender: TObject);
begin
  RunForm(TSetting,Sender,Setting);
end;

procedure TRadMFrm.spRadSearchClick(Sender: TObject);
var mes :TMessage;
begin
  if TToolButton(Sender).ImageIndex=17 then
  begin
    mes.Msg:=F_SEARCH;
    Mes.WParam:=1;
    DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  end
  else
  begin
    mes.Msg:=F_SEARCH;
    Mes.WParam:=2;
    DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  end;
end;

procedure TRadMFrm.N915Click(Sender: TObject);
begin
  inherited;
  RunForm(TParametersFrm,Sender,ParametersFrm);
end;

procedure TRadMFrm.RadAddCommandClick(Sender: TObject);
begin
  inherited;
  RadAddCommand.Enabled:=False;
end;
procedure TRadMFrm.loadCommand;
var
 MenuC:TiniFile;
 i:Integer;
 tmpC:String;
 tmpB:TfcImageBtn;
 tmpM:TMenuItem;
 FontName:String;
 FontSize:Integer;
 CoolSize:Integer;
begin
  MenuC:=TIniFile.Create(fullCmdPath);
  FontSize:=MenuC.ReadInteger('Optional','FontSize',-1);
  CoolSize:=MenuC.ReadInteger('Optional','CoolSize',-1);
  FontName:=MenuC.ReadString('Optional','FontName','Tahoma');
  if FontSize=-1 then
  begin
  	MenuC.WriteString('Optional','FontSize','6');
  	MenuC.WriteString('Optional','FontName','Tahoma');
     FontSize:=8;
  end;
  for i:=1 to 9 do
  begin
    tmpC:= MenuC.ReadString('Menu',IntToStr(i),'');
    if tmpC<>'' then
    begin
     tmpM:=TMenuItem(FindComponent(tmpC));
     if tmpM<>nil then
     begin
       tmpB:=TfcImageBtn.Create(RadOptionsPanel);
       tmpB.Image.LoadFromBitmap(tempImage.Picture.Bitmap);
       tmpB.Parent:=RadOptionsPanel;
       tmpB.Left:=RadAddCommand.Left;
       tmpB.Top:=RadAddCommand.Top+i*RadAddCommand.Height;
       tmpB.Caption:=tmpM.Caption;
       tmpB.Width:=RadAddCommand.Width;
       tmpB.Hint:=tmpM.Parent.Caption+'->'+tmpM.Caption;
       tmpB.ParentFont:=False;
       tmpB.Font.Size:=FontSize;
       tmpB.Font.Name:=FontName;
       tmpB.ShowHint:=True;
       tmpB.OnClick:=tmpM.OnClick;
       tmpB.OnMouseMove:=RadAddCommandMouseMove;
     end;
    end;

  end;
  MenuC.Free;
end;

procedure TRadMFrm.RadOptionsPanelMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  with (Sender as TantMovablePanel) do
   begin
     if Not(MovingNow) then
       if ToDirection
          then UndoMove
   end;{with Sender do}

end;

procedure TRadMFrm.RadOptionsPanelMoveEnd(Sender: TObject);
begin
  inherited;
 // MoveImposibale
end;

procedure TRadMFrm.N940Click(Sender: TObject);
var
 MenuIni:TIniFile;
begin
  inherited;
  MenuIni:=TIniFile.Create(fullCmdPath);
  MenuIni.EraseSection('Menu');
  MenuIni.Free;
//  OptionsPanel.Destroy;
end;

procedure TRadMFrm.RadAddCommandMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  MouseInComObjCoolBar:=True;
end;

procedure TRadMFrm.N941Click(Sender: TObject);
var
 MenuC:TiniFile;
begin
  inherited;
  if DabData.FontDialog1.Execute then
  begin
     MenuC:=TIniFile.Create(fullCmdPath);
     MenuC.WriteString('Optional','FontSize',IntToStr(DabData.FontDialog1.Font.Size));
     MenuC.WriteString('Optional','FontName',DabData.FontDialog1.Font.Name);
     MenuC.Free;
     loadCommand;
  end;
end;

procedure TRadMFrm.N942Click(Sender: TObject);
var
 MenuC:TiniFile;
 CoolSize:Integer;
begin
  inherited;
  MenuC:=TIniFile.Create(fullCmdPath);
  CoolSize:=MenuC.ReadInteger('Optional','CoolSize',120);
  CoolSize:=StrToInt(ShowInputDialog('«‰œ«“Â','«‰œ«“Â',IntToStr(CoolSize)));
  MenuC.WriteString('Optional','CoolSize',IntToStr(CoolSize));
  MenuC.Free;
  loadCommand;
end;

procedure TRadMFrm.RadDesignChengerClick(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=F_DESIGN;
   DispatchMessageToActiveFrom(ActiveMdiChild,mes);
//   CustomizeDlg1.Show;
   exit;
end;

procedure TRadMFrm.N916Click(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=F_DESIGN;
   DispatchMessageToActiveFrom(ActiveMdiChild,mes);
   exit;
end;

procedure TRadMFrm.spRadHintClick(Sender: TObject);
begin
  inherited;
  if RadDanHint.HintActive then
  begin
     spRadHint.Down:=False;
     RadDanHint.HintActive:=False;
     WriteIntoIniFile('Mode','Hint','False');
  end
  else
  begin
     spRadHint.Down:=True;
     RadDanHint.HintActive:=True;
     WriteIntoIniFile('Mode','Hint','True');
  end;
end;

procedure TRadMFrm.RadApplicationEventsMinimize(Sender: TObject);
begin
  inherited;
  //Visible:=Not(Visible);
end;

procedure TRadMFrm.N914Click(Sender: TObject);
begin
  inherited;
  RunForm(TPrintSetting,Sender,PrintSetting);
end;

procedure TRadMFrm.spRadSetFormClick(Sender: TObject);
begin
  inherited;
  Screen.ActiveForm.Left:=0;
  Screen.ActiveForm.Top:=0;
  OnActiveFormChange(Sender);
end;

procedure TRadMFrm.RadStatusBarClick(Sender: TObject);
begin
  inherited;
  if RadStatusBar.Panels[0].Bevel=pbLowered then
  begin
    RadStatusBar.Panels[0].Text:='«‰ê·Ì”Ì(En)';
    RadStatusBar.Panels[0].Bevel:=pbRaised;
    RadStatusBar.Panels[0].Color:=clBtnFace;
    if DabData.SysVersion > 4 then
      Application.BiDiKeyboard:='00000429'
    else
      Application.BiDiKeyboard:='00000401';
  end
  else
  begin
    RadStatusBar.Panels[0].Text:='›«—”Ì(Fa)';
    RadStatusBar.Panels[0].Bevel:=pbLowered;
    RadStatusBar.Panels[0].Color:=clWhite;
    Application.BiDiKeyboard:='00000409'  ;
  end

end;

procedure TRadMFrm.HideCoolBarClick(Sender: TObject);
begin
  inherited;
   RadOptionsPanel.Visible:=Not(RadOptionsPanel.Visible);
end;
procedure TRadMFrm.DoCalc(var Mes : TMessage);
begin
  if Mes.LParam=0 then
    RunForm(TCalculatorForm,nil,CalculatorForm)
  else
    RunForm(TSciCalcForm,nil,SciCalcForm);
end;

procedure TRadMFrm.RxRadTrayIconClick(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //WindowState:=wsMaximized;
  //Visible:=True;
end;

procedure TRadMFrm.N904Click(Sender: TObject);
begin
  inherited;
  RunForm(TNote,FindComponent('N904'),Note);
end;
procedure TRadMFrm.AnserToDeAct(var mes :TMessage);
begin
  OnActiveFormChange(nil);
end;

procedure TRadMFrm.N4Click(Sender: TObject);
begin
  inherited;
  RunForm(TAppUpdater,FindComponent('N4'),AppUpdater);
end;

procedure TRadMFrm.DBAdvGrid1Click(Sender: TObject);
begin
  inherited;
  AdvPopupMenu1.Popup(Mouse.CursorPos);
end;

procedure TRadMFrm.N1111Click(Sender: TObject);
begin
  inherited;
  RunForm(TSendMessage,Sender,SendMessage);
  SendMessage.quActiveUserspid := quActiveUserspid.AsString;
  SendMessage.EllipsLabel2.Caption := quActiveUserFLName.Value;
end;

end.

