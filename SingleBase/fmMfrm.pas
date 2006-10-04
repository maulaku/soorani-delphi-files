unit fmMfrm;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls,DBCtrls, ComCtrls,iniFiles,
  Buttons, ToolWin,DB,DBTables, StdCtrls, FileCtrl,define, MPlayer,comobj,OleCtnrs,
  ImgList, jpeg, MDIWallp, RadSecurity, XPMenu, BaseFrm;
type
  TMFrm = class(TBaseForm)
    TimeDisplay: TTimer;
    Panel2: TPanel;
    paSal: TPanel;
    paTar: TPanel;
    paTime: TPanel;
    Panel1: TPanel;
    lbFamil: TLabel;
    lbName: TLabel;
    spFe: TSpeedButton;
    MainMenu1: TMainMenu;
    N9: TMenuItem;
    N15: TMenuItem;
    N1: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N8: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    ToolBar1: TToolBar;
    Panel3: TPanel;
    sprun: TToolButton;
    spprint: TToolButton;
    ToolButton9: TToolButton;
    spdel: TToolButton;
    spedit: TToolButton;
    spnew: TToolButton;
    Panel4: TPanel;
    ImageList1: TImageList;
    XPMenu1: TXPMenu;
    N6: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spNewClick(Sender: TObject);
    procedure spEditClick(Sender: TObject);

    procedure N15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimeDisplayTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spRunClick(Sender: TObject);
    procedure spDelClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure spPrintClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure spFeClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure spSearchClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);


  private
   ArShad,Cc,Vex                                    :Boolean;
   Que                                              :Array[1.. 20] of integer;
   CntQ,CntChkNote   :integer;
   procedure Initial;
  public
   procedure GetAccess;
   procedure SetAccess(Mnitem:string);
   Function  ChkChild(Cform :TformClass):Boolean;
   procedure SetComp(CmpName:string;mde :boolean);
   procedure SetRight(Mnu:string;GetMes:integer);
   Function  ExitSys:Boolean;
    { Private declarations }
  protected
    procedure AnserToState(var mes :TMessage);message FORM_STATE;
    procedure AnserToDeAct(var mes :TMessage);message FORM_DEACT;
    procedure Answer_To_F_Scroll(var Mes : TMessage); message F_SCROLL;
   public
    tag,ic,tag1,ic1,vtag,Dtag :integer;
    TmpC,TmpT :integer;
    MorGen    :string;
    Abend     :string;
    ss        :string;
    empno:string;
    LastMenuCliked :String;
    { Public declarations }

  end;

var
  MFrm : TMFrm;

implementation

uses  DabDmdle,
  fmUserD,fmUsrdef , fmPScr, fmCrl,//fmListF,
//  fmMesg,fmMoAr,
  fmElam, //fmBack,
  fmTatil,//fmNDisp,
  fmRnama, fmNote,
  Calc, fmuserm, fmopform, UnFillMenu, ReUser, fmemp, fmOrganization,
  fmCourse, fmJob, fmdegree, fmcnty;//, FmTv;


{$R *.DFM}
procedure TMFrm.Answer_To_F_Scroll(var Mes : TMessage);
begin

//----------------------------------------By Mahdy Merry :BEGIN ----------------
    if( ActiveMdiChild <> nil ) then ActiveMdiChild.Dispatch(Mes) ;
//----------------------------------------By Mahdy Merry :END ------------------
end;

procedure TMFrm.AnserToDeAct(var mes :TMessage);
begin
  if CntQ>1 then
  begin
   CntQ:=CntQ-2;
   mes.Msg:=FORM_STATE;
   mes.Lparam:=Que[CntQ];
  end
  else
  begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=0;
  end;
  Dispatch(mes);
end;

procedure TMFrm.AnserToState(var mes :TMessage);
begin
if Not ArShad then
 begin
  if  mes.LParam=0 then
    SetRight('',mes.LParam)
  else
    SetRight('N'+inttostr(mes.LParam),mes.LParam);
 end;

{ if ActiveMDIChild<>Nil then
   RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);}
end;

procedure TMFrm.FormActivate(Sender: TObject);
begin
  tag:=0;
  ic:=1;
  tag1:=0;
  ic1:=1;
  vtag:=0;
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
      MdiChildren[i].BringToFront;
      break;
     end;
 ChkChild:=flg;
