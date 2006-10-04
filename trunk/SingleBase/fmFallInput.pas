unit fmFallInput;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, ADODB, ExtCtrls;

type
  TFallInput = class(TForm)
    dslcField: TDataSource;
    qulcField: TADOQuery;
    quNew: TADOQuery;
    quEdit: TADOQuery;
    quCheck: TADOQuery;
    quGetMax: TADOQuery;
    quGetMaxNewRow: TIntegerField;
    paFields: TPanel;
    paButtons: TPanel;
    btOk: TButton;
    btCancel: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lcField: TDBLookupComboBox;
    cbDegree: TComboBox;
    edExprience: TEdit;
    edDesc: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lcFieldKeyPress(Sender: TObject; var Key: Char);
    procedure edExprienceKeyPress(Sender: TObject; var Key: Char);
    procedure lcFieldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mode : Smallint;
    Row : Smallint;
    Org_Code : Integer;
    Unit_Code : Integer;
    Post_Code : Integer;
    procedure ButtonOkEnable;
  end;

var
  FallInput: TFallInput;

implementation

uses UCommon, DabDmdle;

{$R *.DFM}

procedure TFallInput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 quGetMax.Close;
 quCheck.Close;
 qulcField.Close;
 Action:=caFree;
end;

procedure TFallInput.FormShow(Sender: TObject);
begin
{ if mode=1 then btok.Enabled:=False
 else if mode=2 then
 begin
  btok.Enabled:=True;
  lcField.KeyValue:=DabData.quFallField_No.Value;
  cbDegree.ItemIndex:=DabData.quFallEdu_Degree.AsInteger-1;
  edExprience.Text:=DabData.quFallExperience.AsString;
  edDesc.Text:=DabData.quFallDesc.AsString;
 end;
 qulcField.Close;
 qulcField.Open;
 lcField.Color:=clRequiredField;
 cbDegree.Color:=clRequiredField;
 edExprience.Color:=clRequiredField;
 edDesc.Color:=clOptionalField;}
end;

procedure TFallInput.lcFieldKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
end;

procedure TFallInput.edExprienceKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
 Key:=DabData.checkkey(Key);
end;

procedure TFallInput.ButtonOkEnable;
begin
 if (lcField.KeyValue<>-1) and
    (cbDegree.ItemIndex<>-1) and
    (edExprience.Text<>'') then
    btOk.Enabled:=True
 else
    btOk.Enabled:=False;
end;

procedure TFallInput.lcFieldClick(Sender: TObject);
begin
 ButtonOkEnable;
end;

end.
