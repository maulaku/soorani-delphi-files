{----------------------------------------------------------------------

  URL Label - very simple component, that lets you run URL or file
  by clicking on it. See UrlLabel.txt for more details and note about
  internet shortcuts mailto, ftp, http etc.

  Freeware - Ahto Tanner, Moon Software (http://www.moonsoftware.ee)

  Tip: To specify subject in mailto URL use the following syntax:
   - TmUrlLabel1.URL:= 'mailto:ahto@moonsoftware.ee?subject=Your subject'

  Version 1.7, May 20, 1998
   - MouseEnter and MouseLeave implemented - now ActiveColor is used if mouse
     is above label
   - Removed integrated popupmenu for Copy command

  Version 1.6, December 1997
   - Now if user has Delphi 3 or newer, custom cursor is not linked in,
     since new versions of Delphi already have crPointHand cursor, so we use this
   - Now our popup menu is not used if user has assigned one at design time...
   - Component class changed from TUrlLabel to TmUrlLabel

  Version 1.5, March 19, 1997
   - Well, I and you all are blind enough or you just trust me too much?
     Over 5 months of using I noticed that popup menu created on
     startup never freed. Now it is :)
   - Application.Handle in ShellExecute replaced with GetDesktopWindow(),
     since it's probably better for launching new apps.

  Version 1.4, Nov 28, 1996
   - Added ActiveColor property. Caption changes it's color to
     the ActiveColor while mouse button is down (while clicked) like
     in some web browsers. If you don't want to change color, assign
     the same color to it as normal caption font color.
   - Initially caption is blue and underlined now.

  Version 1.3, Oct 20, 1996
   - added "Copy" popup menu

  Versions 1.1, 1.2
   - nothing special ;-)

  Version 1.0, June 21, 1996
   - initial release

-----------------------------------------------------------------------}

unit mUrlLabel;

interface

uses
  Windows, Messages, SysUtils, Classes, Forms, StdCtrls, ShellAPI,
  Controls, Graphics;

{$IFDEF VER90} //if Delphi2, define new cursor type, Delphi 3 has this built-in
const
  crHandPoint = 5;
{$ENDIF}

type
  TmUrlLabel = class(TLabel)

  private
    FURL: string;
    OrigFontColor,
    FActiveColor: TColor;

    procedure SetURL(const NewURL: string);

  public
    constructor Create(AOwner: TComponent); override;
    procedure Click; override;
    procedure CMMouseEnter(var Msg: TWMMouse); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Msg: TWMMouse); message CM_MOUSELEAVE;
  published
    property URL: string read FURL write SetURL;
    property ActiveColor: TColor read FActiveColor write FActiveColor default clPurple;
    property Cursor default crHandPoint;
  end;

procedure Register;

implementation

{$IFDEF VER90} //link "hand" cursor resource only if Delphi 2, since 3 has it already built-in
  {$R mUrlLabel.res}
{$ENDIF}

{---------------------------------------------------------------------------}

constructor TmUrlLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$IFDEF VER90}
    Screen.Cursors[crHandPoint] := LoadCursor(HInstance, PChar('HANDCUR'));
  {$ELSE}
  Layout := tlCenter;
  {$ENDIF}
  Cursor := crHandPoint;
  FActiveColor := clPurple;
  with Font do begin
    Color := clBlue;
    Style := [fsUnderline, fsBold];
  end;
end;

{---------------------------------------------------------------------------}

procedure TmUrlLabel.Click;
var
  TempURL: string;
begin
  inherited Click;

  if Trim(FURL) = '' then
    TempURL := Trim(Caption)
  else
    TempUrl := Trim(FURL);

  if TempURL <> '' then
    ShellExecute(GetDesktopWindow(), 'open', PChar(TempURL), nil, nil, SW_SHOWNORMAL);
end;

{---------------------------------------------------------------------------}

procedure TmUrlLabel.CMMouseEnter(var Msg: TWMMouse);
begin
  inherited;
  OrigFontColor := Font.Color;
  Font.Color := FActiveColor;
end;

{---------------------------------------------------------------------------}

procedure TmUrlLabel.CMMouseLeave(var Msg: TWMMouse);
begin
  inherited;
  Font.Color := OrigFontColor;
end;

{---------------------------------------------------------------------------}

procedure TmUrlLabel.SetURL(const NewURL: string);
begin
  FURL := NewURL;
  //if we have default caption (control name), then use new URL as caption
  if Caption = Name then Caption := NewURL;
end;

{---------------------------------------------------------------------------}

procedure Register;
begin
  RegisterComponents('Majid', [TmUrlLabel]);
end;

{---------------------------------------------------------------------------}

end.

