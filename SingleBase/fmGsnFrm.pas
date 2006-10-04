unit fmGsnFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,FileCtrl,inifiles;

type
  TGsnFrm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    cbTInst: TCheckBox;
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
  GsnFrm       :TGsnFrm;
implementation

uses fmCrl, DabDmdle;

{$R *.DFM}

procedure TGsnFrm.BitBtn2Click(Sender: TObject);
var   GenDataFile  :TiniFile;
begin
  GenDataFile:=TiniFile.Create('singleBase.ini');
  GenDataFile.WriteString('SerVerName','SERVER',GsnFrm.edit1.text);
  GenDataFile.WriteString('Db','1','human');
  GenDataFile.WriteString('Db','human','human');
  GenDataFile.WriteString('Db','2','salary');
  GenDataFile.WriteString('Db','salary','salary');
  GenDataFile.WriteString('Db','5','amval');
  GenDataFile.WriteString('Db','amval','amval');
  GenDataFile.WriteString('Db','8','budget');
  GenDataFile.WriteString('Db','budget','budget');
  GenDataFile.WriteString('Db','4','accounting');
  GenDataFile.WriteString('Db','accounting','accounting');
  if not cbTinst.Checked then
    GenDataFile.WriteString('Sal','CurrentSal',Copy(DabData.Disp_date,1,2))
  else
    GenDataFile.WriteString('Sal',Copy(DabData.Disp_date,1,2),'NorthWind');
  GenDataFile.Free;
  initial;
  Oky:=true;
  Close;
end;
procedure TGsnFrm.Initial;
var GenFile  :TiniFile;
begin
  GenFile:=TiniFile.Create('singleBase.ini');
  GenFile.WriteInteger('RUN','RUNID',5);
  if not cbTinst.Checked then
     GenFile.WriteString('SAL','CurrentSal',Copy(DabData.Disp_date,1,2))
  else
     GenFile.WriteString('SAL','CurrentSal','NorthWind');
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
