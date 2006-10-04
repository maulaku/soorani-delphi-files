{           Functional Calculator by Macrotech
  We are just a click away  http://www.macrotech.bigstep.com         }

unit CalculatorP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Menus, Math, ComCtrls,RadForms;

type
  TCalculatorForm = class(TRadForm)
    Panel2: TPanel;
    Button0: TSpeedButton;
    Button1: TSpeedButton;
    Button4: TSpeedButton;
    Button7: TSpeedButton;
    SignButton: TSpeedButton;
    Button2: TSpeedButton;
    Button5: TSpeedButton;
    Button8: TSpeedButton;
    CommaButton: TSpeedButton;
    Button3: TSpeedButton;
    Button6: TSpeedButton;
    Button9: TSpeedButton;
    PlusButton: TSpeedButton;
    MinusButton: TSpeedButton;
    MultiplyButton: TSpeedButton;
    DivideButton: TSpeedButton;
    EqualButton: TSpeedButton;
    AdverseButton: TSpeedButton;
    PercentButton: TSpeedButton;
    RootButton: TSpeedButton;
    MemPlusBtn: TSpeedButton;
    SpeedButton22: TSpeedButton;
    MemButton: TSpeedButton;
    MemClearBtn: TSpeedButton;
    ClearAllButton: TSpeedButton;
    ClearButton: TSpeedButton;
    BackButton: TSpeedButton;
    MainMenu: TMainMenu;
    Dzenle1: TMenuItem;
    Kopyala1: TMenuItem;
    Yaptr1: TMenuItem;
    Grnm1: TMenuItem;
    Panel1: TPanel;
    CalcEdit: TLabel;
    Edit1: TEdit;
    procedure PlusButtonClick(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure ClearAllButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PercentButtonClick(Sender: TObject);
    procedure CommaButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure SignButtonClick(Sender: TObject);
    procedure MemButtonClick(Sender: TObject);
    procedure MemClearBtnClick(Sender: TObject);
    procedure MemPlusBtnClick(Sender: TObject);
    procedure Kopyala1Click(Sender: TObject);
    procedure Yaptr1Click(Sender: TObject);
    procedure Bilimsel1Click(Sender: TObject);
    procedure RootButtonClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Grnm1Click(Sender: TObject);
  private
  public
    procedure Delay(Sec,MSec:Word);
  protected
    function DeleteSubString(substring,InputString: String): String;
    procedure Calculate(Start:Boolean);
    procedure Enter;
    function FBase2Base(Number:string;FromBase,ToBase:byte):string;
  end;
type
// User Input may be in three state
// User may enter a number(Mode=Num) or an Operator (Mode=Operand)
// Comma should be handled separately
  Modes=(Num,Operand,Comma);
 var
  CalculatorForm: TCalculatorForm;
  Result,Memory,AdverseNum:Extended;
  Val,Opr,xStr:String;
  Mode:Modes;
  Start:Boolean;
 const
  Symbols: String[36] = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

implementation

uses SciCalc, Draw, MMSystem;

{$R *.DFM}

procedure TCalculatorForm.Delay(Sec,MSec:Word);
 var
  TimeOut:TDateTime;
begin
  TimeOut:=Now+EnCodeTime(0,0,Sec,MSec);
  while Now<TimeOut do
   Application.ProcessMessages;
end;

function TCalculatorForm.FBase2Base(Number:string;FromBase,ToBase:byte):string;
 var
  IsNegative:Boolean;
  xResult,FracNum:Extended;
  xstr,tstr,FracStr,xNum:String[36];
  i:smallint;
  Val,ComPos,FracLen,Count:byte;
begin
  IsNegative:=False;
  if Copy(Number,1,1)='-' then
  begin
   IsNegative:=True;
   Delete(Number,1,1);
  end;
  xNum:=Number;
  // First Convert Number To Decimal
  if Pos(',',xNum)=0 then // check if number is integer
  begin
  for i:=Length(xNum)-1  downto 0 do
  begin
   Val:=Pos(Copy(xNum,1,1),Symbols)-1;  // get the multiplier
   xResult:=xResult+((exp(i*ln(FromBase)))*Val); //calculate decimal result
   Delete(xNum,1,1); // delete the calculated digit from input string
  end;
  tstr:=FloatToStr((xResult));//xResult is Decimal equivalent of Number
  xstr:='';  //start value of Result
  repeat
   i:=StrToInt64(tstr) mod ToBase;
   xstr:=Symbols[i + 1] + xstr;
   tstr:=IntToStr(StrToInt64(tstr) div ToBase);
  until StrToInt64(tstr)=0;
  Result:=xstr; // unfractional result
  end

  else                  // if number is a real number
  begin
 // xNum:=xNum+',0';
  ComPos:=Pos(',',xNum);  // get Comma position
  FracLen:=Length(xNum)-ComPos;  // get fraction length
  Delete(xNum,ComPos,1);  //  delete comma from input string to process the string
  xResult:=0;  //start value
  for i:=ComPos-1-1 downto -FracLen do
  begin
   Val:=Pos(Copy(xNum,1,1),Symbols)-1;  // get the multiplier
   xResult:=xResult+((exp(i*ln(FromBase)))*Val); //calculate decimal result
   Delete(xNum,1,1); // delete the calculated digit from input string
  end;
  // Second,Convert Decimal To Desired Base
    tstr:=FloatToStr((xResult));//xResult is Decimal equivalent of Number with fraction
  if Pos(',',tstr)=0 then
   tstr:=tstr+',0';
  xstr:='';  //start value of Result
  ComPos:=Pos(',',tstr);// find comma position
  FracLen:=Length(tstr)-ComPos;//Calculate fraction length
  FracStr:='0,'+Copy(tstr,Compos+1,FracLen); // get fraction part
  Delete(tstr,ComPos,FracLen+1);  //get integer part
  repeat
   i:=StrToInt64(tstr) mod ToBase;
   xstr:=Symbols[i + 1] + xstr;
   tstr:=IntToStr(StrToInt64(tstr) div ToBase);
  until StrToInt64(tstr)=0;
  Result:=xstr; // unfractional result

  // Convert Fraction
  FracNum:=StrToFloat(FracStr);
  FracStr:='';
  Count:=0;
  while ((Count<33) and not (FracNum=0)) do
  begin
   FracStr:=FracStr+(Symbols[Trunc(FracNum*ToBase)+1]);// Calculate Fraction
   FracNum:=FracNum*ToBase-Trunc(FracNum*ToBase);
   Count:=Count+1;
  end;
   Result:=xstr+','+FracStr;// Result with fraction
  end;
  if Pos(',',Result)=Length(Result) then
  Delete(Result,Length(Result),1);
  if IsNegative then
   Result:='-'+Result;
end;

procedure TCalculatorForm.Enter;
begin
  if Mode=Num then
  begin
   if ((CalcEdit.Caption<>'0')) then
   begin
    CalcEdit.Caption:=CalcEdit.Caption+Val
   end
   else
   begin
    CalcEdit.Caption:=Val;
   end;
  end;
  if Mode=Comma then
  begin
   CalcEdit.Caption:=CalcEdit.Caption+Val
  end;
  if Mode=Operand then
  begin
   CalcEdit.Caption:=Val;
  end;
  Start:=False;
end;

procedure TCalculatorForm.Calculate(Start:Boolean);
 var
  i:Extended;
begin
  if ((SciCalcForm.Visible=True) and (StrToInt(SciCalcForm.Edit2.Text)<>10)) then
  begin
    CalcEdit.Caption:=FBase2Base(CalcEdit.Caption,StrToInt(SciCalcForm.Edit2.Text),10);
  end;

  if Opr='Cube' then
  begin
   Result:=(Sqr(StrToFloat(CalcEdit.Caption)));
  end;
  if Opr='Exp' then
  begin
   Result:=Exp(StrToFloat(CalcEdit.Caption))
  end;
  if Opr='Ln' then
  begin
   Result:=Ln(StrToFloat(CalcEdit.Caption))
  end;
  if Opr='Log' then
  begin
   Result:=Log10(StrToFloat(CalcEdit.Caption))
  end;
  if Opr='Factor' then
  begin
   Result:=1;
   i:=StrToFloat(CalcEdit.Caption);
  while i>0 do
  begin
   Result:=Result*i;
   i:=i-1;
  end;
  end;
  if Opr='Tan' then
  begin
   Result:=Tan(StrToFloat(CalcEdit.Caption)*3.14159265359/180)
  end;
  if Opr='Sin' then
  begin
   Result:=Sin(StrToFloat(CalcEdit.Caption)*3.14159265359/180)
  end;
  if Opr='Cos' then
  begin
   Result:=Cos(StrToFloat(CalcEdit.Caption)*3.14159265359/180)
  end;
  if Opr='Cube' then
  begin
   Result:=Sqr(StrToFloat(CalcEdit.Caption))*StrToFloat(CalcEdit.Caption)
  end;
  if Opr='Square' then
  begin
   Result:=Sqr(StrToFloat(CalcEdit.Caption));
  end;
  if Opr='Num' then
  begin
   Result:=Result+StrToFloat(CalcEdit.Caption);
  end;
  if Opr='Plus' then
  begin
   Result:=Result+StrToFloat(CalcEdit.Caption);
  end;
  if Opr='Minus' then
  begin
   Result:=Result-StrToFloat(CalcEdit.Caption);
  end;
  if Opr='Multiply' then
  begin
   Result:=Result*StrToFloat(CalcEdit.Caption);
  end;
  if Opr='Divide' then
  begin
   if Start=True then
   Result:=StrToFloat(CalcEdit.Caption)
   else
   begin
   try
    Result:=Result/StrToFloat(CalcEdit.Caption);
   except on EZeroDivide do
   begin
    Result:=0;
     ShowMessage('Division by Zero');
     Beep;
   end;
  end;
  end;
  end;
  if Opr='Adverse' then
  begin
   if Start=True then
    Result:=StrToFloat(CalcEdit.Caption)
   else
   begin
   try
    Result:=1/StrToFloat(CalcEdit.Caption);
   except on EZeroDivide do
   begin
    Result:=0;
    ShowMessage('Division by Zero');
    Beep;
   end;
   end;
   end;
   end;
   if Opr='Root' then
   begin
    Result:=SQRT(StrToFloat(CalcEdit.Caption));
   end;
   if Opr='Equal' then
    Result:=StrToFloat(CalcEdit.Caption);
   if Opr='xUPy' then
   begin
    Result:=exp((StrToFloat(CalcEdit.Caption))*Ln(Result));
   end;
  if ((SciCalcForm.Visible=True) and (StrToInt(SciCalcForm.Edit2.Text)<>10)) then
  begin
   CalcEdit.Caption:=FBase2Base(FloatToStr(Result),10,StrToInt(SciCalcForm.Edit2.Text));
  end
  else
  begin
   CalcEdit.Caption:=FloatToStr(Result);
  end;
end;

function TCalculatorForm.DeleteSubString(Substring,InputString: string): string;
 var
  CharPos,i:Byte;
  tstr:string;
begin
  Result:=InputString;
  i:=Length(SubString);
  tstr:=UpperCase(SubString);
  while True do
  begin
    CharPos:=Pos(tstr,UpperCase(InputString));
    if not (CharPos = 0) then
      Delete(InputString,CharPos,i)
    else
      Break;
  end;
  Result := InputString;
end;

procedure TCalculatorForm.PlusButtonClick(Sender: TObject);
begin
   xStr:=DeleteSubString('Button',((Sender as TSpeedButton).Name));
   if (Start=False) then
   begin
    if Mode<>Operand then
    Calculate(False);
    Mode:=Operand;
    Opr:=xStr;
   end
   else
   Beep;
end;

procedure TCalculatorForm.ClearButtonClick(Sender: TObject);
begin
   Mode:=Num;
   Result:=0;
   Opr:='Num';
   Start:=True;
   CalcEdit.Caption:='0';
end;

procedure TCalculatorForm.ClearAllButtonClick(Sender: TObject);
begin
  ClearButtonClick(self);
  Memory:=0;
end;

procedure TCalculatorForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Result:=0;
   Mode:=Num;
   Opr:='Num';
  CalculatorForm:=nil;
end;

procedure TCalculatorForm.FormCreate(Sender: TObject);
begin
  Mode:=Num;
  Opr:='Num';
  Start:=True;
  Memory:=0;
  AdverseNum:=0;
//  Standart1.Enabled:=False
end;

procedure TCalculatorForm.Button0Click(Sender: TObject);
begin
  Val:=(Sender as TSPeedButton).Caption;
  Enter;
  Mode:=Num;
end;

procedure TCalculatorForm.PercentButtonClick(Sender: TObject);
begin
  if Start=True then
   Beep
  else
   begin
    Calculate(False);
    Mode:=Operand;
    Opr:='Percent';
    Result:=Result/100;
    CalcEdit.Caption:=FloatToStr(Result);
   end;
  Mode:=Operand;;
  Opr:='Equal';
end;

procedure TCalculatorForm.CommaButtonClick(Sender: TObject);
begin
   if Pos(',',CalcEdit.Caption)=0 then
    begin
     Mode:=Comma;
     Val:=',';
     Enter;
    end
   else
    Beep;
end;

procedure TCalculatorForm.BackButtonClick(Sender: TObject);
begin
  try
  Mode:=Operand;
   xStr:=CalcEdit.Caption;
   if Length(xStr)>1 then
    Delete(xStr,Length(xStr),1)
   else
    begin
     xStr:='0';
     Beep;
    end;
   CalcEdit.Caption:=xStr;
  if StrToInt(SciCalcForm.Edit2.Text)<>10 then
  begin
   Result:=StrToFloat(FBase2Base(xStr,StrToInt(SciCalcForm.Edit2.Text),10));
  end
  else
  Result:=StrToFloat(xStr);
  finally
  Mode:=Num;
  end;
end;

procedure TCalculatorForm.SignButtonClick(Sender: TObject);
begin
   if CalcEdit.Caption='0' then
    Beep
   else
   begin
    CalcEdit.Caption:=FloatToStr(-StrToFloat(CalcEdit.Caption));
    Mode:=Num;
   end;
end;

procedure TCalculatorForm.MemButtonClick(Sender: TObject);
begin
   Start:=False;
   CalcEdit.Caption:=FloatToSTr(Memory);
end;

procedure TCalculatorForm.MemClearBtnClick(Sender: TObject);
begin
   Memory:=0;
   Start:=False;
end;

procedure TCalculatorForm.MemPlusBtnClick(Sender: TObject);
begin
   Memory:=Memory+StrToFloat(CalcEdit.Caption);
   CalcEdit.Caption:=FloatToStr(Memory);
   Start:=False;
   Mode:=Operand;
end;

procedure TCalculatorForm.Kopyala1Click(Sender: TObject);
begin
  Edit1.Text:=CalcEdit.Caption;
  Edit1.SelectAll;
  Edit1.CopyToClipboard;
end;

procedure TCalculatorForm.Yaptr1Click(Sender: TObject);
begin
  Edit1.PasteFromClipboard;
  CalcEdit.Caption:=Edit1.Text;
end;

procedure TCalculatorForm.Bilimsel1Click(Sender: TObject);
begin
  with SciCalcForm do
   begin
    Left:=CalculatorForm.Left;
    Top:=CalculatorForm.Top;
    Show;
   end;
  CalculatorForm.Visible:=False;
end;

procedure TCalculatorForm.RootButtonClick(Sender: TObject);
begin
  xStr:=DeleteSubString('Button',((Sender as TSpeedButton).Name));
 // if Start=False then
 // begin
  Mode:=Operand;
  Opr:=xStr;
  Calculate(False);
 // end;
  Mode:=Operand;
  Opr:='Equal';
end;

procedure TCalculatorForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 Case key of
  '0':begin Sender:=Button0;Button0Click(Sender);Exit;end;
  '1':begin Sender:=Button1;Button0Click(Sender);Exit;end;
  '*':begin Sender:=MultiplyButton;PlusButtonClick(Sender);Exit;end;
  '/':begin Sender:=DivideButton;PlusButtonClick(Sender);Exit;end;
  '+':begin Sender:=PlusButton;PlusButtonClick(Sender);Exit;end;
  '-':begin Sender:=MinusButton;PlusButtonClick(Sender);Exit;end;
  #13:begin Sender:=EqualButton;PlusButtonClick(Sender);Exit;end;
  #44:begin Sender:=CommaButton;CommaButtonClick(Sender);Exit;end;
   #8:begin Sender:=BackButton;BackButtonClick(Sender);Exit;end;

  '2':begin if Button2.Visible=True then
            begin Sender:=Button2;Button0Click(Sender); Exit; end;
      end;
  '3':begin if Button3.Visible=True then
            begin Sender:=Button3;Button0Click(Sender); Exit; end;
      end;
  '4':begin if Button4.Visible=True then
            begin Sender:=Button4;Button0Click(Sender); Exit; end;
      end;
  '5':begin if Button5.Visible=True then
            begin Sender:=Button5;Button0Click(Sender); Exit; end;
      end;
  '6':begin if Button6.Visible=True then
            begin Sender:=Button6;Button0Click(Sender); Exit; end;
      end;
  '7':begin if Button7.Visible=True then
            begin Sender:=Button7;Button0Click(Sender); Exit; end;
      end;
  '8':begin if Button8.Visible=True then
            begin Sender:=Button8;Button0Click(Sender); Exit; end;
      end;
  '9':begin if Button9.Visible=True then
            begin Sender:=Button9;Button0Click(Sender); Exit; end;
      end;
  'A','a':begin if SciCalcForm.AButton.Visible=True then
            begin Sender:=SciCalcForm.AButton;Button0Click(Sender); Exit; end;
          end;
  'B','b':begin if SciCalcForm.BButton.Visible=True then
            begin Sender:=SciCalcForm.BButton;Button0Click(Sender); Exit; end;
          end;
  'C','c':begin if SciCalcForm.CButton.Visible=True then
            begin Sender:=SciCalcForm.CButton;Button0Click(Sender); Exit; end;
          end;
  'D','d':begin if SciCalcForm.DButton.Visible=True then
            begin Sender:=SciCalcForm.DButton;Button0Click(Sender); Exit; end;
          end;
  'E','e':begin if SciCalcForm.EButton.Visible=True then
            begin Sender:=SciCalcForm.EButton;Button0Click(Sender); Exit; end;
          end;
  'F','f':begin if SciCalcForm.FButton.Visible=True then
            begin Sender:=SciCalcForm.FButton;Button0Click(Sender); Exit; end;
          end;
  'G','g':begin if SciCalcForm.GButton.Visible=True then
            begin Sender:=SciCalcForm.GButton;Button0Click(Sender); Exit; end;
          end;
  'H','h':begin if SciCalcForm.HButton.Visible=True then
            begin Sender:=SciCalcForm.HButton;Button0Click(Sender); Exit; end;
          end;
  'I','i':begin if SciCalcForm.IButton.Visible=True then
            begin Sender:=SciCalcForm.IButton;Button0Click(Sender); Exit; end;
          end;
  'J','j':begin if SciCalcForm.JButton.Visible=True then
            begin Sender:=SciCalcForm.JButton;Button0Click(Sender); Exit; end;
          end;
  'K','k':begin if SciCalcForm.KButton.Visible=True then
            begin Sender:=SciCalcForm.KButton;Button0Click(Sender); Exit; end;
          end;
  'L','l':begin if SciCalcForm.LButton.Visible=True then
            begin Sender:=SciCalcForm.LButton;Button0Click(Sender); Exit; end;
          end;
  'M','m':begin if SciCalcForm.MButton.Visible=True then
            begin Sender:=SciCalcForm.MButton;Button0Click(Sender); Exit; end;
          end;
  'N','n':begin if SciCalcForm.NButton.Visible=True then
            begin Sender:=SciCalcForm.NButton; Button0Click(Sender);Exit; end;
          end;
  'O','o':begin if SciCalcForm.OButton.Visible=True then
            begin Sender:=SciCalcForm.OButton; Button0Click(Sender);Exit; end;
          end;
  'P','p':begin if SciCalcForm.PButton.Visible=True then
            begin Sender:=SciCalcForm.PButton; Button0Click(Sender);Exit; end;
          end;
  'Q','q':begin if SciCalcForm.QButton.Visible=True then
            begin Sender:=SciCalcForm.QButton; Button0Click(Sender);Exit; end;
          end;
  'R','r':begin if SciCalcForm.RButton.Visible=True then
            begin Sender:=SciCalcForm.RButton; Button0Click(Sender);Exit; end;
          end;
  'S','s':begin if SciCalcForm.SButton.Visible=True then
            begin Sender:=SciCalcForm.SButton; Button0Click(Sender);Exit; end;
          end;
  'T','t':begin if SciCalcForm.TButton.Visible=True then
            begin Sender:=SciCalcForm.TButton; Button0Click(Sender);Exit; end;
          end;
  'U','u':begin if SciCalcForm.UButton.Visible=True then
            begin Sender:=SciCalcForm.UButton; Button0Click(Sender);Exit; end;
          end;
  'V','v':begin if SciCalcForm.VButton.Visible=True then
            begin Sender:=SciCalcForm.VButton; Button0Click(Sender);Exit; end;
          end;
  'W','w':begin if SciCalcForm.WButton.Visible=True then
            begin Sender:=SciCalcForm.WButton; Button0Click(Sender);Exit; end;
          end;
  'X','x':begin if SciCalcForm.XButton.Visible=True then
            begin Sender:=SciCalcForm.XButton; Button0Click(Sender);Exit; end;
          end;
  'Y','y':begin if SciCalcForm.YButton.Visible=True then
            begin Sender:=SciCalcForm.YButton; Button0Click(Sender);Exit; end;
          end;
  'Z','z':begin if SciCalcForm.ZButton.Visible=True then
            begin Sender:=SciCalcForm.ZButton; Button0Click(Sender);Exit; end;
          end;
  end;
  key:=#0;
end;

procedure TCalculatorForm.Grnm1Click(Sender: TObject);
begin
 FunctionF:=TFunctionF.Create(Application);
 FunctionF.ShowModal;
end;

end.

