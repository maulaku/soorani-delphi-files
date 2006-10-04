{$IFDEF VER130}
{$DEFINE VER5U}
{$ENDIF}

{$IFDEF VER140}
{$DEFINE VER6U}
{$ENDIF}

unit ControlSubClass;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, ComCtrls,  Forms,Dialogs,
  Menus, Messages, Commctrl, ExtCtrls, StdCtrls, Buttons,grids,ScrollXPBar
  ,DbGrids,XPPlus;
{$r *.res}

Type
 TControlSubClass = class(TComponent)   //:   "Fabian Jakubowski" <fj@sambreville.com>
  private
    FBuilding: boolean;
    FMouseInControl: boolean;
    FLButtonBressed: boolean;
    FBressed: boolean;
    FIsKeyDown: boolean;
    FIsFocused: boolean;
    FMsg: Cardinal;
    procedure PaintControlXP;
    procedure PaintCombo;
    procedure PaintDBLookupCombo;
    procedure PaintEdit;
    procedure PaintRichEdit;
    procedure PaintCheckBox;
    procedure PaintRadio;
    procedure PaintButton;
    procedure PaintBitButn;
    procedure PaintUpDownButton;
    procedure PaintSpeedButton;
    procedure PaintPanel;
    procedure PaintGrid;
    procedure PaintGroupBox;
  public
    XPMenu: TXPPlus;
    Control: TControl;
    FCtl3D: boolean;
    FBorderStyle: TBorderStyle;
    orgWindowProc: TWndMethod;
    procedure ControlSubClass(var Message: TMessage);


  end;
procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('XP', [TControlSubClass]);
end;
procedure TControlSubClass.PaintGrid;
var
  C: TControlCanvas;
  R  : TRect;
  BorderColor: TColor;
begin
  PaintEdit;
  C := TControlCanvas.Create;
  try
    C.Control := Control.Parent;
    XPMenu.SetGlobalColor(C);
    R := Control.BoundsRect;
    InflateRect(R, 1, 1);
    if FBorderStyle  = bsSingle then
    begin
      FBuilding := true;
//      if TRichEdit(Control).BorderWidth < 2 then
//        TRichEdit(Control).BorderWidth := 2;
    end;

    if (FmouseinControl) or (FIsFocused) then
      borderColor := NewColor(C, XPMenu.FFSelectBorderColor,60)
    else
    begin
      if FBorderStyle = bsSingle then
        borderColor := GetShadeColor(C, Control.Parent.Brush.Color, 60)
      else
        borderColor := Control.Parent.Brush.Color;
    end;

    Frame3D(C, R, borderColor, borderColor, 4);

  finally
    C.Free;
  end;
end;
procedure TControlSubClass.ControlSubClass(var Message: TMessage);
begin
  //Call original WindowProc FIRST. We are trying to emulate inheritance, so
  //original WindowProc must handle all messages before we do.

  if (Message.Msg = WM_PAINT) and ((Control is TGraphicControl)) then
     Message.Result := 1
  else
       //: "Marcus Paulo Tavares" <marcuspt@terra.com.br>
  orgWindowProc(Message);

  if(XPMenu=nil) then
  begin
   ShowMessage(Control.Name);
   if not FBuilding then
   begin
     try
       Control.WindowProc := orgWindowProc;
       Free;
     except
     end;
     FBuilding := false;
   end;
   Exit;
  end;

  if (not XPMenu.FActive)  then
  begin
    try
      Message.Result := 1;
      if Control <> nil then
      begin
        Control.WindowProc := orgWindowProc;
        if Control is TCustomEdit then
          TEdit(Control).Ctl3D := FCtl3D;

        if Control is TCustomRichEdit then
          TRichEdit(Control).BorderStyle := FBorderStyle;

        if (Control.ClassName = 'TDBLookupComboBox') or (Control.ClassName = 'TRSqlDbLookup') then
          TComboBox(Control).Ctl3D := FCtl3D;

        if Control is TGraphicControl then
          Control.Repaint;

        Control := nil;
        Free;
      end;
      exit;
    except
      exit;
    end;
  end;
//  FmouseInControl := false;
  FMsg := Message.Msg;
  case Message.Msg of
                                   
    EM_GETMODIFY, // For edit
    CM_INVALIDATE:
      begin
        FBuilding := true
      end;

    CM_PARENTCOLORCHANGED:
    begin
      PaintControlXP;
    end;

    WM_DESTROY:
      begin
       if not FBuilding then
       begin
         try
           Control.WindowProc := orgWindowProc;
           Free;
         except
         end;
         FBuilding := false;
       end;
       Exit;
      end;

    WM_PAINT:
      begin
        FBuilding := false;
        PaintControlXP;
      end;

    CM_MOUSEENTER:
      if TControl(Control).Enabled then
      begin
        FmouseInControl := true;
        if Control is TGraphicControl then
        begin
          Control.Repaint;
          exit;
        end;
        PaintControlXP;
      end;
    CM_MOUSELEAVE:
      if TControl(Control).Enabled then
      begin
        FmouseInControl := false;
        if Control is TGraphicControl then
        begin
          Control.Repaint;
          exit;
        end;
        PaintControlXP;
      end;

    WM_LBUTTONDOWN:
      begin
        FLButtonBressed := true;
        PaintControlXP;
      end;

    WM_LBUTTONUP:
      begin
       FLButtonBressed := false;
       if Control is TGraphicControl then
       begin
         Control.Repaint;
         exit;
       end;
       PaintControlXP;
      end;

    WM_KEYDOWN:
      if Message.WParam = VK_SPACE then
      begin
       FBressed := true;
       if not FIsKeyDown then
         PaintControlXP;
       FIsKeyDown := true;
      end;

    WM_KEYUP:
      if Message.WParam = VK_SPACE then
      begin
        FBressed := false;
        FIsKeyDown := false;
        PaintControlXP;
      end;

    WM_SETFOCUS:
      begin
        FmouseInControl := true;
        PaintControlXP;
      end;
    WM_KILLFOCUS:
      begin
        FmouseInControl := false;
        PaintControlXP;
      end;
    CM_FOCUSCHANGED:
      PaintControlXP;

    CM_EXIT:
      begin
        FmouseInControl := false;
        PaintControlXP;
      end;

    BM_SETCHECK:
      begin
        FmouseInControl := false;
        PaintControlXP;
      end;
    BM_GETCHECK:
      begin
        FmouseInControl := false;
        PaintControlXP;
      end;
    CM_ENABLEDCHANGED:
      begin
        if (Message.WParam = 0) then FmouseInControl := false;//Dirk Bottcher <dirk.boettcher@gmx.net>
        PaintControlXP;
      end;

    CM_TEXTCHANGED:
      begin
        PaintControlXP;
      end;


    CM_CTL3DCHANGED, CM_PARENTCTL3DCHANGED:
      begin
        FBuilding := true;
      end;
    WM_LBUTTONDBLCLK:    //for button, check
      begin
        if (Control is TButton) or
           (Control is TSpeedButton) or
           (Control is TCheckBox)  then
          Control.Perform(WM_LBUTTONDOWN, Message.WParam , Longint(Message.LParam));
      end;
    {CN_DRAWITEM,} BM_SETSTATE:
      PaintControlXP;   // button

    WM_WINDOWPOSCHANGED, CN_PARENTNOTIFY:     // Moving From parent to other
      begin
        FBuilding := true
      end;
  end;

