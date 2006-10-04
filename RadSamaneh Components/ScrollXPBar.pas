{Created By Majid Surany Email mgso22002@yahoo.com}
unit ScrollXPBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,extctrls,grids,dbGrids,db,DBCtrls;
{$r *.res}
{$r SCImages.res}

type
  TKindMe = (meHorizontal,meVertical);
  TImageMode = (norm,move,down);

  TScrollXPBar = class(TWinControl)
  private
    FormResized:Boolean;
    SpaceConvert:TWinControl;
    Repeator:TTimer;
    FKind : TKindMe;
    FScrollSize : Integer;
    FConnect  : TWinControl;
    FColor :TColor;
    FSingle:Boolean;
    FScrollSpead:Integer;
    StepSize :Real;
    FMin : Integer;
    FTest,DownF,DownM,DownE,MouseIn,First,MeSendMessageScroll:Boolean;
    FirstPos:Integer;
//    OnResizeFormBefor: procedure(Sender: TObject) of object;
{    OnTopLeftChangedGrid: procedure(Sender: TObject) of object;
    OnTopLeftChangedDBGrid: procedure(DataSet: TDataSet) of object;}

    ConnectWindowProc: TWndMethod;
    ParentWindowProc: TWndMethod;
    FWndProc: TWndMethod;
    MWndProc: TWndMethod;
    EWndProc: TWndMethod;
    procedure WindowProcConnect(var Message: TMessage);
    procedure WindowProcParent(var Message: TMessage);
    procedure WndProc (var Message: TMessage);Override;
    procedure WndProcF (var Message: TMessage);
    procedure WndProcM (var Message: TMessage);
    procedure WndProcE (var Message: TMessage);


    procedure SetKind(Kind:TKindMe);
    procedure SetColor(Color:TColor);
    procedure SetMax(Value:Integer);
    procedure SetConnect(Connect:TWinControl) ;
    procedure SetImageMode(pos:Integer;mde:TImageMode);

    procedure SetPosit(Pos:Integer);
    function  GetPosit:Integer;

    procedure OnRepeator(Sender: TObject);
    procedure MovePos(Pos:Integer);
    procedure ScrollConnect;
    Procedure MyMsg(Msg:Integer);
    Procedure MyMsgS(Msg:String);

{    procedure GridScrolled(Sender: TObject);
    procedure DbGridScrolled(DataSet: TDataSet);}
    procedure SetImageSize(const Value: Integer);
    Procedure StepIt(value:Integer);
    function  GetImageSize: Integer;
    function  GetOneStepSize:Integer;
    function GetMax: Integer;

     { Private declarations }
  protected
    { Protected declarations }
  public
    meResizedConnect:Boolean;
    Procedure SetSize();
    Procedure SetAlign();
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  published
    ProPerty Kind:TKindMe Read FKind Write SetKind;
    ProPerty Connect :TWinControl Read FConnect Write SetConnect;
    ProPerty Max:Integer Read GetMax Write SetMax default 100;
    ProPerty Min:Integer Read FMin Write FMin default 1;
    ProPerty BGColor:TColor Read FColor Write SetColor default clInactiveCaptionText;
    ProPerty ImageSize:Integer Read GetImageSize Write SetImageSize default 30;
    ProPerty ScrollSpead:Integer Read FSCrollSpead Write FSCrollSpead default 100;
    ProPerty Test:Boolean Read FTest Write Ftest default True;
    ProPerty Single:Boolean Read FSingle Write FSingle default true;
    ProPerty ScrollSize:Integer Read FScrollSize Write FScrollSize default 15;
    ProPerty Position:Integer   Read GetPosit    Write SetPosit;

    { Published declarations }
  end;
procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('XP', [TScrollXPBar]);
end;
constructor TScrollXPBar.Create(AOwner: TComponent);
var
 ImgLeft,ImgRight,ImgMidH:TImage;
begin
  inherited;
  if(csDesigning In ComponentState) then
  begin
    FSingle:=True;;
    if(width=0) then
      width:=200;
    if(Height=0) then
    begin
      Height:=16;
      FScrollSize:=15;
    end;
    FKind:=meVertical;
    FColor:=$00FFBA75;
  end;
  FScrollSize:=15;
