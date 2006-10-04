unit fmPassChanger;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,RadForms, Forms, Dialogs,
  Db, ADODB,DabDmdle, StdCtrls, RSqlButton, Mask, RSqlMaskEdit, RSqlEdit,
  ExtCtrls;
type
  TPassChanger = class(TRadForm)
    quUpdate: TADOQuery;
    Panel1: TPanel;
    StaticText1: TStaticText;
    edPass1: TRSqlEdit;
    StaticText2: TStaticText;
    edPass2: TRSqlEdit;
    RSqlButton2: TRSqlButton;
    RSqlButton1: TRSqlButton;
    procedure RSqlButton1Click(Sender: TObject);
    procedure RSqlButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PassChanger: TPassChanger;

implementation



{$R *.DFM}


procedure TPassChanger.RSqlButton1Click(Sender: TObject);
begin
 if(edPass1.Text=edPass2.Text) then
 begin
   quUpdate.Parameters[0].Value:=edPass1.Text;
   quUpdate.Parameters[1].Value:=DabData.emp_no;
   quUpdate.ExecSQL;
   DabData.ShowPopupMessage('ﬂ·„Â ⁄»Ê—  €ÌÌ— Ì«› ');
   close;
 end
 else
 begin
   DabData.ShowPopupMessage('ﬂ·„Â Â«Ì ⁄»Ê— „‘«»Â ‰Ì” ‰œ ');
   edPass1.Text:='';
   edPass2.Text:='';
   edPass1.SetFocus;
 end;
end;

procedure TPassChanger.RSqlButton2Click(Sender: TObject);
begin
 close;
end;

end.
