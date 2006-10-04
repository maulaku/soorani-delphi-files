unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, jpeg;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    pb: TProgressBar;

    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
//    Bitmap1, Bitmap2, Bitmap3: TBitmap;
//    Image1Loaded, Image2Loaded: Boolean;
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}

procedure TSplashForm.FormActivate(Sender: TObject);
//var
// Next: PByteArray;
// ToDisplay: PByteArray;
// i, j,  y: Integer;
begin
//  SplashForm.refresh;
{if fileexists('empty.bmp') and fileexists('finance.bmp') then
begin
 pb.Position:=0;
 if not (Image1Loaded) then
   ShowMessage('Bitmap1 not loaded');
 if not (Image2Loaded) then
   ShowMessage('Bitmap2 not loaded');

   if((Image1Loaded) and (Image2Loaded)) then begin
      bitmap3.Canvas.CopyRect(Rect(0,0,bitmap3.Width,bitmap3.Height),
                                bitmap1.Canvas,Rect(0,0,bitmap1.Width,
                                bitmap1.Height));
      pb.max:=bitmap1.Width;
      for i := 0 to bitmap1.Width do begin
         pb.Position:=pb.Position+1;
         for y := 0 to bitmap1.Height - 1 do begin
            Next := bitmap2.ScanLine[y];
            ToDisplay := bitmap3.ScanLine[y];
            if(i < bitmap1.Width - 15) then begin
               for j := 1 to 14 do
                  if((y = 0) or (y = bitmap1.Height - 1)) then
                     ToDisplay[i+j] := clBlack
                  else
                     ToDisplay[i+j] := Next[i+10-j];
            end;
            ToDisplay[i] := Next[i];

         end;
         Image1.Canvas.Draw(0,0,bitmap3);
         Application.ProcessMessages();
      end;;
   end;
 end;}
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
{panel1.Align:=alNone;
panel1.Align:=alClient;
if fileexists('finance.jpg') then
 begin
    jp:=TjpegImage.create;
    jp.LoadFromFile('finance.jpg');
    Image1.Picture.assign(jp);
    Jp.Free;
 end;}
end;

end.