//  if(Self.Brush.Color=clNone) then
     FColor:=$00FFBA75;
  ImgLeft:=TImage.Create(self);
  ImgLeft.AutoSize:=true;
  ImgLeft.Align:=alLeft;
  ImgLeft.Stretch:=true;
  Self.InsertControl(ImgLeft);

  ImgMidH:=TImage.Create(self);
//  ImgMidH.AutoSize:=true;
  ImgMidH.Left:=16;
  ImgMidH.Stretch:=true;
  Self.InsertControl(ImgMidH);

  ImgRight:=TImage.Create(self);
  ImgRight.AutoSize:=true;
  ImgRight.Align:=alRight;
  ImgRight.Stretch:=true;
  Self.InsertControl(ImgRight);

  SetImageMode(0,norm);
  SetImageMode(1,norm);
  SetImageMode(2,norm);

  SetKind(meHorizontal);
  Repeator:=TTimer.Create(Self);
  Repeator.Enabled:=False;
  if(FSCrollSpead=0) then FSCrollSpead:=500;
  Repeator.Interval:=FSCrollSpead;
  Repeator.OnTimer:=OnRepeator;
  Self.OnEnter:=OnEnter;

//  OnResizeFormBefor:=TForm(Owner).OnResize;
  First:=True;

  FWndProc:=ImgLeft.WindowProc;
  MWndProc:=ImgMidH.WindowProc;
  EWndProc:=ImgRight.WindowProc;

  ImgRight.WindowProc:=WndProcE;
  ImgLeft.WindowProc:=WndProcF;
  ImgMidH.WindowProc:=WndProcM;
  ImageSize:=45;
  ParentWindowProc:=TForm(Owner).WindowProc;
  TForm(Owner).WindowProc:=WindowProcParent;

end;
procedure TScrollXPBar.SetKind(Kind:TKindMe);
var Tmp:Integer;
begin
  fKind:=Kind;
  if(Kind=meHorizontal) then
  begin
      Tmp:=width;
      if(Width =0)then Width:=200
      else Width:=Height;
      if(Height=0)then Height:=16
      else Height:=Tmp;
  end
  else
  begin
      Tmp:=width;
      if(Width =0)then Width:=16
      else Width:=Height;
      if(Height=0)then Height:=200
      else Height:=Tmp;
  end;
  if(Self.ControlCount>2) then
  begin
    if(Kind=meHorizontal) then
    begin
      if(csDesigning In ComponentState) then
      begin
        Self.Brush.Color:=clInactiveCaptionText;
      end;
      SetImageMode(0,norm);
      TImage(Self.Controls[0]).Align:=alLeft;
      SetImageMode(1,norm);
      Self.Controls[1].Left:=16;
      Self.Controls[1].Top:=0;
      Self.Controls[1].Height:=16;
      Self.Controls[1].Width:=16;
      SetImageMode(2,norm);
      TImage(Self.Controls[2]).Align:=alRight;
    end
    else
    begin
      if(csDesigning In ComponentState) then
      begin
        width:=16;
        Height:=200;
      end;
      SetImageMode(0,norm);
      TImage(Self.Controls[0]).Align:=alTop;
      SetImageMode(1,norm);
      Self.Controls[1].Top:=16;
      Self.Controls[1].Left:=0;
      Self.Controls[1].Height:=16;
      Self.Controls[1].Width:=16;
      SetImageMode(2,norm);
      TImage(Self.Controls[2]).Align:=alBottom;
    end;
  end;
end;
procedure TScrollXPBar.MovePos(Pos: Integer);
begin
  if(Kind=meHorizontal) then
  begin
    if((Self.Controls[1].width+Pos)<Self.Controls[2].Left) then
       if(Pos>Self.Controls[0].Width+Self.Controls[0].Left) then
         Self.Controls[1].Left:=Trunc(Pos)
       else
         Self.Controls[1].Left:=Self.Controls[0].Width+Self.Controls[0].Left
    else
      Self.Controls[1].Left:=Self.Controls[2].Left-Self.Controls[1].width;
  end
  else
  begin
    if((Self.Controls[1].Height+Pos)<Self.Controls[2].Top) then
       if(Pos>Self.Controls[0].Height) then
         Self.Controls[1].Top:=Trunc(Pos)
       else
         Self.Controls[1].Top:=Self.Controls[0].Height
    else
       Self.Controls[1].Top:=Self.Controls[2].Top-Self.Controls[1].Height;
  end;