end;

// changes added by Heath Provost (Nov 20, 2001)
{ TCustomComboSubClass }
// paints an overlay over the control to make it mimic
// Office XP style.

procedure TControlSubClass.PaintControlXP;
begin

  If Control is TWinControl then
    FIsFocused := TWinControl(Control).Focused
  else
    FIsFocused := false;
  {$IFDEF VER6U}
  if (Control is TCustomCombo) then
    PaintCombo;
  {$ELSE}
  if (Control is TCustomComboBox) then
    PaintCombo;
  {$ENDIF}
  // Set Form And Others Color
  if ((Control is TStringGrid) and  (FIsFocused)) then
     TStringGrid(Control).color:=XPMenu.FFocusColor
  else if(Control is TStringGrid) then
     TStringGrid(Control).color:=XPMenu.FNonFocusColor;

  if ((Control is TDBGrid) and  (FIsFocused)) then
     TDBGrid(Control).color:=XPMenu.FFocusColor
  else if(Control is TDBGrid) then
     TDBGrid(Control).color:=XPMenu.FNonFocusColor;
  if (Control.ClassName = 'TDBLookupComboBox') or (Control.ClassName = 'TRSqlDbLookup') then
   PaintDBLookupCombo;

  if ((Control.ClassName = 'TStringGrid') or (Control is TStringGrid ))then
    PaintGrid;

  if ((Control.ClassName = ' TDBGrid') or (Control is  TDBGrid ))then
    PaintGrid;

  if Control is TCustomRichEdit then
    PaintRichEdit
  else
  if Control is TCustomEdit then
    PaintEdit;

  if Control is TCustomCheckBox then
    PaintCheckBox;
  if Control is TRadioButton then
    PaintRadio;

  if Control is TBitBtn then
    PaintBitButn
  else
  if Control is TButton then
    PaintButton;

 if Control is TUpDown then
    PaintUpDownButton;


  if Control is TSpeedButton then
    if Control.Visible then
      PaintSpeedButton;

  if Control is TCustomPanel then
    PaintPanel;
  if Control is TCustomGroupBox then
    PaintGroupBox;
end;


procedure TControlSubClass.PaintCombo;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor, ArrowColor: TColor;
  X: integer;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;

    XPMenu.SetGlobalColor(C);
    if Control.Enabled then ArrowColor := clBlack else ArrowColor := clWhite;


    if (FmouseinControl) then
    begin
      borderColor := XPMenu.FFSelectBorderColor;
      SelectColor := XPMenu.FFSelectColor;
    end
    else
    begin
      borderColor := TComboBox(Control).Color;
      if Control.Tag = 1000 then
        SelectColor := NewColor(C, TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColor)
      else
        selectColor := clBtnFace;
    end;

    if (not FmouseinControl) and (FIsFocused) then
    begin
      borderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
      SelectColor := XPMenu.FCheckedAreaColor;
    end;



    R := Control.ClientRect;

    C.Brush.Color := Control.Parent.Brush.Color;
    C.FrameRect(R);
    InflateRect(R, -1, -1);

    C.Pen.Color := C.Brush.Color;
    C.MoveTo(R.Left, R.Top);
    C.LineTo(R.Right, R.Top);

    InflateRect(R, 0, -1);

    if ( FmouseinControl or FIsFocused) then
      InflateRect(R, 1, 1);

    C.Brush.Color := TComboBox(Control).Color;;
    C.FrameRect(R);

    Inc(R.Bottom,1);
    C.Brush.Color := BorderColor;
    C.FrameRect(R);

    {$IFDEF VER6U}
    if TCustomCombo(Control).DroppedDown then
    {$ELSE}
    if TCustomComboBox(Control).DroppedDown then
    {$ENDIF}
    begin
      BorderColor := XPMenu.FFSelectBorderColor;
      ArrowColor := clWhite;
      SelectColor := XPMenu.FCheckedAreaSelectColor ;
    end;

    if TComboBox(Control).style <> csSimple then
    begin

      InflateRect(R, -1, -1);

      if Control.BiDiMode = bdRightToLeft then
        R.Right := R.Left + GetSystemMetrics(SM_CXHTHUMB) + 1
      else
        R.Left := R.Right - GetSystemMetrics(SM_CXHTHUMB) - 1;

      if ( FmouseinControl or FIsFocused) then
      begin
        if Control.BiDiMode = bdRightToLeft then
          Inc(R.Right, 2)
        else
          Dec(R.Left, 1);
      end;

      C.Brush.Color := SelectColor;
      C.FillRect(R);

      if Control.BiDiMode = bdRightToLeft then
        R.Left := R.Right - 5
      else
        R.Right := R.Left + 5;

      C.Brush.Color := TComboBox(Control).Color;
      C.FillRect(R);

      C.Pen.Color := BorderColor;

      if Control.BiDiMode = bdRightToLeft then
      begin
        C.Moveto(R.Left, R.Top);
        C.LineTo(R.Left, R.Bottom);
      end
      else
      begin
        C.Moveto(R.Right, R.Top);
        C.LineTo(R.Right, R.Bottom);
      end;
      C.Pen.Color := arrowColor;

      R := Control.ClientRect;

      if Control.BiDiMode = bdRightToLeft then
        X := R.Left + 5
      else
        X := R.Right - 10;

      C.Moveto(X + 0, R.Top + 10);
      C.LineTo(X + 5, R.Top + 10);
      C.Moveto(X + 1, R.Top + 11);
      C.LineTo(X + 4, R.Top + 11);
      C.Moveto(X + 2, R.Top + 12);
      C.LineTo(X + 3, R.Top + 12);
    end;
  finally
    C.Free;
  end;

