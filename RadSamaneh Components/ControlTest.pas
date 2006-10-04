unit ControlTest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,extctrls,grids,dbGrids,db;
{$r SCImages.res}

type
  TKindMe = (meHorizontal,meVertical);

  TControlTest = class(TWinControl)
  private
    FImageSize:Integer;
    Repeator:TTimer;
    FKind : TKindMe;
    FGrid : TCustomGrid;
    FColor :TColor;
    FMax : Integer;
    FSCrollSpead:Integer;
    FMin : Integer;
    FRepeat,DownF,DownM,DownE,MouseIn,First:Boolean;
    FirstPos:Integer;
    Position:Integer;
    OnTopLeftChangedGrid: procedure(Sender: TObject) of object;
    OnTopLeftChangedDBGrid: procedure(DataSet: TDataSet) of object;
    OnMouseMoveParentBefor: procedure(Sender:TObject; Shift: TShiftState; X, Y: Integer) of object;
    procedure AdjustSize; override;
    procedure PaintWindow(DC: HDC); override;
//    procedure paint; override;
    procedure SetGrid(Grid:TCustomGrid) ;
    procedure MouseDownF(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseDownM(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseDownE(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseUpF(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseUpM(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseUpE(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseMoveF(Sender:TObject; Shift: TShiftState; X, Y: Integer);
    procedure MouseMoveM(Sender:TObject; Shift: TShiftState; X, Y: Integer);
    procedure MouseMoveE(Sender:TObject; Shift: TShiftState; X, Y: Integer);
    procedure OnMouseMoveParent(Sender:TObject; Shift: TShiftState; X, Y: Integer);
    procedure OnMouseMoveSelf(Sender:TObject; Shift: TShiftState; X, Y: Integer);
    procedure SetKind(Kind:TKindMe);
    procedure SetColor(Color:TColor);
    procedure MovePos(Pos:Integer);
    procedure ScrollGrid;
    procedure GridMove(Sender: TObject);
    procedure OnRepeator(Sender: TObject);
    procedure DbGridMove(DataSet: TDataSet);
     { Private declarations }
  protected
    { Protected declarations }
  public
    Procedure SetColors();
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  published
    ProPerty Kind:TKindMe Read FKind Write SetKind;
    ProPerty Grid:TCustomGrid Read FGrid Write SetGrid;
    ProPerty Max:Integer Read FMax Write FMax default 100;
    ProPerty Min:Integer Read FMin Write FMin default 1;
    ProPerty BGColor:TColor Read FColor Write SetColor default clInactiveCaptionText;
    ProPerty ImageSize:Integer Read FImageSize Write FImageSize default 30;
    ProPerty SCrollSpead:Integer Read FSCrollSpead Write FSCrollSpead default 100;
    { Published declarations }
  end;
procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('XP', [TControlTest]);
end;
procedure TControlTest.AdjustSize;
begin
 if(Self.ControlCount>1) then
 begin
    TImage(Self.Controls[1]).AutoSize:=False;
    if(Kind=meHorizontal) then
     Self.Controls[1].Height:=Self.Height
    else
     Self.Controls[1].Width:=Self.Width;
 end;
end;
constructor TControlTest.Create(AOwner: TComponent);
var
 ImgLeft,ImgRight,ImgTop,ImgBottom,ImgMidH,ImgMidv:TImage;
begin
  inherited;
  if(csDesigning In ComponentState) then
  begin
    if(width=0) then
      width:=200;
    if(Height=0) then
      Height:=20;
    FKind:=meVertical;
    FColor:=$00FFBA75;
  end;
  if(max=0) then Max:=100;
  if(FImageSize=1) then  FImageSize:=40;
//  if(Self.Brush.Color=clNone) then
     FColor:=$00FFBA75;
  ImgLeft:=TImage.Create(self);
  ImgLeft.picture.bitmap.LoadFromResourceName(HInstance,'LEFT');
  ImgLeft.AutoSize:=true;
  ImgLeft.Align:=alLeft;
  ImgLeft.Stretch:=true;
  ImgLeft.OnMouseDown:=MouseDownF;
  ImgLeft.OnMouseUp:=MouseUpF;
  ImgLeft.OnMouseMove:=MouseMoveF;
  Self.InsertControl(ImgLeft);

  ImgMidH:=TImage.Create(self);
  ImgMidH.picture.bitmap.LoadFromResourceName(HInstance,'MIDH');
  ImgMidH.AutoSize:=true;
  ImgMidH.Left:=20;
  ImgMidH.Stretch:=true;
  ImgMidH.OnMouseDown:=MouseDownM;
  ImgMidH.OnMouseUp:=MouseUpM;
  ImgMidH.OnMouseMove:=MouseMoveM;
  Self.InsertControl(ImgMidH);

  ImgRight:=TImage.Create(self);
  ImgRight.picture.bitmap.LoadFromResourceName(HInstance,'RIGHT');
  ImgRight.AutoSize:=true;
  ImgRight.Align:=alRight;
  ImgRight.Stretch:=true;
  ImgRight.OnMouseDown:=MouseDownE;
  ImgRight.OnMouseUp  :=MouseUpE;
  ImgRight.OnMouseMove:=MouseMoveE;
  Self.InsertControl(ImgRight);

  SetKind(meHorizontal);
  Repeator:=TTimer.Create(Self);
  Repeator.Enabled:=False;
  if(FSCrollSpead=0) then FSCrollSpead:=100;
  Repeator.Interval:=FSCrollSpead;
  Repeator.OnTimer:=OnRepeator;
  Self.OnEnter:=OnEnter;

  First:=True;
end;
procedure TControlTest.PaintWindow(DC: HDC);
begin
  if(Self.Parent<>nil) then
  begin
    if(First) then
    begin
      OnMouseMoveParentBefor:=TForm(Self.Parent).OnMouseMove;
      TForm(Self.Parent).OnMouseMove:=OnMouseMoveParent;
      First:=False;
    end;
    Self.OnMouseMove:=OnMouseMoveSelf;
  end;
  Self.Brush.Color:=FColor;
  inherited;
end;
procedure TControlTest.SetKind(Kind:TKindMe);
var
 ImgLeft,ImgRight,ImgTop,ImgBottom,ImgMidH,ImgMidv:TImage;
begin
  fKind:=Kind;
  if(Self.ControlCount>2) then
  begin
    if(Kind=meHorizontal) then
    begin
      if(csDesigning In ComponentState) then
      begin
        if(width=0) then
          width:=200;
        if(Height=0) then
          Height:=20;
        Self.Brush.Color:=clInactiveCaptionText;
      end;
      TImage(Self.Controls[0]).picture.bitmap.LoadFromResourceName(HInstance,'LEFT');
      TImage(Self.Controls[0]).Align:=alLeft;
      TImage(Self.Controls[1]).picture.bitmap.LoadFromResourceName(HInstance,'MIDH');
      Self.Controls[1].Left:=20;
      Self.Controls[1].Top:=0;
      Self.Controls[1].Height:=20;
      Self.Controls[1].Width:=20;
      TImage(Self.Controls[2]).picture.bitmap.LoadFromResourceName(HInstance,'RIGHT');
      TImage(Self.Controls[2]).Align:=alRight;
    end
    else
    begin
      if(csDesigning In ComponentState) then
      begin
        width:=20;
        Height:=200;
      end;
      TImage(Self.Controls[0]).picture.bitmap.LoadFromResourceName(HInstance,'TOP');
      TImage(Self.Controls[0]).Align:=alTop;
      TImage(Self.Controls[1]).picture.bitmap.LoadFromResourceName(HInstance,'MIDV');
      Self.Controls[1].Top:=20;
      Self.Controls[1].Left:=0;
      Self.Controls[1].Height:=20;
      Self.Controls[1].Width:=20;
      TImage(Self.Controls[2]).picture.bitmap.LoadFromResourceName(HInstance,'DOWN');
      TImage(Self.Controls[2]).Align:=alBottom;
    end;
  end;
end;
procedure TControlTest.MouseDownF(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Repeator.Enabled:=True;
  DownF:=true;
  if(Kind=meHorizontal) then
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'LEFTD')
  else
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'TOPD')
end;
procedure TControlTest.MouseDownM(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDVD');
  DownM:=true;
  if(Kind=meHorizontal) then
    FirstPos:=x
  else
    FirstPos:=y;
end;
procedure TControlTest.MouseDownE(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Repeator.Enabled:=True;
   DownE:=true;
   DownF:=false;
  if(Kind=meHorizontal) then
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'RIGHTD')
  else
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'DOWND')
end;
procedure TControlTest.MouseUpF(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Repeator.Enabled:=False;
  DownF:=false;
  if(Kind=meHorizontal) then
  begin
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'LEFT');
    MovePos(Self.Controls[1].Left-Trunc((Self.Width-FImageSize)/Max));
  end
  else
  begin
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'TOP');
    MovePos(Self.Controls[1].Top-Trunc((Self.Height-FImageSize)/Max));
  end;
  ScrollGrid;
end;
procedure TControlTest.MouseUpM(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDV');
   DownM:=false;
end;
procedure TControlTest.MouseUpE(Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Repeator.Enabled:=False;
  DownE:=false;
  if(Kind=meHorizontal) then
  begin
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'RIGHT');
    MovePos(Self.Controls[1].Left+Trunc((Self.Width-FImageSize)/Max));
  end
  else
  begin
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'DOWN');
    MovePos(Self.Controls[1].Top+Trunc((Self.Height-FImageSize)/Max));
  end;
 ScrollGrid;
end;
procedure TControlTest.MouseMoveF(Sender:TObject; Shift: TShiftState; X, Y: Integer);
begin
  MouseIn:=True;
  if(Not(DownF)) then
    if(Kind=meHorizontal) then
      TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'LEFTM')
    else
      TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'TOPM');
end;
procedure TControlTest.MouseMoveE(Sender:TObject; Shift: TShiftState; X, Y: Integer);
begin
  MouseIn:=True;
  if(Not(DownE)) then
    if(Kind=meHorizontal) then
      TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'RIGHTM')
    else
      TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'DOWNM');