end;
procedure TScrollXPBar.SetConnect(Connect:TWinControl);
var
 C:TControlCanvas;
 i,j:Integer;
begin
  meResizedConnect:=False;
  Self.Brush.Color:=FColor;
  C:=TControlCanvas.Create();
  C.Control:=Self;
  C.Brush.Color:=FColor;
  C.FillRect(Self.ClientRect);
  FConnect:=Connect;
  if(Connect <> nil) then
  begin
    ConnectWindowProc:=Connect.WindowProc;
    Connect.WindowProc:=WindowProcConnect;
  end;
{  If(Connect Is TCustomGrid) then
  begin
    if (Connect is TDBGrid) then
    begin
      if(TDBGrid(Connect).DataSource<>nil) then
        if(TDBGrid(Connect).DataSource.DataSet<>nil) then
           if(TDBGrid(Connect).DataSource.DataSet.Active<>false)   then
           begin
              OnTopLeftChangedDBGrid:=TDBGrid(Connect).DataSource.DataSet.AfterScroll;
              TDBGrid(Connect).DataSource.DataSet.AfterScroll:=DbGridScrolled
           end;
    end
    else
    begin
      OnTopLeftChangedGrid:=TStringGrid(Connect).OnTopLeftChanged;
      TStringGrid(Connect).OnTopLeftChanged:=GridScrolled;
    end;
  end;   }
  if(Not(FSingle) and (SpaceConvert=nil) and (Connect <> nil) and (Kind=meHorizontal)) then
  begin
      SpaceConvert:=TWinControl.Create(Self);
      SpaceConvert.Brush.Color:=Self.Brush.Color;
      SpaceConvert.Parent:=Self;
      SpaceConvert.Width:=FScrollSize;
      SpaceConvert.Height:=FScrollSize;
      Controls[2].Align:=alNone;
      if(Connect.BiDiMode=bdLeftToRight) then
        SpaceConvert.Align:=alRight
      else
        SpaceConvert.Align:=alLeft;
      Controls[2].Align:=alRight;
  end;
  SetSize;
  position:=1;
  if (Connect.ClassName='TStringGrid') then
    For i:=0 to TStringGrid(Connect).ColCount Do
      For j:=1 to TStringGrid(Connect).RowCount Do
        TStringGrid(Connect).Cols[i].Add('Testing'+IntToStr((i+1)*j));

end;
{procedure TScrollXPBar.GridScrolled(Sender: TObject);
begin
 if(Not(MeSendMessageScroll)) then
 begin
  if(Kind=meHorizontal) then
     Position:=TStringGrid(Connect).LeftCol
  else
     Position:=TStringGrid(Connect).TopRow;
 end
 else
   MeSendMessageScroll:=false;
 Connect.Refresh;
  if(Assigned(OnTopLeftChangedGrid)) then
    OnTopLeftChangedGrid(Sender);
end;

procedure TScrollXPBar.DbGridScrolled(DataSet: TDataSet);
begin
 if(Not(DownF or DownE)) then
 begin
    if(TDBGrid(Connect).DataSource<>nil) then
      if(TDBGrid(Connect).DataSource.DataSet<>nil) then
        if(TDBGrid(Connect).DataSource.DataSet.Active<>false)   then
            MovePos(TDBGrid(Connect).DataSource.DataSet.RecNo*GetOneStepSize);
 end;
  if(Assigned(OnTopLeftChangedDBGrid)) then
   OnTopLeftChangedDBGrid(DataSet);
end;       }

procedure TScrollXPBar.ScrollConnect;
Var
 mes:TMessage;
begin
  MeSendMessageScroll:=true;
  if(Connect is TCustomGrid)  then
  begin
    if(Kind=meHorizontal) then
    begin
      If(Connect is TStringGrid) then
         TStringGrid(Connect).LeftCol:=Position
    end
    else
    begin
      if (Connect is TDBGrid) then
      begin
        if(TDBGrid(Connect).DataSource<>nil)   then
          if(TDBGrid(Connect).DataSource.DataSet<>nil)   then
           if(TDBGrid(Connect).DataSource.DataSet.Active<>false)   then
             if(Position>0)then
               if(Position<TDBGrid(Connect).DataSource.DataSet.RecordCount) then
                  TDBGrid(Connect).DataSource.DataSet.RecNo:=Position
      end
      else
        TStringGrid(Connect).TopRow:=Position;
    end
  end
  else
  if(Kind=meHorizontal) then
  begin
      Mes.Msg:=WM_HSCROLL ;
      Mes.WParamHi:=Position;
      Mes.WParamLo:=SB_THUMBTRACK;
      Mes.LParam:=0;
      ConnectWindowProc(Mes);
  end
  else
  begin
      Mes.Msg:=WM_VSCROLL ;
      Mes.WParamHi:=Position;
      Mes.WParamLo:=SB_THUMBTRACK;
      Mes.LParam:=0;
      ConnectWindowProc(Mes);
  end;
   Connect.Refresh;