end;

procedure TControlSubClass.PaintDBLookupCombo;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor, ArrowColor: TColor;
  X: integer;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;
    if TComboBox(Control).Ctl3D then
    begin
     FBuilding := true;
     TComboBox(Control).Ctl3D := false;
    end;

    XPMenu.SetGlobalColor(C);
    if Control.Enabled then ArrowColor := clBlack else ArrowColor := clWhite;


    if (FmouseinControl) then
    begin
      borderColor := XPMenu.FFSelectBorderColor;
      SelectColor := XPMenu.FFSelectColor;
    end
    else
    begin
      borderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
      selectColor := clBtnFace;
    end;
    if (not FmouseinControl) and (FIsFocused) then
    begin
      borderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
      SelectColor := XPMenu.FCheckedAreaColor;
    end;

    R := Control.ClientRect;

    C.Brush.Color := TComboBox(Control).Color;
    C.FrameRect(R);

    {$IFDEF VER6U}
    if TCustomCombo(Control).DroppedDown then
    {$ELSE}
    if TCustomComboBox(Control).DroppedDown then
    {$ENDIF}
    begin
      BorderColor := XPMenu.FFSelectBorderColor;
      ArrowColor := clWhite;
      SelectColor := XPMenu.FCheckedAreaSelectColor ;
    end;

    if TComboBox(Control).style <> csSimple then
    begin

      InflateRect(R, -1, -1);

      if Control.BiDiMode = bdRightToLeft then
        R.Right := R.Left + GetSystemMetrics(SM_CXHTHUMB) + 1
      else
        R.Left := R.Right - GetSystemMetrics(SM_CXHTHUMB) - 1;

      if ( FmouseinControl or FIsFocused) then
      begin
        if Control.BiDiMode = bdRightToLeft then
          Inc(R.Right, 1)
        else
          Dec(R.Left, 1);
      end;


      C.Brush.Color := SelectColor;
      C.FillRect(R);
      C.Brush.Color := BorderColor;
      C.FrameRect(R);

      if Control.BiDiMode = bdRightToLeft then
        R.Left := R.Right - 5
      else
        R.Right := R.Left + 5;

      C.Brush.Color := TComboBox(Control).Color;
      C.FillRect(R);

      C.Pen.Color := BorderColor;

      if Control.BiDiMode = bdRightToLeft then
      begin
        C.Moveto(R.Left, R.Top);
        C.LineTo(R.Left, R.Bottom);
      end
      else
      begin
        C.Moveto(R.Right, R.Top);
        C.LineTo(R.Right, R.Bottom);
      end;
      C.Pen.Color := arrowColor;

      R := Control.ClientRect;

      if Control.BiDiMode = bdRightToLeft then
        X := R.Left + 5
      else
        X := R.Right - 10;


      C.Moveto(X + 0, R.Top + 8);
      C.LineTo(X + 5, R.Top + 8);
      C.Moveto(X + 1, R.Top + 9);
      C.LineTo(X + 4, R.Top + 9);
      C.Moveto(X + 2, R.Top + 10);
      C.LineTo(X + 3, R.Top + 10);
    end;
  finally
    C.Free;
  end;



end;

procedure TControlSubClass.PaintEdit;
var
  C: TControlCanvas;
  R: TRect;
  BorderColor: TColor;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;

    XPMenu.SetGlobalColor(C);

    if TEdit(Control).Ctl3D <> false then
    begin
      FBuilding := true;
      TEdit(Control).Ctl3D := false;
    end;

    if (FmouseinControl) or (FIsFocused) then
    begin
      if FBorderStyle = bsSingle then
        borderColor := NewColor(C, XPMenu.FFSelectBorderColor, 60)
      else
        borderColor := NewColor(C, XPMenu.FFSelectBorderColor, 80);
    end
    else
    begin
      if FBorderStyle = bsSingle then
        borderColor := GetShadeColor(C, Control.Parent.Brush.Color, 60)
      else
        borderColor := Control.Parent.Brush.Color;
    end;

    R := Control.ClientRect;

    C.Pen.Color := BorderColor;
    C.Brush.Style := bsClear;
    C.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
  finally
    C.Free;
  end;
end;

procedure TControlSubClass.PaintRichEdit;
var
  C: TControlCanvas;
  R: TRect;
  BorderColor: TColor;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control.Parent;
    XPMenu.SetGlobalColor(C);

    R := Control.BoundsRect;
    InflateRect(R, 1, 1);

    if FBorderStyle  = bsSingle then
    begin
      FBuilding := true;
      TRichEdit(Control).BorderStyle := bsNone;
      if TRichEdit(Control).BorderWidth < 2 then
        TRichEdit(Control).BorderWidth := 2;
    end;

    if (FmouseinControl) or (FIsFocused) then
      borderColor := NewColor(C, XPMenu.FFSelectBorderColor,60)


    else
    begin
      if FBorderStyle = bsSingle then
        borderColor := GetShadeColor(C, Control.Parent.Brush.Color, 60)
      else
        borderColor := Control.Parent.Brush.Color;
    end;

    Frame3D(C, R, borderColor, borderColor, 1);

  finally
    C.Free;
  end;

end;

