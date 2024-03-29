{$IFDEF VER130}
{$DEFINE VER5U}
{$ENDIF}

{$IFDEF VER140}
{$DEFINE VER5U}
{$DEFINE VER6U}
{$ENDIF}


unit XPPlus;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, ComCtrls,  Forms,Dialogs,
  Menus, Messages, Commctrl, ExtCtrls, StdCtrls, Buttons,grids,ScrollXPBar
  ,DbGrids,DBCtrls;

type

  TXPContainer = (xccForm, xccFrame, xccToolbar, xccCoolbar, xccControlbar, xccPanel,
                  xccScrollBox, xccGroupBox, xccTabSheet, xccPageScroller,xccGrid);
  TXPContainers = set of TXPContainer;

  TXPControl = (xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo,
                xcEdit, xcMaskEdit, xcMemo, xcRichEdit, xcCheckBox, xcRadioButton,
                xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox,xcScroll,xcGrid);

  TXPControls = set of TXPControl;

  TXPPlus = class(TComponent) //Author: Khaled Shagrouni  URL: http://www.shagrouni.com/english/software/xpmenu.html e-mail: shagrouni@hotmail.com Version 2.23, 08.10.2002
  Public
    FActive: boolean;
    {Changes MMK FForm to TScrollingWinControl}
    FForm: TScrollingWinControl;
    FFont: TFont;

    Is16Bit: boolean;
    FOverrideOwnerDraw: boolean;
    FGradient: boolean;
    FFlatMenu: boolean;
    FAutoDetect: boolean;
    FXPContainers: TXPContainers;
    FXPControls: TXPControls;
    FGrayLevel: byte;
    FDimLevel: byte;
    FDrawMenuBar: boolean;
    FUseDimColor: boolean;
    FDimParentColor, FDimParentColorSelect: integer;
   // FUseParentClor: boolean;
    procedure SetActive(const Value: boolean);
    procedure ReMoveScrollXp(Comonent:TComponent);
    procedure SetAutoDetect(const Value: boolean);
    procedure SetForm(const Value: TScrollingWinControl);
    procedure SetFont(const Value: TFont);
    procedure SetColor(const Value: TColor);
    procedure SetIconBackColor(const Value: TColor);
    procedure SetMenuBarColor(const Value: TColor);
    procedure SetCheckedColor(const Value: TColor);
    procedure SetDisabledColor(const Value: TColor);
    procedure SetSelectColor(const Value: TColor);
    procedure SetSelectBorderColor(const Value: TColor);
    procedure SetSeparatorColor(const Value: TColor);
    procedure SetSelectFontColor(const Value: TColor);
    procedure SetIconWidth(const Value: integer);
    procedure SetDrawSelect(const Value: boolean);
    procedure SetUseSystemColors(const Value: boolean);
    procedure SetOverrideOwnerDraw(const Value: boolean);
    procedure SetGradient(const Value: boolean);
    procedure SetFlatMenu(const Value: boolean);
    procedure SetXPContainers(const Value: TXPContainers);
    procedure SetXPControls(const Value: TXPControls);
    procedure SetDrawMenuBar(const Value: boolean);
    procedure SetUseDimColor(const Value: boolean);
    procedure SetXPScroll(Control:TControl;SCStyle:TScrollStyle;Rect:TRect;Single:Boolean);
    procedure AddXPScroll(Control:TControl;SCStyle:TScrollStyle);

  protected
    procedure InitItems(wForm: TWinControl; Enable, Update: boolean);
    procedure InitItem(Comp: TComponent; Enable, Update: boolean); // Tom: "Thomas Knoblauch" <thomas@tom-the-bomb.de> 27.08
    procedure DrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      Selected: Boolean);
    procedure MenueDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      Selected: Boolean);
    {$IFDEF VER5U}
    procedure ToolBarDrawButton(Sender: TToolBar;
      Button: TToolButton; State: TCustomDrawState; var DefaultDraw: Boolean);
    {$ENDIF}
    procedure ControlBarPaint(Sender: TObject; Control: TControl;
      Canvas: TCanvas; var ARect: TRect; var Options: TBandPaintOptions);

    procedure ActivateMenuItem(MenuItem: TMenuItem);
    procedure DrawTopMenuItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      BckColor:Tcolor; IsRightToLeft: boolean);
    procedure DrawCheckedItem(FMenuItem: TMenuItem; Selected, Enabled,
     HasImgLstBitmap: boolean; ACanvas: TCanvas; CheckedRect: TRect);

    procedure MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);

    function GetImageExtent(MenuItem: TMenuItem): TPoint;
    function TopMenuFontColor(ACanvas: TCanvas; Color: TColor): TColor;
    procedure DrawGradient(ACanvas: TCanvas; ARect: TRect;
     IsRightToLeft: boolean);

    procedure DrawWindowBorder(hWnd: HWND; IsRightToLeft: boolean);

    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;

  public
    FColor: TColor;
    FFormColor: TColor;
    FIconBackColor: TColor;
    FMenuBarColor: TColor;
    FCheckedColor: TColor;
    FSeparatorColor: TColor;
    FSelectBorderColor: TColor;
    FSelectColor: TColor;
    FDisabledColor: TColor;
    FSelectFontColor: TColor;
    FNonFocusColor :TColor;
    FFocusColor :TColor;
    FIconWidth: integer;
    FDrawSelect: boolean;
    FUseSystemColors: boolean;


    FFColor, FFIconBackColor, FFSelectColor, FFSelectBorderColor,
    FFSelectFontColor, FCheckedAreaColor, FCheckedAreaSelectColor,
    FFCheckedColor, FFMenuBarColor, FFDisabledColor, FFSeparatorColor,
    FMenuBorderColor, FMenuShadowColor: TColor;
    FScrollColor: TColor;
    FScrollSize: Integer;
    procedure SetGlobalColor(ACanvas: TCanvas);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Loaded; override; //add by Cunha, liyang.
    procedure InitComponent(Comp: TComponent); // Tom: Added for usage by the main program ."Thomas Knoblauch" <thomas@tom-the-bomb.de> 27.08
    property Form: TScrollingWinControl read FForm write SetForm;
    procedure DrawTheText(Sender: TObject; txt, ShortCuttext: string;
       ACanvas: TCanvas; TextRect: TRect;
       Selected, Enabled, Default, TopMenu, IsRightToLeft: boolean;
       var TxtFont: TFont; TextFormat: integer);
    procedure DrawIcon(Sender: TObject; ACanvas: TCanvas; B: TBitmap;
     IconRect: Trect; Hot, Selected, Enabled, Checked, FTopMenu,
     IsRightToLeft: boolean);
  published
    property DimLevel: Byte read FDimLevel write FDimLevel;
    property GrayLevel: Byte read FGrayLevel write FGrayLevel;
    property Font: TFont read FFont write SetFont;
    property Color: TColor read FColor write SetColor;
    property DrawMenuBar: boolean read FDrawMenuBar write SetDrawMenuBar;
    property IconBackColor: TColor read FIconBackColor write SetIconBackColor;
    property MenuBarColor: TColor read FMenuBarColor write SetMenuBarColor;
    property SelectColor: TColor read FSelectColor write SetSelectColor;
    property ScrollColor: TColor read FScrollColor write FScrollColor;
    property SelectBorderColor: TColor read FSelectBorderColor
     write SetSelectBorderColor;
    property SelectFontColor: TColor read FSelectFontColor
     write SetSelectFontColor;
    property DisabledColor: TColor read FDisabledColor write SetDisabledColor;
    property SeparatorColor: TColor read FSeparatorColor
     write SetSeparatorColor;
    property CheckedColor: TColor read FCheckedColor write SetCheckedColor;
    property IconWidth: integer read FIconWidth write SetIconWidth;
    property DrawSelect: boolean read FDrawSelect write SetDrawSelect;
    property UseSystemColors: boolean read FUseSystemColors
     write SetUseSystemColors;
    property UseDimColor: boolean read FUseDimColor write SetUseDimColor;
    property OverrideOwnerDraw: boolean read FOverrideOwnerDraw
     write SetOverrideOwnerDraw;

    property Gradient: boolean read FGradient write SetGradient;
    property FlatMenu: boolean read FFlatMenu write SetFlatMenu;
    property AutoDetect: boolean read FAutoDetect write SetAutoDetect;
    property XPContainers: TXPContainers read FXPContainers write SetXPContainers
      default [xccForm, xccFrame, xccToolbar, xccCoolbar, xccControlbar, xccPanel,
                  xccScrollBox, xccGroupBox, xccTabSheet, xccPageScroller,xccGrid];
    property XPControls :TXPControls read FXPControls write SetXPControls
      default [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo,
               xcEdit, xcMaskEdit, xcMemo, xcRichEdit, xcCheckBox, xcRadioButton,
               xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox,xcScroll,xcGrid];

    property Active: boolean read FActive write SetActive;
    property ScrollSize: Integer read FScrollSize write FScrollSize Default 15;
    property FocusColor: TColor read FFocusColor write FFocusColor;
    property NonFocusColor: TColor read FNonFocusColor write FNonFocusColor;
    property FormColor: TColor read FFormColor write FFormColor;

  end;



function GetShadeColor(ACanvas: TCanvas; clr: TColor; Value: integer): TColor;
function NewColor(ACanvas: TCanvas; clr: TColor; Value: integer): TColor;
procedure DimBitmap(ABitmap: TBitmap; Value: integer);
procedure DrawArrow(ACanvas: TCanvas; X, Y: integer);
function GrayColor(ACanvas: TCanvas; clr: TColor; Value: integer): TColor;

procedure GrayBitmap(ABitmap: TBitmap; Value: integer);
procedure DrawBitmapShadow(B: TBitmap; ACanvas: TCanvas; X, Y: integer;
  ShadowColor: TColor);
procedure DrawCheckMark(ACanvas: TCanvas; X, Y: integer);

procedure GetSystemMenuFont(Font: TFont);

procedure Register;

implementation
 uses
   ControlSubClass;

procedure Register;
begin
  RegisterComponents('XP', [TXPPlus]);
end;

{$r *.res}

constructor TXPPlus.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFont := TFont.Create;
  GetSystemMenuFont(FFont);
  FForm := Owner as TScrollingWinControl;

//  (FForm as TCustomForm).Font := FFont; //felix added resolving font problems
                                          //in Chinese Win98

  FUseSystemColors := true;


  FColor := clBtnFace;
  FIconBackColor := clBtnFace;
  FSelectColor := clHighlight;
  FScrollColor := $00FFBA75;

  FNonFocusColor := $00fee6f0;
  FFocusColor := cl3dlight;
  FSelectBorderColor := clHighlight;
  FMenuBarColor := clBtnFace;
  FDisabledColor := clInactiveCaption;
  FSeparatorColor := clBtnFace;
  FCheckedColor := clHighlight;
  FSelectFontColor := FFont.Color;
  FGrayLevel := 10;
  FDimLevel := 30;
  FIconWidth := 24;
  FScrollSize := 15 ;
  FDrawSelect := true;
  XPContainers := [xccForm, xccFrame, xccToolbar, xccCoolbar, xccControlbar, xccPanel,
                  xccScrollBox, xccGroupBox, xccTabSheet, xccPageScroller,xccGrid];
  XPControls := [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo,
                xcEdit, xcMaskEdit, xcMemo, xcRichEdit, xcCheckBox, xcRadioButton,
                xcButton, xcBitBtn, xcSpeedButton, xcPanel, xcGroupBox,xcScroll,xcGrid];

  {if FActive then
  begin
    InitItems(FForm, true, false);
  end;
  }
