unit fmSendMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcButton, fcImgBtn, AdvMemo, DBAdvMemo, StdCtrls, EllipsLabel,
  AdvShaper, DB, ADODB,RadForms, cxLookAndFeels;

type
  TSendMessage = class(TRadForm)
    AdvShaper1: TAdvShaper;
    EllipsLabel1: TEllipsLabel;
    fcImageBtn2: TfcImageBtn;
    fcImageBtn1: TfcImageBtn;
    quSendMessage: TADOQuery;
    WideStringField4: TWideStringField;
    StringField2: TStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    edMessage: TAdvMemo;
    cxLookAndFeelController1: TcxLookAndFeelController;
    procedure fcImageBtn2Click(Sender: TObject);
    procedure fcImageBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
     quActiveUserspid :String;
    EllipsLabel2: TEllipsLabel;
    { Public declarations }
  end;

var
  SendMessage: TSendMessage;

implementation

uses fmRadMfrm;

{$R *.dfm}

procedure TSendMessage.fcImageBtn1Click(Sender: TObject);
begin
 quSendMessage.Parameters[0].Value:=edMessage.Lines.Text;
 quSendMessage.Parameters[1].Value:=quActiveUserspid;
 quSendMessage.ExecSQL;
 Close;
end;

procedure TSendMessage.fcImageBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
