unit fmVerify;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RadForms, StdCtrls, Buttons, ExtCtrls, ppDB, ppDBPipe,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppEndUsr, ppModule, raCodMod, jpeg, Filter, SetForm,
  Menus ;

type
  TVerify = class(TRadForm)
    meMessage: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lbRemark: TLabel;
    procedure FormShow(Sender: TObject);
//    procedure RadBtOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accept: Boolean;
  end;

var                          
  Verify: TVerify;

implementation

{$R *.dfm}

procedure TVerify.FormShow(Sender: TObject);
begin
  inherited;
  gbOkCancel.Caption:='';
end;

{
procedure TVerify.RadBtOkClick(Sender: TObject);
begin
  inherited;

end;}

end.
