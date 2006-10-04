	{$INCLUDE rr.inc}
(************************************************************************
 Author:	Robert Rossmair

	mailto:Robert.Rossmair@t-online.de
	http://home.t-online.de/home/Robert.Rossmair/

 Module:	MDIWallp

 Version:	6.00.4, 27-Jan-2000

 Description:	Background image component

 Compatibility (tested): Delphi 2, 3, 5

 Copyright © 1997-2000  Robert Rossmair

 Use, modification and distribution is allowed without limitation,
 warranty, or liability of any kind.

 If you use this software or portions of it in a commercial program,
 I would appreciate it if you mentioned my contribution in the
 documentation materials accompaning your work.
************************************************************************)
unit MDIWallp;

interface
{***************** Conditional Compiler Symbols ************************

 RX_LIB         RxLib installed (http://rx.demo.ru)

 USE_RX_GIF     use TGIFImage class from RxLib

 USE_AM_GIF     use GIFImage library by Anders Melander et alii
                (download address:
                 http://www.melander.dk/delphi/gifimage/index.html).

 RECOGNIZE_GIF  synonymous with USE_AM_GIF; kept for backward
                compatibility

 NO_JPEG        $DEFINE this if you don't have Borland's JPEG library

 NO_DESIGNHOOK  Disables visual feedback in design mode.
                $DEFINE this if you experience problems in design mode.
                Such problems might occur if there are other components
                manipulating the TMDIWallpaper.Client's window
                procedure.
 *********************************************************************** }

{.$DEFINE RX_LIB}
{.$DEFINE USE_RX_GIF}
{.$DEFINE USE_AM_GIF}
{.$DEFINE NO_JPEG}

{$IFDEF RX_LIB}
  {$DEFINE USE_RX_GIF}
{$ENDIF}

{$IFDEF RECOGNIZE_GIF}
  {$DEFINE USE_AM_GIF}
  {$UNDEF RECOGNIZE_GIF}
{$ENDIF}

{$IFDEF USE_AM_GIF}
  {$UNDEF USE_RX_GIF}
{$ENDIF}

uses SysUtils, Windows, Messages, Classes, Graphics,
{$IFDEF VER100_up}
  {$DEFINE GrayMapping}
  rrColors,
  {$IFNDEF NO_JPEG}
  JPEG,
  {$ENDIF}
{$ELSE (not VER100_up) }
  {$DEFINE NO_JPEG}
{$ENDIF}
  Controls, CompInfo, CopyrInf;

{.$IFNDEF VER100_up}
  {$DEFINE FormClientNotStored}
{.$ENDIF}
type
  TWallpaperMode = (wpTile, wpCenter, wpTopLeft, wpStretch, wpTopRight, wpBottomLeft, wpBottomRight, wpTop, wpLeft, wpBottom, wpRight);
{$IFNDEF VER100_up}
  TTransparentMode = (tmAuto, tmFixed);
{$ENDIF}
  EMDIWallpaper = class(Exception);
  TShiftMode = (smRows, smColumns);

  TMDIWallpaper = class(TComponent)
  private
    FClient: TWinControl;
    FHandle: hWnd;
    FNewWndProc: Pointer;
    FPrevWndProc: TFarProc;
    FPicture: TPicture;
    FCanvas: TCanvas;
    FMode: TWallpaperMode;
    FEnabled: Boolean;
    FTransparent: Boolean;
    FTransparentMode: TTransparentMode;
    FTransparentColor: TColor;
    FInfo: TComponentInfo;
    FHorzOffset: Integer;
    FVertOffset: Integer;
    FTileWidth: Integer;
    FTileHeight: Integer;
    FWorkingBmp: TBitmap;
    FShift: Integer;
    FShiftMode: TShiftMode;
    FZigzag: Boolean;
    FAutoSizeTile: Boolean;
    FInUpdWorkingBmp: Boolean;
    FClientIsMDIForm: Boolean;
    FFitPictureSize: Boolean;
    FPictureValid: Boolean;
    {$IFDEF GrayMapping}
    FGrayMapped: Boolean;
    procedure SetGrayMapped(Value: Boolean);
    procedure SysColorChange;
    class function MainWindowHook(var Message: TMessage): Boolean;
    procedure HookMainWindow;
    procedure UnhookMainWindow;
    {$ENDIF}
    procedure ClientInvalidate;
    procedure ClientWndProc(var Message: TMessage);
    procedure HookClient;
    procedure UnhookClient;
    procedure ForceClient(Value: TWinControl; Force: Boolean);
    function GetClientColor: TColor;
    function GetClientHandle: hWnd;
    function GetClientRect(AClient: TWinControl): TRect;
    function GetVirtualClientRect(AClient: TWinControl): TRect;
    function GetTransparentColor: TColor;
    procedure PictureChanged(Sender: TObject);
    procedure SetAutoSizeTile(Value: Boolean);
    procedure SetClient(Value: TWinControl);
    procedure SetEnabled(Value: Boolean);
    procedure SetFitPictureSize(Value: Boolean);
    procedure SetInfo(Value: TComponentInfo);
    procedure SetMode(Value: TWallpaperMode);
    procedure SetPicture(Value: TPicture);
    procedure SetShift(Value: Integer);
    procedure SetShiftMode(Value: TShiftMode);
    procedure SetTileWidth(Value: Integer);
    procedure SetTileHeight(Value: Integer);
    procedure SetTransparent(Value: Boolean);
    procedure SetTransparentColor(Value: TColor);
    procedure SetTransparentMode(Value: TTransparentMode);
    procedure SetZigZag(Value: Boolean);
    procedure TileGraphic(AClient: TWinControl; Canvas: TCanvas; Graphic: TGraphic);
    function TransparentColorStored: Boolean;
    procedure UpdateWorkingBmp;
    function HandleWMEraseBkgnd(AClient: TWinControl; var Msg: TMessage): Boolean;
    {$IFDEF VER100_up}
    function HandleWMPaint(AClient: TWinControl; var Msg: TMessage): Boolean;
    {$ENDIF}
    {$IFDEF FormClientNotStored}
    function ClientIsOwnerForm: Boolean;
    function NotClientIsForm: Boolean;
    procedure ReadForm(Reader: TReader);
    procedure WriteForm(Writer: TWriter);
    {$ENDIF}
    procedure WndProc(var Message: TMessage);
    procedure WorkingBmpNeeded;
  protected
    {$IFDEF FormClientNotStored}
    procedure DefineProperties(Filer: TFiler); override;
    {$ENDIF}
    procedure PaintGraphic(AClient: TWinControl; DC: hDC; Graphic: TGraphic);
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    property ClientColor: TColor read GetClientColor;
    property Canvas: TCanvas read FCanvas;
    property WorkingBmp: TBitmap read FWorkingBmp;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    {$IFDEF RX_LIB}
    procedure HookBeforeMessage(Sender: TObject; var Msg: TMessage; var Handled: Boolean);
    procedure HookAfterMessage(Sender: TObject; var Msg: TMessage; var Handled: Boolean);
    {$ENDIF}
    function PaintBackground(AClient: TWinControl; DC: hDC): Boolean;
    property ClientHandle: hWnd read GetClientHandle;
  published
    property AutoSizeTile: Boolean read FAutoSizeTile write SetAutoSizeTile default False;
    property Client: TWinControl read FClient write SetClient
    {$IFDEF FormClientNotStored}
      stored NotClientIsForm
    {$ENDIF};
    property Enabled: Boolean read FEnabled write SetEnabled default True;
    property FitPictureSize: Boolean read FFitPictureSize write SetFitPictureSize default False;
    {$IFDEF GrayMapping}
    property GrayMapped: Boolean read FGrayMapped write SetGrayMapped default False;
    {$ENDIF}
    property Info: TComponentInfo read FInfo write SetInfo;
    property Mode: TWallpaperMode read FMode write SetMode default wpTile;
    property Picture: TPicture read FPicture write SetPicture;
    property TileWidth: Integer read FTileWidth write SetTileWidth;
    property TileHeight: Integer read FTileHeight write SetTileHeight;
    property Transparent: Boolean read FTransparent write SetTransparent default False;
    property TransparentColor: TColor read GetTransparentColor
      write SetTransparentColor stored TransparentColorStored;
    property TransparentMode: TTransparentMode read FTransparentMode
      write SetTransparentMode default tmAuto;
    property Shift: Integer read FShift write SetShift default 0;
    property ShiftMode: TShiftMode read FShiftMode write SetShiftMode default smRows;
    property Zigzag: Boolean read FZigzag write SetZigzag default False;
  end;

{$IFDEF GrayMapping}
procedure GetMappedGrays(var Shades: array of TColor; StartIntensity: Byte);
{$ENDIF}

implementation

uses
{$IFDEF RX_LIB}
  RxHook,
{$ENDIF}
{$IFDEF USE_AM_GIF}
  GIFImage,
  {$DEFINE RECOGNIZE_GIF}
{$ENDIF}
{$IFDEF USE_RX_GIF}
  RxGIF,
  {$DEFINE RECOGNIZE_GIF}
{$ENDIF}
  Forms,
  StdCtrls,
  CommCtrl,
  Comctrls,
  Dialogs;

type
{$IFNDEF VER100_up}
  TCustomForm = TForm;
{$ENDIF}
  THackWinControl = class(TWinControl);
{$IFDEF USE_RX_GIF}
  // make RxGIF.TGIFImage's Bitmap property visible
  THackGIF = class(TGIFImage);
{$ENDIF}
{$IFDEF RR_ResourceString}
resourcestring
{$ELSE}
const
{$ENDIF}
  SChainError = 'Message from %s.%s:'#13#10#13#10'Oops... Messing up %s''s window procedure chain.%s';
  SWorkaround = #13#10#13#10'To avoid this, $DEFINE the NO_DESIGNHOOK '+
    'conditional compilation symbol and rebuild.';

const
  ScrollLineSize = 3;
  ScrollUnit     = 8;

  CM_RECREATEWINDOW  = CM_BASE + 82;
var
  Wallpapers: TList;
{$IFDEF GrayMapping}
type
  TColorGradation = array[Byte] of TColor;
  PColorGradation = ^TColorGradation;
var
  SysColorGradation: PColorGradation;
  Hooked: TList;

procedure UpdateSysColorGradation;
var
  SysHLS: THLSVector;
  FaceLum, MaxLum: THLSValue;
  i: Integer;
begin
  if SysColorGradation = nil then New(SysColorGradation);
  SysHLS := RGBtoHLS(ColorToRGB(clBtnHighlight));
  MaxLum := SysHLS.Luminance;
  SysHLS := RGBtoHLS(ColorToRGB(clBtnFace));
  FaceLum := SysHLS.Luminance;
  with SysHLS do
  begin
    for i := 0 to 192 do
    begin
      Luminance := i * FaceLum div 192;
      SysColorGradation[i] := HLStoRGB(Hue, Luminance, Saturation);
    end;
    for i := 193 to 255 do
    begin
      Luminance := FaceLum + (MaxLum-FaceLum) * (i-192) div (255-192);
      SysColorGradation[i] := HLStoRGB(Hue, Luminance, Saturation);
    end;
  end;
end;

procedure SysColorsNeeded;
begin
  if SysColorGradation = nil then UpdateSysColorGradation;
end;

procedure GetMappedGrays(var Shades: array of TColor; StartIntensity: Byte);
var
  I, Intensity: Integer;
begin
  SysColorsNeeded;
  Intensity := StartIntensity;
  for I := Low(Shades) to High(Shades) do
  begin
    Shades[I] := SysColorGradation[Intensity];
    if Intensity < High(SysColorGradation^) then Inc(Intensity);
  end;
end;

procedure MapGrays(Dest: TBitmap; Source: TGraphic);
var
  Grays: PColorGradation;
  i: Integer;
  SrcWasTransparent: Boolean;
begin
  if Source = nil then Exit;
  New(Grays);
  try
    for i := Low(Grays^) to High(Grays^) do
      Grays[i] := RGB(i, i, i);
    with Dest do
    begin
      if ((Source is TBitmap)
        and (TBitmap(Source).PixelFormat in [pf1bit..pf8bit]))
      {$IFDEF RECOGNIZE_GIF}
      or (Source is TGIFImage)
      {$ENDIF}
      then Assign(Source)
      else
      begin
        PixelFormat := pf8bit;
        Width := Source.Width;
        Height := Source.Height;
        SetBitmapColors(Dest, Grays^, 0);
        SrcWasTransparent := Source.Transparent;
        try
          Source.Transparent := False;
          Canvas.Draw(0, 0, Source);
        finally
          Source.Transparent := SrcWasTransparent;
        end;
      end;
      Handle := CreateMappedBmp(Handle, Grays^, SysColorGradation^);
    end;
  finally
    Dispose(Grays);
  end;
end;
{$ENDIF GrayMapping}
procedure Error(Text: string);
var
  StackTop: record end;
  Stack: record
    EBP: Integer;
    ReturnAddress: Pointer;
  end absolute StackTop;
begin
  raise EMDIWallpaper.Create(Text) at Stack.ReturnAddress;
end;

function TrimmedOffset(Offset, TileDim: Integer): Integer;
begin
  if TileDim <> 0 then
    if Offset > 0 then Offset := (Offset mod TileDim)-TileDim else
    if Offset < 0 then Dec(Offset, (Offset div TileDim)*TileDim);
  Result := Offset;
end;

constructor TMDIWallpaper.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHandle := AllocateHWnd(WndProc);
  FCanvas := TCanvas.Create;
  FTransparentColor := clDefault;
  FPicture := TPicture.Create;
  FPicture.OnChange := PictureChanged;
  FEnabled := True;
  FInfo := TComponentInfo.Create(Self,
           CopyrightOwner,
           '1997-2000',
           '6.00.2',
           FreewareDisclaimer+#13#13'Acknowledgements:'#13+
           '    Michael Burton AMS-Services, Inc.'#13+
           '    Fabio Cavicchio'#13+
           '    Kristoffer Henriksson'#13+
           '    Harald Marschalek',
           WebsiteURL,
           MailAddr);
{$IFDEF GrayMapping}
  HookMainWindow;
{$ENDIF}
  if Wallpapers = nil then
    Wallpapers := TList.Create;
  Wallpapers.Add(Self);
  if csDesigning in ComponentState then
  if Assigned(Owner) then
  if Owner is TWinControl then
    ForceClient(TWinControl(Owner), False);
end;

destructor TMDIWallpaper.Destroy;
begin
  DeallocateHWnd(FHandle);
{$IFDEF GrayMapping}
  UnhookMainWindow;
{$ENDIF}
  UnhookClient;
  Wallpapers.Remove(Self);
  FInfo.Free;
  FPicture.Free;
  FWorkingBmp.Free;
  FCanvas.Free;
  if Assigned(FNewWndProc) then FreeObjectInstance(FNewWndProc);
  inherited;
end;

procedure TMDIWallpaper.Loaded;
begin
  inherited Loaded;
  HookClient;
end;

procedure TMDIWallpaper.HookClient;
begin
{$IFDEF NO_DESIGNHOOK}
  if csDesigning in ComponentState then Exit;
{$ENDIF}
  if Assigned(FClient) then
  if not Assigned(FPrevWndProc) then
  if not ((csLoading in FClient.ComponentState)
          or ((FClient is TCustomForm) and (csDesigning in FClient.ComponentState))) then
  begin
    FClient.HandleNeeded;
    if FClient is TCustomForm then
    if TForm(FClient).FormStyle = fsMDIForm then
    begin
      FClientIsMDIForm := True;
  {$IFNDEF VER100_up} // a little goodie...
      SetWindowLong(ClientHandle, GWL_EXSTYLE, WS_EX_CLIENTEDGE);
  {$ENDIF}
    end;
    if FNewWndProc = nil then
      FNewWndProc := MakeObjectInstance(ClientWndProc);
    FPrevWndProc := Pointer(SetWindowLong(ClientHandle, GWL_WNDPROC, Longint(FNewWndProc)));
    UpdateWorkingBmp;
  end;
end;

procedure TMDIWallpaper.UnhookClient;
const
  WorkaroundStr: array[Boolean] of string = ('', SWorkAround);
begin
  if Assigned(FPrevWndProc) then
  if Assigned(FClient) then
  begin
    if FClient.HandleAllocated then
    begin
      if (Longint(FNewWndProc) <>
          SetWindowLong(ClientHandle, GWL_WNDPROC, Longint(FPrevWndProc)))
          and not (csDestroying in FClient.ComponentState) then
        MessageDlg(Format(SChainError, [Owner.Name, Name, FClient.Name,
          WorkaroundStr[csDesigning in ComponentState]]),
          mtWarning, [mbOK], 0);
    end;
    FPrevWndProc := nil;
    ClientInvalidate;
    FClientIsMDIForm := False;
  end;
end;

function TMDIWallpaper.HandleWMEraseBkgnd(AClient: TWinControl; var Msg: TMessage): Boolean;
begin
  Result := FEnabled and FPictureValid;
  if Result then
  begin
  {$IFDEF VER100_up}
    if not IsIconic(AClient.Handle) then
    if not THackWinControl(AClient).FDoubleBuffered or (Msg.wParam = Msg.lParam) then
  {$ENDIF}
      PaintBackground(
             AClient,
             TWMEraseBkgnd(Msg).DC);
    Msg.Result := 1;
  end;
end;
{$IFDEF VER100_up}
function TMDIWallpaper.HandleWMPaint(AClient: TWinControl; var Msg: TMessage): Boolean;
var
  DC, MemDC: HDC;
  MemBitmap, OldBitmap: HBITMAP;
  PS: TPaintStruct;
  ClientRect: TRect;
begin
  Result := False;
  if FEnabled and FPictureValid then
  if THackWinControl(AClient).FDoubleBuffered and (TWMPaint(Msg).DC = 0) then
  begin
    DC := GetDC(0);
    ClientRect := AClient.ClientRect;
    MemBitmap := CreateCompatibleBitmap(DC, ClientRect.Right, ClientRect.Bottom);
    ReleaseDC(0, DC);
    MemDC := CreateCompatibleDC(0);
    OldBitmap := SelectObject(MemDC, MemBitmap);
    try
      DC := BeginPaint(AClient.Handle, PS);
      PaintBackground(AClient, MemDC);
      Msg.Result := AClient.Perform(WM_PAINT, MemDC, 0);
      BitBlt(DC, 0, 0, ClientRect.Right, ClientRect.Bottom, MemDC, 0, 0, SRCCOPY);
      EndPaint(AClient.Handle, PS);
    finally
      SelectObject(MemDC, OldBitmap);
      DeleteDC(MemDC);
      DeleteObject(MemBitmap);
    end;
    Result := True;
  end;
end;
{$ENDIF VER100_up}
{$IFDEF FormClientNotStored}
function TMDIWallpaper.NotClientIsForm: Boolean;
begin
  Result := (FClient <> nil) and not (FClient is TCustomForm);
end;

function TMDIWallpaper.ClientIsOwnerForm: Boolean;
begin
  Result := (FClient <> nil) and ((FClient = Owner) and
    (Owner is TCustomForm));
end;

procedure TMDIWallpaper.ReadForm(Reader: TReader);
begin
  if Reader.ReadBoolean then
    if Owner is TCustomForm then FClient := TWinControl(Owner);
end;

procedure TMDIWallpaper.WriteForm(Writer: TWriter);
begin
  Writer.WriteBoolean(ClientIsOwnerForm);
end;

procedure TMDIWallpaper.DefineProperties(Filer: TFiler);
{$IFDEF WIN32}
  function DoWrite: Boolean;
  begin
    if Assigned(Filer.Ancestor) then
      Result := ClientIsOwnerForm <> TMDIWallpaper(Filer.Ancestor).ClientIsOwnerForm
    else Result := ClientIsOwnerForm;
  end;
{$ENDIF}
begin
  inherited DefineProperties(Filer);
  Filer.DefineProperty('ClientIsOwnerForm', ReadForm, WriteForm,
    {$IFDEF WIN32} DoWrite {$ELSE} ClientIsOwnerForm {$ENDIF});
end;
{$ENDIF FormClientNotStored}
procedure TMDIWallpaper.Notification(AComponent: TComponent; Operation: TOperation);
begin
  if AComponent = FClient then
  if Operation = opRemove then
  begin
    UnhookClient;
    FClient := nil;
  end;
  inherited;
end;

procedure TMDIWallpaper.SetClient(Value: TWinControl);
begin
  ForceClient(Value, True);
end;

procedure TMDIWallpaper.ForceClient(Value: TWinControl; Force: Boolean);
var
  I: Integer;
begin
  if Value <> FClient then
  begin
    if not (csDesigning in ComponentState) and
       not (csLoading in ComponentState) then
      Error('Cannot change a TMDIWallpaper''s Client property at runtime.');
    for I := 0 to Wallpapers.Count-1 do
      if Wallpapers[I] <> Self then
      with TMDIWallpaper(Wallpapers[I]) do
      if Client = Value then
      if Force then
      begin
        Client := nil;
        Break;
      end
      else Exit;
    UnhookClient;
{$IFDEF VER130_up}
    if Assigned(FClient) then
      RemoveFreeNotification(FClient);
{$ENDIF}
    FClient := Value;
    if Assigned(Value) then
    begin
      FreeNotification(Value);
      if not (csLoading in ComponentState) then HookClient;
    end;
  end;
end;

function TMDIWallpaper.GetClientRect(AClient: TWinControl): TRect;
begin
  if AClient = FClient then
    Windows.GetClientRect(ClientHandle, Result)
  else
    Result := AClient.ClientRect;
end;

function TMDIWallpaper.GetVirtualClientRect(AClient: TWinControl): TRect;
var
  ScrollInfo: TScrollInfo;
  R: TRect;
  TV: TCustomTreeView absolute AClient;
begin
  Result := GetClientRect(AClient);
  ZeroMemory(@ScrollInfo, SizeOf(ScrollInfo));
  ScrollInfo.cbSize := SizeOf(ScrollInfo);
  ScrollInfo.fMask := SIF_POS + SIF_RANGE;
  GetScrollInfo(AClient.Handle, SB_HORZ, ScrollInfo);
  if ScrollInfo.nMax > Result.Right then Result.Right := ScrollInfo.nMax;
  Dec(Result.Left, ScrollInfo.nPos);
  Dec(Result.Right, ScrollInfo.nPos);
  GetScrollInfo(AClient.Handle, SB_VERT, ScrollInfo);
  if AClient is TCustomListBox then
  with TListBox(AClient) do
  begin
    ScrollInfo.nPos := ScrollInfo.nPos * ItemHeight;
    ScrollInfo.nMax := ScrollInfo.nMax * ItemHeight;
  end else
  if (AClient is TCustomTreeView)
  and Assigned(TV.TopItem)
  and TreeView_GetItemRect(TV.Handle, TV.TopItem.ItemID, R, False) then
  begin
    ScrollInfo.nPos := ScrollInfo.nPos * R.Bottom;
    ScrollInfo.nMax := ScrollInfo.nMax * R.Bottom;
  end;
  if ScrollInfo.nMax > Result.Bottom then Result.Bottom := ScrollInfo.nMax;
  Dec(Result.Top, ScrollInfo.nPos);
  Dec(Result.Bottom, ScrollInfo.nPos);
end;

procedure TMDIWallpaper.TileGraphic(AClient: TWinControl; Canvas: TCanvas; Graphic: TGraphic);
var
  i, j: Integer;
  iMin: Integer;
  FirstVisibleRow,
  S, OddShift: Integer;
  Left, Top, Width, Height: Integer;
  HorzOffset, VertOffset: Integer;
begin
  with GetClientRect(AClient) do
  begin
    Width  := Right;
    Height := Bottom;
  end;
  if (AClient = FClient) and FClientIsMDIForm then
  begin
    HorzOffset := FHorzOffset;
    VertOffset := FVertOffset;
  end else
  with GetVirtualClientRect(AClient) do
  begin
    HorzOffset := Left;
    VertOffset := Top;
  end;
  if FShiftMode = smRows then
  begin
    FirstVisibleRow := -VertOffset div FTileHeight;
    if VertOffset > 0 then Dec(FirstVisibleRow);
  end else
  begin
    FirstVisibleRow := -HorzOffset div FTileWidth;
    if HorzOffset > 0 then Dec(FirstVisibleRow);
  end;
  Left := TrimmedOffset(HorzOffset, FTileWidth);
  Top  := TrimmedOffset(VertOffset, FTileHeight);
  Dec(Width, Left);
  Dec(Height, Top);

  OddShift := 0;  // just to satisfy the compiler
  if FShiftMode = smRows then
  begin
    if FZigZag then
    begin
      OddShift := FTileWidth div 2;
      if Odd(FirstVisibleRow)
        then S := OddShift
        else S := 0;
    end else
    begin
      S := (FirstVisibleRow * FShift) mod FTileWidth;
      if S < 0 then Inc(S, FTileWidth);
    end;
    for j := 0 to (Height-1) div FTileHeight do
    begin
      if S = 0 then iMin := 0 else iMin := -1;
      for i := iMin to (Width-1) div FTileWidth do
        Canvas.Draw(Left+i*FTileWidth+S, Top+j*FTileHeight, Graphic);
      if FZigZag then
        S := S xor OddShift
      else
      begin
        Inc(S, FShift);
        S := S mod FTileWidth;
      end;
    end;
  end else
  begin
    if FZigZag then
    begin
      OddShift := FTileHeight div 2;
      if Odd(FirstVisibleRow)
        then S := OddShift
        else S := 0;
    end else
    begin
      S := (FirstVisibleRow * FShift) mod FTileHeight;
      if S < 0 then Inc(S, FTileHeight);
    end;
    for i := 0 to (Width-1) div FTileWidth do
    begin
      if S = 0 then iMin := 0 else iMin := -1;
      for j := iMin to (Height-1) div FTileHeight do
        Canvas.Draw(Left+i*FTileWidth, Top+j*FTileHeight+S, Graphic);
      if FZigZag then
        S := S xor OddShift
      else
      begin
        Inc(S, FShift);
        S := S mod FTileHeight;
      end;
    end;
  end;
end;

procedure TMDIWallpaper.ClientInvalidate;
begin
  if not (csReading in ComponentState) and
     not (csDestroying in FClient.ComponentState) then
    InvalidateRect(ClientHandle, nil, True);
end;

procedure TMDIWallpaper.PaintGraphic(AClient: TWinControl; DC: hDC; Graphic: TGraphic);
var
  R, Rg: TRect;
  X, Y, W, H: Integer;
  SaveIndex: Integer;
  WindowStyle: DWORD;
  GraphW, GraphH: Integer;
  Factor, FactorVert: Single;
  ScrollInfo: TScrollInfo;
begin
  SaveIndex := SaveDC(DC);
  with Canvas do
  begin
    Handle := DC;
    if FMode = wpTile then
      TileGraphic(AClient, Canvas, Graphic)
    else
    begin
      if (AClient = FClient) and FClientIsMDIForm then
      begin
        R := GetClientRect(AClient);
      // We don't want the background move
      // when scrollbars appear or disappear:
        WindowStyle := GetWindowLong(ClientHandle, GWL_STYLE);
        if (WindowStyle and WS_HSCROLL) <> 0 then
          Inc(R.Bottom, GetSystemMetrics(SM_CYHSCROLL));
        if (WindowStyle and WS_VSCROLL) <> 0 then
          Inc(R.Right, GetSystemMetrics(SM_CXVSCROLL));
      end
      else R := GetVirtualClientRect(AClient);
      W := R.Right-R.Left;
      H := R.Bottom-R.Top;
      GraphW := Graphic.Width;
      GraphH := Graphic.Height;
      if FFitPictureSize and not (FMode = wpStretch) then
      begin
        Factor     := W/GraphW;
        FactorVert := H/GraphH;
        if FactorVert < Factor then Factor := FactorVert;
        GraphW := Round(Factor * GraphW);
        GraphH := Round(Factor * GraphH);
      end;
      Rg := Rect(0, 0, GraphW, GraphH);
      Brush := AClient.Brush;
      case FMode of
        wpCenter:
          begin
            X := R.Left+(W - GraphW) div 2;
            Y := R.Top+(H - GraphH) div 2;
            FillRect(Rect(R.Left, R.Top, R.Right, Y));
            FillRect(Rect(R.Left, Y, X, Y+GraphH));
            FillRect(Rect(X+GraphW, Y, R.Right, Y+GraphH));
            FillRect(Rect(R.Left, Y+GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, X, Y);
          end;
        wpStretch: Rg := R;
        wpTopLeft:
          begin
            FillRect(Rect(R.Left+GraphW, R.Top, R.Right, R.Top+GraphH));
            FillRect(Rect(R.Left, R.Top+GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, R.Left, R.Top);
          end;
        wpTopRight:
          begin
            FillRect(Rect(R.Left, R.Top, R.Right-GraphW, R.Top+GraphH));
            FillRect(Rect(R.Left, R.Top+GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, R.Right-GraphW, R.Top);
          end;
        wpBottomLeft:
          begin
            FillRect(Rect(R.Left, R.Top, R.Right, R.Bottom-GraphH));
            FillRect(Rect(R.Left+GraphW, R.Bottom-GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, R.Left, R.Bottom-GraphH);
          end;
        wpBottomRight:
          begin
            FillRect(Rect(R.Left, R.Top, R.Right, R.Bottom-GraphH));
            FillRect(Rect(R.Left, R.Bottom-GraphH, R.Right-GraphW, R.Bottom));
            OffsetRect(Rg, R.Right-GraphW, R.Bottom-GraphH);
          end;
        wpTop:
          begin
            X := R.Left+(W - GraphW) div 2;
            FillRect(Rect(R.Left, R.Top, X, GraphH));
            FillRect(Rect(X+GraphW, R.Top, R.Right, GraphH));
            FillRect(Rect(R.Left, R.Top+GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, X, R.Top);
          end;
        wpLeft:
          begin
            Y := R.Top+(H - GraphH) div 2;
            FillRect(Rect(R.Left, R.Top, R.Right, Y));
            FillRect(Rect(R.Left+GraphW, Y, R.Right, Y+GraphH));
            FillRect(Rect(R.Left, Y+GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, R.Left, Y);
          end;
        wpBottom:
          begin
            X := R.Left+(W - GraphW) div 2;
            Y := R.Bottom-GraphH;
            FillRect(Rect(R.Left, R.Top, R.Right, Y));
            FillRect(Rect(R.Left, Y, X, R.Bottom));
            FillRect(Rect(X+GraphW, Y, R.Right, R.Bottom));
            OffsetRect(Rg, X, Y);
          end;
        wpRight:
          begin
            X := R.Right-GraphW;
            Y := R.Top+(H - GraphH) div 2;
            FillRect(Rect(R.Left, R.Top, R.Right, Y));
            FillRect(Rect(R.Left, Y, X, Y+GraphH));
            FillRect(Rect(R.Left, Y+GraphH, R.Right, R.Bottom));
            OffsetRect(Rg, X, Y);
          end;
      end;
      StretchDraw(Rg, Graphic);
    end;
    Handle := 0;
  end;
  RestoreDC(DC, SaveIndex);
end;

function TMDIWallpaper.PaintBackground(AClient: TWinControl; DC: hDC): Boolean;
var
  Graphic: TGraphic;
begin
  Result := FPictureValid and AClient.HandleAllocated;
  if Result then
  begin
    Graphic := FWorkingBmp;
    if Graphic = nil then
      Graphic := FPicture.Graphic;
    PaintGraphic(AClient, DC, Graphic);
  end;
end;

function GetMDIClientScrollDelta(ClientHandle: hWnd; ScrollBar: Integer; Message: TWMScroll): Integer;
var
  ScrollInfo: TScrollInfo;
  Delta, MaxChange: Integer;
begin
  ScrollInfo.cbSize := SizeOf(ScrollInfo);
  ScrollInfo.fMask := SIF_ALL;
  GetScrollInfo(ClientHandle, ScrollBar, ScrollInfo);
  Delta := 0;
  case Message.ScrollCode of
    SB_LINELEFT:
      begin
        Delta := ScrollInfo.nPos-ScrollInfo.nMin;
        if Delta > ScrollLineSize then Delta := ScrollLineSize;
      end;
    SB_LINERIGHT:
      with ScrollInfo do
      begin
        Delta := nPage-1;
        if Delta < 0 then Delta := 0;
        Delta := nPos-(nMax-Delta);
        if Delta < -ScrollLineSize then Delta := -ScrollLineSize;
      end;
    SB_PAGELEFT:
      with ScrollInfo do
      begin
        Delta := nPage-1;
        if Delta < 0 then Delta := 0;
        if Delta > nPos-nMin then Delta := nPos-nMin;
      end;
    SB_PAGERIGHT:
      with ScrollInfo do
      begin
        Delta := nPage-1;
        if Delta < 0 then Delta := 0;
        MaxChange := (nMax-Delta)-nPos;
        if Delta > MaxChange then Delta := MaxChange;
        Delta := -Delta;
      end;
    SB_THUMBPOSITION: Delta := -Message.Pos;
  end;
  Result := Delta * ScrollUnit;
end;

procedure TMDIWallpaper.ClientWndProc(var Message: TMessage);

  procedure InvalidateBackground;
  begin
    InvalidateRect(ClientHandle, nil, True);
  end;

begin
  if ClientHandle <> 0 then
  with Message do
  begin
    if FClientIsMDIForm then
    begin
      if Msg = WM_ERASEBKGND then
      if FEnabled and PaintBackground(FClient, TWMEraseBkgnd(Message).DC) then
      begin
        Result := 1;
        Exit;
      end;
    end
    else // not FClientIsMDIForm
    begin
      if FEnabled then
      case Msg of
        {$IFDEF VER100_up}
        WM_PAINT:
          if HandleWMPaint(FClient, Message) then Exit;
        {$ENDIF}
        WM_ERASEBKGND:
          if HandleWMEraseBkgnd(FClient, Message) then Exit;
      end;
      Result := CallWindowProc(FPrevWndProc, ClientHandle, Msg, wParam, lParam);
      if Msg = CM_RELEASE then Exit;
    end;
    case Msg of
      WM_DESTROY:
        begin
          UnhookClient;
          if not (csDestroying in FClient.ComponentState) then
            PostMessage(FHandle, CM_RECREATEWINDOW, 0, 0);
        end;
      WM_SIZE:
        if not (FMode in [wpTile, wpTopLeft]) then
          InvalidateBackground;
      WM_HSCROLL:
        begin
          if FClientIsMDIForm then
            Inc(FHorzOffset, GetMDIClientScrollDelta(ClientHandle,
                                SB_HORZ, TWMScroll(Message)));
          if FMode <> wpTile then InvalidateBackground;
        end;
      WM_VSCROLL:
        begin
          if FClientIsMDIForm then
            Inc(FVertOffset, GetMDIClientScrollDelta(ClientHandle,
                                SB_VERT, TWMScroll(Message)));
          if FMode <> wpTile then InvalidateBackground;
        end;
    end;
    if FClientIsMDIForm then
      Result := CallWindowProc(FPrevWndProc, ClientHandle, Msg, wParam, lParam);
  end;
end;

function TMDIWallpaper.GetClientColor: TColor;
begin
  Result := THackWinControl(FClient).Color;
end;

function TMDIWallpaper.GetClientHandle: hWnd;
begin
  Result := 0;
  if FClientIsMDIForm then
    Result := TForm(FClient).ClientHandle
  else if FClient.HandleAllocated then
    Result := FClient.Handle;
end;

function TMDIWallpaper.GetTransparentColor: TColor;
var
  Bmp: TBitmap;
begin
  Bmp := nil;
  if FTransparentColor = clDefault then
  if FPicture.Graphic is TBitmap then
    Bmp := TBitmap(FPicture.Graphic)
  {$IFDEF RECOGNIZE_GIF}
  else if FPicture.Graphic is TGIFImage then
    {$IFDEF USE_RX_GIF}
    Bmp := THackGIF(FPicture.Graphic).Bitmap
    {$ELSE}
    Bmp := TGIFImage(FPicture.Graphic).Bitmap
    {$ENDIF}
  {$ENDIF};
  if Assigned(Bmp) then
  begin
    if Bmp.Monochrome then
      Result := clWhite
    else
      Result := Bmp.Canvas.Pixels[0, Bmp.Height - 1];
  end
  else Result := ColorToRGB(FTransparentColor);
  Result := Result or $02000000;
end;

procedure TMDIWallpaper.PictureChanged(Sender: TObject);
begin
  if FInUpdWorkingBmp then Exit;
  FPictureValid := (FPicture.Width > 0) and (FPicture.Height > 0);
  if (FTileWidth < Picture.Width)
  or (FTileHeight < Picture.Height)
  or (AutoSizeTile and FPictureValid) then
  begin
    FTileWidth := Picture.Width;
    FTileHeight := Picture.Height;
  end;
  {$IFDEF VER100_up}
  with Picture do
    if Graphic <> nil then
      Graphic.Transparent := FTransparent;
  {$ENDIF}
  UpdateWorkingBmp;
end;

procedure TMDIWallpaper.SetAutoSizeTile(Value: Boolean);
begin
  if FAutoSizeTile <> Value then
  begin
    FAutoSizeTile := Value;
    if Mode = wpTile then
      if (TileWidth <> Picture.Width)
      or (TileHeight <> Picture.Height) then
        PictureChanged(Self);
  end;
end;

procedure TMDIWallpaper.SetEnabled(Value: Boolean);
begin
  if Value <> FEnabled then
  begin
    FEnabled := Value;
    ClientInvalidate;
  end;
end;

procedure TMDIWallpaper.SetFitPictureSize(Value: Boolean);
begin
  if FFitPictureSize <> Value then
  begin
    FFitPictureSize := Value;
    if not (FMode in [wpTile, wpStretch]) then ClientInvalidate;
  end;
end;

procedure TMDIWallpaper.SetInfo(Value: TComponentInfo);
begin
// dummy method to make Info property visible in Object Inspector
end;

procedure TMDIWallpaper.SetMode(Value: TWallpaperMode);
var
  TileModeChanged: Boolean;
begin
  if Value <> FMode then
  begin
    TileModeChanged := (FMode = wpTile) or (Value = wpTile);
    FMode := Value;
    if TileModeChanged
    and ((FTileWidth <> Picture.Width) or (FTileHeight <> Picture.Height))
      then PictureChanged(Self)
      else ClientInvalidate;
  end;
end;

procedure TMDIWallpaper.SetPicture(Value: TPicture);
begin
  FPicture.Assign(Value);
end;

procedure TMDIWallpaper.SetShift(Value: Integer);
begin
  if Value <> FShift then
  begin
    FShift := Value;
    FZigZag := False;
    if FMode = wpTile then ClientInvalidate;
  end;
end;

procedure TMDIWallpaper.SetShiftMode(Value: TShiftMode);
begin
  if FShiftMode <> Value then
  begin
    FShiftMode := Value;
    if FMode = wpTile then ClientInvalidate;
  end;
end;

procedure TMDIWallpaper.SetTileWidth(Value: Integer);
begin
  if AutoSizeTile then Exit;
  if Value < Picture.Width then Value := Picture.Width;
  if Value <> FTileWidth then
  begin
    FTileWidth := Value;
    if Mode = wpTile then PictureChanged(Self);
  end;
end;

procedure TMDIWallpaper.SetTileHeight(Value: Integer);
begin
  if AutoSizeTile then Exit;
  if Value < Picture.Height then Value := Picture.Height;
  if Value <> FTileHeight then
  begin
    FTileHeight := Value;
    if Mode = wpTile then PictureChanged(Self);
  end;
end;

procedure TMDIWallpaper.SetTransparent(Value: Boolean);
begin
  if Value <> FTransparent then
  begin
    FTransparent := Value;
    PictureChanged(Self);
  end;
end;

procedure TMDIWallpaper.SetTransparentColor(Value: TColor);
begin
  if Value <> FTransparentColor then
  begin
    if Value = clDefault then
      FTransparentMode := tmAuto else
      FTransparentMode := tmFixed;
    FTransparentColor := Value;
    if Transparent then UpdateWorkingBmp;
  end;
end;

procedure TMDIWallpaper.SetTransparentMode(Value: TTransparentMode);
begin
  if Value <> FTransparentMode then
  begin
    if Value = tmAuto then
      SetTransparentColor(clDefault) else
      SetTransparentColor(GetTransparentColor);
  end;
end;

procedure TMDIWallpaper.SetZigZag(Value: Boolean);
begin
  if Value <> FZigZag then
  begin
    FZigZag := Value;
    if FMode = wpTile then ClientInvalidate;
  end;
end;

function TMDIWallpaper.TransparentColorStored: Boolean;
begin
  Result := FTransparentMode = tmFixed;
end;
{
  TMDIWallpaper.UpdateWorkingBmp
  Transparency: all except TJPEGImage
  GrayMapping: all except TIcon, TMetafile
}
procedure TMDIWallpaper.UpdateWorkingBmp;
var
  X, Y: Integer;
  IsBitmap: Boolean;

  procedure DrawGraphic(Graphic: TGraphic);
  begin
    with FWorkingBmp.Canvas do
    begin
      Brush.Color := ClientColor;
      FillRect(Rect(0, 0, FTileWidth, FTileHeight));
      Draw(X, Y, Graphic);
    end;
  end;

  function CreateTransparentBmp(Graphic: TGraphic): TBitmap;
  var
    W, H: Integer;
  begin
    Result := TBitmap.Create;
    if IsBitmap then
      Result.Assign(Graphic)
    else
    begin
      W := Graphic.Width;
      H := Graphic.Height;
      Result.Width := W;
      Result.Height := H;
      with Result.Canvas do
      begin
        Brush.Color := TransparentColor;
        FillRect(Rect(0, 0, W, H));
        Draw(0, 0, Graphic);
      end;
    end;
  end;

var
  Bmp: TBitmap;
{$IFDEF GrayMapping}
  MaskBmp: TBitmap;
  {$IFNDEF NO_JPEG}
  GrayscaleState: Boolean;
  {$ENDIF}
{$ENDIF}
{$IFNDEF NO_JPEG}
  IsJPEG: Boolean;
{$ENDIF}
  IsTransparent: Boolean;
  IsTranspGraphic: Boolean;
  IsIcon: Boolean;
  SizeTailored: Boolean;
begin
  if FInUpdWorkingBmp
  or (FClient = nil) then Exit;
  with FPicture do
  if Graphic <> nil then
  try
    FInUpdWorkingBmp := True;
    SizeTailored := False;
    X := 0;
    Y := 0;
    if FMode = wpTile then
    begin
      X := FTileWidth-Graphic.Width;
      Y := FTileHeight-Graphic.Height;
      SizeTailored := (X <> 0) or (Y <> 0);
      X := X div 2;
      Y := Y div 2;
    end;
    IsBitmap := (Graphic is TBitmap)
                {$IFDEF RECOGNIZE_GIF}
                or (Graphic is TGIFImage) // GIF goes as bitmap here
                {$ENDIF};
    IsIcon := Graphic is TIcon;
    IsTranspGraphic := IsIcon or (Graphic is TMetafile);
    // if Graphic is transparent
{$IFNDEF VER100_up}
    IsTransparent := Transparent or IsTranspGraphic;
    if IsTransparent or SizeTailored then
{$ELSE}
    {$IFDEF NO_JPEG}
    IsTransparent := Transparent or IsTranspGraphic;
    {$ELSE}
    IsJPEG := Graphic is TJPEGImage;
    IsTransparent := (Transparent and not IsJPEG) or IsTranspGraphic;
    {$ENDIF}
    if IsTransparent or FGrayMapped or SizeTailored then
{$ENDIF}
    begin
      WorkingBmpNeeded;
      if IsTranspGraphic then
      with FWorkingBmp.Canvas do
      begin
        Brush.Color := ClientColor;
        FillRect(Rect(0, 0, FTileWidth, FTileHeight));
        Draw(X, Y, Graphic);
      end else
      if IsTransparent then // and not IsTranspGraphic
      begin
        Bmp := CreateTransparentBmp(Graphic);
        try
          with TImageList.CreateSize(Graphic.Width, Graphic.Height) do
          try
            {$IFDEF GrayMapping}
            if FGrayMapped then
            begin
              MaskBmp := TBitmap.Create;
              with MaskBmp do
              try
                Assign(Bmp);
                Mask(GetTransparentColor);
                MapGrays(Bmp, FPicture.Graphic);
                Add(Bmp, MaskBmp);
              finally
                Free;
              end;
            end
            else
            {$ENDIF GrayMapping}
              AddMasked(Bmp, GetTransparentColor);
            {$IFDEF RR_EnhancedTBitmap}
            FWorkingBmp.HandleType := bmDDB; // otherwise eventually background color won't appear correctly
            {$ENDIF}
            with FWorkingBmp.Canvas do
            begin
              Brush.Color := ClientColor;
              FillRect(Rect(0, 0, FTileWidth, FTileHeight));
            end;
            BkColor := ColorToRGB(ClientColor);
            Draw(FWorkingBmp.Canvas, X, Y, 0);
          finally
            Free;
          end
        finally
          Bmp.Free;
        end
      end
      {$IFDEF GrayMapping}
      else if GrayMapped then// and not Transparent
      begin
        Bmp := TBitmap.Create;
        try
          {$IFNDEF NO_JPEG}
          if IsJPEG then
          with TJPEGImage(Graphic) do
          begin
            GrayscaleState := Grayscale;
            try
              Grayscale := True;
              Bmp.Assign(Graphic);
            finally
              Grayscale := GrayscaleState;
            end;
          end;
          {$ENDIF ndef NO_JPEG}
          MapGrays(Bmp, FPicture.Graphic);
          DrawGraphic(Bmp);
        finally
          Bmp.Free;
        end
      end
      {$ENDIF GrayMapping}
      else // if SizeTailored
        DrawGraphic(Picture.Graphic);
      ClientInvalidate;
      Exit;
    end;
  finally
    FInUpdWorkingBmp := False;
  end;
  FWorkingBmp.Free;
  FWorkingBmp := nil;
  ClientInvalidate;
end;

procedure TMDIWallpaper.WndProc(var Message: TMessage);
begin
  try
    with Message do
      if Msg = CM_RECREATEWINDOW then
        HookClient
      else
        Result := DefWindowProc(FHandle, Msg, wParam, lParam);
  except
    Application.HandleException(Self);
  end;
end;

procedure TMDIWallpaper.WorkingBmpNeeded;
var
  W, H: Integer;
begin
  if FWorkingBmp = nil then FWorkingBmp := TBitmap.Create;
  if FMode = wpTile then
  begin
    W := FTileWidth;
    H := FTileHeight;
  end else
  begin
    W := FPicture.Graphic.Width;
    H := FPicture.Graphic.Height;
  end;
  FWorkingBmp.Width  := W;
  FWorkingBmp.Height := H;
end;
{$IFDEF RX_LIB}
procedure TMDIWallpaper.HookBeforeMessage(Sender: TObject;
  var Msg: TMessage; var Handled: Boolean);
var
  Control: TWinControl;
begin
  Control := TRxWindowHook(Sender).WinControl;
  if FEnabled and Control.HandleAllocated then
  case Msg.Msg of
    {$IFDEF VER100_up}
    WM_PAINT:
      Handled := HandleWMPaint(Control, Msg);
    {$ENDIF}
    WM_ERASEBKGND:
      Handled := HandleWMEraseBkgnd(Control, Msg);
  end;
end;

procedure TMDIWallpaper.HookAfterMessage(Sender: TObject;
  var Msg: TMessage; var Handled: Boolean);

  procedure InvalidateBackground;
  var
    Control: TWinControl;
  begin
    Control := TRxWindowHook(Sender).WinControl;
    if Control.HandleAllocated then
      InvalidateRect(Control.Handle, nil, True);
  end;

begin
  if FEnabled then
  case Msg.Msg of
    WM_SIZE:
        if not (FMode in [wpTile, wpTopLeft]) then
          InvalidateBackground;
    WM_HSCROLL:
        if FMode <> wpTile then InvalidateBackground;
    WM_VSCROLL:
        if FMode <> wpTile then InvalidateBackground;
  end;
end;
{$ENDIF RX_LIB}
{$IFDEF GrayMapping}
class function TMDIWallpaper.MainWindowHook(var Message: TMessage): Boolean;
var
  I: Integer;
begin
  Result := False;
  if Message.Msg = WM_SYSCOLORCHANGE then
  begin
    UpdateSysColorGradation;
    for I := 0 to Hooked.Count-1 do TMDIWallpaper(Hooked[i]).SysColorChange;
  end;
end;
{$ENDIF}
{$IFDEF GrayMapping}
procedure TMDIWallpaper.HookMainWindow;
begin
  if Hooked = nil then
  begin
    Hooked := TList.Create;
    Application.HookMainWindow(MainWindowHook);
  end;
  Hooked.Add(Self);
end;

procedure TMDIWallpaper.UnhookMainWindow;
begin
  Hooked.Remove(Self);
  if Hooked.Count = 0 then
  begin
    Application.UnhookMainWindow(MainWindowHook);
    Hooked.Free;
    Hooked := nil;
  end;
end;

procedure TMDIWallpaper.SysColorChange;
begin
  if FGrayMapped then UpdateWorkingBmp;
end;

procedure TMDIWallpaper.SetGrayMapped(Value: Boolean);
begin
  if Value <> FGrayMapped then
  begin
    if Value = True then
      SysColorsNeeded;
    FGrayMapped := Value;
    UpdateWorkingBmp;
  end;
end;

initialization
  Hooked := nil;
finalization
  if Assigned(SysColorGradation) then
    Dispose(SysColorGradation);
  Hooked.Free;
  Wallpapers.Free;
{$ENDIF}
end.

