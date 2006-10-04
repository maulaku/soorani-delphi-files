unit fmOrgInput;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RSqlEdit, RSqlButton, SetForm, DBCtrls, RSqllookup,
  Db, ADODB, UCommon,variants;

type
  TOrgInput = class(TForm)
    paFields: TPanel;
    paButtons: TPanel;
    btOk: TRSqlButton;
    btCancel: TRSqlButton;
    edOrgName: TRSqlEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    lcMaster: TRSqlDbLookup;
    edAddress: TRSqlEdit;
    btAddress: TButton;
    Label3: TLabel;
    Bevel3: TBevel;
    FormInitializer1: TFormInitializer;
    dslcOrg: TDataSource;
    qulcMaster: TADOQuery;
    quCity: TADOQuery;
    quCityCounty_Name: TStringField;
    quNew: TADOQuery;
    quEdit: TADOQuery;
    quGetMax: TADOQuery;
    quGetMaxNewRow: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure btAddressClick(Sender: TObject);
    procedure edOrgNameKeyPress(Sender: TObject; var Key: Char);
    procedure btAddressKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAddressMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Mode : smallint;
    Loc : String;
  end;

var
  OrgInput: TOrgInput;

implementation

uses DabDmdle, fmlocspc, define;

{$R *.DFM}

procedure TOrgInput.FormShow(Sender: TObject);
begin
 qulcMaster.Close;
 if mode=1 then qulcMaster.Parameters[0].Value:=-1
 else if mode=2 then qulcMaster.Parameters[0].Value:=DabData.quOrgOrg_Code.Value;
 qulcMaster.Open;
 if Mode=1 then
 begin
  FormInitializer1.FieldMode:=fmInsert;
  edOrgName.Clear;
  lcMaster.KeyValue:=NULL;
  edAddress.Clear;
  Loc:='00000000000000';
 end
 else if Mode=2 then
 begin
  FormInitializer1.FieldMode:=fmEdit;
  edOrgName.Text:=DabData.quOrgOrg_Name.AsString;
  lcMaster.KeyValue:=DabData.quOrgOrg_Mast_Code.AsVariant;
  quCity.Close;
  quCity.Parameters[0].Value:=Copy(DabData.quOrgOrg_Addr.AsString,1,3);
  quCity.Parameters[1].Value:=Copy(DabData.quOrgOrg_Addr.AsString,4,2);
  quCity.Parameters[2].Value:=Copy(DabData.quOrgOrg_Addr.AsString,6,3);
  quCity.Open;
  edAddress.Text:=quCityCounty_Name.Text;
  quCity.Close;
  Loc:=DabData.quOrgOrg_Addr.AsString;
 end;
 FormInitializer1.Execute;
end;

procedure TOrgInput.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 qulcMaster.Close;
 quCity.Close;
 quGetMax.Close;
 Action:=caFree;
end;

procedure TOrgInput.btOkClick(Sender: TObject);
var
 Title : String;
 Code : Integer;
begin
 if mode=2 then Code:=DabData.quOrgOrg_Code.AsInteger else Code:=0;
 Title:=edOrgName.Text;
// if not PassPreCondition(DabData.quOrg,Title,'Org_Name','Org_Code',Code,Mode) then
 begin
  edOrgName.SetFocus;
  exit;
 end;
 if mode=1 then
 begin
  quGetMax.Close;
  quGetMax.Open;
  Code:=quGetMaxNewRow.AsInteger+1;
  if Code<1 then Code:=1;
  quNew.Parameters[0].Value := Code;
  quNew.Parameters[1].Value := Title;
  quNew.Parameters[2].Value := Loc;
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
  quEdit.Parameters[1].Value := Loc;
  quEdit.Parameters[2].Value := lcMaster.KeyValue;
  quEdit.Parameters[3].Value := Code;
  DabData.ADOC.BeginTrans;
  try
   quEdit.ExecSQL;
   DabData.ADOC.CommitTrans;
  except
   DabData.ADOC.RollbackTrans;
  end;
 end;
 DabData.quOrg.Close;
 DabData.quOrg.Open;
 Close;
end;

procedure TOrgInput.btAddressClick(Sender: TObject);
begin
 GeoLoc := TGeoLoc.Create(Application);
// Dabdata.setcolors(GeoLoc);
 if (edAddress.text <> '') then
  GeoLoc.LocCode := Loc
 else
  GeoLoc.LocCode := '00000000000000';
 if GeoLoc.ShowModal=mrOk then
 begin
  Loc := GeoLoc.LocCode;
  if (Loc <> '00000000000000') then edAddress.text := GeoLoc.CityName;
 end; 
 GeoLoc.Free;
end;

procedure TOrgInput.edOrgNameKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then FindNextControl((Sender as TWinControl),True,True,False).SetFocus;
 if (Sender is TRSqlDbLookup) and (Key='*') then Key:=#0; 
end;

procedure TOrgInput.btAddressKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_DELETE then
 begin
  edAddress.Clear;
  Loc:='00000000000000';
 end;
end;

procedure TOrgInput.btAddressMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button=mbRight then
 begin
  edAddress.Clear;
  Loc:='00000000000000';
 end;
end;

end.