end;

destructor TXPPlus.Destroy;
begin
  if Assigned(FForm) then    //oleg oleg@vdv-s.ru  Mon Oct  7
    InitItems(FForm, false, false);
  FFont.Free;

  inherited;
end;

//add by:
//liyang <liyang@guangdainfo.com> ,2002-07-19
//Pedro Miguel Cunha <PCunha@codeware.pt>- 02 Apr 2002
procedure TXPPlus.Loaded;
begin
  inherited Loaded;
  if FActive then
  begin
    InitItems(FForm, true, false);
  end;
end;



{to check for new sub items}
procedure TXPPlus.ActivateMenuItem(MenuItem: TMenuItem);

  procedure Activate(MenuItem: TMenuItem);
  begin
    if (MenuItem.Tag <> 999) then
    if addr(MenuItem.OnDrawItem) <> addr(TXPPlus.DrawItem) then
    begin
      if (not assigned(MenuItem.OnDrawItem)) or (FOverrideOwnerDraw) then
        MenuItem.OnDrawItem := DrawItem;
      if (not assigned(MenuItem.OnMeasureItem)) or (FOverrideOwnerDraw) then
        MenuItem.OnMeasureItem := MeasureItem;
    end
  end;

var
  i, j: integer;
begin

  Activate(MenuItem);
  for i := 0 to MenuItem.Parent.Count -1 do
  begin
    Activate(MenuItem.Parent.Items[i]);
    for j := 0 to MenuItem.Parent.Items[i].Count - 1 do
      ActivateMenuItem(MenuItem.Parent.Items[i].Items[j]);
  end;

end;

procedure TXPPlus.InitItems(wForm: TWinControl; Enable, Update: boolean );
var
  i: integer;
  Comp: TComponent;
begin
  for i := 0 to wForm.ComponentCount - 1 do
  begin
    Comp := wForm.Components[i];
    InitItem(Comp, Enable, Update); // Tom: "Thomas Knoblauch" <thomas@tom-the-bomb.de> 27.08
  end;
end;

procedure TXPPlus.InitComponent(Comp: TComponent); // Tom: for external (by the main program) use without parameters. "Thomas Knoblauch" <thomas@tom-the-bomb.de> 27.08
begin
  if FActive then InitItem(Comp, true, true);
end;

// Tom: "Thomas Knoblauch" <thomas@tom-the-bomb.de> 27.08
procedure TXPPlus.InitItem(Comp: TComponent; Enable, Update: boolean );

  procedure Activate(MenuItem: TMenuItem);
  begin
    if Enable then
    begin
      if (MenuItem.Tag <> 999) then
      begin
        if (not assigned(MenuItem.OnDrawItem)) or (FOverrideOwnerDraw) then
          MenuItem.OnDrawItem := DrawItem;
        if (not assigned(MenuItem.OnMeasureItem)) or (FOverrideOwnerDraw) then
          MenuItem.OnMeasureItem := MeasureItem;
      end;
    end
    else
    begin
      if addr(MenuItem.OnDrawItem) = addr(TXPPlus.DrawItem) then
        MenuItem.OnDrawItem := nil;
      if addr(MenuItem.OnMeasureItem) = addr(TXPPlus.MeasureItem) then
        MenuItem.OnMeasureItem := nil;
    end;
  end;

  procedure ItrateMenu(MenuItem: TMenuItem);
  var
    i: integer;
  begin
    Activate(MenuItem);
    for i := 0 to MenuItem.Count - 1 do
      ItrateMenu(MenuItem.Items[i]);
  end;

var
  x: integer;

begin
  if (Comp is TMainMenu) and (xcMainMenu in XPControls) and (TMainMenu(Comp).Tag <> 999)then
  begin
    for x := 0 to TMainMenu(Comp).Items.Count - 1 do
    begin
      TMainMenu(Comp).OwnerDraw := Enable;
      Activate(TMainMenu(Comp).Items[x]);
      ItrateMenu(TMainMenu(Comp).Items[x]);
    end;
  end;

  if (Comp is TPopupMenu) and (xcPopupMenu in XPControls) then
  begin
    for x := 0 to TPopupMenu(Comp).Items.Count - 1 do
    begin
      TPopupMenu(Comp).OwnerDraw := Enable;
      Activate(TPopupMenu(Comp).Items[x]);
      ItrateMenu(TPopupMenu(Comp).Items[x]);

    end;
  end;

  {$IFDEF VER5U}
  if (Comp is TToolBar) and (xcToolBar in FXPControls) then
    if not (csDesigning in ComponentState) then
    begin
      if not TToolBar(Comp).Flat then
        TToolBar(Comp).Flat := true;

      if Enable then
      begin
        for x := 0 to TToolBar(Comp).ButtonCount - 1 do
          if (not assigned(TToolBar(Comp).OnCustomDrawButton))
            or (FOverrideOwnerDraw) then
          begin
            TToolBar(Comp).OnCustomDrawButton :=
              ToolBarDrawButton;

          end;
      end
      else
      begin
        if addr(TToolBar(Comp).OnCustomDrawButton) =
          addr(TXPPlus.ToolBarDrawButton) then
        TToolBar(Comp).OnCustomDrawButton := nil;
      end;
      if Update then
        TToolBar(Comp).Invalidate;
    end;
  {$ENDIF}

  if (Comp is TControlBar) and (xcControlBar in FXPControls) then
    if not (csDesigning in ComponentState) then
    begin
      if Enable then
      begin
        if (not assigned(TControlBar(Comp).OnBandPaint))
          or (FOverrideOwnerDraw) then
        begin
          TControlBar(Comp).OnBandPaint := ControlBarPaint;
        end;
      end
      else
      begin
        if addr(TControlBar(Comp).OnBandPaint) =
          addr(TXPPlus.ControlBarPaint) then
        TControlBar(Comp).OnBandPaint := nil;
      end;
      if Update then
        TControlBar(Comp).Invalidate;
    end;

  if not (csDesigning in ComponentState) then
    if {$IFDEF VER6U}
       ((Comp is TCustomCombo) and (xcCombo in FXPControls)) or
       ((Comp is TCustomLabeledEdit) and (xcEdit in FXPControls)) or

       {$ELSE}
       ((Comp is TCustomComboBox) and (xcCombo in FXPControls)) or
       {$ENDIF}
       ((Comp is TScrollBar) and (xcScroll in FXPControls)) or
       ((Comp is TStringGrid) and (xcGrid in FXPControls)) or
       ((Comp is  TDBGrid) and (xcGrid in FXPControls)) or
       ((Comp is TEdit) and (xcEdit in FXPControls)) or
       ((Comp.ClassName = 'TMaskEdit') and (xcMaskEdit in FXPControls)) or
       ((Comp.ClassName = 'TDBEdit') and (xcMaskEdit in FXPControls)) or
       ((Comp is TCustomMemo) and (xcMemo in FXPControls)) or
       ((Comp is TCustomRichEdit) and (xcRichEdit in FXPControls)) or

       ((Comp is TCustomCheckBox) and (xcCheckBox in FXPControls)) or
       ((Comp is TRadioButton) and (xcRadioButton in FXPControls)) or
       ((Comp.ClassName = 'TBitBtn') and (xcBitBtn in FXPControls)) or
       ((Comp.ClassName = 'TButton') and (xcButton in FXPControls)) or
       ((Comp.ClassName = 'TUpDown') and (xcButton in FXPControls)) or
       ((Comp is TSpeedButton) and (xcSpeedButton in FXPControls)) or
       ((Comp is TCustomPanel) and (xcPanel in FXPControls)) or
       ((Comp.ClassName = 'TDBNavigator') and (xcButton in FXPControls)) or
       (((Comp.ClassName = 'TDBLookupComboBox')
       or (Comp.ClassName = 'TRSqlDbLookup')
       or (Comp.ClassName = 'TRSqlButton')
       or (Comp.ClassName = 'TScrollBar')
       or (Comp.ClassName = 'TRSqlMaskEdit')
       or (Comp.ClassName = 'TStringGrid')
       or (Comp.ClassName = 'TRSqlButton')
       or (Comp.ClassName = ' TDBGrid')
       or (Comp.ClassName = 'TRSqlDbLookup')
       ) and (xcButton in FXPControls)) or
       ((Comp is TCustomGroupBox) and (xcGroupBox in FXPControls))
       then
      if ((TControl(Comp).Parent is TToolbar) and (xccToolBar in FXPContainers))or
         ((TControl(Comp).Parent is TCoolbar) and (xccCoolbar in FXPContainers)) or
         ((TControl(Comp).Parent is TCustomPanel) and (xccPanel in FXPContainers)) or
         ((TControl(Comp).Parent is TControlbar) and (xccControlbar in FXPContainers)) or
         ((TControl(Comp).Parent is TScrollBox) and (xccScrollBox in FXPContainers)) or
         ((TControl(Comp).Parent is TCustomGroupBox) and (xccGroupBox in FXPContainers)) or
         ((TControl(Comp).Parent is TTabSheet) and (xccTabSheet in FXPContainers)) or
         ((TControl(Comp).Parent.ClassName = 'TdxTabSheet') and (xccTabSheet in FXPContainers)) or //DeveloperExpress
         ((TControl(Comp).Parent is TPageScroller)  and (xccPageScroller in FXPContainers)) or
         {$IFDEF VER5U}
         ((TControl(Comp).Parent is TCustomFrame)  and (xccFrame in FXPContainers)) or
         {$ENDIF}
         ((TControl(Comp).Parent.ClassName = 'TDBCtrlPanel')  and (xccFrame in FXPContainers)) or
         ((TControl(Comp).Parent is TCustomForm) and (xccForm in FXPContainers))


         then
      begin
        if (Enable) and (Comp.Tag <> 999) and (TControl(Comp).Parent.Tag <> 999) then
                                    {skip if Control/Control.parent.tag = 999}
          with TControlSubClass.Create(Self)  do
          begin
            Control := TControl(Comp);
            if Addr(Control.WindowProc) <> Addr(TControlSubClass.ControlSubClass) then
            begin
              orgWindowProc := Control.WindowProc;
              Control.WindowProc := ControlSubClass;
            end;
            XPMenu := self;

            if (Control is TCustomEdit) then
            begin
              FCtl3D := TEdit(Control).Ctl3D;
              FBorderStyle := TRichEdit(Control).BorderStyle;
            end;
            if (Control is TScrollBar) then
            begin
              FCtl3D := TScrollBar(Control).Ctl3D;
