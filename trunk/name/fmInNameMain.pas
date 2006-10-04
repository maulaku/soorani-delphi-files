unit fmInNameMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls,InRadForms, DB,define,
  ADODB, Buttons;

type
  TInNameMain = class(TInRadForm)
    dsuShiftType: TADODataSet;
    dsShiftType: TDataSource;
    gbOkCancel: TGroupBox;
    RadBtOk: TBitBtn;
    RadBtCancel: TBitBtn;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    Label20: TLabel;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    Label5: TLabel;
    DBEdit15: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    dtsNames: TDataSource;
    procedure RadBtOkClick(Sender: TObject);
    procedure RadBtCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InNameMain: TInNameMain;

implementation

uses DabDmdle, fmNameMain;

{$R *.dfm}

procedure TInNameMain.RadBtOkClick(Sender: TObject);
begin
  inherited;
  if Not(ErrorToSetRecord) then
  begin
    NameMain.dsoNamesv15_cnt.Value := DabData.FName  + ' ' + DabData.FName;
    NameMain.dsoNamesv15.Value := DabData.FName  + ' ' + DabData.FName;
    NameMain.dsoNamesv01.Value := '0';
    NameMain.dsoNamesv02.Value := '0';
    NameMain.dsoNamesv03.Value := '0';
    NameMain.dsoNamesv09.Value := '0';
    NameMain.dsoNamesv10.Value := '0';
    NameMain.dsoNamesv14.Value := '0';
    NameMain.dsoNamesv15.Value := '0';
    NameMain.dsoNames.Post;
    Close;
  end
  else
    ErrorToSetRecord:=False;
end;

procedure TInNameMain.RadBtCancelClick(Sender: TObject);
begin
  inherited;
  NameMain.dsoNames.Cancel;
  Close;
end;

end.
