{$INCLUDE rr.inc}
(************************************************************************
 Author:	Robert Rossmair

	mailto:Robert.Rossmair@t-online.de
	http://home.t-online.de/home/Robert.Rossmair/

 Module:        CompInfo

 Version:	1.2.3, 27-Dez-1999

 Changes in Version 1.2:
   Separated property editors into CompInfo_reg.pas
 Changes in version 1.1:
   New property FileImageVersion makes it possible for the first
   time to evaluate the version information written to disk.

 Description:
   Implements component info class

   The idea to use a property editor to display an "About" dialog
   was inspired by (an elegant paraphrase for "stolen from")
   Brad Stower's (http://www.pobox.com/~bstowers/) DFSAbout unit.

   Uses mUrlLabel unit by Ahto Tanner, Moon Software
   (http://www.estpak.ee/~ahto/moon/)

 History:

 Compatibility:	Delphi 2-5

 Copyright © 1998-1999  Robert Rossmair

 Use, modification and distribution is allowed without limitation,
 warranty, or liability of any kind.
 ************************************************************************)
unit CompInfo;

interface

uses SysUtils, Messages, Windows, Forms, Controls,
  StdCtrls, Classes, mUrlLabel, ShellAPI, Graphics,
{$IFDEF VER120_up}
  ImgList,
{$ENDIF}
  ExtCtrls;

type
  TReadOnlyStr = type string;

  TComponentInfo = class(TPersistent)
  private
    FComponent: TComponent;
    FVersion: TReadOnlyStr;
    FCopyrightOwner: TReadOnlyStr;
    FCopyrightPeriod: TReadOnlyStr;
    FMisc: TReadOnlyStr;
    FLatestVersionURL: TReadOnlyStr;
    FMailTo: TReadOnlyStr;
    FFileImageVersion: TReadOnlyStr;
    function GetCopyrightPeriod: TReadOnlyStr;
    procedure DoNothing(Value: TReadOnlyStr);
    procedure SetVersion(Value: TReadOnlyStr);
  protected
    property Component: TComponent read FComponent;
  public
    constructor Create(
      AComponent: TComponent;
      ACopyrightOwner,
      ACopyrightPeriod,
      AVersion,
      AMiscInfo,
      ALatestVersionURL,
      AMailTo: string);
    procedure Display; dynamic;
  published
    property CopyrightOwner: TReadOnlyStr read FCopyrightOwner write DoNothing stored True;
    property CopyrightPeriod: TReadOnlyStr read GetCopyrightPeriod write DoNothing stored True;
    property FileImageVersion: TReadOnlyStr read FFileImageVersion write DoNothing stored False;
    property LatestVersionURL: TReadOnlyStr read FLatestVersionURL write DoNothing stored False;
    property MailTo: TReadOnlyStr read FMailTo write DoNothing stored False;
    property Misc: TReadOnlyStr read FMisc write DoNothing stored False;
    property Version: TReadOnlyStr read FVersion write SetVersion stored True;
  end;

  TAboutComponentDlg = class(TForm)
    OKBtn: TButton;
    Image1: TImage;
    AboutLabel: TLabel;
    WebInfo: TLabel;
    MiscInfoLabel: TLabel;
    UrlLabel: TmUrlLabel;
    ImageList1: TImageList;
    procedure EnvelopeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FMailAddr: string;
    FEnvelope: TControl;
  end;

function VersionIntToStr(Value: Integer): string;
function VersionStrToInt(Value: string): Integer;

implementation

{$R *.DFM}

type
  TCompVersionRec = record
    case Integer of
      0: (Value: Integer);
      1: (Reserved: Byte;
          Revision: Byte;
          Minor: Byte;
          Major: Byte);
  end;

  TSwitchImage = class(TGraphicControl)
  private
    FImageList: TImageList;
    FIndex: Integer;
    procedure SetImageList(Value: TImageList);
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  protected
    procedure Paint; override;
    property ImageList: TImageList read FImageList write SetImageList;
  end;

function VersionIntToStr(Value: Integer): string;
begin
  with TCompVersionRec(Value) do
    Result := Format('%d.%d.%d', [Major, Minor, Revision]);
end;

function TrimVersionStr(VersionString: string): string;
var
  i: Integer;
begin
  Result := Trim(VersionString);
  for i := Length(Result) downto 1 do
  if Result[i] = ' ' then
  begin
    Delete(Result, 1, i);
    Exit;
  end;
end;

function VersionStrToInt(Value: string): Integer;
var
  X: TCompVersionRec;
  i, k: Integer;
  P: ^Byte;
begin
  Value := TrimVersionStr(Value);
  X.Value := 0;
  P := @X.Major;
  for i := 1 to SizeOf(X) do
  begin
    k := Pos('.', Value);
    if k = 0 then
    begin
      P^ := StrToInt(Value);
      Break;
    end;
    P^ := StrToInt(Copy(Value, 1, k-1));
    Delete(Value, 1, k);
    Dec(P);
  end;
  Result := X.Value;
end;

procedure TSwitchImage.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  FIndex := 1;
  Invalidate;
end;

procedure TSwitchImage.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  FIndex := 0;
  Invalidate;
end;

procedure TSwitchImage.Paint;
begin
  FImageList.Draw(Canvas,
    (Width-FImageList.Width) div 2,
    (Height-FImageList.Height) div 2,
    FIndex);
end;

procedure TSwitchImage.SetImageList(Value: TImageList);
begin
  if FImageList <> Value then
  begin
    FImageList := Value;
    SetBounds(Left, Top, Value.Width, Value.Height);
  end;
end;

constructor TComponentInfo.Create(
  AComponent: TComponent;
  ACopyrightOwner,
  ACopyrightPeriod,
  AVersion,
  AMiscInfo,
  ALatestVersionURL,
  AMailTo: string);
begin
  FComponent := AComponent;
  FCopyrightOwner := ACopyrightOwner;
  FCopyrightPeriod := ACopyrightPeriod;
  FVersion := AVersion;
  FMisc := AMiscInfo;
  FLatestVersionURL := ALatestVersionURL;
  FMailTo := AMailTo;
end;

procedure TComponentInfo.Display;
const
  AboutText = '%s %s'#13#13 +
     'Copyright © %s %s'#13+
     'All Rights Reserved.';
begin
  with TAboutComponentDlg.Create(Application) do
  try
    AboutLabel.Caption := Format(AboutText, [FComponent.ClassName, Version, CopyrightPeriod, CopyrightOwner]);
    with MiscInfoLabel do
    begin
      Width := AboutLabel.Width;
      Height := 0;
      Caption := Misc;
    end;
    if Misc <> '' then
    begin
      WebInfo.Top := MiscInfoLabel.BoundsRect.Bottom+9;
      URLLabel.Top := WebInfo.BoundsRect.Bottom - URLLabel.Height;
    end;
    if LatestVersionURL = '' then
    begin
      WebInfo.Visible := False;
      URLLabel.Visible := False;
      Height := MiscInfoLabel.BoundsRect.Bottom+92;
    end else
    begin
      URLLabel.Caption := LatestVersionURL;
      if Pos('://', FLatestVersionURL) = 0
        then URLLabel.URL := 'http://'+LatestVersionURL
        else URLLabel.URL := LatestVersionURL;
      if URLLabel.Left+URLLabel.Width > WebInfo.Left+WebInfo.Width then
      begin
        URLLabel.Top  := URLLabel.Top + 13;
        URLLabel.Left := WebInfo.Left;
        URLLabel.Width := WebInfo.Width;
        URLLabel.WordWrap := True;
      end;
      Height := URLLabel.BoundsRect.Bottom+92;
    end;
    FMailAddr := Trim(MailTo);
    FEnvelope.Visible := FMailAddr <> '';
    if FMailAddr <> '' then
    begin
      if Pos('mailto', LowerCase(FMailAddr)) <> 1 then
        FMailAddr := 'mailto:'+FMailAddr;
      if Pos('?subject', LowerCase(FMailAddr)) = 0 then
        FMailAddr := FMailAddr+Format('?subject=%s', [FComponent.ClassName]);
    end;
    OKBtn.Top := Height-71;
    FEnvelope.Top := OKBtn.Top-8;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TComponentInfo.DoNothing(Value: TReadOnlyStr);
begin end;

procedure TComponentInfo.SetVersion(Value: TReadOnlyStr);
begin
  if csReading in FComponent.ComponentState then
    FFileImageVersion := Value;
end;

function TComponentInfo.GetCopyrightPeriod: TReadOnlyStr;
var
  Year, Month, Day: Word;
begin
  Result := FCopyrightPeriod;
  if Result = '' then
  begin
    DecodeDate(Date, Year, Month, Day);
    Result := IntToStr(Year);
  end;
end;

procedure TAboutComponentDlg.EnvelopeClick(Sender: TObject);
begin
  if FMailAddr <> '' then
    ShellExecute(GetDesktopWindow(), 'open', PChar(FMailAddr), nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutComponentDlg.FormCreate(Sender: TObject);
begin
  FEnvelope := TSwitchImage.Create(Self);
  with TSwitchImage(FEnvelope) do
  begin
    SetBounds(80, 133, 27, 27);
    Parent := Self;
    ImageList := ImageList1;
    OnClick := EnvelopeClick;
  end;
end;

procedure TAboutComponentDlg.FormDestroy(Sender: TObject);
begin
  FEnvelope.Free;
end;

end.