end;

procedure TMFrm.FormShow(Sender: TObject);
 var mes       :TMessage;
begin
  paSal.Caption:=inttostr(DabData.SalVar)+'  :”‹‹«·';
  initial;
  lbName.caption:=trim(DabData.Fname);
  lbFamil.caption:=trim(DabData.Lname);
  DabData.quAccEssF.Close;
  DabData.quAccEssF.parameters[0].value:=DabData.LetCd;
  DabData.quAccEssF.parameters[1].value:=9;
  DabData.quAccEssF.Open;
  if ss='sima4490' then GetAccess;
  mes.Msg:=FORM_STATE;
  mes.Lparam:=0;
  Dispatch(mes);
  Dtag:=0;
  TimeDisplay.Enabled :=true;
  Cc:=false;
  Vex:=false;
end;

procedure TMFrm.spNewClick(Sender: TObject);
Var
mes :TMessage;
begin
    mes.Msg:=F_NEW;
    if( ActiveMdiChild <> nil) then
       begin
//        RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);
        ActiveMdiChild.Dispatch(mes);
       end;

end;
procedure TMFrm.spEditClick(Sender: TObject);
var mes :TMessage;
begin
    mes.Msg:=F_EDIT;
    if(ActiveMdiChild <> nil) then
     begin
//        RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);
        ActiveMdiChild.Dispatch(mes);
       end;


end;

procedure TMFrm.FormCreate(Sender: TObject);
begin
  Application.HintColor:=clyellow;
  ArShad:=True;
  CntQ:=1;
  CntChkNote:=0;
  paTar.caption:=DabData.disp_date;
  paTime.caption:=TimeToStr(Time);
end;
procedure TMFrm.SetComp(CmpName:string;mde :boolean);
var cc:string;
begin
 if FindComponent(CmpName) is TmenuItem then TmenuItem(FindComponent(CmpName)).Enabled:=mde;
 cc:='sp'+CmpName;
 if FindComponent(cc) is TSPeedButton then TSPeedButton(FindComponent(cc)).Enabled:=mde;
end;

procedure TMFrm.TimeDisplayTimer(Sender: TObject);
begin
  paTime.caption:=TimeToStr(Time);
end;

procedure TMFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=cafree;

end;

procedure TMFrm.spRunClick(Sender: TObject);
var mes:TMessage;
begin
 mes.MSg:=RUN_CMD;
    if(ActiveMdiChild <> nil) then
    begin
//        RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);
        ActiveMdiChild.Dispatch(mes);
    end;


end;

procedure TMFrm.spDelClick(Sender: TObject);
var mes:TMessage;
begin
    mes.Msg:=F_DEL;
    if(ActiveMdiChild <> nil) then
    begin
//        RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);
        ActiveMdiChild.Dispatch(mes);
    end;

end;

procedure TMFrm.SetAccess(Mnitem:string);
begin
  dabdata.quaccessf.locate('Mnum',mnitem,[]);
  if DabData.quAccEssFNewTag.value=1 then
    spNew.Enabled:=True
  else
   spNew.Enabled:=false;
  if DabData.quAccEssFEditTag.value=1 then
    spEdit.Enabled:=True
  else
   spEdit.Enabled:=false;
  if DabData.quAccEssFDelTag.value=1 then
    spDel.Enabled:=True
  else
   spDel.Enabled:=false;
  if DabData.quAccEssFPrintTag.value=1 then
    spPrint.Enabled:=True
  else
    spPrint.Enabled:=false;
  if DabData.quAccEssFRunTag.value=1 then
    spRun.Enabled:=True
  else
    spRun.Enabled:=false;
end;

{procedure TMFrm.AnswerToAll(var mes :TMessage);
var mesOut:TMessage;
begin
  Case mes.Lparam of
     SCROLL_HOKM :begin
     //*****
                  end

  end;

end;}


procedure TMFrm.N8Click(Sender: TObject);
begin
  Close;
end;
Function TMFrm.ExitSys:Boolean;
var ss :string;
    dd :boolean;
begin
 ss:=Elam.lbstr.caption;
 Elam.lbstr.caption:='¬Ì« «“ ”Ì” „ Œ«—Ã „Ì‘ÊÌœø  ';
 Elam.showmodal;
 Elam.lbStr.caption:=ss;
 if Elam.bbOk.modalResult=mrOk then
  begin
     TimeDisplay.Enabled:=false;
     dd:=true;
  end
 else
  dd:=false;
 ExitSys:=dd;
