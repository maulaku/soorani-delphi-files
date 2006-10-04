unit fmUnitInput;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RSqlEdit, RSqlButton, SetForm, DBCtrls, RSqllookup,
  Db, ADODB, UCommon,variants;

type
  TUnitInput = class(TForm)
    paFields: TPanel;
    paButtons: TPanel;
    btOk: TRSqlButton;
    btCancel: TRSqlButton;
    edUnitName: TRSqlEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    lcMaster: TRSqlDbLookup;
    FormInitializer1: TFormInitializer;
    dslcOrg: TDataSource;
    qulcMaster: TADOQuery;
    quNew: TADOQuery;
    quEdit: TADOQuery;
    quGetMax: TADOQuery;
    quGetMaxNewRow: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure edUnitNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Mode : smallint;
  end;

var
  UnitInput: TUnitInput;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TUnitInput.FormShow(Sender: TObject);
begin
 qulcMaster.Close;
 if mode=1 then
 begin
  qulcMaster.Parameters[0].Value:=-1;
  qulcMaster.Parameters[1].Value:=DabData.quOrgOrg_Code.Value;
 end
 else if mode=2 then
 begin
  qulcMaster.Parameters[0].Value:=DabData.quUnitUt_Code.Value;
  qulcMaster.Parameters[1].Value:=DabData.quUnitUt_Org_Code.Value;
 end;
 qulcMaster.Open;
 if Mode=1 then
 begin
  FormInitializer1.FieldMode:=fmInsert;
  edUnitName.Clear;
  lcMaster.KeyValue:=NULL;
 end
 else if Mode=2 then
 begin
  FormInitializer1.FieldMode:=fmEdit;
  edUnitName.Text:=DabData.quUnitUt_Name.AsString;
  lcMaster.KeyValue:=DabData.quUnitUt_Mast_Code.AsVariant;
 end;
 FormInitializer1.Execute;
end;

procedure TUnitInput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 qulcMaster.Close;
 quGetMax.Close;
 Action:=caFree;
end;

procedure TUnitInput.btOkClick(Sender: TObject);
var
 Title : String;
 Code : Smallint;
begin
 if mode=2 then Code:=DabData.quUnitUt_Code.AsInteger else Code:=0;
 Title:=edUnitName.Text;
 begin
  edUnitName.SetFocus;
  exit;
 end;
 if mode=1 then
 begin
  quGetMax.Close;
  quGetMax.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
  quGetMax.Open;
  Code:=quGetMaxNewRow.AsInteger+1;
  if Code<1 then Code:=1;
  quNew.Parameters[0].Value := DabData.quOrgOrg_Code.Value;
  quNew.Parameters[1].Value := Code;
  quNew.Parameters[2].Value := Title;
  quNew.Parameters[3].Value := lcMaster.KeyValue;
  DabData.ADOC.BeginTrans;
  try
   quNew.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
  quGetMax.Close;
 end
 else if mode=2 then
 begin
  quEdit.Parameters[0].Value := Title;
  quEdit.Parameters[1].Value := lcMaster.KeyValue;
  quEdit.Parameters[2].Value := DabData.quOrgOrg_Code.Value;
  quEdit.Parameters[3].Value := Code;
  DabData.ADOC.BeginTrans;
  try
   quEdit.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
 end;
 DabData.quUnit.Close;
 DabData.quUnit.Open;
 Close;
end;

procedure TUnitInput.edUnitNameKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
 if (Sender is TRSqlDbLookup) and (Key='*') then Key:=#0; 
end;

end.