procedure TControlSubClass.PaintCheckBox;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor: TColor;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;
    XPMenu.SetGlobalColor(C);

    if FMouseInControl then
    begin
      SelectColor := XPMenu.FFSelectColor;
      BorderColor := xpMenu.FFSelectBorderColor;
    end
    else
    begin
      SelectColor := clWindow;
      BorderColor := clBtnShadow;
    end;

    if (FIsFocused) then
    begin
      SelectColor := XPMenu.FFSelectColor;
      BorderColor := xpMenu.FFSelectBorderColor;
    end;
    if (FBressed) or (FLButtonBressed ) then
      SelectColor := XPMenu.FCheckedAreaSelectColor ;

    if TCheckBox(Control).State = cbGrayed then
       SelectColor := clSilver ;
    R := Control.ClientRect;
    InflateRect(R, 0, -3);
    R.Top := R.Top + ((R.Bottom - R.Top - GetSystemMetrics(SM_CXHTHUMB)) div 2);
    R.Bottom := R.Top + GetSystemMetrics(SM_CXHTHUMB);

    if ((Control.BiDiMode = bdRightToLeft) and
       (TCheckBox(Control).Alignment = taRightJustify)) or
       ((Control.BiDiMode = bdLeftToRight) and
       (TCheckBox(Control).Alignment = taLeftJustify))
        then
      R.Left := R.Right - GetSystemMetrics(SM_CXHTHUMB) + 1
    else
    if ((Control.BiDiMode = bdLeftToRight) and
       (TCheckBox(Control).Alignment  = taRightJustify)) or
       ((Control.BiDiMode = bdRightToLeft) and
       (TCheckBox(Control).Alignment  = taLeftJustify)) then
      R.Right := R.Left + GetSystemMetrics(SM_CXHTHUMB) - 1;



    C.Brush.Color := TCheckBox(Control).Color;
    C.FillRect(R);
    InflateRect(R, -2, -2);
    C.Brush.Color := SelectColor;
    C.Pen.Color := BorderColor;
    C.Rectangle(R.Left, R.Top, R.Right, R.Bottom);

    if (TCheckBox(Control).Checked) or
       (TCheckBox(Control).State = cbGrayed) then
    begin
      if Control.Enabled then
      begin
        if (FBressed) or (FLButtonBressed ) then
          C.Pen.color := clWindow
        else
        begin
          if TCheckBox(Control).State = cbGrayed then
            C.Pen.color := clGray
          else
            C.Pen.color := clHighlight;
        end;
      end
      else
        C.Pen.color := xpMenu.FFDisabledColor;

      DrawCheckMark(C, R.Left, R.Bottom )
    end;

  finally
    C.Free;
  end;


end;

procedure TControlSubClass.PaintRadio;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor: TColor;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;
    XPMenu.SetGlobalColor(C);

    if FMouseInControl then
    begin
      SelectColor := XPMenu.FFSelectColor;
      BorderColor := xpMenu.FFSelectBorderColor;;
    end
    else
    begin
      SelectColor := clWindow;
      BorderColor := clBtnShadow;
    end;
    if  (FIsFocused) then
      SelectColor := XPMenu.FFSelectColor;

    R := Control.ClientRect;
    InflateRect(R, 0, -4);

    R.Top := R.Top + ((R.Bottom - R.Top - GetSystemMetrics(SM_CXHTHUMB)) div 2);
    R.Bottom := R.Top + GetSystemMetrics(SM_CXHTHUMB)-1;


    if ((Control.BiDiMode = bdRightToLeft) and
       (TCheckBox(Control).Alignment = taRightJustify)) or
       ((Control.BiDiMode = bdLeftToRight) and
       (TCheckBox(Control).Alignment = taLeftJustify))
        then
      R.Left := R.Right - GetSystemMetrics(SM_CXHTHUMB) + 1
    else
    if ((Control.BiDiMode = bdLeftToRight) and
       (TCheckBox(Control).Alignment  = taRightJustify)) or
       ((Control.BiDiMode = bdRightToLeft) and
       (TCheckBox(Control).Alignment  = taLeftJustify)) then
      R.Right := R.Left + GetSystemMetrics(SM_CXHTHUMB) - 1;

    C.Brush.Color := TCheckBox(Control).Color;
    C.FillRect(R);


    InflateRect(R, -2, -2);
    C.Brush.Color := SelectColor;
    C.Pen.Color := BorderColor;


    C.Ellipse(R.Left, R.Top, R.Right, R.Bottom);
    if TRadioButton(Control).Checked then
    begin
      InflateRect(R, -2, -2);

      if Control.Enabled then
        C.Brush.Color := clHighlight
      else
        C.Brush.color := xpMenu.FFDisabledColor;

      C.Pen.Color := C.Brush.Color;
      C.Ellipse(R.Left, R.Top, R.Right, R.Bottom);
    end;
  finally
    C.Free;
  end;


end;

procedure TControlSubClass.PaintButton;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor: TColor;
  Txt: string;
  TextRect: TRect;
  TxtFont: TFont;

  CWidth, CHeight, TWidth, THeight: integer;
  TextFormat: integer;

begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;
    XPMenu.SetGlobalColor(C);


    if (FMouseInControl) then
    begin
      if Control.Tag = 1000 then // UseParentColor
        SelectColor := NewColor(C, TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColorSelect)
      else
        SelectColor := NewColor(C, clBtnFace, xpMenu.FDimParentColorSelect);

      BorderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
    end
    else
    begin
      if Control.Tag = 1000 then
        SelectColor := NewColor(C, TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColor)
      else
        SelectColor := XPMenu.FFIconBackColor;
      BorderColor := clBtnShadow;
    end;


    if (not FmouseinControl) and (FIsFocused) then
    begin
      BorderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
    end;

    TextFormat := DT_CENTER + DT_VCENTER;
    R := Control.ClientRect;

    CWidth := (R.Right - R.Left);
    CHeight := (R.Bottom - R.Top);

    C.Brush.Color := Control.Parent.Brush.Color;
    C.FillRect(R);

    C.Brush.Color := SelectColor;

    C.Pen.Color := NewColor(C, BorderColor, 30);
    C.RoundRect(R.Left, R.Top, R.Right, R.Bottom, 4, 4);

    if TControl(Control).Enabled then
      if FBressed or (FLButtonBressed and FmouseinControl) {or FBressed} then
      begin
        C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
        C.MoveTo(R.Left , R.Bottom - 2);
        C.LineTo(R.Left , R.Top + 1);
        C.LineTo(R.Left + 1, R.Top );
        C.LineTo(R.Right - 1 , R.Top );
      end
      else
      begin
        C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
        C.MoveTo(R.Right - 1, R.Top + 1);
        C.LineTo(R.Right - 1, R.Bottom - 2);
        C.LineTo(R.Right - 2, R.Bottom - 1);
        C.LineTo(R.Left , R.Bottom - 1);
      end;

    Txt := TButton(Control).Caption;

    TextRect := R;

    TxtFont := TButton(Control).Font;
    C.Font.Assign (TxtFont);


    if TButton(Control).IsRightToLeft then
      TextFormat := TextFormat + DT_RTLREADING;