//              FBorderStyle := TScrollBar(Control). BorderStyle;
            end;

            if ((Control is TStringGrid) or (Control is TDBGrid))  then
            begin
              FCtl3D := TStringGrid(Control).Ctl3D;
              FBorderStyle := TStringGrid(Control). BorderStyle;
            end;
            if(not(update)) then
            begin
              if (Control is TStringGrid) then
                 AddXPScroll(Control,TStringGrid(Control).ScrollBars)
              else if (Control is TDBGrid)  then
                  AddXPScroll(Control,ssVertical)
              else if (Control is TMemo) then
              begin
                 AddXPScroll(Control,TMemo(Control).ScrollBars);
              end
              else if (Control is TScrollBar) then
                 AddXPScroll(Control,ssHorizontal)
              else if (Control is  TDrawGrid) then
                 AddXPScroll(Control,ssBoth)
              else if (Control is TStringGrid) then
                 AddXPScroll(Control,ssBoth)
              else if (Control is TRichEdit ) then
              begin
                 AddXPScroll(Control,ssBoth);
    //             TRichEdit(Control).ScrollBars:=ssNone;
              end;
            end;



          if (Control.ClassName = 'TDBLookupComboBox')
          or (Control.ClassName = 'TRSqlDbLookup')
          or (Control.ClassName = 'TRSqlButton')
          or (Control.ClassName = 'TRSqlMaskEdit')
          or (Control.ClassName = 'TRSqlButton')
          or (Control.ClassName = 'TScrollBar')
          or (Control.ClassName = 'TRSqlDbLookup')
          or (Control.ClassName = 'TStringGrid')
          or (Control.ClassName = ' TDBGrid')

            then
            begin
              FCtl3D := TComboBox(Control).Ctl3D;
            end;


          end;

        if Update then
        begin
         // if Comp is TWinControl then    //Cause error with non wincontrol
            TControl(Comp).invalidate    //in TControlSubClass.ControlSubClass
         // else
         //   TControl(Comp).Update;
        end;

      end;


  // Recursive call for possible containers.
  {$IFDEF VER5U}
  if ((Comp is TCustomFrame) and (xccFrame in FXPContainers))
or (Comp.ClassName = 'TDBNavigator')
   or (Comp is TCustomForm) then  //By Geir Wikran <gwikran@online.no>
    self.InitItems(Comp as TWinControl, Enable, Update);
  {$ENDIF}

end;

procedure TXPPlus.DrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
  Selected: Boolean);
begin
  if FActive then
    MenueDrawItem(Sender, ACanvas, ARect, Selected);
end;



function TXPPlus.GetImageExtent(MenuItem: TMenuItem): TPoint;
var
  HasImgLstBitmap: boolean;
  B: TBitmap;
  FTopMenu: boolean;
begin
  FTopMenu := false;
  B := TBitmap.Create;
  try
    B.Width := 0;
    B.Height := 0;
    Result.x := 0;
    Result.Y := 0;
    HasImgLstBitmap := false;

    {Changes MMK TForm and TFrame}
    if (FForm is TForm) and ((FForm as TForm).Menu <> nil) then
      if MenuItem.GetParentComponent.Name = (FForm as TForm).Menu.Name then
      begin
        FTopMenu := true;
        if (FForm as TForm).Menu.Images <> nil then
          if MenuItem.ImageIndex <> -1 then
            HasImgLstBitmap := true;

      end;

    {End Changes}


    if (MenuItem.Parent.GetParentMenu.Images <> nil)
    {$IFDEF VER5U}
    or (MenuItem.Parent.SubMenuImages <> nil)
    {$ENDIF}
    then
    begin
      if MenuItem.ImageIndex <> -1 then
        HasImgLstBitmap := true
      else
        HasImgLstBitmap := false;
    end;

    if HasImgLstBitmap then
    begin
    {$IFDEF VER5U}
      if MenuItem.Parent.SubMenuImages <> nil then
        MenuItem.Parent.SubMenuImages.GetBitmap(MenuItem.ImageIndex, B)
      else
    {$ENDIF}
        MenuItem.Parent.GetParentMenu.Images.GetBitmap(MenuItem.ImageIndex, B)
    end
    else
      if MenuItem.Bitmap.Width > 0 then
        B.Assign(TBitmap(MenuItem.Bitmap));

    Result.x := B.Width;
    Result.Y := B.Height;

    if not FTopMenu then
      if Result.x < FIconWidth then
        Result.x := FIconWidth;
  finally
    B.Free;
  end;
end;

procedure TXPPlus.MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
var
  s: string;
  W, H: integer;
  P: TPoint;
  IsLine: boolean;
  OSVersionInfo: TOSVersionInfo;
begin
  if FActive then
  begin
    S := TMenuItem(Sender).Caption;

    if S = '-' then IsLine := true else IsLine := false;
    if IsLine then
      S := '';

    if Trim(ShortCutToText(TMenuItem(Sender).ShortCut)) <> '' then
      S := S + ShortCutToText(TMenuItem(Sender).ShortCut) + 'WWW';

    ACanvas.Font.Assign(FFont);
    W := ACanvas.TextWidth(s);
    Inc(W, 5);
    if pos('&', s) > 0 then
      W := W - ACanvas.TextWidth('&');

    P := GetImageExtent(TMenuItem(Sender));
    if P.X > 0 then
//      if not (TMenuItem(Sender).parent.Name = '') then//"Pedro Miguel Cunha" <PCunha@codeware.pt>(merging menus)
        W := W + P.x ;


    //Add 8 pixels for win2k
    if (FForm is TForm) and ((FForm as TForm).Menu <> nil) then
      if TMenuItem(Sender).GetParentComponent.Name = (FForm as TForm).Menu.Name then
      begin  //FTopMenu := true;
        GetVersionEx(OSVersionInfo);
        if OSVersionInfo.dwPlatformId = VER_PLATFORM_WIN32_NT then
          Inc(W, 8);
      end;

    if Width < W then
      Width := W;

    if IsLine then
      Height := 4
    else
    begin
      H := ACanvas.TextHeight(s) + Round(ACanvas.TextHeight(s) * 0.75);
      if P.y + 6 > H then
        H := P.y + 6;

      if Height < H then
        Height := H;
    end;
  end;

end;

procedure TXPPlus.MenueDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
  Selected: Boolean);
var
  txt: string;
  B: TBitmap;
  IconRect, TextRect, CheckedRect: TRect;
  i, X1, X2: integer;
  TextFormat: integer;
  HasImgLstBitmap: boolean;
  HasBitmap: boolean;
  FMenuItem: TMenuItem;
  FMenu: TMenu;
  FTopMenu: boolean;
  IsLine: boolean;
  ImgListHandle: HImageList;  {Commctrl.pas}
  ImgIndex: integer;
  hWndM: HWND;
  hDcM: HDC;

begin


  FTopMenu := false;
  FMenuItem := TMenuItem(Sender);

  SetGlobalColor(ACanvas);

  if FMenuItem.Caption = '-' then IsLine := true else IsLine := false;

  FMenu := FMenuItem.Parent.GetParentMenu;

  if FMenu is TMainMenu then
    for i := 0 to FMenuItem.GetParentMenu.Items.Count - 1 do
      if FMenuItem.GetParentMenu.Items[i] = FMenuItem then
      begin
        FTopMenu := True;
        break;
      end;


  ACanvas.Font.Assign(FFont);

  Inc(ARect.Bottom, 1);
  TextRect := ARect;
  txt := ' ' + FMenuItem.Caption;

  B := TBitmap.Create;
  HasBitmap := false;
  HasImgLstBitmap := false;


  if (FMenuItem.Parent.GetParentMenu.Images <> nil)
  {$IFDEF VER5U}
  or (FMenuItem.Parent.SubMenuImages <> nil)
  {$ENDIF}
  then
  begin
    if FMenuItem.ImageIndex <> -1 then
      HasImgLstBitmap := true
    else
      HasImgLstBitmap := false;
  end;

  if FMenuItem.Bitmap.Width  > 0 then
    HasBitmap := true;

//-------
  if HasBitmap then
    begin
      B.Width := FMenuItem.Bitmap.Width;
      B.Height := FMenuItem.Bitmap.Height;

      B.Canvas.CopyRect (Rect(0, 0, B.Width, B.Height), FMenuItem.Bitmap.Canvas,
                         Rect(0, 0, B.Width, B.Height));
    end;


  if HasImgLstBitmap then
  begin
  {$IFDEF VER5U}
    if FMenuItem.Parent.SubMenuImages <> nil then
    begin
      ImgListHandle := FMenuItem.Parent.SubMenuImages.Handle;
      ImgIndex := FMenuItem.ImageIndex;

      B.Width := FMenuItem.Parent.SubMenuImages.Width;
      B.Height := FMenuItem.Parent.SubMenuImages.Height;
      B.Canvas.Brush.Color := ACanvas.Brush.Color;
      B.Canvas.FillRect(Rect(0, 0, B.Width, B.Height));
      ImageList_DrawEx(ImgListHandle, ImgIndex,
        B.Canvas.Handle, 0, 0, 0, 0, clNone, clNone, ILD_Transparent);

    end
    else
  {$ENDIF}
    if FMenuItem.Parent.GetParentMenu.Images <> nil then
    begin
      ImgListHandle := FMenuItem.Parent.GetParentMenu.Images.Handle;
      ImgIndex := FMenuItem.ImageIndex;

      B.Width := FMenuItem.Parent.GetParentMenu.Images.Width;
      B.Height := FMenuItem.Parent.GetParentMenu.Images.Height;
      B.Canvas.Brush.Color := ACanvas.Pixels[2,2];
      B.Canvas.FillRect(Rect(0, 0, B.Width, B.Height));
      ImageList_DrawEx(ImgListHandle, ImgIndex,
        B.Canvas.Handle, 0, 0, 0, 0, clNone, clNone, ILD_Transparent);

    end;

  end;

//-----

  if FMenu.IsRightToLeft then
  begin
    X1 := ARect.Right - FIconWidth;
    X2 := ARect.Right;
  end
  else
  begin
    X1 := ARect.Left;
    X2 := ARect.Left + FIconWidth;
  end;
  IconRect := Rect(X1, ARect.Top, X2, ARect.Bottom);


  if HasImgLstBitmap or HasBitmap then
  begin
    CheckedRect := IconRect;
    Inc(CheckedRect.Left, 1);
    Inc(CheckedRect.Top, 2);
    Dec(CheckedRect.Right, 3);
    Dec(CheckedRect.Bottom, 2);
  end
  else
  begin
    CheckedRect.Left := IconRect.Left +
      (IConRect.Right - IconRect.Left - 10) div 2;
    CheckedRect.Top := IconRect.Top +
      (IConRect.Bottom - IconRect.Top - 10) div 2;
    CheckedRect.Right := CheckedRect.Left + 10;
    CheckedRect.Bottom := CheckedRect.Top + 10;
  end;

  if B.Width > FIconWidth then
    if FMenu.IsRightToLeft then
      CheckedRect.Left := CheckedRect.Right - B.Width
    else
      CheckedRect.Right := CheckedRect.Left + B.Width;

  if FTopMenu then Dec(CheckedRect.Top, 1);


  if FMenu.IsRightToLeft then
  begin
    X1 := ARect.Left;
    if not FTopMenu then
      Dec(X2, FIconWidth)
    else
      Dec(X2, 4);
    if (ARect.Right - B.Width) < X2 then
      X2 := ARect.Right - B.Width - 8;
  end
  else
  begin
    X1 := ARect.Left ;
    if not FTopMenu then
      Inc(X1, FIconWidth)
    else
      Inc(X1, 4);

    if (ARect.Left + B.Width) > X1 then
      X1 := ARect.Left + B.Width + 4;
    X2 := ARect.Right;
  end;

  TextRect := Rect(X1, ARect.Top, X2, ARect.Bottom);

  if FTopMenu then
  begin
    if not (HasImgLstBitmap or HasBitmap) then
    begin
      TextRect := ARect;
    end
    else
    begin
      if FMenu.IsRightToLeft then
        TextRect.Right := TextRect.Right + 5
      else
        TextRect.Left := TextRect.Left - 5;
    end

  end;

  if FTopMenu then
  begin
    ACanvas.brush.color := FFMenuBarColor;
    ACanvas.Pen.Color := FFMenuBarColor;
    ACanvas.FillRect(ARect);
