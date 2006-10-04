unit help;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  HTTPApp, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, Buttons,define,
  SmoothShow,RadForms, HTTPProd;

type
  THtmlHelp = class(TRadForm)
    WebBrowser1: TWebBrowser;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel1: TPanel;
    PageProducer1: TPageProducer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HtmlHelp: THtmlHelp;

implementation

uses DabDmdle;

{$R *.DFM}

procedure THtmlHelp.SpeedButton1Click(Sender: TObject);
begin
  try
   WebBrowser1.GoBack;
  except
  end;
end;

procedure THtmlHelp.SpeedButton2Click(Sender: TObject);
begin
  try
   WebBrowser1.GoForward;
  except
  end;
end;

procedure THtmlHelp.SpeedButton3Click(Sender: TObject);
begin
  PageProducer1.HTMLFile:='Test.Htm';
  WebBrowser1.Navigate(PageProducer1.HTMLFile);
end;

procedure THtmlHelp.FormShow(Sender: TObject);
begin
 
 top:=0;
 left:=0;
 WebBrowser1.Navigate(PageProducer1.HTMLFile);
end;

procedure THtmlHelp.Button1Click(Sender: TObject);
begin
{ mes.Msg:=F_HTM;
 Self.DispatchMessageToActiveMdiChild(mes);}
end;

procedure THtmlHelp.FormActivate(Sender: TObject);
var
  mes : TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=30;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;

procedure THtmlHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=caFree;
end;

procedure THtmlHelp.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;


end.