//--- //"Holger Lembke" <holger@hlembke.de>

    if (Txt <> '') then
    begin
      FillChar(TextRect, SizeOf(TextRect),0);
      DrawText(C.Handle,
               PChar(Txt), Length(Txt),
               TextRect,
               DT_CALCRECT + control.DrawTextBiDiModeFlags(0));
      TWidth := TextRect.Right;
      THeight := TextRect.Bottom;
    end
    else
    begin
      TWidth := 0;
      THeight := 0;
    end;

//---
    TextRect.Left := (CWidth - (TWidth)) div 2;
    TextRect.Right := TextRect.Left + TWidth;
    TextRect.Top := (CHeight - (THeight)) div 2;
    TextRect.Bottom := TextRect.Top + THeight;


    XPMenu.DrawTheText(Control,
                       Txt, '', C,
                       TextRect, false,
                       TControl(Control).Enabled,
                       TButton(Control).Default,
                       false,
                       TControl(Control).IsRightToLeft,
                       TxtFont,
                       TextFormat);

  finally
    C.Free;
  end;

end;

procedure TControlSubClass.PaintSpeedButton;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor: TColor;
  Txt: string;
  TextRect, IconRect: TRect;
  TxtFont: TFont;
  B, BF: TBitmap;
  CWidth, CHeight, BWidth, BHeight, TWidth, THeight, Space,
  NumGlyphs, Offset: integer;
  TextFormat: integer;
  FDown, FFlat, FTransparent: boolean;
  FLayout: TButtonLayout;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;

    XPMenu.SetGlobalColor(C);
    FDown := TSpeedButton(Control).Down;
    FFlat := TSpeedButton(Control).Flat;
    FTransparent := TSpeedButton(Control).Transparent;
    NumGlyphs := TSpeedButton(Control).NumGlyphs;

    if (FMouseInControl) then
    begin
      if Control.Tag = 1000 then // UseParentColor
      begin
        SelectColor := NewColor(C, TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColorSelect);
        if FFlat then
          SelectColor := xpMenu.FFSelectColor ;
      end
      else
      begin
        SelectColor := NewColor(C, clBtnFace, xpMenu.FDimParentColorSelect);
        if FFlat then
          SelectColor := xpMenu.FFSelectColor ;
      end;
      BorderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
    end
    else
    begin
      if Control.Tag = 1000 then
        SelectColor := NewColor(C, TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColor)
      else
        SelectColor := XPMenu.FFIconBackColor;
        if FFlat then
          SelectColor := TControl(Control).Parent.Brush.Color;

        if (Control.ClassName = 'TNavButton') and FFlat then
        begin
          SelectColor := TControl(Control).Parent.Brush.Color;
        end;
      BorderColor := clBtnShadow;
    end;


    if FDown then
    begin
      SelectColor := XPMenu.FCheckedAreaColor;
      BorderColor := xpMenu.FFSelectBorderColor;
    end;

    if FDown and FMouseInControl then
    begin
      SelectColor := XPMenu.FCheckedAreaSelectColor;
      BorderColor := xpMenu.FFSelectBorderColor;
    end;

    if not TControl(Control).Enabled then
      BorderColor := clBtnShadow;


    TextFormat := + DT_CENTER + DT_VCENTER;;
    R := Control.ClientRect;

    CWidth := (R.Right - R.Left);
    CHeight := (R.Bottom - R.Top);


    if (FDown or FMouseInControl) and FTransparent then
    begin
      BF := TBitmap.Create;
      try
        BF.Width := R.Right - R.Left;
        BF.Height := R.Bottom - R.Top;

        if FFlat then
        begin
          if GetDeviceCaps(C.Handle, BITSPIXEL) > 16 then
            BF.Canvas.Brush.Color := NewColor(C, xpMenu.FFSelectColor, 20)
          else
            BF.Canvas.Brush.Color := SelectColor;
        end
        else
        begin
          if GetDeviceCaps(C.Handle, BITSPIXEL) > 16 then
            BF.Canvas.Brush.Color := NewColor(C, SelectColor, 5)
          else
            BF.Canvas.Brush.Color := SelectColor;
        end;
        BF.Canvas.FillRect (R);
        BitBlt(C.handle,
               R.Left,
               R.Top,
               R.Right - R.left,
               R.Bottom - R.top,
               BF.Canvas.Handle,
               0,
               0,
               SRCAND);
      finally
        BF.Free;
      end;
    end;




    C.Brush.Color := SelectColor;
    if not FTransparent then
       c.FillRect (R);

    if Control.ClassName = 'TNavButton' then
    begin
      c.FillRect (R);
    end;
    C.Pen.Color := NewColor(C, BorderColor, 30);

    if (FFlat) and (not FTransparent) and (not FDown) and (not FMouseInControl) then
      C.Pen.Color :=  C.Brush.Color;

    if FTransparent  then
      C.Brush.Style := bsClear;