//--
    if FDrawMenuBar then
    begin
      if FMenuItem.GetParentMenu.Items[FMenuItem.GetParentMenu.Items.Count-1] =
         FMenuItem then
      begin
        if FMenu.IsRightToLeft then
          ACanvas.Rectangle(3, ARect.Top, ARect.Right, ARect.Bottom)
        else
          ACanvas.Rectangle(ARect.Left, ARect.Top, FForm.ClientWidth+5, ARect.Bottom);
      end
      else
        if FMenu.IsRightToLeft then
          ACanvas.Rectangle(ARect.Left, ARect.Top, ARect.Right+7, ARect.Bottom);
    end;
//--
  end
  else
  begin
    if (Is16Bit and FGradient) then
    begin
      inc(ARect.Right,2);  //needed for RightToLeft
      DrawGradient(ACanvas, ARect, FMenu.IsRightToLeft);
      Dec(ARect.Right,2);

    end
    else
    begin
      ACanvas.brush.color := FFColor;
      ACanvas.FillRect(ARect);

      ACanvas.brush.color := FFIconBackColor;
      ACanvas.FillRect(IconRect);
    end;


//------------
  end;


  if FMenuItem.Enabled then
    ACanvas.Font.Color := FFont.Color
  else
    ACanvas.Font.Color := FDisabledColor;

  if Selected and FDrawSelect then
  begin
    ACanvas.brush.Style := bsSolid;
    if FTopMenu then
    begin
      DrawTopMenuItem(FMenuItem, ACanvas, ARect, FMenuBarColor, FMenu.IsRightToLeft);
    end
    else
      if FMenuItem.Enabled then
      begin

        Inc(ARect.Top, 1);
        Dec(ARect.Bottom, 1);
        if FFlatMenu then
          Dec(ARect.Right, 1);
        ACanvas.brush.color := FFSelectColor;
        ACanvas.FillRect(ARect);
        ACanvas.Pen.color := FFSelectBorderColor;
        ACanvas.Brush.Style := bsClear;
        ACanvas.RoundRect(Arect.Left, Arect.top, Arect.Right, Arect.Bottom, 0, 0);
        Dec(ARect.Top, 1);
        Inc(ARect.Bottom, 1);
        if FFlatMenu then
          Inc(ARect.Right, 1);
      end;
  end;

  DrawCheckedItem(FMenuItem, Selected, FMenuItem.Enabled, HasImgLstBitmap or HasBitmap,
                  ACanvas, CheckedRect);

  DrawIcon(FMenuItem, ACanvas, B, IconRect,
    Selected, False, FMenuItem.Enabled, FMenuItem.Checked,
    FTopMenu, FMenu.IsRightToLeft);



  if not IsLine then
  begin

    if FMenu.IsRightToLeft then
    begin
      TextFormat := DT_RIGHT + DT_RTLREADING;
      Dec(TextRect.Right, 3);
    end
    else
    begin
      TextFormat := 0;
      Inc(TextRect.Left, 3);
    end;
    TextRect.Top := TextRect.Top +
        ((TextRect.Bottom - TextRect.Top) - ACanvas.TextHeight('W')) div 2;
    DrawTheText(FMenuItem, txt, ShortCutToText(FMenuItem.ShortCut),
      ACanvas, TextRect,
      Selected, FMenuItem.Enabled, FMenuItem.Default,
      FTopMenu, FMenu.IsRightToLeft, FFont, TextFormat);

  end
  else
  begin
    if FMenu.IsRightToLeft then
    begin
      X1 := TextRect.Left;
      X2 := TextRect.Right - 7;
    end
    else
    begin
      X1 := TextRect.Left + 7;
      X2 := TextRect.Right;
    end;

    ACanvas.Pen.Color := FFSeparatorColor;
    ACanvas.MoveTo(X1,
      TextRect.Top +
      Round((TextRect.Bottom - TextRect.Top) / 2));
    ACanvas.LineTo(X2,
      TextRect.Top +
      Round((TextRect.Bottom - TextRect.Top) / 2))
  end;

  B.free;

  if not (csDesigning in ComponentState) then
  begin
    if (FFlatMenu) and (not FTopMenu) then
    begin
      hDcM := ACanvas.Handle;
      hWndM := WindowFromDC(hDcM);
      if hWndM <> FForm.Handle then
      begin
        DrawWindowBorder(hWndM, FMenu.IsRightToLeft);
      end;
    end;
  end;

//-----
  ActivateMenuItem(FMenuItem);  // check for new sub items

end;

{$IFDEF VER5U}
procedure TXPPlus.ToolBarDrawButton(Sender: TToolBar;
  Button: TToolButton; State: TCustomDrawState; var DefaultDraw: Boolean);

var
  ACanvas: TCanvas;

  ARect, HoldRect: TRect;
  B: TBitmap;
  HasBitmap: boolean;
  {Sylvain ...}
  HasHotBitMap : Boolean;
  HasDisBitMap : Boolean;
  ImglstHand   : THandle;
  CanDraw      : Boolean;
  {... Sylvain}
  BitmapWidth: integer;
  TextFormat: integer;
  XButton: TToolButton;
  HasBorder: boolean;
  HasBkg: boolean;
  IsTransparent: boolean;
  FBSelectColor: TColor;

  procedure DrawBorder;
  var
    BRect, WRect: TRect;
    procedure DrawRect;
    begin
      ACanvas.Pen.color := FFSelectBorderColor;
      ACanvas.MoveTo(WRect.Left, WRect.Top);
      ACanvas.LineTo(WRect.Right, WRect.Top);
      ACanvas.LineTo(WRect.Right, WRect.Bottom);
      ACanvas.LineTo(WRect.Left, WRect.Bottom);
      ACanvas.LineTo(WRect.Left, WRect.Top);
    end;

  begin
    BRect := HoldRect;
    Dec(BRect.Bottom, 1);
    Inc(BRect.Top, 1);
    Dec(BRect.Right, 1);

    WRect := BRect;
    if Button.Style = tbsDropDown then
    begin
      Dec(WRect.Right, 13);
      DrawRect;

      WRect := BRect;
      Inc(WRect.Left, WRect.Right - WRect.Left - 13);
      DrawRect;
    end
    else
    begin

      DrawRect;
    end;
  end;

