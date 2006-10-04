unit Draw;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Math, OleCtrls, vcf1, ComCtrls, ExtCtrls, AxCtrls, Buttons,
  Spin,RadForms;

type
  TFunctionF = class(TRadForm)
    F1Book: TF1Book;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    PrintDialog1: TPrintDialog;
    Image1: TImage;
    Panel4: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
  private
    SlowMotion:Boolean;
    function ReplaceSubInStr(OldSubString,NewSubString,InputString: String): String;
    { Private declarations }
  public
  end;

var
  FunctionF: TFunctionF;

implementation

uses Printers,ShellAPI, CalculatorP;

{$R *.DFM}

{Replaces all occurances of specified substring in a String.  This will have problems if
the OldSubString is Contained in the NewSubstring.  This is case insensitive. }
function TFunctionF.ReplaceSubInStr(OldSubString,NewSubString,InputString: String): String;
 var
  CharPos,L_O : Byte;
  U_O     : string;
begin
  Result := InputString;
  L_O    := Length(OldSubString);
  U_O    := UpperCase(OldSubString);
  while True Do
  begin
    CharPos := Pos(U_O,UpperCase(InputString));
    if not (CharPos = 0) then
    begin
      Delete(InputString,CharPos,L_O);
      Insert(NewSubString,InputString,CharPos);
    end
   else
  begin
      Break;
    end;
  end;
  Result := InputString;
end;

procedure TFunctionF.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  StatusBar1.Panels[0].Text:='w = '+IntToStr(x-316);
  StatusBar1.Panels[1].Text:='y = '+IntToStr(225-y);
  F1Book.SetActiveCell(1,3);
  F1Book.NumberRC[1,4]:=x-316;
  F1Book.FormulaRC[1,3]:='('+ReplaceSubInStr('w',IntToStr(x-316),ComBoBox1.Text)+')';
  StatusBar1.Panels[2].Text:='f(w) = '+FloatToStr(F1Book.NumberRC[1,3]);
end;

procedure TFunctionF.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  StatusBar1.Panels[1].Text:='0'
end;

procedure TFunctionF.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  StatusBar1.Panels[0].Text:='0';
end;

procedure TFunctionF.SpeedButton1Click(Sender: TObject);
 var
 key:Char;
begin
  key:=#13;
  Image1.Canvas.FillRect(Rect(0,0,Image1.Width,Image1.Height));
  ComboBox1KeyPress(ComboBox1,key);
end;

procedure TFunctionF.ComboBox1KeyPress(Sender: TObject; var Key: Char);
var
  x1,y1,x2,y2,k,t:integer;
  i,j,startpos,endpos:smallint;
begin
  SlowMotion:=not SlowMotion;
  startpos:=0;
  endpos:=400;
  if key=#13 then
  begin
  //Enter Values in F1Book
  for i:=startpos+1 to endpos+1 do
  begin
  F1Book.SetActiveCell(i,1);
  // enter values
  F1Book.TextRC[i,1]:=IntToStr((i-1-endpos div 2));
  // enter formulas
  F1Book.GetActiveCell(k,t);
  // make negative to convert form coordinates to Cartesian Coordinates
  F1Book.FormulaRC[i,2]:='-('+ReplaceSubInStr('w',F1Book.FormatRCNr(k,t,False),
                           ComboBox1.Text)+')';
  end;
  //Draw Function
  Image1.Canvas.Pen.Width:=2;
  Image1.Canvas.Pen.Color:=clBlue;
  try
  for j:=startpos+1 to endpos do
  begin
  if SlowMotion then
  CalculatorForm.Delay(0,1);
  x1:=Round((F1Book.NumberRC[j,1]))+316;
  y1:=Round((F1Book.NumberRC[j,2]))+(225);
  x2:=Round((F1Book.NumberRC[j+1,1]))+316;
  y2:=Round((F1Book.NumberRC[j+1,2]))+225;
  Label4.Caption:='    w  = '+IntToSTr(x2-316);
  Label5.Caption:='F(w) = '+IntToSTr(225-y2);
  if ((y2<400) and (y2>-400) and (y1<400) and (y1>-400)) then
  begin
  Image1.Canvas.MoveTo(x1,y1);
  Image1.Canvas.LineTo(x2,y2);
  end;
  end;
  finally
   SlowMotion:=False;
  end;
  end;
end;

procedure TFunctionF.SpeedButton2Click(Sender: TObject);
begin
  Panel3.Visible:=False;
  Panel4.Visible:=False;
  FunctionF.Height:=430;
  FunctionF.Print;
  Panel3.Visible:=True;
  Panel4.Visible:=True;
  FunctionF.Height:=483
end;

end.