end;
procedure TScrollXPBar.SetColor(Color:TColor);
begin
 FColor:=Color;
 Self.Brush.Color:=Color;
 Self.Invalidate;
end;
procedure TScrollXPBar.OnRepeator(Sender: TObject);
begin
 if(DownF) then
 begin
  StepIt(-1);
  ScrollConnect;
 end
 else if(DownE) then
 begin
  StepIt(1);
  ScrollConnect;
 end
end;

procedure TScrollXPBar.SetMax(Value: Integer);
begin
  if(Kind=meHorizontal) then
    SetScrollRange(Connect.Handle,SB_HORZ,0,Max,True)
  else
    SetScrollRange(Connect.Handle,SB_VERT,0,Max,True);
end;

procedure TScrollXPBar.SetSize;
begin
  if(FormResized) then
     SetAlign
  else  if((Connect<>nil)) then
  begin
      if(Kind=meHorizontal) then
      begin
        Self.Left  :=Connect.Left;
        Self.Top   :=Connect.Top+Connect.Height-FScrollSize;
        Self.Width :=Connect.Width;
        Self.Height:=FScrollSize;

       end
      else
      begin
        if(Connect.BiDiMode=bdLeftToRight) then
           Self.Left  := Connect.Width+Connect.Left-FScrollSize
        else
           Self.Left  := Connect.Left;
        Self.Top:=Connect.Top;
        Self.Width :=FScrollSize;
        if(Not(FSingle)) then
          Self.Height:=Connect.Height-FScrollSize
        else
          Self.Height:=Connect.Height;
      end;
  end;
  if(SpaceConvert<>nil) then
    SpaceConvert.Align:=alRight;
end;

procedure TScrollXPBar.SetAlign;
begin
  if((Connect<>nil)) then
  begin
    meResizedConnect:=True;
    if(Self.Align=alBottom) then
       Connect.Height:=Connect.Height+FScrollSize
    else if(Self.Align=alRight) then
         Connect.Width:=Connect.Width+FScrollSize
    else if(Self.Align=alLeft) then
         Connect.Left:=Connect.Left-FScrollSize;
    FormResized:=False;
  end;
  if(SpaceConvert<>nil) then
  begin
    Controls[2].Align:=alNone;
    SpaceConvert.Align:=alRight;
    Controls[2].Align:=alRight;
  end;
end;


function TScrollXPBar.GetPosit: Integer;
var
  retVal:real;
begin
  GetOneStepSize;
  if(Kind=meHorizontal) then
      if(Connect.BiDiMode=bdLeftToRight) then
          retVal:=(Self.Controls[1].Left-Controls[0].width)/StepSize
      else
          retVal:=Max-((Self.Controls[1].Left-Controls[0].width)/StepSize)
    else
       retVal:=(Self.Controls[1].Top-Controls[0].Height)/StepSize;
  if(retVal<0) then
     GetPosit:=1
  else if(retVal>Max) then
     GetPosit:=Max
  else
     GetPosit:=Trunc(retVal);
end;

procedure TScrollXPBar.SetPosit(Pos: Integer);
begin
  if(pos<0) then
    pos:=1
  else if(pos>Max) then
    Pos:=Max;
  if(Kind=meHorizontal) then
  begin
      if(Connect.BiDiMode=bdLeftToRight) then
         MovePos(Controls[0].width+Pos*GetOneStepSize)
      else
         MovePos(Controls[0].width+(Max-Pos)*GetOneStepSize)
  end
  else
  begin
    GetOneStepSize;
    MovePos(Controls[0].Height+Trunc(Pos*StepSize));
  end;
end;

procedure TScrollXPBar.WndProc(var Message: TMessage);
var
 C:TControlCanvas;