begin

  B := nil;

  {Added By Sylvain ...}
  HasHotBitmap := (Sender.HotImages <> nil) and
                  (Button.ImageIndex <> -1) and
                  (Button.ImageIndex <= Sender.HotImages.Count - 1);


  HasDisBitmap := (Sender.DisabledImages <> nil) and
                  (Button.ImageIndex <> -1) and
                  (Button.ImageIndex <= Sender.DisabledImages.Count - 1);
  {...Sylvain}

  HasBitmap := (Sender.Images <> nil) and
    (Button.ImageIndex <> -1) and
    (Button.ImageIndex <= Sender.Images.Count - 1);


  IsTransparent := Sender.Transparent;

  ACanvas := Sender.Canvas;

  SetGlobalColor(ACanvas);

  if (Is16Bit) and (not UseSystemColors) then
    FBSelectColor := NewColor(ACanvas, FSelectColor, 68)
  else
    FBSelectColor := FFSelectColor;


  HoldRect := Button.BoundsRect;

  ARect := HoldRect;

  if Is16Bit then
    ACanvas.brush.color := NewColor(ACanvas, Sender.Color, 16)
  else
    ACanvas.brush.color := Sender.Color;

  if not IsTransparent then
    ACanvas.FillRect(ARect);

  HasBorder := false;
  HasBkg := false;

  if (cdsHot in State) then
  begin
    if (cdsChecked in State) or (Button.Down) or (cdsSelected in State) then
      ACanvas.Brush.Color := FCheckedAreaSelectColor
    else
      ACanvas.brush.color := FBSelectColor;
    HasBorder := true;
    HasBkg := true;
  end;

  if ((cdsChecked in State) and not (cdsHot in State)) then
  begin
    ACanvas.Brush.Color := FCheckedAreaColor;
    HasBorder := true;
    HasBkg := true;
  end;

  if (cdsIndeterminate in State) and not (cdsHot in State) then
  begin
    ACanvas.Brush.Color := FBSelectColor;
    HasBkg := true;
  end;


  if (Button.MenuItem <> nil) and (State = []) then
  begin
    ACanvas.brush.color := Sender.Color;
    if not IsTransparent then
      HasBkg := true;
  end;


  Inc(ARect.Top, 1);



  if HasBkg then
    ACanvas.FillRect(ARect);

  if HasBorder then
    DrawBorder;


  if ((Button.MenuItem <> nil) or (Button.DropdownMenu <> nil))
    and (cdsSelected in State) then
  begin
    DrawTopMenuItem(Button, ACanvas, ARect, Sender.Color ,false);
    DefaultDraw := false;
  end;

  ARect := HoldRect;
  DefaultDraw := false;


  if Button.Style = tbsDropDown then
  begin
    ACanvas.Pen.Color := clBlack;
    DrawArrow(ACanvas, (ARect.Right - 14) + ((14 - 5) div 2),
      ARect.Top + ((ARect.Bottom - ARect.Top - 3) div 2) + 1);
  end;

  BitmapWidth := 0;
{ Rem by Sylvain ...
  if HasBitmap then
  begin
... Sylvain}
    try
      B := TBitmap.Create;
      CanDraw := False;
      ImglstHand:=0;
      if (cdsHot in State) AND HasHotBitmap then
      begin
        B.Width := Sender.HotImages.Width;
        B.Height := Sender.HotImages.Height;
        ImglstHand := Sender.HotImages.Handle;
        CanDraw := True;
      end
      else if (cdsDisabled in State) and HasDisBitmap then
      begin
        B.Width := Sender.DisabledImages.Width;
        B.Height := Sender.DisabledImages.Height;
        ImglstHand := Sender.DisabledImages.Handle;
        CanDraw := True;
      end
      else if HasBitMap then
      begin
        B.Width := Sender.Images.Width;
        B.Height := Sender.Images.Height;
        ImglstHand := Sender.Images.Handle;
        CanDraw := True;
      end;
      if CanDraw then
      begin {CanDraw}
        B.Canvas.Brush.Color := ACanvas.Brush.Color;
        B.Canvas.FillRect(Rect(0, 0, B.Width, B.Height));
        ImageList_DrawEx(ImglstHand, Button.ImageIndex,
        B.Canvas.Handle, 0, 0, 0, 0, clNone, clNone, ILD_Transparent);

        BitmapWidth := b.Width;

        if Button.Style = tbsDropDown then
          Dec(ARect.Right, 12);


        if TToolBar(Button.Parent).List then
        begin

          if Button.BiDiMode = bdRightToLeft then
          begin
            Dec(ARect.Right, 3);
            ARect.Left := ARect.Right - BitmapWidth;

          end
          else
          begin
            Inc(ARect.Left, 3);
            ARect.Right := ARect.Left + BitmapWidth
          end


        end
        else
          ARect.Left := Round(ARect.Left + (ARect.Right - ARect.Left - B.Width)/2);

        inc(ARect.Top, 2);
        ARect.Bottom := ARect.Top + B.Height + 6;

        DrawIcon(Button, ACanvas, B, ARect, (cdsHot in State),
         (cdsSelected in State), Button.Enabled, (cdsChecked in State), false,
         false);

      end; {CanDraw}
    finally
      B.Free;
    end;
    ARect := HoldRect;
    DefaultDraw := false;
{rem by sylvain ...
  end;
...Sylvain}
//-----------

  if Sender.ShowCaptions then
  begin

    if Button.Style = tbsDropDown then
      Dec(ARect.Right, 12);


    if not TToolBar(Button.Parent).List then
    begin
      TextFormat := DT_Center;

      ARect.Top := ARect.Bottom - ACanvas.TextHeight(Button.Caption) - 6;
    end
    else
    begin
      TextFormat := DT_VCENTER;
      if Button.BiDiMode = bdRightToLeft then
      begin
        TextFormat := TextFormat + DT_Right;
        Dec(ARect.Right, BitmapWidth + 7);
      end
      else
      begin
        if BitmapWidth > 0 then //"Dan Downs" <dan@laserformsinc.com>
         if Sender.List then     //Micha�l Moreno <michael@weatherderivs.com>
           Inc(ARect.Left, BitmapWidth + 6)
          else
           Inc(ARect.Left, BitmapWidth);
      end

    end;

    if (Button.MenuItem <> nil) then
    begin
      TextFormat := DT_Center;
      //Inc(ARect.Left, 1);
    end;

    if Button.BiDiMode = bdRightToLeft then
      TextFormat := TextFormat + DT_RTLREADING;

    if Button.Down and not Button.Enabled then //"felix" <felix@unidreamtech.com>  23/5
      InflateRect(ARect, -1, -1);

    DrawTheText(Button, Button.Caption, '',
      ACanvas, ARect,
      (cdsSelected in State), Button.Enabled, false,
      (Button.MenuItem <> nil),
      (Button.BidiMode = bdRightToLeft), FFont, TextFormat);

    ARect := HoldRect;
    DefaultDraw := false;
  end;


  if Button.Index > 0 then
  begin
    XButton := {TToolBar(Button.Parent)}Sender.Buttons[Button.Index - 1];
    if (XButton.Style = tbsDivider) or (XButton.Style = tbsSeparator) then
    begin
      ARect := XButton.BoundsRect;
      if Is16Bit then
        ACanvas.brush.color := NewColor(ACanvas, Sender.Color, 16)
      else
        ACanvas.brush.color := Sender.Color;

      if not IsTransparent then
        ACanvas.FillRect(ARect);
     // if (XButton.Style = tbsDivider) then  // Can't get it.
      if XButton.Tag > 0 then
      begin
        Inc(ARect.Top, 2);
        Dec(ARect.Bottom, 1);

        ACanvas.Pen.color := GetShadeColor(ACanvas,Sender.Color,30);
        ARect.Left := ARect.Left + (ARect.Right - ARect.Left) div 2;
        ACanvas.MoveTo(ARect.Left, ARect.Top);
        ACanvas.LineTo(ARect.Left, ARect.Bottom);

      end;
      ARect := Button.BoundsRect;
      DefaultDraw := false;
    end;

  end;

  if Button.MenuItem <> nil then
    if (xcMainMenu in XPControls) then
      ActivateMenuItem(Button.MenuItem);
end;
{$ENDIF}

// Controlbar Paint. Added by Michiel van Oudheusden (27 sep 2001)
// Paints the bands of a controlbar like the office XP style
procedure TXPPlus.ControlBarPaint(Sender: TObject; Control: TControl;
  Canvas: TCanvas; var ARect: TRect; var Options: TBandPaintOptions);
var
  i: Integer;
  intInc: integer;
begin
  SetGlobalColor(Canvas);
  // No frame and grabber drawing. We do it ourselfes
  Options := [];

  // First background

  if Is16Bit then
    Canvas.brush.color := NewColor(Canvas, TControlBar(Sender).Color , 6)
  else
    Canvas.brush.color := TControlBar(Sender).Color;

  Canvas.FillRect(ARect);

  intInc := 30;
  for i := (ARect.Top + 5) to (ARect.Bottom - 5)do
  begin
    Canvas.Pen.Color := GetShadeColor(Canvas, TControlBar(Sender).Color, intInc);
    if i mod 2 = 0 then
    begin
      Canvas.MoveTo(ARect.Left + 3, i);
      Canvas.LineTo(ARect.Left + 6, i);
      Inc(intInc, 7);
    end;
  end;

end;

procedure TXPPlus.SetGlobalColor(ACanvas: TCanvas);
begin
//-----

  if GetDeviceCaps(ACanvas.Handle, BITSPIXEL) < 16 then
    Is16Bit := false
  else
    Is16Bit := true;


  FDimParentColor := 16;
  FDimParentColorSelect := 40;

  FFColor := FColor;
  FFIconBackColor := FIconBackColor;

  if Is16Bit then
  begin
    if FUseDimColor then
    begin
      FFSelectColor := NewColor(ACanvas, FSelectColor, 68);
      FCheckedAreaColor := NewColor(ACanvas, FSelectColor, 80);
      FCheckedAreaSelectColor := NewColor(ACanvas, FSelectColor, 50);
    end
    else
    begin
      FFSelectColor := FSelectColor;
      FCheckedAreaColor := FSelectColor;
      FCheckedAreaSelectColor := FSelectColor;
    end;

    FMenuBorderColor := GetShadeColor(ACanvas, clBtnFace, 90);
    FMenuShadowColor := GetShadeColor(ACanvas, clBtnFace, 76);
  end
  else
  begin
    FFSelectColor := FSelectColor;
    FCheckedAreaColor := clWhite;
    FCheckedAreaSelectColor := clSilver;
    FMenuBorderColor := clBtnShadow;
    FMenuShadowColor := clBtnShadow;
  end;

  FFSelectBorderColor := FSelectBorderColor;
  FFSelectFontColor := FSelectFontColor;
  FFMenuBarColor := FMenuBarColor;
  FFDisabledColor := FDisabledColor;
  FFCheckedColor := FCheckedColor;
  FFSeparatorColor := FSeparatorColor;



  if FUseSystemColors then
  begin
//    GetSystemMenuFont(FFont);
    FFSelectFontColor := FFont.Color;
    if not Is16Bit then
    begin
      FFColor := clWhite;
      FFIconBackColor := clBtnFace;
      FFSelectColor := clWhite;
      FFSelectBorderColor := clHighlight;
      FFMenuBarColor := FFIconBackColor;
      FFDisabledColor := clBtnShadow;
      FFCheckedColor := clHighlight;
      FFSeparatorColor := clBtnShadow;
      FCheckedAreaColor := clWhite;
      FCheckedAreaSelectColor := clWhite;

    end
    else
    begin
      FFColor := NewColor(ACanvas, clBtnFace, 86);
      FFIconBackColor := NewColor(ACanvas, clBtnFace, 16);
      FFSelectColor := NewColor(ACanvas, clHighlight, 68);
      FFSelectBorderColor := clHighlight;
      FFMenuBarColor := clBtnFace;

      FFDisabledColor := NewColor(ACanvas, clBtnShadow, 10);
      FFSeparatorColor := NewColor(ACanvas, clBtnShadow, 25);
      FFCheckedColor := clHighlight;
      FCheckedAreaColor := NewColor(ACanvas, clHighlight, 80);
      FCheckedAreaSelectColor := NewColor(ACanvas, clHighlight, 50);

    end;
  end;

end;

procedure TXPPlus.DrawTopMenuItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; BckColor:Tcolor; IsRightToLeft: boolean);
var
  X1, X2: integer;
  DefColor, HoldColor: TColor;
