unit fmPrintDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RadForms,ComCtrls, Buttons;

type
  TPrintDialog = class(TRadForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbPrinter: TComboBox;
    Button1: TButton;
    Label2: TLabel;
    lbType: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    edCountRange: TEdit;
    GroupBox3: TGroupBox;
    UpDown1: TUpDown;
    edNumCopyCount: TEdit;
    CheckBox1: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    cbOddEven: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rgPageA4A5: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintDialog: TPrintDialog;

implementation

{$R *.dfm}

end.