begin
  inherited;
  Case Message.Msg of
     WM_DESTROY:
     begin
{      if(Connect is TStringGrid) then
         TStringGrid(Connect).OnTopLeftChanged:=OnTopLeftChangedGrid
      else if(Connect is TDBGrid) then
         TDBGrid(Connect).DataSource.DataSet.AfterScroll:=OnTopLeftChangedDBGrid;}
      if(Connect <> nil) then
      begin
//          Connect.WindowProc:=ConnectWindowProc
      end;
//          TForm(Owner).WindowProc:=ParentWindowProc;
     end;
     CM_MOUSEENTER:
     begin
      MouseIn:=true;
      Self.Brush.Color:=FColor;
      C:=TControlCanvas.Create();
      C.Control:=Self;
      C.Brush.Color:=clBlue;
      C.FrameRect(Self.ClientRect);
     end;
     CM_MOUSELEAVE:
     begin
      MouseIn:=false;
      Self.Brush.Color:=FColor;
      C:=TControlCanvas.Create();
      C.Control:=Self;
      C.Brush.Color:=clDkGray;
      C.FrameRect(Self.ClientRect);
     end;

     WM_MOUSEMOVE :
     begin

     end;
     WM_LBUTTONDOWN:
     begin
        Repeator.Enabled:=true;
        Repeator.Interval:=Trunc(ScrollSpead/100);
        if(Kind=meHorizontal) then
        begin
          if((Message.lParamLo<Controls[0].Left) or (Message.lParamLo>Controls[0].Left+Controls[0].Width)) then
          if((Message.lParamLo<Controls[1].Left) or (Message.lParamLo>Controls[1].Left+Controls[1].Width)) then
          if((Message.lParamLo<Controls[2].Left) or (Message.lParamLo>Controls[2].Left+Controls[2].Width)) then
           if(Message.lParamLo<Controls[1].Left) then
              DownF:=true
           else
              DownE:=true
        end
        else
        begin
          if((Message.lParamHi<Controls[0].Top) or (Message.lParamHi>Controls[0].Top+Controls[0].Height)) then
          if((Message.lParamHi<Controls[1].Top) or (Message.lParamHi>Controls[1].Top+Controls[1].Height)) then
          if((Message.lParamHi<Controls[2].Top) or (Message.lParamHi>Controls[2].Top+Controls[2].Height)) then
           if(Message.lParamHi<Controls[1].Top) then
              DownF:=true
           else
              DownE:=true
        end;
     end;
     WM_LBUTTONUP:
     begin
        Repeator.Interval:=ScrollSpead;
        Repeator.Enabled:=false;
        DownF:=false;
        DownE:=false;
     end;
     WM_PAINT:
     begin
      Self.Brush.Color:=FColor;
      C:=TControlCanvas.Create();
      C.Control:=Self;
      if(MouseIn) then
         C.Brush.Color:=clBlue
      else
         C.Brush.Color:=clDkGray;
      C.FrameRect(Self.ClientRect);
     end;
     CM_COLORCHANGED:
        Self.Brush.Color:=FColor;
     WM_CTLCOLOR:
        Self.Brush.Color:=FColor;
  end;
end;

procedure TScrollXPBar.WndProcF(var Message: TMessage);
begin
  Case  Message.Msg of
    CM_MOUSEENTER:
    begin
      MouseIn:=True;
      SetImageMode(0,move);
    end;
    CM_MOUSELEAVE:
    begin
      MouseIn:=False;
      SetImageMode(0,norm);
    end;
     WM_MOUSEMOVE :
     begin

     end;
    WM_LBUTTONDOWN:
    begin
      DownF:=true;
      StepIt(-1);
      Repeator.Enabled:=true;
      SetImageMode(0,down);
    end;
    WM_LBUTTONUP:
    begin
     DownF:=False;
     Repeator.Enabled:=false;
     SetImageMode(0,norm);
     ScrollConnect;
     DownF:=false;
    end;

  end;
  if(Assigned(FWndProc)) then
    FWndProc(Message);
end;

