unit fmAppUpdate;

interface

uses
  Classes, Controls, Forms, AppWebUpdater, ComCtrls, StdCtrls, OleCtrls,dialogs
  ,RadForms, AdvProgr, AdvProgressBar, AdvShaper;

type
  TAppUpdater = class(TRadForm)
    WebUpdater1: TWebUpdater;
    Button1: TButton;
    StatusBar1: TStatusBar;
    Memo1: TMemo;
    AdvProgress1: TAdvProgress;
    AdvProgressBar1: TAdvProgressBar;
    procedure WebUpdater1Progress(ProgressMax, Position: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppUpdater: TAppUpdater;

implementation

{$R *.dfm}

procedure TAppUpdater.Button1Click(Sender: TObject);
begin
   WebUpdater1.Start;
   Memo1.Text := WebUpdater1.LogData.Text
end;

procedure TAppUpdater.WebUpdater1Progress(ProgressMax, Position: Integer);
begin
  inherited;
  //AdvProgressBar1.Max := ProgressMax;
  AdvProgressBar1.Position :=  Position;
end;

end.
