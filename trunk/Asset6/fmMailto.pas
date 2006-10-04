unit fmMailto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs
  ,RadForms, OleCtrls, SHDocVw, HTTPApp, ScktComp, StdCtrls, Buttons, Mask,
  RSqlMaskEdit, Psock, NMsmtp, ppBands, ppCache, ppClass, ppComm, ppRelatv,
  ppProd, ppReport, NMpop3, NMURL;

type
  TMailto = class(TRadForm)
    WebBrowser1: TWebBrowser;
    FromDate: TRSqlMaskEdit;
    Label1: TLabel;
    RSqlMaskEdit1: TRSqlMaskEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mailto: TMailto;

implementation

{$R *.DFM}

procedure TMailto.FormShow(Sender: TObject);
var
 mailStr:String;
begin
 mailStr:='Mailto:mgso22002@yahoo.com&subject=«‘ﬂ«·« %20«„Ê«·'
                          +'&body=«‘ﬂ«·« %20—«%20œ—%20«Ì‰%20»‰ÊÌ”Ìœ'
                          +'&attach=c:\test.txt';
  WebBrowser1.Navigate(mailStr);
//  WebBrowser1.Navigate('www.geocities.com/mgso22002');
end;

end.
