unit fmGsnFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,FileCtrl,inifiles,Fard,RadForms;

type
  TGsnFrm = class(TRadForm)
    Label1: TLabel;
    Edit1: TEdit;
    cbTInst: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  public
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
     procedure Initial;
    { Private declarations }
  public
    Oky :boolean;
    { Public declarations }
  end;

var
  Far_date   :TFar_date;
  GsnFrm       :TGsnFrm;
implementation

uses DabDmdle, UCommon;



{$R *.DFM}

procedure TGsnFrm.BitBtn2Click(Sender: TObject);
var   GenDataFile  :TiniFile;
begin
  GenDataFile:=TiniFile.Create(fullIniPath);
  GenDataFile.WriteString('Connection','Server',GsnFrm.edit1.text);
  GenDataFile.WriteString('Connection','DB','HRS');
  if not cbTinst.Checked then
    GenDataFile.WriteString('Year','CurrentYear','')
  else
    GenDataFile.WriteString('Year',Copy(Far_date.Disp_date(DabData.ADOC),1,2),'82');
  GenDataFile.Free;
  initial;
  Oky:=true;
  Close;
end;
procedure TGsnFrm.Initial;
var GenFile  :TiniFile;
begin
  GenFile:=TiniFile.Create(fullIniPath);
  if not cbTinst.Checked then
     GenFile.WriteString('Year','CurrentYear',Copy(Far_date.Disp_date(DabData.ADOC),1,2))
  else
     GenFile.WriteString('Year','CurrentYear','82');
  GenFile.free;
end;
procedure TGsnFrm.BitBtn1Click(Sender: TObject);
begin
  Oky:=False;
  Close;
end;

procedure TGsnFrm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then BitBtn2.setfocus;
end;

end.
