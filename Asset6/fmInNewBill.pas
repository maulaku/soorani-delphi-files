unit fmInNewBill;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs
  ,RadForms, RSqlButton, StdCtrls, DBCtrls, RSqllookup, RSqlEdit, Db,
  ADODB, Mask, ExtCtrls;

type
  TInNewBill = class(TRadForm)
    pnTop: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dsCat: TDataSource;
    spCat1: TADOStoredProc;
    spCat1ID: TIntegerField;
    spCat1desc: TStringField;
    GBCreate1: TGroupBox;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    edItemReqNo: TRSqlEdit;
    btnItemReq: TButton;
    dblOrg: TRSqlDbLookup;
    dblUnit: TRSqlDbLookup;
    lkpReciever: TRSqlDbLookup;
    dblLocUser: TRSqlDbLookup;
    GBCreate2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edReason: TRSqlEdit;
    edCreator: TRSqlEdit;
    edCreateDate: TRSqlEdit;
    edMove: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label12: TLabel;
    DblUserSend: TRSqlDbLookup;
    dblOrgSend: TRSqlDbLookup;
    dblUnitSend: TRSqlDbLookup;
    dblLocSend: TRSqlDbLookup;
    GBConfirm: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    rbConfirm: TRadioButton;
    rbRefuse: TRadioButton;
    edConfirmer: TRSqlEdit;
    edConfirmDate: TRSqlEdit;
    pnBotton: TPanel;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    catType: TRSqlDbLookup;
    procedure catTypeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    InsertMode:Boolean;
    { Public declarations }
  end;

var
  InNewBill: TInNewBill;

implementation

uses fmNewBills, DabDmdle;

{$R *.DFM}

procedure TInNewBill.catTypeClick(Sender: TObject);
begin
  Height:=pnTop.Height+GBCreate2.Height+pnBotton.Height;
  case catType.KeyValue of
   0:
    Begin
     edMove.Visible:=False;
     GBCreate1.Visible:=True;
    end;
   1:
    Begin
     edMove.Visible:=True;
     GBCreate1.Visible:=True;
     Height:=Height+edMove.Height;
    end;
   2:
    Begin
     edMove.Visible:=True;
     GBCreate1.Visible:=False;
     Height:=Height+edMove.Height-GBCreate1.Height;
    end;
  end;
  if Not(InsertMode) then
  begin
    Height:=Height+GBConfirm.Height;
    GBConfirm.Visible:=True;
    GBCreate1.Visible:=False;
    GBCreate2.Visible:=False
  end
  else
  begin
    Height:=Height+GBCreate2.Height+GBCreate1.Height;
    GBConfirm.Visible:=False;
    GBCreate2.Visible:=True;
  end;
end;
procedure TInNewBill.FormShow(Sender: TObject);
begin
  spCat1.Close;
  spCat1.Open;
end;

end.