//    else
//      C.Brush.Style := bsSolid;
    if ((FTransparent) and (FMouseInControl)) or
       ((FTransparent) and (FDown)) or
       ((not FTransparent )) or
       ((not FFlat))
     then
     begin
       C.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
     end;

    if TControl(Control).Enabled then
    begin
      if (FFlat) then
      begin
        if (FLButtonBressed ) or (FDown) then
        begin
          C.Pen.Color := BorderColor;
          C.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
          C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);

          C.MoveTo(R.Left , R.Bottom - 1);
          C.LineTo(R.Left , R.Top );
          C.LineTo(R.Right  , R.Top );
        end
        else
        if (FMouseInControl) then
        begin
         C.Pen.Color := xpmenu.FFSelectBorderColor;
         C.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
        end;
      end;
        {
        else
        begin
          C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
          C.MoveTo(R.Right - 1, R.Top );
          C.LineTo(R.Right - 1, R.Bottom - 1);
          C.LineTo(R.Left , R.Bottom - 1);
        end;
        }
      if (not FFlat) then
        if (FLButtonBressed ) or (FDown) then
        begin
          C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
          C.MoveTo(R.Left , R.Bottom - 1);
          C.LineTo(R.Left , R.Top );
          C.LineTo(R.Right  , R.Top );
        end
        else
        begin
          C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
          C.MoveTo(R.Right - 1, R.Top );
          C.LineTo(R.Right - 1, R.Bottom - 1);
          C.LineTo(R.Left , R.Bottom - 1);
        end;
    end;
    Txt := TSpeedButton(Control).Caption;

    TextRect := R;

    TxtFont := TSpeedButton(Control).Font;
    C.Font.Assign (TxtFont);

    TWidth := C.TextWidth(Txt);
    //THeight := C.TextHeight(Txt);
    TextRect.Left := (CWidth - TWidth) div 2;


    if TControl(Control).IsRightToLeft then
      TextFormat := TextFormat + DT_RTLREADING;

//--- //"Holger Lembke" <holger@hlembke.de>

    if (Txt <> '') then
    begin
      FillChar(TextRect, sizeof(TextRect),0);
      DrawText(C.Handle,
               PChar(Txt), Length(Txt),
               TextRect,
               DT_CALCRECT + control.DrawTextBiDiModeFlags(0));
      TWidth := TextRect.Right;
      THeight := TextRect.Bottom;
    end
    else
    begin
      TWidth := 0;
      THeight := 0;
    end;

//---

    if (TSpeedButton(Control).Glyph <> nil) then
    begin
      B := TBitmap.Create;
      BWidth := TSpeedButton(Control).Glyph.Width  div
                TSpeedButton(Control).NumGlyphs;

      BHeight :=  TSpeedButton(Control).Glyph.Height;

      B.Width := BWidth;
      B.Height := BHeight;
      if Length(TSpeedButton(Control).Caption) > 0 then
        Space := TSpeedButton(Control).Spacing
      else
        Space := 0;

      IconRect := Rect(R.Left , R.Top, R.Left+BWidth, R.Top + BHeight);


      // Suggested by : "Holger Lembke" <holger@hlembke.de>
      Offset := 1;
      if (not Control.Enabled) and (NumGlyphs > 1) then
        Offset := 2;
      if (FLButtonBressed) and (NumGlyphs > 2) then
        Offset := 3;
      if (FDown) and (NumGlyphs > 3) then
        Offset := 4;


      B.Canvas.CopyRect (Rect(0, 0, BWidth, BHeight),
                         TSpeedButton(Control).Glyph.Canvas,
                         Rect((BWidth * Offset) - BWidth, 0, BWidth * Offset, BHeight));


      FLayout := TSpeedButton(Control).Layout;
      if Control.IsRightToLeft then
      begin
        if FLayout = blGlyphLeft then
          FLayout := blGlyphRight
        else
          if FLayout = blGlyphRight then FLayout := blGlyphLeft;
      end;
      case FLayout of
        blGlyphLeft:
        begin
          IconRect.Left := (CWidth - (BWidth + Space + TWidth)) div 2;
          IconRect.Right := IconRect.Left + BWidth;
          IconRect.Top  := ((CHeight - (BHeight)) div 2) - 1;
          IconRect.Bottom := IconRect.Top + BHeight;

          TextRect.Left := IconRect.Right + Space;
          TextRect.Right := TextRect.Left + TWidth;
          TextRect.Top := (CHeight - (THeight)) div 2;
          TextRect.Bottom := TextRect.Top + THeight;

        end;
        blGlyphRight:
        begin
          IconRect.Right := (CWidth + (BWidth + Space + TWidth)) div 2;
          IconRect.Left := IconRect.Right - BWidth;
          IconRect.Top  := (CHeight - (BHeight)) div 2;
          IconRect.Bottom := IconRect.Top + BHeight;

          TextRect.Right := IconRect.Left - Space;
          TextRect.Left := TextRect.Right - TWidth;
          TextRect.Top := (CHeight - (THeight)) div 2;
          TextRect.Bottom := TextRect.Top + THeight;

        end;
        blGlyphTop:
        begin
          IconRect.Left := (CWidth - BWidth) div 2;
          IconRect.Right := IconRect.Left + BWidth;
          IconRect.Top  := (CHeight - (BHeight + Space + THeight)) div 2;
          IconRect.Bottom := IconRect.Top + BHeight;

          TextRect.Left := (CWidth - (TWidth)) div 2;
          TextRect.Right := TextRect.Left + TWidth;
          TextRect.Top := IconRect.Bottom + Space;
          TextRect.Bottom := TextRect.Top + THeight;

        end;
        blGlyphBottom:
        begin
          IconRect.Left := (CWidth - BWidth) div 2;
          IconRect.Right := IconRect.Left + BWidth;
          IconRect.Bottom  := (CHeight + (BHeight + Space + THeight)) div 2;
          IconRect.Top := IconRect.Bottom - BHeight;

          TextRect.Left := (CWidth - (TWidth)) div 2;
          TextRect.Right := TextRect.Left + TWidth;
          TextRect.Bottom := IconRect.Top - Space;
          TextRect.Top := TextRect.Bottom - THeight;

        end;

      end;

      xpMenu.DrawIcon(Control, C , B, IconRect,
        FMouseinControl,
        FIsFocused,
        TControl(Control).Enabled,
        FDown or FLButtonBressed,
        false,
        TControl(Control).IsRightToLeft);

      B.Free;
    end;

    XPMenu.DrawTheText(Control,
                       Txt, '', C,
                       TextRect, false,
                       TControl(Control).Enabled,
                       false,
                       false,
                       TControl(Control).IsRightToLeft,
                       TxtFont,
                       TextFormat);
  finally
    C.Free;
  end;

end;


