unit Scrlform;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls,Ucommon;

type
  Tscrollform = class(TForm)
    backtimer: TTimer;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure backtimerTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure HandleException(Sender: TObject; E: Exception);
  public
    { Public declarations }
  end;

const
  xmovement = 1;            { Scrolls horizontally x pixels per movement}
  ymovement = -1;           { Scrolls vertically x pixels per movement}
  TimerInterval = 100;      { Scroll interval in milliseconds }

var
  scrollform: Tscrollform;
  BackImage:TPicture;
  FormBitmap: TBitmap;
  xoffset, yoffset: integer;
  DoingResize, NeedToQuit, AmQuitting: boolean;
  BitmapName: string;             { Name of bitmap in resource file }

implementation

uses Splash;

{$R *.DFM}


procedure Tscrollform.FormCreate(Sender: TObject);
begin
    Application.OnException:=HandleException; {Procedure to handle any exceptions}
    BackImage:= TPicture.Create;               {Create background image from resource file}
    FormBitmap:= TBitmap.Create;              {Create bitmap to copy to form on repaint calls}
    xoffset:=0; yoffset:=0;                   {Init "FormBitmap" coordinates}
    BackImage.LoadFromFile(fullImagePath);
    FormResize(Self);      {Create the form background image}
end;

procedure Tscrollform.HandleException(Sender: TObject; E: Exception);
begin
    backtimer.enabled:=false;
    MessageDlg('Oops... An exception: ' + E.Message, mtError,
      [mbOk], 0);
end;

procedure Tscrollform.FormDestroy(Sender: TObject);
begin
    backtimer.enabled:=false;
    BackImage.Free;
    FormBitmap.Free;
end;


procedure Tscrollform.FormPaint(Sender: TObject);
begin
    Canvas.Draw(0 - xoffset, 0 - yoffset, FormBitmap);
end;

procedure Tscrollform.backtimerTimer(Sender: TObject);
begin
    { This procedure runs each time the timer inverval arrives.               }
    { It is used to calculate the position of the main bitmap for painting    }
    { on the form.                                                            }

    xoffset:=xoffset + xmovement;
    if xmovement > 0 then begin           { if scrolling right to left }
        if xoffset >= BackImage.Graphic.Width then xoffset:=0;
    end
    else if xmovement < 0 then            { if scrolling left to right }
        if xoffset <= 0 then xoffset:=BackImage.Graphic.Width;

    yoffset:=yoffset + ymovement;
    if ymovement > 0 then begin           { if scrolling bottom to top }
        if yoffset >= BackImage.Graphic.Height then yoffset:=0;
    end
    else if ymovement < 0 then            { if scrolling top to bottom }
        if yoffset <= 0 then yoffset:=BackImage.Graphic.Height;

    Paint;                                {Repaint the screen}
end;

procedure Tscrollform.FormResize(Sender: TObject);
var x, y: integer;
begin
    {Don't want two resizers running at same time}
    if DoingResize then exit;
    DoingResize:=true;

    try
       FormBitmap.Width:=Width + BackImage.Graphic.Width;
       FormBitmap.Height:=Height + BackImage.Graphic.Height;
    except
       {Bitmaps have been freed, program was trying to exit then timer expired!!!}
       exit;
    end;

    {Copy "Backimage" to fill up "FormBitmap" }
//\\    for x:=0 to ((Width div BackImage.Graphic.Width) + 1) do       for y:=0 to ((Height div BackImage.Graphic.Height) + 1) do
//\\          FormBitmap.Canvas.Draw(x * BackImage.Graphic.Width,
//\\                 y * BackImage.Graphic.Height, BackImage.Bitmap);
    DoingResize:=false;
end;

procedure Tscrollform.FormShow(Sender: TObject);
begin
 Label1.Caption:=GetProductInformation('FileVersion');
//  if(not(FileExists(fullImagePath))) then
//    SplashForm.Image1.Picture.SaveToFile(fullImagePath);
//  Image1.Picture.LoadFromFile(fullImagePath);
end;

end.