end;
procedure TControlTest.MouseMoveM(Sender:TObject; Shift: TShiftState; X, Y: Integer);
begin
 MouseIn:=True;
 if(DownM) then
 begin
  if(Kind=meHorizontal) then
    MovePos(Self.Controls[1].Left+(x-FirstPos))
  else
    MovePos(Self.Controls[1].Top+(y-FirstPos));
  ScrollGrid;
 end
 else
   TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDVM');
end;
procedure TControlTest.MovePos(Pos: Integer);
var left:Integer;
begin
  if(Grid<>nil) then
  begin
    if(Grid.ClassName='TDBGrid') then
      if(TDBGrid(Grid).DataSource<>nil)   then
       Max:=TDBGrid(Grid).DataSource.DataSet.RecordCount
    else if(Kind=meHorizontal) then
       Max:=TStringGrid(Grid).RowCount
    else
       Max:=TStringGrid(Grid).ColCount;
  end;
  if(Kind=meHorizontal) then
  begin
    if((Self.Controls[1].width+Pos)<Self.Controls[2].Left) then
       if(Pos>Self.Controls[0].Width) then
         Self.Controls[1].Left:=Pos
       else
         Self.Controls[1].Left:=Self.Controls[0].Width
    else
      Self.Controls[1].Left:=Self.Controls[2].Left-Self.Controls[1].width;
    Position:=Trunc(Max*Self.Controls[1].Left/(Self.width-FImageSize));
  end
  else
  begin
    if((Self.Controls[1].Height+Pos)<Self.Controls[2].Top) then
       if(Pos>Self.Controls[0].Height) then
         Self.Controls[1].Top:=Pos
       else
         Self.Controls[1].Top:=Self.Controls[0].Height
    else
       Self.Controls[1].Top:=Self.Controls[2].Top-Self.Controls[1].Height;
    Position:=Trunc(Max*Self.Controls[1].Top/(Self.Height-FImageSize));
  end;
