unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls, jpeg,RadForms,iniFiles;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    pb: TProgressBar;
    Timer1: TTimer;

    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
//    Bitmap1, Bitmap2, Bitmap3: TBitmap;
//    Image1Loaded, Image2Loaded: Boolean;
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}



procedure TSplashForm.FormCreate(Sender: TObject);
var jp:TjpegImage;
begin
 panel1.Align:=alNone;
 panel1.Align:=alClient;
 if fileexists('finance.jpg') then
 begin
    jp:=TjpegImage.create;
    jp.LoadFromFile('finance.jpg');
    Image1.Picture.assign(jp);
    Jp.Free;
 end;
end;


procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
  pb.Position:=pb.Position+1;

end;

procedure TSplashForm.FormShow(Sender: TObject);
begin
  pb.Max:=100;
  pb.Position:=0;
end;

end.