procedure TScrollXPBar.WndProcM(var Message: TMessage);
var x,y:short;
begin
  if(Assigned(MWndProc)) then
    MWndProc(Message);
  x:=Message.lParamLo;
  y:=Message.lParamHi;
  Case Message.msg of
    CM_MOUSEENTER:
    begin
      MouseIn:=True;
      SetImageMode(1,move);
    end;
    CM_MOUSELEAVE:
    begin
      SetImageMode(1,norm);
    end;
     WM_LBUTTONDOWN:
     begin
      DownM:=true;
      if(Kind=meHorizontal) then
        FirstPos:=x
      else
        FirstPos:=y;
     end;
     WM_LBUTTONUP:
     begin
      SetImageMode(1,norm);
      DownM:=False;
      if(Kind=meHorizontal) then
        MovePos(Self.Controls[1].Left-Trunc(GetOneStepSize))
      else
        MovePos(Self.Controls[1].Top-Trunc(GetOneStepSize));
      ScrollConnect;
      DownF:=false;
     end;
     WM_MOUSEMOVE:
     begin
       if(DownM) then
       begin
          if(Kind=meHorizontal) then
            MovePos(Self.Controls[1].Left+(x-FirstPos))
          else
            MovePos(Self.Controls[1].Top+(y-FirstPos));
           ScrollConnect;
           MyMsg(y)
       end;
     end;
  end;
end;

procedure TScrollXPBar.WndProcE(var Message: TMessage);
begin
  if(Assigned(EWndProc)) then
    EWndProc(Message);
  Case  Message.Msg of
    CM_MOUSEENTER:
    begin
      MouseIn:=True;
      SetImageMode(2,move);
    end;
    CM_MOUSELEAVE:
    begin
      MouseIn:=False;
      SetImageMode(2,norm);
    end;
    WM_LBUTTONDOWN:
    begin
      DownE:=true;
      StepIt(1);
      Repeator.Enabled:=true;
      SetImageMode(2,down);
    end;
    WM_LBUTTONUP:
    begin
     DownE:=false;
     Repeator.Enabled:=false;
     SetImageMode(2,norm);
     ScrollConnect;
    end;
  end;

end;

procedure TScrollXPBar.MyMsg(Msg: Integer);
begin
// TForm(Self.Parent).Caption:=IntToStr(Position)+'0'+IntToStr(Msg)
end;

procedure TScrollXPBar.MyMsgS(Msg: String);
begin
// TForm(Self.Parent).Caption:=IntToStr(Position)+'0'+Msg
end;

procedure TScrollXPBar.SetImageSize(const Value: Integer);
begin
  if(Kind=meHorizontal) then
  begin
     Self.Controls[0].Width:=Trunc(Value/3);
     Self.Controls[1].Width:=Trunc(Value/3);
     Self.Controls[2].Width:=Trunc(Value/3);
  end
  else
  begin
     Self.Controls[0].Height:=Trunc(Value/3);
     Self.Controls[1].Height:=Trunc(Value/3);
     Self.Controls[2].Height:=Trunc(Value/3);
  end;
end;

function TScrollXPBar.GetImageSize: Integer;
var
 retVal:Integer;
begin
  if(Kind=meHorizontal) then
  begin
     retVal:=
     Self.Controls[0].Width+
     Self.Controls[1].Width+
     Self.Controls[2].Width;
  end
  else
  begin
     retVal:=
     Self.Controls[0].Height+
     Self.Controls[1].Height+
     Self.Controls[2].Height;
  end;
  if(SpaceConvert<>nil) then
    retVal:=retVal+SpaceConvert.Width;
  GetImageSize:=retVal;
end;

function TScrollXPBar.GetOneStepSize: Integer;
begin
  if(Kind=meHorizontal) then
    StepSize:=(Self.Width-ImageSize)/Max
  else
    StepSize:=(Self.Height-ImageSize)/Max;
  if(Trunc(StepSize)=0)then
    GetOneStepSize:=1
  else
    GetOneStepSize:=Trunc(StepSize);
end;

function TScrollXPBar.GetMax: Integer;
var
  LMax,LMin:Integer;
  MMin,MMax:^Integer;