end;
procedure TControlTest.SetGrid(Grid:TCustomGrid);
begin
  FGrid:=Grid;
  If(Grid <> nil) then
    if (Grid.ClassName='TDBGrid') then
    begin
      OnTopLeftChangedDBGrid:=TDBGrid(Grid).DataSource.DataSet.AfterScroll;
      TDBGrid(Grid).DataSource.DataSet.AfterScroll:=DbGridMove;
    end
    else
    begin
      OnTopLeftChangedGrid:=TStringGrid(Grid).OnTopLeftChanged;
      TStringGrid(Grid).OnTopLeftChanged:=GridMove;
    end;
end;
procedure TControlTest.GridMove(Sender: TObject);
begin
  if(Kind=meHorizontal) then
     Max:=TStringGrid(Grid).RowCount
  else
     Max:=TStringGrid(Grid).ColCount;
  if(Kind=meHorizontal) then
    MovePos(Trunc(TStringGrid(Grid).LeftCol*(Self.Width-FImageSize)/Max))
  else
    MovePos(Trunc(TStringGrid(Grid).TopRow*(Self.Height-FImageSize)/Max));
  if(Assigned(OnTopLeftChangedGrid)) then
    OnTopLeftChangedGrid(Sender);
end;

procedure TControlTest.DbGridMove(DataSet: TDataSet);
begin
    Max:=TDBGrid(Grid).DataSource.DataSet.RecordCount;
    MovePos(Trunc(TDBGrid(Grid).DataSource.DataSet.RecNo*(Self.Height-FImageSize)/Max));
  if(Assigned(OnTopLeftChangedDBGrid)) then
   OnTopLeftChangedDBGrid(DataSet);