end;
procedure TMFrm.SetRight(Mnu:string;GetMes:integer);
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
      spNew.enabled:=false;    //By Masoud Barati
      spEdit.enabled:=false;   //By Masoud Barati
      spDel.enabled:=false;    //By Masoud Barati
      spPrint.enabled:=false;
      spRun.enabled:=false;
   end
  else
    SetAccess(Mnu);
  Que[CntQ]:=GetMes;
  CntQ:=CntQ+1;
end;

procedure TMFrm.spPrintClick(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=F_PRINT;
    if(ActiveMdiChild <> nil) then
    begin
//        RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);
        ActiveMdiChild.Dispatch(mes);
    end;


end;

procedure TMFrm.FormDestroy(Sender: TObject);
begin
 TimeDisplay.Enabled:=false;
end;

procedure TMFrm.GetAccess;
var i   :integer;
 begin
  ArShad:=true;
  for i:=1 to ComponentCount-1 do
    if Components[i] is TMenuItem then TMenuItem(Components[i]).Enabled:=True;
 end;



procedure TMFrm.Initial;
var GenFile  :TiniFile;
begin
  GenFile:=TiniFile.Create('singleBase.ini');
  {$I-}
  GenFile.free;
end;

procedure TMFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if Vex then CanClose:=true
 else
  begin
    if (ExitSys) then
       CanClose:=true
    else
       CanClose:=False;
  end;
end;

procedure TMFrm.spFeClick(Sender: TObject);
begin
  if spFe.Down then
   begin
    Application.BiDiKeyboard:='00000401';
    spFe.caption:='›«—”Ì(Fa)';
   end
  else
   begin
    Application.BiDiKeyboard:='00000409'  ;
    spFe.caption:='«‰ê·Ì”Ì(En)';
   end;
end;



procedure TMFrm.N15Click(Sender: TObject);
begin
 if  not chkchild(TUserD) then
  begin
    UserD:=TUserD.Create(Application);
    UserD.show;
  end;
end;

procedure TMFrm.N3Click(Sender: TObject);
begin
 if  not chkchild(TUserm) then
  begin
    Userm:=TUserm.Create(Application);
    Userm.show;
  end;
end;

procedure TMFrm.N4Click(Sender: TObject);
begin
 if  not chkchild(TUserm) then
  begin
   opform:=Topform.Create(Application);
   OpForm.Show;
  end;
end;

procedure TMFrm.Button1Click(Sender: TObject);
begin
 fillmenues(mainmenu1,9);
 ShowMessage('fillmenues');
end;

procedure TMFrm.spSearchClick(Sender: TObject);
var mes:TMessage;
begin
 mes.MSg:=RUN_CMD;
    if(ActiveMdiChild <> nil) then
    begin
//        RadSecurity1.PerformMes(Mes,DabData.empno,Trim(ActiveMdiChild.Caption),DabData.Adoc.ConnectionString);
        ActiveMdiChild.Dispatch(mes);
    end;


end;


procedure TMFrm.N6Click(Sender: TObject);
begin
if  not chkchild(Temp) then
  begin
    emp:=Temp.Create(Application);
    emp.show;
  end;

end;


procedure TMFrm.N11Click(Sender: TObject);
begin
if  not chkchild(TCourse) then
  begin
    Course:=TCourse.Create(Application);
    Course.show;
  end;


end;

procedure TMFrm.N10Click(Sender: TObject);
begin
  if  not chkchild(Torganization) then
  begin
    organization:=Torganization.Create(Application);
    organization.show;
  end;
end;

procedure TMFrm.N13Click(Sender: TObject);
begin
 if  not chkchild(Tjob) then
  begin
    job:=Tjob.Create(Application);
    job.show;
  end;

end;

procedure TMFrm.N18Click(Sender: TObject);
begin
if  not chkchild(TDegre) then
  begin
    Degre:=TDegre.Create(Application);
    Degre.show;
  end;

end;

procedure TMFrm.N19Click(Sender: TObject);
begin
 if  not chkchild(TCountry) then
  begin
     country := TCountry.Create(Application);
     country.show;
  end;

end;

end.