begin
  X1 := ARect.Left;
  X2 := ARect.Right;


  ACanvas.brush.Style := bsSolid;
  ACanvas.brush.color :=  FFSelectColor;

  ACanvas.FillRect(ARect);
  ACanvas.Pen.Color := FFSelectBorderColor;

  if (not IsRightToLeft) and (Is16Bit) and (Sender is TMenuItem) then
  begin
    ACanvas.MoveTo(X1, ARect.Bottom - 1);
    ACanvas.LineTo(X1, ARect.Top);
    ACanvas.LineTo(X2 - 8, ARect.Top);
    ACanvas.LineTo(X2 - 8, ARect.Bottom);

    DefColor := FFMenuBarColor;


    HoldColor := GetShadeColor(ACanvas, DefColor, 10);
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := HoldColor;
    ACanvas.Pen.Color := HoldColor;

    ACanvas.FillRect(Rect(X2 - 7, ARect.Top, X2, ARect.Bottom));

    HoldColor := GetShadeColor(ACanvas, DefColor, 30);
    ACanvas.Brush.Color := HoldColor;
    ACanvas.Pen.Color := HoldColor;
    ACanvas.FillRect(Rect(X2 - 7, ARect.Top + 3, X2 - 2, ARect.Bottom));

    HoldColor := GetShadeColor(ACanvas, DefColor, 40 + 20);
    ACanvas.Brush.Color := HoldColor;
    ACanvas.Pen.Color := HoldColor;
    ACanvas.FillRect(Rect(X2 - 7, ARect.Top + 5, X2 - 3, ARect.Bottom));

    HoldColor := GetShadeColor(ACanvas, DefColor, 60 + 40);
    ACanvas.Brush.Color := HoldColor;
    ACanvas.Pen.Color := HoldColor;
    ACanvas.FillRect(Rect(X2 - 7, ARect.Top + 6, X2 - 5, ARect.Bottom));

    //---

    ACanvas.Pen.Color := DefColor;
    ACanvas.MoveTo(X2 - 5, ARect.Top + 1);
    ACanvas.LineTo(X2 - 1, ARect.Top + 1);
    ACanvas.LineTo(X2 - 1, ARect.Top + 6);

    ACanvas.MoveTo(X2 - 3, ARect.Top + 2);
    ACanvas.LineTo(X2 - 2, ARect.Top + 2);
    ACanvas.LineTo(X2 - 2, ARect.Top + 3);
    ACanvas.LineTo(X2 - 3, ARect.Top + 3);



    ACanvas.Pen.Color := GetShadeColor(ACanvas, DefColor, 10);
    ACanvas.MoveTo(X2 - 6, ARect.Top + 3);
    ACanvas.LineTo(X2 - 3, ARect.Top + 3);
    ACanvas.LineTo(X2 - 3, ARect.Top + 6);
    ACanvas.LineTo(X2 - 4, ARect.Top + 6);
    ACanvas.LineTo(X2 - 4, ARect.Top + 3);

    ACanvas.Pen.Color := GetShadeColor(ACanvas, DefColor, 30);
    ACanvas.MoveTo(X2 - 5, ARect.Top + 5);
    ACanvas.LineTo(X2 - 4, ARect.Top + 5);
    ACanvas.LineTo(X2 - 4, ARect.Top + 9);

    ACanvas.Pen.Color := GetShadeColor(ACanvas, DefColor, 40);
    ACanvas.MoveTo(X2 - 6, ARect.Top + 5);
    ACanvas.LineTo(X2 - 6, ARect.Top + 7);

  end
  else
  begin

    ACanvas.Pen.Color := FFSelectBorderColor;
    ACanvas.Brush.Color := GetShadeColor(ACanvas, BckColor, 70);

    ACanvas.MoveTo(X1, ARect.Bottom - 1);
    ACanvas.LineTo(X1, ARect.Top);
    ACanvas.LineTo(X2 - 3, ARect.Top);
    ACanvas.LineTo(X2 - 3, ARect.Bottom);


    ACanvas.Pen.Color := ACanvas.Brush.Color;
    ACanvas.FillRect(Rect(X2 - 2, ARect.Top + 2, X2, ARect.Bottom));

    ACanvas.Brush.Color := BckColor;
    ACanvas.FillRect(Rect(X2 - 2, ARect.Top , X2, ARect.Top + 2));


  end;

end;


procedure TXPPlus.DrawCheckedItem(FMenuItem: TMenuItem; Selected, Enabled,
 HasImgLstBitmap: boolean; ACanvas: TCanvas; CheckedRect: TRect);
var
  X1, X2: integer;
begin
  if FMenuItem.RadioItem then
  begin
    if FMenuItem.Checked then
    begin
      if Enabled then
      begin
        ACanvas.Pen.color := FFSelectBorderColor;
        if selected then
          ACanvas.Brush.Color := FCheckedAreaSelectColor
        else
          ACanvas.Brush.Color := FCheckedAreaColor;
      end
      else
        ACanvas.Pen.color := FFDisabledColor;

      ACanvas.Brush.Style := bsSolid;
      if HasImgLstBitmap then
      begin
        ACanvas.RoundRect(CheckedRect.Left, CheckedRect.Top,
          CheckedRect.Right, CheckedRect.Bottom,
          6, 6);
      end
      else
      begin
        ACanvas.Ellipse(CheckedRect.Left, CheckedRect.Top,
          CheckedRect.Right, CheckedRect.Bottom);
      end;
    end;
  end
  else
  begin
    if (FMenuItem.Checked) then
      if (not HasImgLstBitmap) then
      begin
        if Enabled then
        begin
          ACanvas.Pen.color := FFCheckedColor;
          if selected then
            ACanvas.Brush.Color := FCheckedAreaSelectColor
          else
            ACanvas.Brush.Color := FCheckedAreaColor; ;
        end
        else
          ACanvas.Pen.color := FFDisabledColor;

        ACanvas.Brush.Style := bsSolid;
        ACanvas.Rectangle(CheckedRect.Left, CheckedRect.Top,
          CheckedRect.Right, CheckedRect.Bottom);
        if Enabled then
          ACanvas.Pen.color := clBlack
        else
          ACanvas.Pen.color := FFDisabledColor;
        x1 := CheckedRect.Left + 1;
        x2 := CheckedRect.Top + 5;
        ACanvas.MoveTo(x1, x2);

        x1 := CheckedRect.Left + 4;
        x2 := CheckedRect.Bottom - 2;
        ACanvas.LineTo(x1, x2);
        //--
        x1 := CheckedRect.Left + 2;
        x2 := CheckedRect.Top + 5;
        ACanvas.MoveTo(x1, x2);

        x1 := CheckedRect.Left + 4;
        x2 := CheckedRect.Bottom - 3;
        ACanvas.LineTo(x1, x2);
        //--
        x1 := CheckedRect.Left + 2;
        x2 := CheckedRect.Top + 4;
        ACanvas.MoveTo(x1, x2);

        x1 := CheckedRect.Left + 5;
        x2 := CheckedRect.Bottom - 3;
        ACanvas.LineTo(x1, x2);
        //-----------------

        x1 := CheckedRect.Left + 4;
        x2 := CheckedRect.Bottom - 3;
        ACanvas.MoveTo(x1, x2);

        x1 := CheckedRect.Right + 2;
        x2 := CheckedRect.Top - 1;
        ACanvas.LineTo(x1, x2);
        //--
        x1 := CheckedRect.Left + 4;
        x2 := CheckedRect.Bottom - 2;
        ACanvas.MoveTo(x1, x2);

        x1 := CheckedRect.Right - 2;
        x2 := CheckedRect.Top + 3;
        ACanvas.LineTo(x1, x2);

      end
      else
      begin


        if Enabled then
        begin
          ACanvas.Pen.color := FFSelectBorderColor;
          if selected then
            ACanvas.Brush.Color := FCheckedAreaSelectColor
          else
            ACanvas.Brush.Color := FCheckedAreaColor; ;
        end
        else
          ACanvas.Pen.color := FFDisabledColor;

        ACanvas.Brush.Style := bsSolid;
        ACanvas.Rectangle(CheckedRect.Left, CheckedRect.Top,
          CheckedRect.Right, CheckedRect.Bottom);
      end;
  end;

end;

procedure TXPPlus.DrawTheText(Sender: TObject; txt, ShortCuttext: string;
    ACanvas: TCanvas; TextRect: TRect;
    Selected, Enabled, Default, TopMenu, IsRightToLeft: boolean;
    var TxtFont: TFont; TextFormat: integer);
var
  DefColor: TColor;
  B: TBitmap;
  BRect: TRect;
begin

  DefColor := TxtFont.Color;

  ACanvas.Font.Assign (TxtFont);

  if Selected then
    DefColor := FFSelectFontColor;

  If not Enabled then
  begin
    DefColor := FFDisabledColor;

    if (Sender is TToolButton) then
    begin
      TextRect.Top := TextRect.Top +
        ((TextRect.Bottom - TextRect.Top) - ACanvas.TextHeight('W')) div 2;
      B := TBitmap.Create;
      try
        B.Width := TextRect.Right - TextRect.Left;
        B.Height := TextRect.Bottom - TextRect.Top;
        BRect := Rect(0,0,B.Width, B.Height);


        B.Canvas.Brush.Color := ACanvas.Brush.Color;
        B.Canvas.FillRect (BRect);
  //      B.Canvas.Font := FFont; //felix added for resolving font problems in Win98
                                //27.08
        B.Canvas.Font.color := DefColor;

        DrawtextEx(B.Canvas.Handle,
          PChar(txt),
          Length(txt),
          BRect, TextFormat + DT_VCENTER, nil);
        ACanvas.CopyRect(TextRect, B.Canvas, BRect);
      finally
        B.Free;
      end;
      exit;
    end;

  end;

  if (TopMenu and Selected) then
    if FUseSystemColors then
      DefColor := TopMenuFontColor(ACanvas, FFIconBackColor);

  ACanvas.Font.color := DefColor;    // will not affect Buttons
//New
 {
  TextRect.Top := TextRect.Top +
    ((TextRect.Bottom - TextRect.Top) - ACanvas.TextHeight(txt)) div 2;
    }

  SetBkMode(ACanvas.Handle, TRANSPARENT);


  if Default and Enabled then
  begin

    Inc(TextRect.Left, 1);
    ACanvas.Font.color := GetShadeColor(ACanvas,
                              ACanvas.Pixels[TextRect.Left, TextRect.Top], 30);
    DrawtextEx(ACanvas.Handle,
      PChar(txt),
      Length(txt),
      TextRect, TextFormat, nil);
    Dec(TextRect.Left, 1);


    Inc(TextRect.Top, 2);
    Inc(TextRect.Left, 1);
    Inc(TextRect.Right, 1);


    ACanvas.Font.color := GetShadeColor(ACanvas,
                              ACanvas.Pixels[TextRect.Left, TextRect.Top], 30);
    DrawtextEx(ACanvas.Handle,
      PChar(txt),
      Length(txt),
      TextRect, TextFormat, nil);


    Dec(TextRect.Top, 1);
    Dec(TextRect.Left, 1);
    Dec(TextRect.Right, 1);

    ACanvas.Font.color := GetShadeColor(ACanvas,
                              ACanvas.Pixels[TextRect.Left, TextRect.Top], 40);
    DrawtextEx(ACanvas.Handle,
      PChar(txt),
      Length(txt),
      TextRect, TextFormat, nil);


    Inc(TextRect.Left, 1);
    Inc(TextRect.Right, 1);

    ACanvas.Font.color := GetShadeColor(ACanvas,
                              ACanvas.Pixels[TextRect.Left, TextRect.Top], 60);
    DrawtextEx(ACanvas.Handle,
      PChar(txt),
      Length(txt),
      TextRect, TextFormat, nil);

    Dec(TextRect.Left, 1);
    Dec(TextRect.Right, 1);
    Dec(TextRect.Top, 1);

    ACanvas.Font.color := DefColor;
  end;

  DrawtextEx(ACanvas.Handle,
      PChar(txt),
      Length(txt),
      TextRect, TextFormat, nil);


  txt := ShortCutText + ' ';

  if not Is16Bit then
    ACanvas.Font.color := DefColor
  else
    ACanvas.Font.color := GetShadeColor(ACanvas, DefColor, -40);



  if IsRightToLeft then
  begin
    Inc(TextRect.Left, 10);
    TextFormat := DT_LEFT
  end
  else
  begin
    Dec(TextRect.Right, 10);
    TextFormat := DT_RIGHT;
  end;


  DrawtextEx(ACanvas.Handle,
    PChar(txt),
    Length(txt),
    TextRect, TextFormat, nil);

end;

procedure TXPPlus.DrawIcon(Sender: TObject; ACanvas: TCanvas; B: TBitmap;
 IconRect: Trect; Hot, Selected, Enabled, Checked, FTopMenu,
 IsRightToLeft: boolean);
var
  DefColor: TColor;
  X, Y: integer;