end;

procedure TControlTest.ScrollGrid;
begin
  if(Kind=meHorizontal) then
  begin
    If(Grid <> nil) then
      TStringGrid(Grid).LeftCol:=Position
  end
  else
  begin
    If(Grid <> nil) then
      if (Grid.ClassName='TDBGrid') then
      begin
         if(TDBGrid(Grid).DataSource<>nil)   then
           TDBGrid(Grid).DataSource.DataSet.RecNo:=Position
      end
      else
        TStringGrid(Grid).TopRow:=Position;
  end;
end;
procedure TControlTest.SetColor(Color:TColor);
begin
 FColor:=Color;
 Self.Brush.Color:=Color;
 Self.Invalidate;
end;
procedure TControlTest.OnMouseMoveParent(Sender:TObject; Shift: TShiftState; X, Y: Integer);
begin
 if(MouseIn) then
 begin
  if(Kind=meHorizontal) then
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'LEFT')
  else
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'TOP');

  if(Kind=meHorizontal) then
    TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDH')
  else
    TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDV');

  if(Kind=meHorizontal) then
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'RIGHT')
  else
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'DOWN');
  MouseIn:=False;
 end;
 if Assigned(OnMouseMoveParentBefor) then
     OnMouseMoveParentBefor(Sender,Shift,X,Y);
end;
procedure TControlTest.OnMouseMoveSelf(Sender:TObject; Shift: TShiftState; X, Y: Integer);
begin
 if(MouseIn) then
 begin
  if(Kind=meHorizontal) then
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'LEFT')
  else
    TImage(Self.Controls[0]).Picture.Bitmap.LoadFromResourceName(HInstance,'TOP');

  if(Kind=meHorizontal) then
    TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDH')
  else
    TImage(Self.Controls[1]).Picture.Bitmap.LoadFromResourceName(HInstance,'MIDV');

  if(Kind=meHorizontal) then
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'RIGHT')
  else
    TImage(Self.Controls[2]).Picture.Bitmap.LoadFromResourceName(HInstance,'DOWN');
  MouseIn:=False;
 end;
end;
procedure TControlTest.OnRepeator(Sender: TObject);
var
  ts:TShiftState;
begin
 if(DownF) then
 begin
   MouseUpF(Sender,mbLeft,ts,0,0);
   DownF:=true;
 end
 else
   MouseUpE(Sender,mbLeft,ts,0,0);
 Repeator.Enabled:=true;
 if(DownF) then
   TForm(Self.Parent).Caption:=IntToStr(Position)+'0'+IntToStr(1)
 else
   TForm(Self.Parent).Caption:=IntToStr(Position)+'1'+IntToStr(0);
end;


procedure TControlTest.SetColors;
var i:integer;
 C:TControlCanvas;
begin
  C:=TControlCanvas.Create();
  C.Control:=Self;
  C.Brush.Color:=FColor;
  C.FillRect(Self.ClientRect);
 // self.PaintWindow(GetDC(self.Handle));
end;

end.