begin
  LMin:=0;
  LMax:=100;
  MMin:=addr(LMin);
  MMax:=addr(LMax);
{  if(Connect is TCustomGrid) then
  begin
    if(Connect Is TDBGrid) then
    begin
       if(TDBGrid(Connect).DataSource<>nil)   then
         if(TDBGrid(Connect).DataSource.DataSet<>nil)   then
           if(TDBGrid(Connect).DataSource.DataSet.Active<>false)   then
             LMax:=TDBGrid(Connect).DataSource.DataSet.RecordCount
    end
    else
      if(Kind=meHorizontal) then
       LMax:=TStringGrid(Connect).RowCount
      else
       LMax:=TStringGrid(Connect).ColCount;
  end
  else} if(Connect<> nil) then
  begin
    if(Kind=meHorizontal) then
      GetScrollRange(Connect.Handle,SB_HORZ,Integer(MMin),Integer(MMax))
    else
      GetScrollRange(Connect.Handle,SB_VERT,Integer(MMin),Integer(MMax));
    if(MMax<>nil) then
       if(Integer(MMax)<>0) then
          LMax:=Integer(MMax) ;
     if(MMin<>nil) then
       if(Integer(MMin)<>0) then
       begin
          LMin:=Integer(MMin) ;
//          ShowMessage(IntTostr(LMin));
       end;
  end
  else
    LMax:=100;
  if(LMax=0) then LMax:=1;
  GetMax:=LMax;
end;

procedure TScrollXPBar.StepIt(value: Integer);
begin
  if(Kind=MeHorizontal) then
     MovePos(Controls[1].left+Value*GetOneStepSize)
  else
     MovePos(Controls[1].Top+Value*GetOneStepSize);
end;

procedure TScrollXPBar.SetImageMode(pos: Integer; mde: TImageMode);
var
  ImageName:String;
begin
  if(kind=meHorizontal) then
    case pos of
      0: ImageName:='LEFT';
      1: ImageName:='MIDH';
      2: ImageName:='RIGHT';
    end
  else
    case pos of
      0: ImageName:='TOP';
      1: ImageName:='MIDV';
      2: ImageName:='DOWN';
    end;
  Case mde of
     down:ImageName:=ImageName+'D';
     move:ImageName:=ImageName+'M';
  end;
   TImage(Controls[pos]).Picture.Bitmap.LoadFromResourceName(HInstance,ImageName);
end;

procedure TScrollXPBar.WindowProcParent(var Message: TMessage);
begin
  Case Message.Msg of
     WM_USER,WM_USER+1,
     WM_EXITSIZEMOVE:
     begin
          Self.Align:=alNone;
          SetSize;
     end;
     WM_ENTERSIZEMOVE :
     begin
      Self.Width:=5;
      Self.Height:=5;
      if(Connect <> nil) then
         if(Connect.Align=alClient) then
         begin
           if(Kind=meHorizontal) then
              Self.Align:=alBottom
           else
              if(Connect.BiDiMode<>bdLeftToRight) then
                  Self.Align:=alLeft
              else
                  Self.Align:=alRight;
         end
         else if(Connect.Align=alLeft) then
         begin
         end;
     end;
  end; //case
  if(Assigned(ParentWindowProc)) then
   ParentWindowProc(Message);
end;
procedure TScrollXPBar.WindowProcConnect(var Message: TMessage);
var
  Mes:TMessage;
  MMin,MMax:^Integer;
begin
  if(Assigned(ConnectWindowProc)) then
   ConnectWindowProc(Message);
  case Message.Msg of
    WM_SIZE :  SetSize;
    CBN_DROPDOWN ,
    CB_SHOWDROPDOWN :
      if(Connect is TDBLookupComboBox) then
      begin
        Self.Visible:=True;
        SetSize;
        Self.Top:=TDBLookupComboBox(Connect).TOp+10;
        Self.Height:=TDBLookupComboBox(Connect).Height;
        Self.Height:=100;
        Self.BringToFront;
      end;
    CBN_CLOSEUP :
      if(Connect is TDBLookupComboBox) then
      begin
       // TDBLookupComboBox(Connect).DropDownWidth:
        Self.Visible:=FALSE;
        Self.BringToFront;
      end;
    WM_VSCROLL ,
    WM_HSCROLL ,
    WM_KEYDOWN,
    WM_LBUTTONDOWN,
    WM_CHAR,
    WM_MOUSEWHEEL:
    begin
//       if(not(Connect is TCustomGrid)) then
       begin
         if(Connect Is TScrollBar) then
         begin
           MovePos(GetScrollPos(Connect.Handle,SB_CTL));
         end
         else if(Kind=meHorizontal) then
           Position:=GetScrollPos(Connect.Handle,SB_HORZ)
         else
           Position:=GetScrollPos(Connect.Handle,SB_VERT);
       end;
    end;
  end;
end;

end.
