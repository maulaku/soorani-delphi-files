unit fmlocspc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, RadForms,Variants;

type
  TGeoLoc = class(TRadForm)
    Panel1: TPanel;
    btca: TButton;
    btok: TButton;
    Panel2: TPanel;
    dblprovince: TDBLookupComboBox;
    lbprovince: TLabel;
    dblcntry: TDBLookupComboBox;
    lbcntry: TLabel;
    lbcnty: TLabel;
    dblcnty: TDBLookupComboBox;
    lbsection: TLabel;
    dblsection: TDBLookupComboBox;
    dblvillage: TDBLookupComboBox;
    lbvillage: TLabel;
    qucntry: TADOQuery;
    quprovince: TADOQuery;
    qucnty: TADOQuery;
    qusection: TADOQuery;
    quvillage: TADOQuery;
    dscntry: TDataSource;
    dsprovince: TDataSource;
    dscnty: TDataSource;
    dssection: TDataSource;
    dsvillage: TDataSource;
    qucntrycountry_code: TSmallintField;
    qucntrycountry_name: TStringField;
    quprovinceprovince_code: TSmallintField;
    quprovinceprovince_name: TStringField;
    qucntycounty_code: TSmallintField;
    qucntycounty_name: TStringField;
    qusectionsection_code: TSmallintField;
    qusectionsection_name: TStringField;
    quvillagevillage_code: TSmallintField;
    quvillagevillage_name: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dblcntryCloseUp(Sender: TObject);
    procedure dblprovinceCloseUp(Sender: TObject);
    procedure dblcntyCloseUp(Sender: TObject);
    procedure dblsectionCloseUp(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure dblcntyExit(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure dblcntryKeyPress(Sender: TObject; var Key: Char);
    procedure dblprovinceKeyPress(Sender: TObject; var Key: Char);
    procedure dblcntyKeyPress(Sender: TObject; var Key: Char);
    procedure dblsectionKeyPress(Sender: TObject; var Key: Char);
    procedure dblvillageKeyPress(Sender: TObject; var Key: Char);
    procedure dblcntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblprovinceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcntyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure EnableBt();
    function CountNum ( str:string ; IsProvince :Boolean):string;
    { Private declarations }

  public
   LocCode : string;
   PlaceCity :String;
   Lmde : integer;
    { Public declarations }
  end;

var
  GeoLoc: TGeoLoc;

implementation

{$R *.DFM}
uses DabDmdle, UUserMsg;
//**************************************************************************
procedure TGeoLoc.EnableBt();
 begin
    if (dblcntry.Text <> '') and (dblprovince.Text <> '') and (dblcnty.Text <> '') then
      btok.enabled := true
    else
      btok.enabled := false;
 end;
//**************************************************************************
procedure TGeoLoc.FormShow(Sender: TObject);
var Cod : integer;
    l,t:integer;
begin
   inherited;
   UUserMsg.GetRect(Width,Height,l,t);
   Left    := l;
   Top     := t;

   if lmde = 2 then
   begin
      btok.enabled := True;
      qucntry.close;
      qucntry.open;
      Cod := StrToInt(Copy(LocCode,1,3));
      dblcntry.KeyValue := Cod;

      quprovince.close;
      quprovince.parameters[0].value := dblcntry.keyvalue;
      quprovince.open;
      Cod := StrToInt(Copy(LocCode,4,2));
      dblProvince.KeyValue := Cod;


      qucnty.close;
      qucnty.parameters[0].value := dblcntry.keyvalue;
      qucnty.parameters[1].value := dblProvince.keyvalue;
      qucnty.open;
      Cod := StrToInt(Copy(LocCode,6,3));
      dblcnty.KeyValue := Cod;

      dblsection.KeyValue := -1;
      dblvillage.keyvalue := null;

      qusection.close;
      qusection.parameters[0].value := dblcntry.keyvalue;
      qusection.parameters[1].value := dblProvince.keyvalue;
      qusection.parameters[2].value := dblcnty.keyvalue;
      qusection.open;
      Cod := StrToInt(Copy(LocCode,9,3));
      if Cod = 0 then  begin dblsection.KeyValue := -1;dblsection.SetFocus;end
      else
      begin
         dblsection.KeyValue := Cod;

         quvillage.close;
         quvillage.parameters[0].value := dblcntry.keyvalue;
         quvillage.parameters[1].value := dblProvince.keyvalue;
         quvillage.parameters[2].value := dblcnty.keyvalue;
         quvillage.parameters[3].value := dblsection.keyvalue;
         quvillage.open;
         Cod := StrToInt(Copy(LocCode,12,3));
         if Cod = 0 then  begin dblvillage.KeyValue := -1;dblvillage.SetFocus;end
         else
         begin
            dblvillage.keyvalue := Cod;
         end;
      end;
   end
   else
   begin
      LocCode := '00000000000000';
      btok.enabled := false;
      qucntry.close;
      qucntry.open;
      dblcntry.KeyValue := -1;
      dblprovince.KeyValue := null;
      dblcnty.KeyValue := null;
      dblsection.KeyValue := null;
      dblvillage.keyvalue := null;
   end;
end;
//**************************************************************************
procedure TGeoLoc.dblcntryCloseUp(Sender: TObject);
begin
if (dblcntry.Text <> '') then
  begin
     quprovince.close;
     quprovince.parameters[0].value := dblcntry.keyvalue;
     quprovince.open;
     dblprovince.KeyValue := -1;
  end;
  dblprovince.KeyValue := null;
  dblcnty.KeyValue := null;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:=null;
end;
//**************************************************************************
procedure TGeoLoc.dblprovinceCloseUp(Sender: TObject);
begin
if (dblcntry.Text <> '') and (dblprovince.Text <> '') then
  begin
     qucnty.close;
     qucnty.parameters[0].value := dblcntry.keyvalue;
     qucnty.parameters[1].value := dblprovince.keyvalue;
     qucnty.open;
     dblcnty.KeyValue := -1;
  end;
  dblcnty.KeyValue := null;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:= null;
end;
//**************************************************************************
procedure TGeoLoc.dblcntyCloseUp(Sender: TObject);
begin
if (dblcntry.Text <> '') and (dblprovince.Text <> '') and (dblcnty.Text <> '') then
  begin
     qusection.close;
     qusection.parameters[0].value := dblcntry.keyvalue;
     qusection.parameters[1].value := dblprovince.keyvalue;
     qusection.parameters[2].value := dblcnty.keyvalue;
     qusection.open;
     dblsection.KeyValue := -1;
  end;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:=null;
  EnableBt();
end;
//**************************************************************************
procedure TGeoLoc.dblsectionCloseUp(Sender: TObject);
begin
if (dblcntry.Text <> '') and (dblprovince.Text <> '') and (dblcnty.Text <> '') and (dblsection.Text<> '')then
  begin
     quvillage.close;
     quvillage.parameters[0].value := dblcntry.keyvalue;
     quvillage.parameters[1].value := dblprovince.keyvalue;
     quvillage.parameters[2].value := dblcnty.keyvalue;
     quvillage.parameters[3].value := dblsection.keyvalue;
     quvillage.open;
     dblvillage.KeyValue := -1;
  end;
  dblvillage.KeyValue:=null;
end;
//**************************************************************************
procedure TGeoLoc.btcaClick(Sender: TObject);
begin
  if lmde=1 then LocCode := '00000000000000';
  ModalResult:=MrNo;
end;
//**************************************************************************
procedure TGeoLoc.dblcntyExit(Sender: TObject);
begin
  EnableBt();
end;
//***************************************************************************
procedure TGeoLoc.btokClick(Sender: TObject);
 begin
  LocCode := '';
  if (dblcntry.Text <> '') then
    LocCode := LocCode + CountNum((vartostr(dblcntry.keyvalue)),False);
  if (dblprovince.Text <> '') then
    LocCode := LocCode + CountNum((vartostr(dblprovince.KeyValue)),True);
  if (dblcnty.Text <> '') then
     LocCode := LocCode + CountNum((vartostr(dblcnty.KeyValue)),False);
  if (dblsection.Text <> '') then
    LocCode := LocCode + CountNum((vartostr(dblsection.KeyValue)),False)
  else
    LocCode := LocCode + '000';
  if (dblvillage.Text <> '') then
    LocCode := LocCode + CountNum((vartostr(dblvillage.KeyValue)),False)
  else
      LocCode := LocCode + '000';
   PlaceCity := dblcnty.Text;
   ModalResult:=MrOK;
 end;
//****************************************************************************
function TGeoLoc.CountNum(str: string ; IsProvince:boolean):string;
var st:string;
begin
   st:=trim(str);
   if IsProvince then
   case length(st) of
      1:    CountNum := '0'+st;
      2:    CountNum := st;
   end
   else
   case length(st) of
      1:    CountNum := '00'+st;
      2:    CountNum := '0'+st;
      3:    CountNum := st;
   end;
end;
//***************************************************************************
procedure TGeoLoc.dblcntryKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
      dblcntryCloseUp(Sender);
      dblprovince.SetFocus;
   end
end;
//************************************************************************
procedure TGeoLoc.dblprovinceKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
      dblprovinceCloseUp(Sender);
      dblcnty.SetFocus;
   end
end;
//************************************************************************
procedure TGeoLoc.dblcntyKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
      dblcntyCloseUp(Sender);
      dblsection.SetFocus;
   end

end;
//************************************************************************
procedure TGeoLoc.dblsectionKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
      dblsectionCloseUp(Sender);
      dblvillage.SetFocus;
   end
end;
//************************************************************************
procedure TGeoLoc.dblvillageKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then btokClick(Sender);
end;
//***********************************************************************
procedure TGeoLoc.dblcntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 dblcntryCloseUp(Sender);
end;

procedure TGeoLoc.dblprovinceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dblprovinceCloseUp(Sender);
end;

procedure TGeoLoc.dblcntyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dblcntyCloseUp(Sender);
end;

end.
