unit SciCalc;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CalculatorP, Buttons, StdCtrls, ExtCtrls, Menus, Spin;
type
  TSciCalcForm = class(TCalculatorForm)
    CosButton: TSpeedButton;
    SinButton: TSpeedButton;
    CubeButton: TSpeedButton;
    xUPyButton: TSpeedButton;
    ExpButton: TSpeedButton;
    FactorButton: TSpeedButton;
    LogButton: TSpeedButton;
    LnButton: TSpeedButton;
    TanButton: TSpeedButton;
    SquareButton: TSpeedButton;
    PiBtn: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    AButton: TSpeedButton;
    BButton: TSpeedButton;
    CButton: TSpeedButton;
    DButton: TSpeedButton;
    EButton: TSpeedButton;
    FButton: TSpeedButton;
    GButton: TSpeedButton;
    HButton: TSpeedButton;
    IButton: TSpeedButton;
    JButton: TSpeedButton;
    KButton: TSpeedButton;
    LButton: TSpeedButton;
    MButton: TSpeedButton;
    NButton: TSpeedButton;
    OButton: TSpeedButton;
    PButton: TSpeedButton;
    QButton: TSpeedButton;
    RButton: TSpeedButton;
    SButton: TSpeedButton;
    TButton: TSpeedButton;
    UButton: TSpeedButton;
    VButton: TSpeedButton;
    WButton: TSpeedButton;
    XButton: TSpeedButton;
    YButton: TSpeedButton;
    ZButton: TSpeedButton;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Standart1Click(Sender: TObject);
    procedure PiBtnClick(Sender: TObject);
    procedure AClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    PreBase:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SciCalcForm: TSciCalcForm;

implementation

{$R *.DFM}

procedure TSciCalcForm.Standart1Click(Sender: TObject);
begin
{
  with CalculatorForm do
  begin
   Left:=SciCalcForm.Left;
   Top:=SciCalcForm.Top;
   Show;
  end;
  SciCalcForm.Close;}
end;

procedure TSciCalcForm.PiBtnClick(Sender: TObject);
begin
  CalcEdit.Caption:=FloatToStr(Pi);
end;

procedure TSciCalcForm.AClick(Sender: TObject);
begin
   Val:=(Sender as TSpeedButton).Caption;
   Enter;
   Mode:=Num;
end;

procedure TSciCalcForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if CalculatorForm<> nil then
     CalculatorForm.Visible:=True;
end;

procedure TSciCalcForm.FormCreate(Sender: TObject);
begin
  Height:=300;
  Panel5.Height:=5;
  PreBase:=10;
//  Bilimsel1.Enabled:=False;
end;

procedure TSciCalcForm.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  i,j,k:byte;
begin
  if key=#13 then
  begin
  if (StrToInt(Edit2.Text)<2) or (StrToInt(Edit2.Text)>36) then
   ShowMessage('Base Should Be Between 2 And 36')
  else
  begin
  k:=StrToInt(Edit2.Text);
  CalcEdit.Caption:=FBase2Base(CalcEdit.Caption,PreBase,k);
  PreBase:=k;
  for i:=1 to k do
  begin
   for j:=0 to SciCalcForm.ComponentCount-1 do
   begin
    if ((SciCalcForm.Components[j].Name=Symbols[i]+'Button')
        or (SciCalcForm.Components[j].Name='Button'+Symbols[i])) then
    begin
     Sender:=SciCalcForm.Components[j];
     (Sender as TSpeedButton).Visible:=True;
    end;
   end;
  end;

  for i:= k+1 to 36 do
  begin
   for j:=0 to SciCalcForm.ComponentCount-1 do
   begin
    if ((SciCalcForm.Components[j].Name=Symbols[i]+'Button')
        or (SciCalcForm.Components[j].Name='Button'+Symbols[i])) then
    begin
     Sender:=SciCalcForm.Components[j];
     (Sender as TSpeedButton).Visible:=False;
    end;
   end;
  end;

  if (k>2) or (k<36) then
  begin
  if k<11 then
  begin
   SciCalcForm.Height:=300;
  end
  else
  begin
   if ((k>10) and (k<29))then
   begin
    SciCalcForm.Height:=305+Trunc(k/10)*30;
   end
   else
   begin
    SciCalcForm.Height:=305+Trunc((k+2)/10)*30;
   end;

   for i:=0 to Trunc(k/10)*30 do
   begin
    Panel5.Height:=Panel5.Height+1;
   end;
  end; 
  end;
  end;
  Edit1.SetFocus;
  end;
end;

procedure TSciCalcForm.SpeedButton2Click(Sender: TObject);
var
  key:Char;
begin
  if StrToInt(Edit2.Text)>2 then
   Edit2.Text:=IntToStr(StrToInt(Edit2.Text)-1)
  else
   Edit2.Text:=Edit2.Text;
   key:=#13;
   Sender:=Edit2;
   Edit2KeyPress(sender,key);
end;

procedure TSciCalcForm.SpeedButton1Click(Sender: TObject);
var
  key:Char;
begin
  if StrToInt(Edit2.Text)<36 then
   Edit2.Text:=IntToStr(StrToInt(Edit2.Text)+1)
  else
   Edit2.Text:=Edit2.Text;
   key:=#13;
   Sender:=Edit2;
   Edit2KeyPress(sender,key);
end;

end.