begin

  if (B <> nil) and (B.Width > 0) then
  begin
    X := IconRect.Left;
    Y := IconRect.Top + 1;

    if (Sender is TMenuItem) then
    begin
      inc(Y, 2);
      if FIconWidth > B.Width then
        X := X + ((FIconWidth - B.Width) div 2) - 1
      else
      begin
        if IsRightToLeft then
          X := IconRect.Right - b.Width - 2
        else
          X := IconRect.Left + 2;
      end;
    end;

    if FTopMenu then
    begin
      if IsRightToLeft then
        X := IconRect.Right - b.Width - 5
      else
        X := IconRect.Left + 1;
    end;


    if (Hot) and (not FTopMenu) and (Enabled) and (not Checked) then
      if not Selected then
      begin
        dec(X, 1);
        dec(Y, 1);
      end;

    if (not Hot) and (Enabled) and (not Checked) then
      if Is16Bit then
        DimBitmap(B, FDimLevel{30});


    if not Enabled then
    begin
      GrayBitmap(B, FGrayLevel );
      DimBitmap(B, 40);
    end;

    if (Hot) and (Enabled) and (not Checked) then
    begin
      if (Is16Bit) and (not UseSystemColors) and (Sender is TToolButton) then
        DefColor := NewColor(ACanvas, FSelectColor, 68)
      else
        DefColor := FFSelectColor;

      DefColor := GetShadeColor(ACanvas, DefColor, 50);
      DrawBitmapShadow(B, ACanvas, X + 2, Y + 2, DefColor);
    end;

    B.Transparent := true;
    ACanvas.Draw(X, Y, B);
  end;

end;


function TXPPlus.TopMenuFontColor(ACanvas: TCanvas; Color: TColor): TColor;
var
  r, g, b, avg: integer;
begin

  Color := ColorToRGB(Color);
  r := Color and $000000FF;
  g := (Color and $0000FF00) shr 8;
  b := (Color and $00FF0000) shr 16;

  Avg := (r + b) div 2;

  if (Avg > 150) or (g > 200) then
    Result := FFont.Color
  else
    Result := NewColor(ACanvas, Color, 90);

end;


procedure TXPPlus.SetActive(const Value: boolean);
begin
  if Value = FActive then exit;

  FActive := Value;
  if FActive then
    InitItems(FForm, true, true)
  else
  begin
    InitItems(FForm, false, true);
    ReMoveScrollXp(FForm)
  end;

 // if (FForm <> nil) and (TForm(FForm).Menu <> nil) then
    Windows.DrawMenuBar(FForm.Handle);
{ for i:=0 to Self.owner.ComponentCount-1 do
  begin
   if(Self.owner.Components[i].Name='SmoothShow1')then
   begin
      Self.owner.RemoveComponent(Self.owner.Components[i]);
      ShowMessage(Tform(Self.owner).Caption+'Delted');
      exit;
   end;
  end}
end;

procedure TXPPlus.SetAutoDetect(const Value: boolean);
begin
  FAutoDetect := Value;
end;

procedure TXPPlus.SetForm(const Value: TScrollingWinControl);
var
  Hold: boolean;
begin
  if Value <> FForm then
  begin
    Hold := Active;
    Active := false;
    FForm := Value;
    if Hold then
      Active := True;
  end;
end;

procedure TXPPlus.SetFont(const Value: TFont);
begin
  FFont.Assign(Value);
  Windows.DrawMenuBar(FForm.Handle);

end;

procedure TXPPlus.SetColor(const Value: TColor);
begin
  FColor := Value;
end;

procedure TXPPlus.SetIconBackColor(const Value: TColor);
begin
  FIconBackColor := Value;
end;

procedure TXPPlus.SetMenuBarColor(const Value: TColor);
begin
  FMenuBarColor := Value;
  Windows.DrawMenuBar(FForm.Handle);
end;

procedure TXPPlus.SetCheckedColor(const Value: TColor);
begin
  FCheckedColor := Value;
end;

procedure TXPPlus.SetSeparatorColor(const Value: TColor);
begin
  FSeparatorColor := Value;
end;

procedure TXPPlus.SetSelectBorderColor(const Value: TColor);
begin
  FSelectBorderColor := Value;
end;

procedure TXPPlus.SetSelectColor(const Value: TColor);
begin
  FSelectColor := Value;
end;

procedure TXPPlus.SetDisabledColor(const Value: TColor);
begin
  FDisabledColor := Value;
end;

procedure TXPPlus.SetSelectFontColor(const Value: TColor);
begin
  FSelectFontColor := Value;
end;

procedure TXPPlus.SetIconWidth(const Value: integer);
begin
  FIconWidth := Value;
end;

procedure TXPPlus.SetDrawSelect(const Value: boolean);
begin
  FDrawSelect := Value;
end;



procedure TXPPlus.SetOverrideOwnerDraw(const Value: boolean);
begin
  FOverrideOwnerDraw := Value;
  if FActive then
    Active := True;
end;


procedure TXPPlus.SetUseSystemColors(const Value: boolean);
begin
  FUseSystemColors := Value;
  Windows.DrawMenuBar(FForm.Handle);
end;

procedure TXPPlus.SetGradient(const Value: boolean);
begin
  FGradient := Value;
end;

procedure TXPPlus.SetFlatMenu(const Value: boolean);
begin
  FFlatMenu := Value;
end;

procedure TXPPlus.SetXPContainers(const Value: TXPContainers);
begin
  if Value <> FXPContainers then
  begin
    if FActive then
    begin
      FActive := false;
      InitItems(FForm, false, true);
      FActive := true;
      FXPContainers := Value;
      InitItems(FForm, true, true);
    end;
  end;
  FXPContainers := Value;

end;

procedure TXPPlus.SetXPControls(const Value: TXPControls);
begin
  if Value <> FXPControls then
  begin
    if FActive then
    begin
      FActive := false;
      InitItems(FForm, false, true);
      FActive := true;
      FXPControls := Value;
      InitItems(FForm, true, true);
    end;
  end;
  FXPControls := Value;

end;

procedure TXPPlus.SetDrawMenuBar(const Value: boolean);
begin
  FDrawMenuBar := Value;
end;

procedure TXPPlus.SetUseDimColor(const Value: boolean);
begin
  FUseDimColor := Value;
end;

procedure GetSystemMenuFont(Font: TFont);
var
  FNonCLientMetrics: TNonCLientMetrics;
begin
  FNonCLientMetrics.cbSize := Sizeof(TNonCLientMetrics);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @FNonCLientMetrics,0) then
  begin
    Font.Handle := CreateFontIndirect(FNonCLientMetrics.lfMenuFont);
    Font.Color := clMenuText;
  end;
end;


procedure TXPPlus.DrawGradient(ACanvas: TCanvas; ARect: TRect;
 IsRightToLeft: boolean);
var
  i: integer;
  v: integer;
  FRect: TRect;
begin

  fRect := ARect;
  V := 0;
  if IsRightToLeft then
  begin
    fRect.Left := fRect.Right - 1;
    for i := ARect.Right Downto ARect.Left do
    begin
      if (fRect.Left < ARect.Right)
        and (fRect.Left > ARect.Right - FIconWidth + 5) then
        inc(v, 3)
      else
        inc(v, 1);

      if v > 96 then v := 96;
      ACanvas.Brush.Color := NewColor(ACanvas, FFIconBackColor, v);
      ACanvas.FillRect(fRect);

      fRect.Left := fRect.Left - 1;
      fRect.Right := fRect.Left - 1;
    end;
  end
  else
  begin
    fRect.Right := fRect.Left + 1;
    for i := ARect.Left to ARect.Right do
    begin
      if (fRect.Left > ARect.Left)
        and (fRect.Left < ARect.Left + FIconWidth + 5) then
        inc(v, 3)
      else
        inc(v, 1);

      if v > 96 then v := 96;
      ACanvas.Brush.Color := NewColor(ACanvas, FFIconBackColor, v);
      ACanvas.FillRect(fRect);

      fRect.Left := fRect.Left + 1;
      fRect.Right := fRect.Left + 1;
    end;
  end;
end;


procedure TXPPlus.DrawWindowBorder(hWnd: HWND; IsRightToLeft: boolean);
var
  WRect: TRect;
  dCanvas: TCanvas;
begin

  if hWnd <= 0 then
  begin
   exit;
  end;
 // dCanvas := nil;
  dCanvas := TCanvas.Create;
  try
    dCanvas.Handle := GetWindowDC(GetDesktopWindow);

    GetWindowRect(hWnd, WRect);

    dCanvas.Brush.Style := bsClear;


    Dec(WRect.Right, 2);
    Dec(WRect.Bottom, 2);

    dCanvas.Pen.Color := FMenuBorderColor;
    dCanvas.Rectangle(WRect.Left, WRect.Top, WRect.Right, WRect.Bottom);

    if IsRightToLeft then
    begin
      dCanvas.Pen.Color := FFColor;
      dCanvas.Rectangle(WRect.Left + 1, WRect.Top + 1, WRect.Right - 2,
                        WRect.Top + 3);

      dCanvas.MoveTo(WRect.Left + 2, WRect.Top + 2);
      dCanvas.LineTo(WRect.Left + 2, WRect.Bottom - 2);


      dCanvas.Pen.Color := FFIconBackColor;
      dCanvas.MoveTo(WRect.Right - 2, WRect.Top + 2);
      dCanvas.LineTo(WRect.Right - 2, WRect.Bottom - 2);

      dCanvas.MoveTo(WRect.Right - 2, WRect.Top + 2);
      dCanvas.LineTo(WRect.Right - 1 - FIconWidth, WRect.Top + 2);
    end
    else
    begin
      if not FGradient then
      begin
        dCanvas.Pen.Color := FFColor;
        dCanvas.Rectangle(WRect.Left + 1, WRect.Top + 1, WRect.Right - 1,
                          WRect.Top + 3);

        dCanvas.Pen.Color := FFIconBackColor;
        dCanvas.MoveTo(WRect.Left + 1, WRect.Top + 2);
        dCanvas.LineTo(WRect.Left + 3 + FIconWidth, WRect.Top + 2);
      end
      else
        DrawGradient(dCanvas, Rect(WRect.Left + 1, WRect.Top + 1,
                                   WRect.Right - 3, WRect.Top + 3), IsRightToLeft);

      dCanvas.Pen.Color := FFIconBackColor;
      dCanvas.Rectangle(WRect.Left + 1, WRect.Top + 2,
                        WRect.Left + 3, WRect.Bottom - 1)

    end;

    Inc(WRect.Right, 2);
    Inc(WRect.Bottom, 2);

    dCanvas.Pen.Color := FMenuShadowColor;
    dCanvas.Rectangle(WRect.Left + 2, WRect.Bottom, WRect.Right, WRect.Bottom - 2);
    dCanvas.Rectangle(WRect.Right - 2, WRect.Bottom, WRect.Right, WRect.Top + 2);


    dCanvas.Pen.Color := clBtnFace ;
    dCanvas.Rectangle(WRect.Left, WRect.Bottom - 2, WRect.Left + 2, WRect.Bottom);
    dCanvas.Rectangle(WRect.Right - 2, WRect.Top, WRect.Right, WRect.Top + 2);
  finally
    ReleaseDC(GetDesktopWindow, dCanvas.Handle);
    dCanvas.Free;
  end;


