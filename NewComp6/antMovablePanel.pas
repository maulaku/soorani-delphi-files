{******************************************************************************}
{**  E-Mail:    karpolan@yahoo.com , karpolan@utilmind.com                   **}
{**  Home Page: http://karpolan.i.am, http://www.utilmind.com                **}
{******************************************************************************}
Unit antMovablePanel;

{$Include antPanels.inc}

Interface

Uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls;

Type
  TDirection = (drUp, drDown, drLeft, drRight);

{##############################################################################}
{## TantMovablePanel = Class(TPanel) ##########################################}
{##############################################################################}
  TantMovablePanel = Class(TPanel)
  Private
  {** For Events **}

    fOnDoMove   : TNotifyEvent;
    fOnUndoMove : TNotifyEvent;
    fOnMoveEnd  : TNotifyEvent;
    fOnMouseExit: TNotifyEvent;
  Protected
    RealDirection  : TDirection; {Unchengable in RunTime Mode Flag}
    IntTimer       : TTimer;
  {** For Properties **}
    fMoveNewStyle   : Boolean;
    fTimerInterval  : Word;
    fMovePerTick    : integer;
    fMoveLength     : integer;
    fMoveFullTime   : Cardinal;
    fDirection      : TDirection;
    fAutoBack       : Boolean;
    fAutoRepeat     : Boolean;
  {** Override This **}
    procedure DoMouseLive(var Mes : TMessage);message CM_MOUSELEAVE;
    Procedure CreateParams(Var Params: TCreateParams);                 Override;
    Procedure Loaded;                                                  Override;
    Procedure Click;                                                   Override;
  {** Timers Routine  **}
    Procedure PrepareDirection(AToDirection : Boolean);                 Virtual;
    Procedure IntTimerTimer   (Sender : TObject);                       Virtual;
    Procedure IntTimerTimerNew(Sender : TObject);                       Virtual;
  {** Properties Routine **}
    Procedure SetMoveNewStyle (A : Boolean);                            Virtual;
    Procedure SetTimerInterval(A : Word);                               Virtual;
    Procedure SetMovePerTick  (A : integer);                            Virtual;
    Procedure SetMoveLength   (A : integer);                            Virtual;
  Public
    MovingNow,
    ToDirection         : Boolean;
    BeginTop,
    BeginLeft           : integer;
    TimeOfMoveBeginning : Cardinal;
  {** Init/Done **}
    Constructor Create(AOwner : TComponent);                           Override;
    Destructor  Destroy;                                               Override;
  {** Movement Routines **}
    Procedure ChangeDirection;                                          Virtual;
    Procedure DoMove;                                                   Virtual;
    Procedure UndoMove;                                                 Virtual;
  Published
  {** New Properties **}
    Property MoveNewStyle     : Boolean
      Read   fMoveNewStyle
      Write  SetMoveNewStyle    Default False; {** Ver >= 2.0 **}
    Property MoveFullTime     : Cardinal
      Read   fMoveFullTime
      Write  fMoveFullTime      Default 1000;  {** Ver >= 2.0 **}
    Property TimerInterval    : Word
      Read   fTimerInterval
      Write  SetTimerInterval   Default 25;
    Property MovePerTick      : integer
      Read   fMovePerTick
      Write  SetMovePerTick     Default 0;
    Property MoveLength       : integer
      Read   fMoveLength
      Write  SetMoveLength;
    Property Direction        : TDirection
      Read   fDirection
      Write  fDirection         Default drDown;
    Property AutoBack         : Boolean
      Read   fAutoBack
      Write  fAutoBack          Default False;
    Property AutoRepeat       : Boolean
      Read   fAutoRepeat
      Write  fAutoRepeat        Default False;
  {** New Events **}
    Property OnDoMove     : TNotifyEvent
      Read   fOnDoMove
      Write  fOnDoMove;
    Property OnUndoMove   : TNotifyEvent
      Read   fOnUndoMove
      Write  fOnUndoMove;
    Property OnMoveEnd    : TNotifyEvent
      Read   fOnMoveEnd
      Write  fOnMoveEnd;
    Property OnMouseExit    : TNotifyEvent
      Read   fOnMouseExit
      Write  fOnMouseExit;
  End;{TantMovablePanel = Class(TPanel)}

{##############################################################################}
{******************************************************************************}
{##############################################################################}
Implementation
{##############################################################################}
{******************************************************************************}
{##############################################################################}


{##############################################################################}
{## TantMovablePanel = Class(TPanel) ##########################################}
{##############################################################################}
{******************************************************************************}
{** Public ********************************************************************}
{******************************************************************************}
{** Init/Done **}
{***************}
Constructor TantMovablePanel.Create(AOwner : TComponent);
Begin
  Inherited Create(AOwner);
  Caption     := ' ';
  ToDirection := False;
{$IfDef Delphi3andHigher}
  FullRepaint := False;
{$EndIf Delphi3andHigher}
{$IfDef Delphi4andHigher}
  DoubleBuffered := True;
{$EndIf Delphi4andHigher}

{** PreSet Properies Values **}
  fMoveNewStyle := False; {** Ver >= 2.0 **}
  fTimerInterval  := 25;
  fMovePerTick    := 0;
  fMoveFullTime   := 1000;  {** Ver >= 2.0 **}
  fDirection      := drDown;
  fAutoBack       := False;
  fAutoRepeat     := False;

{** Work Arround Timer **}
  IntTimer := TTimer.Create(Self);
  with IntTimer do
   begin
     IntTimer.Interval := fTimerInterval;
     IntTimer.Enabled  := False;
     SetMoveNewStyle(fMoveNewStyle); {Assign a New Procedure}
   end;{with IntTimer do}

End;{Constructor TantMovablePanel.Create}

Destructor TantMovablePanel.Destroy;
Begin
  IntTimer.Free;
  Inherited Destroy;
End;{Destructor TantMovablePanel.Destroy}


{***********************}
{** Movement Routines **}
{***********************}
Procedure TantMovablePanel.ChangeDirection;
Begin
  PrepareDirection(not ToDirection);
End;{Procedure TantMovablePanel.ChangeDirection}

Procedure TantMovablePanel.DoMove;
Begin
  PrepareDirection(True);
  MovingNow := True;
  if Assigned(FOnDoMove)
   then FOnDoMove(Self);
  IntTimer.Enabled := True; {Run the timer}
End;{Procedure TantMovablePanel.DoMove}

Procedure TantMovablePanel.UnDoMove;
Begin
  PrepareDirection(False);
  MovingNow := True;
  if Assigned(FOnUndoMove)
   then FOnUndoMove(Self);
  IntTimer.Enabled := True; {Run the timer}
End;{Procedure TantMovablePanel.UnDoMove}

{W******************************************************************************}
{** Potected ******************************************************************}
{******************************************************************************}
{** Override This **}
{*******************}
Procedure TantMovablePanel.CreateParams(Var Params: TCreateParams);
Begin
  Inherited CreateParams(Params);
{  Params.WindowClass.Style := Params.WindowClass.Style or CS_HREDRAW or CS_VREDRAW;{}
End;{Procedure TantMovablePanel.CreateParams}

Procedure TantMovablePanel.Loaded;
Begin
  Inherited Loaded;
  RealDirection := Direction; {** Direction forever **}
  BeginTop      := Top;
  BeginLeft     := Left;
End;{Procedure TantMovablePanel.Loaded}

Procedure TantMovablePanel.Click;
Begin
{  if not ToDirection
   then DoMove
   else UnDoMove;    {** UnRem it, If you want it turns on Move by Clicking **}
  Inherited Click;
End;{Procedure TantMovablePanel.Click}

{*********************}
{** Timers Routine  **}
{*********************}
Procedure TantMovablePanel.PrepareDirection(AToDirection : Boolean);
Var
  DeltaTime,
  CurrentTime : Cardinal;
Begin
  if (not MoveNewStyle) or (not MovingNow) then
   begin
     ToDirection         := AToDirection;
     TimeOfMoveBeginning := GetTickCount;
     Exit;
   end;{if not MoveNewStyle ...}

   if AToDirection = ToDirection
    then Exit;

   CurrentTime := GetTickCount;
   DeltaTime   := CurrentTime - TimeOfMoveBeginning;
   TimeOfMoveBeginning := CurrentTime - MoveFullTime + DeltaTime;
   ToDirection         := AToDirection;
End;{Procedure TantMovablePanel.PrepareDirection}

Procedure TantMovablePanel.IntTimerTimer(Sender : TObject);

  Function MakeMove : Boolean;
  Begin
    Result := True;
    if ToDirection then
     begin
       case RealDirection of
        drUp :   begin
          if (Top > BeginTop - MoveLength + MovePerTick) then
           begin
             Top := Top - MovePerTick;
             Exit; {Ok}
           end;{if}
          Top := BeginTop - MoveLength;  {Set To Last Position}
        end;{Up}
        drDown : begin
          if (Top < BeginTop + MoveLength - MovePerTick) then
           begin
             Top := Top + MovePerTick;
             Exit; {Ok}
           end;{if}
          Top := BeginTop + MoveLength;  {Set To Last Position}
        end;{Down:}
        drLeft : begin
          if (Left > BeginLeft - MoveLength + MovePerTick) then
           begin
             Left := Left - MovePerTick;
             Exit; {Ok}
           end;{if}
          Left := BeginLeft - MoveLength; {Set To Last Position}
        end;{Left}
        else    begin  {Right}
          if (Left < BeginLeft+MoveLength-MovePerTick) then
           begin
             Left := Left + MovePerTick;
             Exit; {Ok}
           end;{if}
          Left := BeginLeft + MoveLength; {Set To Last Position}
        end;{else (Right) }
       end;{case Direction of}
     end else
     begin
       case RealDirection of
        drUp :   begin
          if (Top < BeginTop - MovePerTick) then
           begin
             Top := Top + MovePerTick;
             Exit; {Ok}
           end;{if}
        end;{Up}
        drDown : begin
          if (Top > BeginTop + MovePerTick) then
           begin
             Top := Top - MovePerTick;
             Exit; {Ok}
           end;{if}
        end;{Down:}
        drLeft : begin
          if (Left < BeginLeft - MovePerTick) then
           begin
             Left := Left + MovePerTick;
             Exit; {Ok}
           end;{if}
        end;{Left}
        else     begin {Right}
          if (Left > BeginLeft + MovePerTick) then
           begin
             Left := Left - MovePerTick;
             Exit; {Ok}
           end;{if}
        end;{else (Right)}
       end;{case Direction of}

       Top  := BeginTop;      {Set To First Position}
       Left := BeginLeft;     {Set To First Position}
     end;{if ToDirection else}

    Result:=False;
  End;{INTERNAL Function MakeMove}

Begin
  if MakeMove then
   begin
     Invalidate; {RePaint;  {}
     Exit;
   end;{if MakeMove then}

  IntTimer.Enabled := False;  {Timer Off, We Do EveryThing}
  MovingNow        := False;
  if Assigned(FOnMoveEnd)
   then FOnMoveEnd(Self);

  if AutoRepeat or (AutoBack and ToDirection) then
   begin
     if not ToDirection
      then DoMove
      else UnDoMove;
   end;{if AutoRepeat}
End;{Procedure TantMovablePanel.IntTimerTimer}

Procedure TantMovablePanel.IntTimerTimerNew(Sender : TObject);
Var
  CurrentMoveTime   : Cardinal;
  CurrentMoveLength : integer;

  Procedure MakeMoveMoveNewStyle;
  Begin
    CurrentMoveLength := (fMoveLength * (CurrentMoveTime - TimeOfMoveBeginning))
                         div fMoveFullTime;

    if ToDirection then
     begin
       case RealDirection of
        drUp   : Top  := BeginTop  - CurrentMoveLength;
        drDown : Top  := BeginTop  + CurrentMoveLength;
        drLeft : Left := BeginLeft - CurrentMoveLength;
        else     Left := BeginLeft + CurrentMoveLength;
       end;{case Direction of}
     end else
     begin
       case RealDirection of
        drUp   : Top  := (BeginTop  - fMoveLength) + CurrentMoveLength;
        drDown : Top  := (BeginTop  + fMoveLength) - CurrentMoveLength;
        drLeft : Left := (BeginLeft - fMoveLength) + CurrentMoveLength;
        else     Left := (BeginLeft + fMoveLength) - CurrentMoveLength;
       end;{case Direction of}
     end;{if ToDirection else}
  End;{INTERNAL Procedure MakeMoveMoveNewStyle}

Begin
  CurrentMoveTime := GetTickCount;
  if CurrentMoveTime <= (TimeOfMoveBeginning + MoveFullTime) then
   begin
     MakeMoveMoveNewStyle;
     Invalidate;{}
     Exit;{** Thats all at current time **}
   end else
   begin
     CurrentMoveTime := TimeOfMoveBeginning + MoveFullTime;
     MakeMoveMoveNewStyle;
     Invalidate;       {}
   end;{if CurrentTime <= TimeOfMoveBeginning else}

  IntTimer.Enabled := False;  {Timer Off, We Do EveryThing}
  MovingNow        := False;
  if Assigned(FOnMoveEnd)
   then FOnMoveEnd(Self);

  if AutoRepeat or (AutoBack and ToDirection) then
   begin
     if not ToDirection
      then DoMove
      else UnDoMove;
   end;{if AutoRepeat}
End;{Procedure TantMovablePanel.IntTimerTimerNew}

{************************}
{** Properties Routine **}
{************************}
Procedure TantMovablePanel.SetMoveNewStyle(A : Boolean);
Begin
  fMoveNewStyle := A;
{** Assign a New Procedure **}
  if fMoveNewStyle
   then IntTimer.OnTimer  := IntTimerTimerNew
   else IntTimer.OnTimer  := IntTimerTimer;
End;{Procedure TantMovablePanel.SetMoveNewStyle}

Procedure TantMovablePanel.SetTimerInterval(A : Word);
Begin
  if A > 0
   then fTimerInterval := A
   else fTimerInterval := 25;  {About 1/40 Second}

  SetMoveNewStyle(fMoveNewStyle);
End;{Procedure TantMovablePanel.SetTimerInterval}

Procedure TantMovablePanel.SetMovePerTick(A : integer);
Begin
  if A > 0
   then fMovePerTick := A
   else fMovePerTick := 0;
End;{Procedure TantMovablePanel.MovePerTik}

Procedure TantMovablePanel.SetMoveLength(A : integer);
Begin
  if A > 0
   then FMoveLength := A
   else FMoveLength := 0;
End;{Procedure TantMovablePanel.SetMoveLength}
Procedure TantMovablePanel.DoMouseLive(var Mes : TMessage);
Begin
  if Assigned(fOnMouseExit) then
     fOnMouseExit(Self)
End;{Procedure TantMovablePanel.SetMoveLength}


{##############################################################################}
{******************************************************************************}
{##############################################################################}
Initialization
  RegisterClass(TTimer);

END{Unit antMovablePanel}.