procedure TControlSubClass.PaintBitButn;
var
  C: TControlCanvas;
  R: TRect;
  SelectColor, BorderColor: TColor;
  Txt: string;
  TextRect, IconRect: TRect;
  TxtFont: TFont;
  B: TBitmap;
  CWidth, CHeight, BWidth, BHeight, TWidth, THeight, Space: integer;
  TextFormat: integer;
begin

  C := TControlCanvas.Create;
  try
    C.Control := Control;
    XPMenu.SetGlobalColor(C);

    if (FMouseInControl or FBressed) then
    begin
      if Control.Tag = 1000 then
        SelectColor := NewColor(C,
                                  TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColorSelect)
      else
        SelectColor := NewColor(C, clBtnFace, xpMenu.FDimParentColorSelect);
      BorderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
    end
    else
    begin
      if Control.Tag = 1000 then
        SelectColor := NewColor(C, TControl(Control).Parent.Brush.Color, xpMenu.FDimParentColor)
      else
        SelectColor := XPMenu.FFIconBackColor;
      BorderColor := clBtnShadow;
    end;

    if (not FmouseinControl) and (FIsFocused) then
    begin
      BorderColor := NewColor(C, XPMenu.FFSelectBorderColor,60);
    end;

    TextFormat := + DT_CENTER + DT_VCENTER;
    R := Control.ClientRect;

    CWidth := (R.Right - R.Left);
    CHeight := (R.Bottom - R.Top);


    C.Brush.Color := Control.Parent.Brush.Color;
    C.FillRect(R);

    C.Brush.Color := SelectColor;

    C.Pen.Color := NewColor(C, BorderColor, 30);
    c.RoundRect(R.Left, R.Top, R.Right, R.Bottom, 4, 4);

    if TControl(Control).Enabled then
      if (FLButtonBressed and FmouseinControl) or (FBressed) then
      begin
        C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
        C.MoveTo(R.Left , R.Bottom - 2);
        C.LineTo(R.Left , R.Top + 1);
        C.LineTo(R.Left + 1, R.Top );
        C.LineTo(R.Right - 1 , R.Top );
      end
      else
      begin
        C.Pen.Color :=  GetShadeColor(C, BorderColor, 50);
        C.MoveTo(R.Right - 1, R.Top + 1);
        C.LineTo(R.Right - 1, R.Bottom - 2);
        C.LineTo(R.Right - 2, R.Bottom - 1);
        C.LineTo(R.Left , R.Bottom - 1);
      end;

    Txt := TBitBtn(Control).Caption;

    TextRect := R;

    TxtFont := TBitBtn(Control).Font;
    C.Font.Assign (TxtFont);

    TWidth := C.TextWidth(Txt);
   // THeight := C.TextHeight(Txt);
    TextRect.Left := (CWidth - TWidth) div 2;


//--- //"Holger Lembke" <holger@hlembke.de>

    if (Txt <> '') then
    begin
      FillChar(TextRect, sizeof(TextRect),0);
      DrawText(C.Handle,
               PChar(Txt), Length(Txt),
               TextRect,
               DT_CALCRECT + control.DrawTextBiDiModeFlags(0));
      TWidth := TextRect.Right;
      THeight := TextRect.Bottom;
    end
    else
    begin
      TWidth := 0;
      THeight := 0;
    end;

//---
    if TBitBtn(Control).IsRightToLeft then
      TextFormat := TextFormat + DT_RTLREADING;


    if (TBitBtn(Control).Glyph <> nil) then
    begin
      B := TBitmap.Create;
      BWidth := TBitBtn(Control).Glyph.Width  div
                TBitBtn(Control).NumGlyphs;

      BHeight :=  TBitBtn(Control).Glyph.Height;

      B.Width := BWidth;
      B.Height := BHeight;
      Space := TBitBtn(Control).Spacing;
      if (Trim(TBitBtn(Control).Caption) = '') then Space := 0; //"Holger Lembke" <holger@hlembke.de>
      IconRect := Rect(R.Left , R.Top, R.Left+BWidth, R.Top + BHeight);

      B.Canvas.CopyRect (Rect(0, 0, BWidth, BHeight),
                         TBitBtn(Control).Glyph.Canvas,
                         Rect(0, 0, BWidth, BHeight));

      case TBitBtn(Control).Layout of
        blGlyphLeft:
        begin
          IconRect.Left := (CWidth - (BWidth + Space + TWidth)) div 2;
          IconRect.Right := IconRect.Left + BWidth;
          IconRect.Top  := (CHeight - (BHeight)) div 2;
          IconRect.Bottom := IconRect.Top + BHeight;

          TextRect.Left := IconRect.Right + Space;
          TextRect.Right := TextRect.Left + TWidth;

          TextRect.Top := (CHeight - (THeight)) div 2;
          TextRect.Bottom := TextRect.Top + THeight;
        end;
        blGlyphRight:
        begin
          IconRect.Right := (CWidth + (BWidth + Space + TWidth)) div 2;
          IconRect.Left := IconRect.Right - BWidth;
          IconRect.Top  := (CHeight - (BHeight)) div 2;
          IconRect.Bottom := IconRect.Top + BHeight;

          TextRect.Right := IconRect.Left - Space;
          TextRect.Left := TextRect.Right - TWidth;
          TextRect.Top := (CHeight - (THeight)) div 2;
          TextRect.Bottom := TextRect.Top + THeight;
        end;
        blGlyphTop:
        begin
          IconRect.Left := (CWidth - BWidth) div 2;
          IconRect.Right := IconRect.Left + BWidth;
          IconRect.Top  := (CHeight - (BHeight + Space + THeight)) div 2;
          IconRect.Bottom := IconRect.Top + BHeight;

          TextRect.Left := (CWidth - (TWidth)) div 2;
          TextRect.Right := TextRect.Left + TWidth;
          TextRect.Top := IconRect.Bottom + Space;
          TextRect.Bottom := TextRect.Top + THeight;

        end;
        blGlyphBottom:
        begin
          IconRect.Left := (CWidth - BWidth) div 2;
          IconRect.Right := IconRect.Left + BWidth;
          IconRect.Bottom  := (CHeight + (BHeight + Space + THeight)) div 2;
          IconRect.Top := IconRect.Bottom - BHeight;

          TextRect.Left := (CWidth - (TWidth)) div 2;
          TextRect.Right := TextRect.Left + TWidth;
          TextRect.Bottom := IconRect.Top - Space;
          TextRect.Top := TextRect.Bottom - THeight;

        end;
      end;

      xpMenu.DrawIcon(Control, C , B, IconRect,
        FMouseinControl,
        FIsFocused,
        TControl(Control).Enabled,
        false,
        false,
        TControl(Control).IsRightToLeft);

      B.Free;
    end;

    XPMenu.DrawTheText(Control,
                       Txt, '', C,
                       TextRect, false,
                       TControl(Control).Enabled,
                       TBitBtn(Control).Default,
                       false,
                       TControl(Control).IsRightToLeft,
                       TxtFont,
                       TextFormat);

  finally
    C.Free;
  end;