end;


procedure TXPPlus.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if not FActive then exit;
  if not FAutoDetect then exit;
  if (Operation = opInsert) and
     ((AComponent is TMenuItem) or (AComponent is TToolButton) or
      (AComponent is TControlBar)) then
  begin
    if not (csDesigning in ComponentState) then
      InitItem(AComponent, true, true);  // Tom: This will process this new component
  end;
end;


procedure TXPPlus.SetXPScroll(Control:TControl;SCStyle:TScrollStyle;Rect:TRect;Single:Boolean);
var
 ScXP:TScrollXPBar;
begin
  ScXP         :=TScrollXPBar.Create(Control.Parent);
  ScXP.BGColor :=FScrollColor;
  if(SCStyle=ssHorizontal) then
    ScXP.Kind  := meHorizontal
  else
    ScXP.Kind  := meVertical;
  ScXP.BiDiMode:=Control.BiDiMode;
  ScXP.Single  := Single;
  ScXP.ScrollSize  := ScrollSize;
  ScXP.Parent  :=Control.Parent;
  if (Control is TDBGrid) then
  begin
     if(Control.BiDiMode<>bdRightToLeft) then
        ScXP.Left:=ScXP.Left-3;
     ScXP.Width:=ScXP.Width+3;
  end;
  ScXP.Connect:=TWinControl(Control);
end;
procedure TXPPlus.AddXPScroll(Control:TControl;SCStyle:TScrollStyle);
var
 ScRect:TRect;
begin
    if (SCStyle = ssBoth) then
    begin
      SCRect.Left:=Control.Left;
      SCRect.Top:=Control.TOP+Control.Height-FScrollSize;
      if(TStringGrid(Control).BiDiMode=bdRightToLeft) then
        SCRect.Left  :=SCRect.Left+FScrollSize;
      SCRect.Right:=Control.Width-FScrollSize;
      SCrect.Bottom:=FScrollSize;
      SetXPScroll(Control,ssHorizontal,ScRect,false);

      if(Control.BiDiMode=bdRightToLeft) then
         SCRect.Left  := Control.Left
      else
         SCRect.Left  := Control.Width+Control.Left-FScrollSize;
      SCRect.Top:=Control.Top;
      SCRect.Right :=FScrollSize;
      SCrect.Bottom:=Control.Height-FScrollSize;
      SetXPScroll(Control,ssVertical,ScRect,false);



    end
    else if(SCStyle=ssHorizontal) then
    begin
      SCRect.Left:=Control.Left;
      SCRect.Top:=Control.TOP+Control.Height-FScrollSize;
      if(Control.BiDiMode=bdRightToLeft) then
        SCRect.Left  :=SCRect.Left+FScrollSize;
      SCRect.Right:=Control.Width;
      SCrect.Bottom:=FScrollSize;
      SetXPScroll(Control,ssHorizontal,ScRect,true);
    end
    else if(SCStyle=ssVertical) then
    begin
      if(Control.BiDiMode=bdRightToLeft) then
         SCRect.Left  := Control.Left
      else
         SCRect.Left  := Control.Width+Control.Left-FScrollSize;
      SCRect.Top:=Control.Top;
      SCRect.Right :=FScrollSize;
      SCrect.Bottom:=Control.Height;
      SetXPScroll(Control,ssVertical,ScRect,true);
    end;
// TStringGrid(Control).ScrollBars:=ssNone;
   TStringGrid(Control).ScrollBars:=ssNone;

end;


function GetShadeColor(ACanvas: TCanvas; clr: TColor; Value: integer): TColor;
var
  r, g, b: integer;

begin
  clr := ColorToRGB(clr);
  r := Clr and $000000FF;
  g := (Clr and $0000FF00) shr 8;
  b := (Clr and $00FF0000) shr 16;

  r := (r - value);
  if r < 0 then r := 0;
  if r > 255 then r := 255;

  g := (g - value) + 2;
  if g < 0 then g := 0;
  if g > 255 then g := 255;

  b := (b - value);
  if b < 0 then b := 0;
  if b > 255 then b := 255;

  //Result := Windows.GetNearestColor(ACanvas.Handle, RGB(r, g, b));
  Result := RGB(r, g, b);
end;

function NewColor(ACanvas: TCanvas; clr: TColor; Value: integer): TColor;
var
  r, g, b: integer;

begin
  if Value > 100 then Value := 100;
  clr := ColorToRGB(clr);
  r := Clr and $000000FF;
  g := (Clr and $0000FF00) shr 8;
  b := (Clr and $00FF0000) shr 16;


  r := r + Round((255 - r) * (value / 100));
  g := g + Round((255 - g) * (value / 100));
  b := b + Round((255 - b) * (value / 100));

  Result := Windows.GetNearestColor(ACanvas.Handle, RGB(r, g, b));
  //Result := RGB(r, g, b);

end;

function GrayColor(ACanvas: TCanvas; Clr: TColor; Value: integer): TColor;
var
  r, g, b, avg: integer;

begin

  clr := ColorToRGB(clr);
  r := Clr and $000000FF;
  g := (Clr and $0000FF00) shr 8;
  b := (Clr and $00FF0000) shr 16;

  Avg := (r + g + b) div 3;
  Avg := Avg + Value;

  if Avg > 240 then Avg := 240;
  //if ACanvas <> nil then
  //  Result := Windows.GetNearestColor (ACanvas.Handle,RGB(Avg, avg, avg));
   Result := RGB(Avg, avg, avg);
end;

procedure GrayBitmap(ABitmap: TBitmap; Value: integer);
var
  x, y: integer;
  LastColor1, LastColor2, Color: TColor;
begin
  LastColor1 := 0;
  LastColor2 := 0;

  for y := 0 to ABitmap.Height do
    for x := 0 to ABitmap.Width do
    begin
      Color := ABitmap.Canvas.Pixels[x, y];
      if Color = LastColor1 then
        ABitmap.Canvas.Pixels[x, y] := LastColor2
      else
      begin
        LastColor2 := GrayColor(ABitmap.Canvas , Color, Value);
        ABitmap.Canvas.Pixels[x, y] := LastColor2;
        LastColor1 := Color;
      end;
    end;
end;

{Modified  by felix@unidreamtech.com}
{
procedure GrayBitmap(ABitmap: TBitmap; Value: integer);
var
  Pixel: PRGBTriple;
  w, h: Integer;
  x, y: Integer;
  avg: integer;
begin
  ABitmap.PixelFormat := pf24Bit;
  w := ABitmap.Width;
  h := ABitmap.Height;
  for y := 0 to h - 1 do
  begin
    Pixel := ABitmap.ScanLine[y];
    for x := 0 to w - 1 do
    begin
      avg := ((Pixel^.rgbtRed + Pixel^.rgbtGreen + Pixel^.rgbtBlue) div 3)
        + Value;
      if avg > 240 then avg := 240;
      Pixel^.rgbtRed := avg;
      Pixel^.rgbtGreen := avg;
      Pixel^.rgbtBlue := avg;
      Inc(Pixel);
    end;
  end;
end;
}

procedure DimBitmap(ABitmap: TBitmap; Value: integer);
var
  x, y: integer;
  LastColor1, LastColor2, Color: TColor;
begin
  if Value > 100 then Value := 100;
  LastColor1 := -1;
  LastColor2 := -1;

  for y := 0 to ABitmap.Height - 1 do
    for x := 0 to ABitmap.Width - 1 do
    begin
      Color := ABitmap.Canvas.Pixels[x, y];
      if Color = LastColor1 then
        ABitmap.Canvas.Pixels[x, y] := LastColor2
      else
      begin
        LastColor2 := NewColor(ABitmap.Canvas, Color, Value);
        ABitmap.Canvas.Pixels[x, y] := LastColor2;
        LastColor1 := Color;
      end;
    end;
end;

{Modified  by felix@unidreamtech.com}
{works  fine for 24 bit color
procedure DimBitmap(ABitmap: TBitmap; Value: integer);
var
  Pixel: PRGBTriple;
  w, h: Integer;
  x, y, c1, c2: Integer;
begin
  ABitmap.PixelFormat := pf24Bit;
  w := ABitmap.Width;
  h := ABitmap.Height;

  c1 := Value * 255;
  c2 := 100 - Value;
  for y := 0 to h - 1 do
  begin
    Pixel := ABitmap.ScanLine[y];
    for x := 0 to w - 1 do
    begin
      Pixel^.rgbtRed := ((c2 * Pixel^.rgbtRed) + c1) div 100;
      Pixel^.rgbtGreen := ((c2 * Pixel^.rgbtGreen) + c1) div 100;
      Pixel^.rgbtBlue := ((c2 * Pixel^.rgbtBlue) + c1) div 100;
      Inc(Pixel);
    end;
  end;
end;
}
procedure DrawArrow(ACanvas: TCanvas; X, Y: integer);
begin
  ACanvas.MoveTo(X, Y);
  ACanvas.LineTo(X + 5, Y);

  ACanvas.MoveTo(X + 1, Y + 1);
  ACanvas.LineTo(X + 4, Y);

  ACanvas.MoveTo(X + 2, Y + 2);
  ACanvas.LineTo(X + 3, Y);

end;

procedure DrawBitmapShadow(B: TBitmap; ACanvas: TCanvas; X, Y: integer;
  ShadowColor: TColor);
var
  BX, BY: integer;
  TransparentColor: TColor;
begin
  TransparentColor := B.Canvas.Pixels[0, B.Height - 1];
  for BY := 0 to B.Height - 1 do
    for BX := 0 to B.Width - 1 do
    begin
      if((BX>0) and (BY>0)) then
        if B.Canvas.Pixels[BX, BY] <> TransparentColor then
          ACanvas.Pixels[X + BX, Y + BY] := ShadowColor;
    end;
end;

procedure DrawCheckMark(ACanvas: TCanvas; X, Y: integer);
begin
  Inc(X, 2);
  Dec(Y, 3);
  ACanvas.MoveTo(X , Y - 2);
  ACanvas.LineTo(X + 2, Y );
  ACanvas.LineTo(X + 7, Y - 5);

  ACanvas.MoveTo(X , Y - 3);
  ACanvas.LineTo(X + 2, Y - 1);
  ACanvas.LineTo(X + 7, Y - 6);

  ACanvas.MoveTo(X , Y - 4);
  ACanvas.LineTo(X + 2, Y - 2);
  ACanvas.LineTo(X + 7, Y - 7);

end;

procedure TXPPlus.ReMoveScrollXp(Comonent: TComponent);
var i,k:integer;
begin
  k:=0;
    if(Comonent<>nil) then
    begin
       for i:=0 to Comonent.ComponentCount-1 do
        begin
         if(Comonent.Components[i] is TScrollXPBar)then
         begin
            inc(k);
            Comonent.Components[i].Destroy;
         end
         else if(Comonent.Components[i].ComponentCount>0)  then
            ReMoveScrollXp(Comonent.Components[i]);
         if(k+i=Comonent.ComponentCount-1) then exit;
        end
    end

end;

end.

