unit fmlocspc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, SetForm, RSqllookup, RSqlButton,variants,BaseFrm;

type
  TGeoLoc = class(TBaseForm)
    Panel2: TPanel;
    dblprovince:TRSqlDbLookup;
    lbprovince: TLabel;
    dblcntry:TRSqlDbLookup;
    lbcntry: TLabel;
    lbcnty: TLabel;
    dblcnty:TRSqlDbLookup;
    lbsection: TLabel;
    dblsection:TRSqlDbLookup;
    dblvillage:TRSqlDbLookup;
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
    btInsert:TRSqlButton;
    btprv:TRSqlButton;
    btcnt:TRSqlButton;
    btsec:TRSqlButton;
    btvil:TRSqlButton;
    FI: TFormInitializer;
    btca: TRSqlButton;
    btok: TRSqlButton;
    quiran: TADOQuery;
    qugilan: TADOQuery;
    qugilanprovince_code: TSmallintField;
    quiranCountry_code: TSmallintField;
    quiranCountry_name: TStringField;
    quirandegree: TStringField;
    quiranBad_Weather_Degree: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dblcntryCloseUp(Sender: TObject);
    procedure dblprovinceCloseUp(Sender: TObject);
    procedure dblcntyCloseUp(Sender: TObject);
    procedure dblsectionCloseUp(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure dblcntyExit(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure dblsectionExit(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btprvClick(Sender: TObject);
    procedure btcntClick(Sender: TObject);
    procedure btsecClick(Sender: TObject);
    procedure btvilClick(Sender: TObject);
    procedure dblcntryClick(Sender: TObject);
    procedure dblprovinceClick(Sender: TObject);
    procedure dblcntyClick(Sender: TObject);
    procedure dblsectionClick(Sender: TObject);
  private
    procedure EnableBt();
    function CountNum ( str:string ; IsProvince :Boolean):string;
    { Private declarations }

  public
   LocCode : string;
   CityName : string;
    { Public declarations }
  end;

var
  GeoLoc: TGeoLoc;

implementation

{$R *.DFM}
uses DabDmdle, fmcnty, FmInsert,define;

procedure TGeoLoc.EnableBt();
 begin
    if (dblcntry.Text <> '') and (dblprovince.Text <> '') and (dblcnty.Text <> '') then
      btok.enabled := true
    else
      btok.enabled := false;
 end;

procedure TGeoLoc.FormShow(Sender: TObject);
begin
   dblcntry.SetFocus;
   if (LocCode <> '00000000000000') then
     begin
    //   FI.FieldMode:=fmInsert;
       qucntry.close;
       qucntry.open;
       dblcntry.KeyValue := copy(LocCode, 1, 3);
       quprovince.Close;
       quprovince.parameters[0].value := dblcntry.KeyValue;
       quprovince.open;
       dblprovince.keyvalue := copy(LocCode, 4, 2);
       qucnty.Close;
       qucnty.parameters[0].value := dblcntry.KeyValue;
       qucnty.parameters[1].value := dblprovince.keyvalue;
       qucnty.Open;
       dblcnty.KeyValue := copy(LocCode, 6, 3);
       qusection.Close;
       qusection.parameters[0].value := dblcntry.keyvalue;
       qusection.parameters[1].value := dblprovince.KeyValue;
       qusection.parameters[2].value := dblcnty.KeyValue;
       qusection.open;
       if (copy(LocCode, 9, 3) <> '000') then
         dblsection.KeyValue := copy(LocCode, 9, 3);
       if (dblsection.text <> '') then
         begin
           quvillage.close;
           quvillage.parameters[0].value := dblcntry.KeyValue;
           quvillage.parameters[1].value := dblprovince.KeyValue;
           quvillage.parameters[2].value := dblcnty.KeyValue;
           quvillage.parameters[3].value := dblsection.KeyValue;
           quvillage.open;
           if (copy(LocCode, 12, 3) <> '000') then
             dblvillage.keyvalue := copy(LocCode, 12, 3);
         end;
      end
    else
     begin
       btok.enabled := false;
       qucntry.close;
       qucntry.open;
       quiran.close;
       quiran.open;
       qugilan.Close;
       qugilan.Open;
       dblcntry.KeyValue :=quiranCountry_code.Value ;
       dblprovince.KeyValue :=qugilanprovince_code.Value;
       quprovince.close;
       quprovince.parameters[0].value :=quiranCountry_code.Value ;
       quprovince.open;
        qucnty.close;
       qucnty.parameters[0].value := quiranCountry_code.Value ;
       qucnty.parameters[1].value :=qugilanprovince_code.Value;
       qucnty.open;
       dblcnty.KeyValue := null;
       dblsection.KeyValue := null;
       dblvillage.keyvalue := null;
       LocCode := '00000000000000';
   //     FI.FieldMode:=fmInsert;
     end;
FI.Execute;
end;

procedure TGeoLoc.dblcntryCloseUp(Sender: TObject);
begin
if (dblcntry.Text <> '') and (dblprovince.text = '') then
  begin
     quprovince.close;
     quprovince.parameters[0].value := dblcntry.keyvalue;
     quprovince.open;
     dblprovince.KeyValue := -1;
  qucnty.close;
  qusection.close;
  quvillage.close;
  dblprovince.KeyValue := null;
  dblcnty.KeyValue := null;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:=null;
  btok.enabled := false;
   end;
end;

procedure TGeoLoc.dblprovinceCloseUp(Sender: TObject);
begin
if (dblcntry.Text <> '') and (dblprovince.Text <> '') and (dblcnty.text = '') then
  begin
     qucnty.close;
     qucnty.parameters[0].value := dblcntry.keyvalue;
     qucnty.parameters[1].value := dblprovince.keyvalue;
     qucnty.open;
     dblcnty.KeyValue := -1;
  qusection.close;
  quvillage.close;
  dblcnty.KeyValue := null;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:= null;
  btok.enabled := false;
 end;
end;

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
  quvillage.close;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:=null;
  EnableBt();
end;

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

procedure TGeoLoc.btcaClick(Sender: TObject);
begin
  close;
end;

procedure TGeoLoc.dblcntyExit(Sender: TObject);
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
  quvillage.close;
  dblsection.KeyValue := null;
  dblvillage.KeyValue:=null;
  EnableBt();
end;


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
    CityName := dblcnty.text;
    Close;
 end;

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

procedure TGeoLoc.dblsectionExit(Sender: TObject);
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

procedure TGeoLoc.btInsertClick(Sender: TObject);
begin
  Insert := TInsert.Create(Application);
  Insert.state:=1;
  Insert.showmodal;
  qucntry.close;
  qucntry.open;
  dblcntry.KeyValue:= Insert.aun+1;
  Insert.free;
  FI.execute;


end;

procedure TGeoLoc.btprvClick(Sender: TObject);
begin
 if dblcntry.keyvalue > 0 then
 begin
   Insert := TInsert.Create(Application);
   Insert.state:=2;
   Insert.country:=dblcntry.KeyValue;
   Insert.showmodal;
   quprovince.Close;
   quprovince.parameters[0].value := dblcntry.KeyValue;
   quprovince.open;
   dblprovince.KeyValue:=Insert.aun+1;
   Insert.free;
     FI.execute;
 end;
end;

procedure TGeoLoc.btcntClick(Sender: TObject);
begin
if (dblcntry.keyvalue > 0) and  (dblprovince.KeyValue > 0)   then
 begin
   Insert := TInsert.Create(Application);
   Insert.state:=3;
   Insert.country:=dblcntry.KeyValue;
   Insert.Province:=dblprovince.KeyValue;
   Insert.showmodal;
   qucnty.Close;
   qucnty.parameters[0].value := dblcntry.KeyValue;
   qucnty.parameters[1].value := dblprovince.keyvalue;
   qucnty.Open;
   dblcnty.KeyValue:=Insert.aun+1;
   Insert.free;
     FI.execute;
 end;


end;

procedure TGeoLoc.btsecClick(Sender: TObject);
begin
if (dblcntry.keyvalue > 0) and  (dblprovince.KeyValue > 0) and
    (dblcnty.KeyValue > 0)   then
 begin
   Insert := TInsert.Create(Application);
   Insert.state:=4;
   Insert.country:=dblcntry.KeyValue;                 
   Insert.Province:=dblprovince.KeyValue;
   Insert.county:= dblcnty.KeyValue;
   Insert.showmodal;
   qusection.Close;
   qusection.parameters[0].value := dblcntry.keyvalue;
   qusection.parameters[1].value := dblprovince.KeyValue;
   qusection.parameters[2].value := dblcnty.KeyValue;
   qusection.open;
   dblsection.KeyValue:=Insert.aun+1;
   Insert.free;
     FI.execute;
 end;

end;

procedure TGeoLoc.btvilClick(Sender: TObject);
begin
if (dblcntry.keyvalue > 0) and  (dblprovince.KeyValue > 0) and
    (dblcnty.KeyValue > 0)  and (dblsection.keyvalue > 0)  then
 begin
   Insert := TInsert.Create(Application);
   Insert.state:=5;
   Insert.country:=dblcntry.KeyValue;
   Insert.Province:=dblprovince.KeyValue;
   Insert.county:= dblcnty.KeyValue;
   Insert.Section:=dblsection.keyvalue;
   Insert.showmodal;
   quvillage.close;
   quvillage.parameters[0].value := dblcntry.KeyValue;
   quvillage.parameters[1].value := dblprovince.KeyValue;
   quvillage.parameters[2].value := dblcnty.KeyValue;
   quvillage.parameters[3].value := dblsection.KeyValue;
   quvillage.open;
   dblvillage.KeyValue:=Insert.aun+1;
   Insert.free;
     FI.execute;
 end;


end;

procedure TGeoLoc.dblcntryClick(Sender: TObject);
begin
  dblcntryCloseUp(nil);
end;

procedure TGeoLoc.dblprovinceClick(Sender: TObject);
begin
 dblprovinceCloseUp(nil);
end;

procedure TGeoLoc.dblcntyClick(Sender: TObject);
begin
  dblcntyCloseUp(nil);
end;

procedure TGeoLoc.dblsectionClick(Sender: TObject);
begin
  dblsectionCloseUp(nil);
end;

end.
