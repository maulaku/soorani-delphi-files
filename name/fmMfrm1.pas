{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{                                                       }
{*******************************************************}
unit fmMfrm;

interface

{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}


uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms,  Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids, Define, Buttons, ToolWin, ComCtrls, AppEvnts
  ,db,BaseFrm, RadForms, jpeg, MDIWallp, XPMenu, antMovablePanel,IniFiles;

type

  TMFrm = class(TBaseForm)
    Button1: TButton;
    ToolBar1: TToolBar;
    SpeedButton30: TSpeedButton;
    spRun: TSpeedButton;
    spSearchOff: TSpeedButton;
    spPrint: TSpeedButton;
    spPrev: TSpeedButton;
    spNext: TSpeedButton;
    spDel: TSpeedButton;
    spEdit: TSpeedButton;
    spNew: TSpeedButton;
    Panel2: TPanel;
    spFe: TSpeedButton;
    paSal: TPanel;
    paTar: TPanel;
    paTime: TPanel;
    Panel1: TPanel;
    lbFamil: TLabel;
    lbName: TLabel;
    TimeDisplay: TTimer;
    ApplicationEvents1: TApplicationEvents;
    sbOk: TSpeedButton;
    sbCancel: TSpeedButton;
    spSearchOn: TSpeedButton;
    MDIWallpaper1: TMDIWallpaper;
    XpMenu: TXPMenu;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N9: TMenuItem;
    N15: TMenuItem;
    N70: TMenuItem;
    N138: TMenuItem;
    N1: TMenuItem;
    N31: TMenuItem;
    N30: TMenuItem;
    N13: TMenuItem;
    N12: TMenuItem;
    N19: TMenuItem;
    N17: TMenuItem;
    N29: TMenuItem;
    N23: TMenuItem;
    N133: TMenuItem;
    N149: TMenuItem;
    N150: TMenuItem;
    N53: TMenuItem;
    N14: TMenuItem;
    N10: TMenuItem;
    N18: TMenuItem;
    N57: TMenuItem;
    N34: TMenuItem;
    N151: TMenuItem;
    N157: TMenuItem;
    N158: TMenuItem;
    N16: TMenuItem;
    N8: TMenuItem;
    OptionsPanel: TantMovablePanel;
    AddCommand: TBitBtn;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    spVersion: TSpeedButton;
    SpeedButton2: TSpeedButton;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure TimeDisplayTimer(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure OnActiveFormChange(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure spNewClick(Sender: TObject);
    procedure spEditClick(Sender: TObject);
    procedure spDelClick(Sender: TObject);
    procedure spNextClick(Sender: TObject);
    procedure spPrevClick(Sender: TObject);
    procedure spPrintClick(Sender: TObject);
    procedure spSearchOffClick(Sender: TObject);
    procedure sbOkClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure spFeClick(Sender: TObject);
    procedure spSearchOnClick(Sender: TObject);
    procedure spRunClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure OptionsPanelClick(Sender: TObject);
    procedure OptionsPanelMouseExit(Sender: TObject);
    procedure OptionsPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure AddCommandMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N70Click(Sender: TObject);
    procedure N138Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure RunForm(Cform :TRadFormClass;Sender:TObject;var fromPtr);
    Function  ChkChild(Cform :TformClass):Boolean;
    procedure AddCommandClick(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
  private
    { Private declarations }
    Arshad:Boolean;
   Function  ExitSys:Boolean;
   procedure loadCommand;
  public
    { Public declarations }
    LastMenuCliked:String;
    MouseInComObjCoolBar:Boolean;
    FMax :Boolean;
    First : Boolean;
    ss        :string;
   prvActivated:String;
    Property Maximum : Boolean read FMax Write FMax;
    procedure GetAccess;
  Protected
    procedure DispatchMessageToActiveFrom(ActiveForm :TForm;var Msg:TMessage);
    procedure DoShowMessage(var Mes : TMessage);message RAD_SHOWMESSAGE ;
    procedure DoFiltered(var Mes : TMessage);message RAD_FILTERED ;

//    procedure SetXpMode(var mes :TMessage);message XPMODE;
  end;

var
  MFrm: TMFrm;

implementation

uses DabDmdle, fmVerify, UCommon, fmConstParam, fmDesignShow,
  fmFormDesigner, fmUserItemRequest, fmSetting, fmDefineOrg, fmAbout, help,
  SciCalc, fmNameMain;

{$R *.DFM}


procedure TMFrm.FormCreate(Sender: TObject);
begin
  ArShad:=false;
  paTar.caption:=fDate.disp_date(DabData.ADOC);
  paTime.caption:=TimeToStr(Time);
  Screen.OnActiveControlChange:=OnActiveFormChange;
end;



procedure TMFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (ExitSys) then
     CanClose:=true
  else
     CanClose:=False;
end;

procedure TMFrm.FormShow(Sender: TObject);
 var mes       :TMessage;
begin
 inherited;
  OptionsPanel.ToDirection:=True;
  spVersion.Caption:=GetProductInformation('FileVersion');
  spVersion.Hint:=GetProductInformation('FileVersion');
  paSal.Caption:=inttostr(DabData.SalVar)+'  :”‹‹«·';
  lbName.caption:=trim(DabData.Fname);
  lbFamil.caption:=trim(DabData.Lname);
  DabData.quAccEssF.Close;
  DabData.quAccEssF.parameters[0].value:=DabData.LetCd;
  DabData.quAccEssF.parameters[1].value:=3;
  DabData.quAccEssF.Open;
  if ss='bah4490' then GetAccess;
  mes.Msg:=FORM_STATE;
  mes.Lparam:=0;
  Dispatch(mes);
  TimeDisplay.Enabled :=true;
  SpeedButton30.Width := MFrm.Width - 360 ;
  patime.Left := mfrm.Width - 480 ;
  patar.Left := patime.Left + 95 ;
  pasal.Left := patar.Left + 96 ;
  panel1.Left := pasal.Left + 99 ;
end;
Function TMFrm.ExitSys:Boolean;
var
    dd :boolean;
begin
 if Verify=nil then
    Verify:=TVerify.Create(Self);
 Verify.lbRemark.Caption:='¬Ì« «“ ”Ì” „ Œ«—Ã „Ì ‘ÊÌœø  ';
 Verify.Caption:='Œ—ÊÃ';
 Verify.Width:=300;
  if Verify.ShowModal=mrOk then
  begin
     TimeDisplay.Enabled:=false;
     dd:=true;
  end
 else
  dd:=false;
 Verify.Free;
 Verify:=nil;
 ExitSys:=dd;
end;
procedure TMFrm.GetAccess;
var i   :integer;
 begin
  ArShad:=true;
  for i:=1 to ComponentCount-1 do
    if Components[i] is TMenuItem then TMenuItem(Components[i]).Enabled:=True;
 end;

procedure TMFrm.TimeDisplayTimer(Sender: TObject);
begin
  paTime.caption:=TimeToStr(Time);
end;

procedure TMFrm.spNewClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_NEW;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;

end;
procedure TMFrm.spSearchOffClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_SEARCH;
  Mes.WParam:=1;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
end;
procedure TMFrm.spSearchOnClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_SEARCH;
  Mes.WParam:=2;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
end;
procedure TMFrm.spPrintClick(Sender: TObject);
var mes :TMessage;
begin
  inherited;
  mes.Msg:=F_PRint;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;

end;
procedure TMFrm.spRunClick(Sender: TObject);
var mes :TMessage;
begin
  inherited;
  mes.Msg:=Run_CMD;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;

end;
procedure TMFrm.spNextClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_NEXT;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;
procedure TMFrm.spPrevClick(Sender: TObject);
var mes :TMessage;
begin
  mes.Msg:=F_PRV;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;
procedure TMFrm.spEditClick(Sender: TObject);
var mes :TMessage;
begin
  inherited;
  mes.Msg:=F_EDIT;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;
procedure TMFrm.spDelClick(Sender: TObject);
var mes :TMessage;
begin
  inherited;
  mes.Msg:=F_DEL;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;
procedure TMFrm.sbOkClick(Sender: TObject);
var mes :TMessage;
begin
  inherited;
  mes.Msg:=F_OK;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;
procedure TMFrm.sbCancelClick(Sender: TObject);
var mes :TMessage;
begin
  inherited;
  mes.Msg:=F_Cancel;
  DispatchMessageToActiveFrom(ActiveMdiChild,mes);
  exit;
end;
procedure TMFrm.DispatchMessageToActiveFrom(ActiveForm: TForm;
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

procedure TMFrm.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  x:Cardinal;
  msgError:String;
begin
  inherited;
  x:=0;
  if(Pos('Connection',e.Message)>0) then
  begin
    ShowMessage('œ” Ê— Œ—ÊÃ «“ »—‰«„Â  Ê”ÿ ﬂ«—»— «’·Ì »—«Ì ‘„«');
    ExitProcess(x);
  end
  else if(Pos('PRIMARY KEY',e.Message)>0) then
  begin
     DabData.ShowPopupMessage('«ÿ·«⁄« Ì —« ﬂÂ ‘„« Ê«“œ ‰„ÊœÂ «Ìœ œ«—«Ì ﬂ·Ìœ  ﬂ—«—Ì „Ì »«‘œ');
  end
  else if(Pos('Cannot insert the value NULL',e.Message)>0) then
  begin
     DabData.ShowPopupMessage('›Ì·œÂ«ÌÌ êÂ œ«—«Ì —‰ê “—œ „Ì »«‘‰œ «Ã»«—«Ò »«Ìœ Å— ‘Ê‰œ');
  end
  else if(Pos('Invalid input value',e.Message)>0) then
  begin
     DabData.ShowPopupMessage('›—„  «Ì‰ ›Ì·œ —« «‘ »«Â Ê«—œ ﬂ—œÂ «Ìœ');
  end
  else if(Pos('TABLE FOREIGN KEY',e.Message)>0) then
  begin
     DabData.ShowPopupMessage('œ«œÂ Â«Ì «Ì‰ ÃœÊ· »« ÃœÊ·Ì œÌê—Ì „— »ÿ «”  Ê·Ì œ— «ÿ·«⁄«  ‘„« —⁄«Ì  ‰ê—œÌœÂ «” ');
  end
  else
  begin
     msgError:=StringReplace(tempExcp,'%Message%',e.Message,[]);
     msgError:=StringReplace(msgError,'%Name%',' “Ì— ',[]);
     msgError:=StringReplace(msgError,'%Caption%',' “Ì— ',[]);
     DabData.ShowPopupMessageSmall(msgError);
  end


end;

procedure TMFrm.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
  mes : Tmessage;
  ClassName:PChar;
begin
 inherited;
 If(Msg.message=WM_KEYDOWN) Then
 begin
   ClassName:=AllocMem(101);
   GetClassName(Msg.hwnd,ClassName,100);
//   if  Msg.wParam=116 then
//      refreshActiveForm
   if(Pos('Grid',ClassName)<>0) then
     case Msg.wParam of
       107://'+'
         if(spNew.Enabled=True) then
         begin
             Mes.Msg:= F_NEW;
             DispatchMessageToActiveFrom(ActiveMdiChild,Mes);
         end;
       109://'-'
         if(spDel.Enabled=True) then
         begin
             Mes.Msg:= F_DEL;
             DispatchMessageToActiveFrom(ActiveMdiChild,Mes);
         end;
       106://'*'
         if(spEdit.Enabled=True) then
         begin
             Mes.Msg:= F_EDIT;
             DispatchMessageToActiveFrom(ActiveMdiChild,Mes);
         end;
     end;
    SysFreeMem(ClassName);
 end
end;
procedure TMFrm.OnActiveFormChange(Sender: TObject);
var tmpString:String;
    tmpForm:TForm;
begin
  tmpForm:=Screen.ActiveForm;
  if tmpForm<>nil then
  begin
    if (trim(tmpForm.Caption)<>'') and (Pos('”Ì” „ «„Ê«· Ê «‰»«—',tmpForm.Caption)=0) then
    begin
      if prvActivated<>tmpForm.Name then
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

procedure TMFrm.DoShowMessage(var Mes : TMessage);
begin
   if DabData<>nil then
     if Mes.LParam=0 then
        DabData.ShowPopupMessageSmall(String(Mes.wParam))
     else
        DabData.ShowPopupMessage(String(Mes.wParam))
   else
     ShowMessage(String(Mes.wParam));
end;
procedure TMFrm.DoFiltered(var Mes: TMessage);
begin
  if Mes.WParam=1 then
  begin
    spSearchOff.Visible:=True;
    spSearchOn.Visible:=False;
    spSearchOff.Width:=spSearchOn.Width;
    spSearchOn.Width:=0;

  end
  else
  begin
    spSearchOff.Visible:=False;
    spSearchOn.Visible:=True;
    spSearchOn.Width:=spSearchOff.Width;
    spSearchOff.Width:=0;
  end
end;

procedure TMFrm.spFeClick(Sender: TObject);
Var
  dwVersion :DWORD;
begin
//  ShowMessage(IntToStr(GetWin32sInfo(1));
//  dwVersion:=GetVersion();
//  ShowMessage(IntToStr(LOBYTE(LOWORD(dwVersion))));
  if spFe.Down then
   begin
    if DabData.SysVersion > 4 then
      Application.BiDiKeyboard:='00000429'
    else
      Application.BiDiKeyboard:='00000401';
    spFe.caption:='›«—”Ì(Fa)';
   end
  else
   begin
    Application.BiDiKeyboard:='00000409'  ;
    spFe.caption:='«‰ê·Ì”Ì(En)';
   end;
end;
procedure TMFrm.FormResize(Sender: TObject);
begin
  inherited;
  SpeedButton30.Width := MFrm.Width - 230 ;
  patime.Left := mfrm.Width - 480 ;
  patar.Left := patime.Left + 95 ;
  pasal.Left := patar.Left + 96 ;
  panel1.Left := pasal.Left + 99 ;
end;

procedure TMFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OptionsPanel.ToDirection
  then OptionsPanel.UnDoMove
  else OptionsPanel.DoMove;
end;

procedure TMFrm.OptionsPanelClick(Sender: TObject);
begin
  inherited;
  if OptionsPanel.ToDirection
  then OptionsPanel.UnDoMove
  else OptionsPanel.DoMove;
end;

procedure TMFrm.OptionsPanelMouseExit(Sender: TObject);
begin
  inherited;
  if Not(MouseInComObjCoolBar) then
  begin
    if Not OptionsPanel.ToDirection
       then OptionsPanel.DoMove
  end
  else
    MouseInComObjCoolBar:=False;
end;

procedure TMFrm.OptionsPanelMouseMove(Sender: TObject; Shift: TShiftState;
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

procedure TMFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if RadDanHint.HintActive then
  begin
     SpeedButton2.Down:=False;
     RadDanHint.HintActive:=False;
     WriteIntoIniFile('Mode','Hint','False');
  end
  else
  begin
     SpeedButton2.Down:=True;
     RadDanHint.HintActive:=True;
     WriteIntoIniFile('Mode','Hint','True');
  end;
end;

procedure TMFrm.AddCommandMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  MouseInComObjCoolBar:=True;
end;

procedure TMFrm.N70Click(Sender: TObject);
begin
  inherited;
  RunForm(TFormDesigner,Sender,FormDesigner);
end;

procedure TMFrm.N138Click(Sender: TObject);
begin
  inherited;
 RunForm(TDesignShow,Sender,DesignShow);
end;

procedure TMFrm.N5Click(Sender: TObject);
begin
  inherited;
  UserItemRequest:=TUserItemRequest.Create(Application);
  UserItemRequest.Show;
end;

procedure TMFrm.N34Click(Sender: TObject);
begin
  inherited;
  RunForm(TSetting,Sender,Setting);
end;
procedure TMFrm.RunForm(Cform :TRadFormClass;Sender:TObject;var fromPtr);
var
  MenuIniFile:TIniFile;
  i:Integer;
begin

  if(Not(ChkChild(CForm))) then
  begin
    if(Sender<>nil)  then
       LastMenuCliked:=TMenuItem(Sender).Name;
    TRadForm(fromPtr):=CForm.Create(MFrm);
    TRadForm(fromPtr).show;
    if Not(AddCommand.Enabled) then
    begin
       i:=1;
       MenuIniFile:=TIniFile.Create('AmvalCommand.ini');
       while MenuIniFile.ReadString('Menu',IntToStr(i),'')<>'' do
          inc(i);
       MenuIniFile.WriteString('Menu',IntToStr(i),LastMenuCliked);
       AddCommand.Enabled:=True;
       loadCommand;
    end;
  end;
end;
Function TMFrm.ChkChild(Cform :TformClass):Boolean;
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
procedure TMFrm.loadCommand;
var
 MenuC:TiniFile;
 i:Integer;
 tmpC:String;
 tmpB:TButton;
 tmpM:TMenuItem;
 FontName:String;
 FontSize:Integer;
 CoolSize:Integer;
begin
  MenuC:=TIniFile.Create(GetProductInformation('ProductName')+ 'Command.ini');
  FontSize:=MenuC.ReadInteger('Optional','FontSize',-1);
  CoolSize:=MenuC.ReadInteger('Optional','CoolSize',-1);
  FontName:=MenuC.ReadString('Optional','FontName','Tahoma');
  if FontSize=-1 then
  begin
  	MenuC.WriteString('Optional','FontSize','6');
  	MenuC.WriteString('Optional','CoolSize',IntToStr(OptionsPanel.width));
  	MenuC.WriteString('Optional','FontName','Tahoma');
     FontSize:=8;
     CoolSize:=OptionsPanel.Width;
  end;
  OptionsPanel.Width:=CoolSize+8;
  OptionsPanel.MoveLength:=CoolSize;
  for i:=1 to 9 do
  begin
    tmpC:= MenuC.ReadString('Menu',IntToStr(i),'');
    if tmpC<>'' then
    begin
     tmpM:=TMenuItem(FindComponent(tmpC));
     tmpB:=TButton.Create(OptionsPanel);
     tmpB.Parent:=OptionsPanel;
     tmpB.Left:=AddCommand.Left;
     tmpB.Top:=AddCommand.Top+i*AddCommand.Height;
     tmpB.Caption:=tmpM.Caption;
     tmpB.Width:=CoolSize-10;
     tmpB.Hint:=tmpM.Parent.Caption+'->'+tmpM.Caption;
     tmpB.ParentFont:=False;
     tmpB.Font.Size:=FontSize;
     tmpB.Font.Name:=FontName;
     tmpB.ShowHint:=True;
     tmpB.OnClick:=tmpM.OnClick;
     tmpB.OnMouseMove:=AddCommandMouseMove;
    end;

  end;
  MenuC.Free;
end;

procedure TMFrm.AddCommandClick(Sender: TObject);
begin
  inherited;
  AddCommand.Enabled:=False;
end;

procedure TMFrm.N15Click(Sender: TObject);
begin
  inherited;
  RunForm(TdefineOrg,Sender,defineOrg);
end;

procedure TMFrm.N31Click(Sender: TObject);
begin
  inherited;
  RunForm(TAbout,Sender,About);
end;

procedure TMFrm.N30Click(Sender: TObject);
var
    Path : String ;
begin
  inherited;
  if (ActiveMDIChild <> nil) then
  begin
      Path := GetCurrentDir+'\help\'+      LastMenuCliked+'.htm';
      if(not ChkChild(THTMLHelp)) then
      begin
          HTMLHelp := THTMLHelp.Create(Application);
          HTMLHelp.WebBrowser1.Navigate(Path);
          HTMLHelp.Show ;
      end
      else
      begin
          HTMLHelp.WebBrowser1.Navigate(Path);
          HTMLHelp.BringToFront ;
      end;
  end
  else
  begin
      Path := GetCurrentDir+'\help\Index.htm';
      if(not ChkChild(THTMLHelp)) then
      begin
          HTMLHelp := THTMLHelp.Create(Application);
          HTMLHelp.WebBrowser1.Navigate(Path);
          HTMLHelp.Show ;
      end
      else
      begin
          HTMLHelp.BringToFront ;
      end;
  end;
  DabData.ShowPopupMessageSmall(path);

end;

procedure TMFrm.N17Click(Sender: TObject);
begin
  inherited;
  RunForm(TSciCalcForm,Sender,SciCalcForm);
end;

procedure TMFrm.N4Click(Sender: TObject);
begin
  inherited;
  RunForm(TNameMain,Sender,NameMain);

end;

end.