end;


procedure TControlSubClass.PaintUpDownButton;
begin
//
end;


procedure TControlSubClass.PaintGroupBox;
var
  C: TControlCanvas;
  R, RText: TRect;
  ShadowColor, LightColor: TColor;
  TextHeight, TextWidth: integer;
  Text: string;
begin

 if FMsg <> WM_PAINT then exit;
 // C := nil;
  C := TControlCanvas.Create;
  try
    C.Control := Control;
    XPMenu.SetGlobalColor(C);

    R := Control.ClientRect;
    C.Font.Assign (TGroupBox(Control).Font);
    C.Font.Height := TGroupBox(Control).Font.Height;
    Text := TGroupBox(Control).Caption;

    TextHeight := C.TextHeight(Text);
    TextWidth  := C.TextWidth(Text);
    if Length(Text) = 0 then
       TextHeight := C.TextHeight(' ');
    ShadowColor := GetShadeColor(C, TGroupBox(Control).color, 60);
    LightColor := NewColor(C, TGroupBox(Control).color, 60);

    // Frame for inner part
    InflateRect(R,-1, -1);
    Inc(R.Top, (TextHeight)-1);
    C.Brush.Style := bsClear;
    C.Pen.Color := TGroupBox(Control).Color; // Control Color;
    C.Rectangle (R.Left, R.Top, R.Right, R.Bottom);


    //----Draw the outer Frame
    R := Control.ClientRect;
    Inc(R.Top, (TextHeight div 2)-1);
    C.Pen.Color := TGroupBox(Control).Color;
    C.MoveTo(R.Left + 1, R.Top);   // Repeat
    C.LineTo(R.Left + 1, R.Bottom);
    if TGroupBox(Control).Ctl3D then
      Frame3D(C, R, LightColor, ShadowColor, 1)
    else
      Frame3D(C, R, ShadowColor, ShadowColor, 1);


    // Fill Upper part (outside frame)
    R := Control.ClientRect;
    R.Bottom := R.Top + (TextHeight div 2) + 1;
    C.Brush.Style := bsSolid;
    C.Brush.Color := Control.Parent.Brush.Color;  // Parent Color;
    C.Pen.Color := C.Brush.Color;
    C.FillRect(R);


    if Control.IsRightToLeft then
    begin
      C.TextFlags := ETO_RTLREADING;
      RText.Right := R.Right  - 9;
      RText.Left := RText.Right - TextWidth;
    end
    else
    begin
      RText.Left := R.Left + 9;
      RText.Right := RText.Left + TextWidth;
    end;

    RText.Top := R.Top ;
    RText.Bottom := R.Top + TextHeight;

                     //(inside frame)
    InflateRect(R, -1, 0);
    R.Top := R.Bottom;
    R.Bottom := R.Top + (TextHeight div 2) + 1;
    C.Brush.Style := bsSolid;
    R.Left := RText.Left;
    R.Right := RText.Right;
    C.Brush.Color := TGroupBox(Control).Color; // Control Color;
    C.Pen.Color := C.Brush.Color;
    C.FillRect(R);

    R.Right := Control.ClientRect.Right;

    C.MoveTo(R.Right-2, R.Top);
    C.LineTo(R.Right-2, RText.Bottom);

    C.Brush.Style := bsClear;
    if Control.IsRightToLeft then
      C.TextFlags := ETO_RTLREADING;

    C.TextRect (RText, RText.Left, RText.Top, Text);

    // Draw Upper Line
    R := Control.ClientRect;
    Inc(R.Top, (TextHeight div 2) + 1);
    if TGroupBox(Control).Ctl3D then
      C.Pen.Color := LightColor
    else
      C.Pen.Color := ShadowColor;
    C.MoveTo(R.Left, R.Top);
    C.LineTo(RText.Left, R.Top);

    C.MoveTo(RText.Right, R.Top);
    C.LineTo(R.Right -1, R.Top);

  finally
    C.Free;
  end;

end;


procedure TControlSubClass.PaintPanel;
var
  C: TControlCanvas;
  R: TRect;
  ShadowColor, LightColor: TColor;
begin
  if FMsg <> WM_PAINT then exit;
  C := TControlCanvas.Create;
  try
    C.Control := Control;
    XPMenu.SetGlobalColor(C);

    R := Control.ClientRect;
    ShadowColor := GetShadeColor(C, TPanel(Control).color, 60);
    LightColor := NewColor(C, TPanel(Control).color, 60);
    if TPanel(Control).BevelOuter  <> bvNone then
    begin
      if TPanel(Control).BevelOuter = bvLowered then
        Frame3D(C, R, ShadowColor, LightColor, TPanel(Control).BevelWidth)
      else
        Frame3D(C, R, LightColor, ShadowColor, TPanel(Control).BevelWidth);
    end;

    if TPanel(Control).BevelInner  <> bvNone then
    begin
      InflateRect(R, -TPanel(Control).BorderWidth, -TPanel(Control).BorderWidth);

      if TPanel(Control).BevelInner = bvLowered then
        Frame3D(C, R, ShadowColor, LightColor, TPanel(Control).BevelWidth)
      else
        Frame3D(C, R, LightColor, ShadowColor, TPanel(Control).BevelWidth);
    end;
  finally
    C.Free;
  end;

end;



end.
