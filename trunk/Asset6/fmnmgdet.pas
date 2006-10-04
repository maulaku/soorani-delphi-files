unit fmnmgdet;

interface

uses
  Windows,Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  RSqlEdit, SetForm, RSqlButton, RSqlMaskEdit, SmoothShow, RSqllookup,
  RadForms, RSQLComboBox;

type
  Tnmgdet = class(TRadForm)
    quingood: TADOQuery;
    quupgood: TADOQuery;
    pagood: TPanel;
    lbgarea: TLabel;
    lbbarea: TLabel;
    lbbound: TLabel;
    lblength: TLabel;
    lnwidth: TLabel;
    lbfac: TLabel;
    lbapp: TLabel;
    lbuprice: TLabel;
    lbuarea: TLabel;
    lbulength: TLabel;
    edbuy:TRSqlEdit;
    edexp:TRSqlEdit;
    edadr:TRSqlEdit;
    meregdate:TRSqlMaskEdit;
    edgarea:TRSqlEdit;
    edbarea:TRSqlEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    dsitem: TDataSource;
    quitem: TADOQuery;
    quclass: TADOQuery;
    Label10: TLabel;
    quclassClass_name: TStringField;
    dblItem:TRSqlDbLookup;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dblEmp:TRSqlDbLookup;
    Bevel1: TBevel;
    Label15: TLabel;
    edFileNo: TRSqlEdit;
    Label8: TLabel;
    RadioGroup1: TRadioGroup;
    rbtype1: TRadioButton;
    rbtype2: TRadioButton;
    edRegLoc: TRSqlEdit;
    Label16: TLabel;
    edRegPlaque: TRSqlEdit;
    Label17: TLabel;
    edPrintNo: TRSqlEdit;
    Label18: TLabel;
    edOffice: TRSqlEdit;
    Label19: TLabel;
    Label20: TLabel;
    edDocDesc: TRSqlEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    GroupBox1: TGroupBox;
    rbReciver1: TRadioButton;
    rbReciver2: TRadioButton;
    edExtReciver: TRSqlEdit;
    edUserOrg: TRSqlEdit;
    Label14: TLabel;
    edOwnerOrg: TRSqlEdit;
    Label21: TLabel;
    Label22: TLabel;
    edDesc: TRSqlEdit;
    Label23: TLabel;
    pagood2: TPanel;
    btCa: TRSqlButton;
    btOk: TRSqlButton;
    istrue: TRSqlEdit;
    MeDocDate: TRSqlMaskEdit;
    edExitDate: TRSqlMaskEdit;
    quupgood1: TADOQuery;
    edregno: TRSqlEdit;
    edPlace: TRSqlEdit;
    edbound: TRSqlEdit;
    edlength: TRSqlEdit;
    edwidth: TRSqlEdit;
    edfac: TRSqlEdit;
    edapp: TRSqlEdit;
    edplaque: TRSqlEdit;
    edclass: TRSqlEdit;
    edItemCode: TRSqlEdit;
    edDocNo: TRSqlEdit;
    btPlace: TRSqlButton;
    cbuarea: TRSqlComboBox;
    cbulength: TRSqlComboBox;
    cbuprice: TRSqlComboBox;
    cbowner: TRSqlComboBox;
    quitemitem_name: TStringField;
    quitemclass_code: TSmallintField;
    quitemitem_desc: TStringField;
    quitemitem_unit: TSmallintField;
    quitemItem_Inventory: TIntegerField;
    quitemOrder_Point: TSmallintField;
    quitemInventory_Limit: TSmallintField;
    quitemclass_code_1: TSmallintField;
    quitemclass_desc: TStringField;
    quitemclass_name: TStringField;
    quitemClass_Type: TSmallintField;
    quitemppc_code: TStringField;
    quitempc_code: TStringField;
    quitemps_code: TStringField;
    quOrgan: TADOQuery;
    quOrganOrg_Code: TIntegerField;
    quOrganOrg_Name: TStringField;
    quOrganOrg_Addr: TStringField;
    quOrganOrg_Mast_Code: TIntegerField;
    quitemItem_Code: TStringField;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure dbgdetailEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dblitemCloseUp(Sender: TObject);
    procedure btPlaceClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure meDocDateChange(Sender: TObject);
    procedure meDocDateExit(Sender: TObject);
    procedure rbReciver1Click(Sender: TObject);
    procedure rbReciver2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
     function  isdot(s : string):boolean;
    { Private declarations }


  public
     mde : integer;
     PlaceCode    :string[14];
     IsRegistered : Boolean ;
     { Public declarations }
  end;

var
  nmgdet: Tnmgdet;
  mde : byte;
  PlaceChanged : Boolean ;
implementation
uses DabDmdle, fmElam, fmlocspc, fmnonmgood, UCommon;
{$R *.DFM}


procedure Tnmgdet.btokClick(Sender: TObject);
var
  BMark : TBookmark;
begin
case mde of
 1: begin
 if   (edplaque.text <> '') then
 begin
{   quselect.close;
   quselect.parameters[0].value:= edplaque.text;
   quselect.open ;
   comp1:=quselectplaque_no.asstring;
   comp2:=edplaque.text;  }
   if (True)then
   begin

       quingood.Parameters[0].value := trim(edplaque.text);
       if edregno.text<>''                 then 
       quingood.Parameters[1].value := edregno.text;
       if meregdate.text<> '  /  /  ' then
       quingood.Parameters[2].value := meregdate.text;
       quingood.Parameters[3].value := PlaceCode;
       if (edgarea.text <> '')then
          quingood.Parameters[4].value := edgarea.text
       else
          quingood.Parameters[4].value :=NULL;
       if (edbarea.text <> '') then
           quingood.Parameters[5].value := edbarea.text
       else
           quingood.Parameters[5].value := NULL;
       quingood.Parameters[6].value := edbound.text;
       quingood.Parameters[7].value := edadr.text;
       if (edlength.text<>'') then
           quingood.Parameters[8].value := edlength.text
       else
           quingood.Parameters[8].value := NULL;
       if (edwidth.text <> '') then
           quingood.Parameters[9].value := edwidth.text
       else
           quingood.Parameters[9].value := NULL;
       quingood.Parameters[10].value := edfac.text;
       quingood.Parameters[11].value := edapp.text;
       if CheckNull(edexp.text) then
           quingood.Parameters[12].value := StrToFloat(edexp.text)
       else
           quingood.Parameters[12].value := NULL;
       if CheckNull(edbuy.text) then
           quingood.Parameters[13].value := StrToFloat(edbuy.text)
       else
           quingood.Parameters[13].value := NULL;
       quingood.Parameters[14].value := cbuprice.ItemIndex;
       quingood.Parameters[15].value := cbuarea.ItemIndex;
       quingood.Parameters[16].value := cbulength.ItemIndex;
       quingood.Parameters[17].value := cbulength.ItemIndex;
       quingood.Parameters[18].value := cbowner.itemindex;
       quingood.Parameters[19].value := dblitem.KeyValue;
       quingood.Parameters[21].value := edDocNo.Text;
       quingood.Parameters[22].value := meDocDate.text;
       if (IsRegistered )
       then  begin
               quingood.Parameters[20].value := 1;
              // quingood.Parameters[23].value := trim(dblEmp.KeyValue);
             end
       else  begin
               quingood.Parameters[20].value := 0;
               //quingood.Parameters[23].value := NULL;
             end;
       if trim(edFileNo.Text)<>'' then
         quingood.Parameters[24].value :=trim(edFileNo.Text);
       if rbtype1.Checked then
          quingood.Parameters[25].value :='1'
       else
          quingood.Parameters[25].value :='2';
       quingood.Parameters[26].value :=trim(edRegLoc.Text);
       if(edOffice.Text<>'')then
          quingood.Parameters[27].Value :=trim(edOffice.Text);
       if  trim(edPrintNo.Text)<>''  then
           quingood.Parameters[28].value :=trim(edPrintNo.Text);
       if  trim(edRegPlaque.Text)<>'' then
          quingood.Parameters[29].value :=trim(edRegPlaque.Text);
       quingood.Parameters[30].value :=trim(edDocDesc.Text);
       quingood.Parameters[31].value :=trim(edOwnerOrg.Text);
       quingood.Parameters[32].value :=trim(edUserOrg.Text);
       if rbReciver2.Checked then
         begin
          quingood.Parameters[33].value :=trim(edExtReciver.Text);
          quingood.Parameters[23].value := NULL;
         end
       else
         begin
          quingood.Parameters[23].value := trim(VarToStr(dblEmp.KeyValue));
          quingood.Parameters[33].value :='Null';
         end;
       quingood.Parameters[34].value :=trim(edExitDate.Text);
       quingood.Parameters[35].value :=trim(edDesc.Text);
       dabdmdle.DabData.ADOC.BeginTrans;
        try
          begin
           quIngood.ExecSql;
           dabdmdle.DabData.ADOC.CommitTrans;
         end;
        except
            DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
            dabdmdle.DabData.ADOC.RollbackTrans;
        end;
   end
   else
     DabData.ShowPopupMessage('—ﬂÊ—œ  ﬂ—«—Ì Ê«—œ ﬂ—œÂ «Ìœ');
        mde:=0;
        nonmgood.qunonmgood.close;
        nonmgood.qunonmgood.Open;
        nonmgood.qunonmgood.Locate('Plaque_no',nonmgood .qunonmgoodplaque_no.AsString ,[loCaseInsensitive]);
       end
  end;//1

  2: begin
if   (edplaque.text <> '') and (nonmgood.qunonmgood.RecordCount <> 0) then
 begin
       BMark := nonmgood.qunonmgood.GetBookmark;
//       dabdmdle.DabData.ADOC.BeginTrans;
       quupgood.Parameters[35].value := trim(edplaque.text);
       quupgood.Parameters[0].value := edregno.text;
       quupgood.Parameters[1].value := meregdate.text;
       quupgood.Parameters[2].value := PlaceCode;
       if (edgarea.text <> '') then
           quupgood.Parameters[3].value := edgarea.text
       else
           quupgood.Parameters[3].value := NULL;
       if(edbarea.text <> '') then
           quupgood.Parameters[4].value := edbarea.text
       else
           quupgood.Parameters[4].value :=  NULL;
       if (edbound.text <> '') then
           quupgood.Parameters[5].value := edbound.text;
       if (edadr.text <> '') then
           quupgood.Parameters[6].value := edadr.text;
       if (edlength.text <> '') then
         quupgood.Parameters[7].value := edlength.text
       else
         quupgood.Parameters[7].value :=  NULL;
       if (edwidth.text <> '') then
          quupgood.Parameters[8].value := edwidth.text
       else
         quupgood.Parameters[8].value :=  NULL;
       if (edfac.text <> '')then
          quupgood.Parameters[9].value := edfac.text;
       if (edapp.text<>'') then
           quupgood.Parameters[10].value := edapp.text;
       if(edexp.text <> '') then
         quupgood.Parameters[11].value := StrToFloat(edexp.text)
       else
        quupgood.Parameters[11].value :=  NULL;
      if (edbuy.text <> '') then
        quupgood.Parameters[12].value :=StrToFloat(edbuy.text)
      else
       quupgood.Parameters[12].value := NULL;
       quupgood.Parameters[13].value := cbuprice.ItemIndex ;
       quupgood.Parameters[14].value := cbuarea.ItemIndex ;
       quupgood.Parameters[15].value := cbulength.ItemIndex ;
       quupgood.Parameters[16].value := cbulength.ItemIndex ;
       quupgood.Parameters[17].value := cbowner.itemindex;
       quupgood.Parameters[18].value := dblitem.keyvalue;
       if rbReciver2.Checked then
         begin
          quupgood.Parameters[32].value :=trim(edExtReciver.Text);
          quupgood.Parameters[19].value := NULL;
         end
       else
         begin
          quupgood.Parameters[19].value := trim(dblEmp.KeyValue);
          quupgood.Parameters[32].value :='Null';
         end;
       quupgood.Parameters[20].value := trim(edDocNo.Text);
       quupgood.Parameters[21].value := meDocDate.text;
       if (IsRegistered )
       then  begin
               quupgood.Parameters[22].value := 1;
              // quupgood.Parameters[23].value := trim(dblEmp.KeyValue);
             end
       else  begin
               quupgood.Parameters[22].value := 0;
               //quupgood.Parameters[23].value := NULL;
             end;
       quupgood.Parameters[23].value :=trim(edFileNo.Text);
       if rbtype1.Checked then
          quupgood.Parameters[24].value :='1'
       else
          quupgood.Parameters[24].value :='2';
       quupgood.Parameters[25].value :=trim(edRegLoc.Text);
       if(edOffice.Text<>'') then
          quupgood.Parameters[26].value :=trim(edOffice.Text);
       quupgood.Parameters[27].value :=trim(edPrintNo.Text);
       quupgood.Parameters[28].value :=trim(edRegPlaque.Text);
       if trim(edDocDesc.Text)<>'' then
          quupgood.Parameters[29].value :=trim(edDocDesc.Text);
       quupgood.Parameters[30].value :=trim(edOwnerOrg.Text);
       quupgood.Parameters[31].value :=trim(edUserOrg.Text);

       quupgood.Parameters[33].value :=trim(edExitDate.Text);

       quupgood.Parameters[34].value :=trim(edDesc.Text);
       //dabdmdle.DabData.ADOC.BeginTrans;
        try
          begin
           quUpgood.ExecSql;
        //   dabdmdle.DabData.ADOC.CommitTrans;
         end;
        except
            DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
          //  dabdmdle.DabData.ADOC.RollbackTrans;
        end;
        mde:=0;
        nonmgood.qunonmgood.close;
        nonmgood.qunonmgood.Open;
        nonmgood.qunonmgood.GotoBookmark(Bmark);
        nonmgood.qunonmgood.FreeBookmark(Bmark);
    end;
 end;

end;
   nmgdet.close;
end; //procedure


function Tnmgdet.isdot(s : string):boolean;
var
  i : integer;
  flag : boolean;
begin
flag := false;
  for i := 1 to length(s) do
    if s[i] = '.' then
      flag := true;
    isdot := flag;
end;



procedure Tnmgdet.btcaClick(Sender: TObject);
begin
 mde := 0;
 nmgdet.close;

end;


procedure Tnmgdet.dbgdetailEnter(Sender: TObject);
begin
 mde := 0;
 pagood2.Visible := false;
 pagood.Visible := false;
{ edregno.text := qugoodreg_no.asstring;
 edbuy.text := qugoodbuy_price.asstring;
 edexp.text :=  qugoodexpert_price.asstring;
 meregdate.text := qugoodreg_date.asstring;
 edadr.text := qugoodaddress.asstring;
 edgarea.text := qugoodground_area.asstring;
 edbarea.text := qugoodbuilding_area.asstring;
 edwidth.text := qugoodwidth.asstring;
 edfac.text := qugoodfacility.asstring;
 edapp.text := qugoodappendix.asstring;
 cbuprice.itemindex := qugoodprice_unit.asinteger - 1;
 cbuarea.itemindex := qugoodarea_unit.asinteger - 1;
 cbulength.itemindex := qugoodlength_unit.asinteger - 1;
 cbuwidth.itemindex := qugoodwidth_unit.asinteger - 1; }
end;


procedure Tnmgdet.FormShow(Sender: TObject);
begin
   if mde = 2 then
     begin
      PlaceCode:=nonmgood.qunonmgoodloc_code.AsString;
      Exit;
     end
   else
   quitem.close;
   quitem.open;
   rbReciver1.Checked:=true;
   rbReciver2.Checked:=false;
   rbtype1.Checked:=true;
   btok.Enabled:=true;
   FormInitializer1.FieldMode:=fminsert;
   FormInitializer1.Execute;
   edPlace.Enabled:=False;
end;

procedure Tnmgdet.dblitemCloseUp(Sender: TObject);
begin
  if (dblItem.KeyValue <> NULL) and (dblItem.KeyValue <> -1) then
  begin
     edItemCode.Text := quitemitem_code.AsString;
     edclass.Text    := quitemclass_name.AsString;
  end
  else
  begin
     edItemCode.Clear;
     edclass.Clear;
  end;   
end;

procedure Tnmgdet.btPlaceClick(Sender: TObject);
begin
   Geoloc:=TGeoloc.create(Application);
   GeoLoc.Lmde := 2;
   if mde=2 then GeoLoc.LocCode:= nonmgood.qunonmgoodloc_code.AsString
   else
   begin
    quOrgan.Close;
    quOrgan.Parameters[0].Value:=OrganizCode;
    quOrgan.Open;
    GeoLoc.LocCode:= quOrganOrg_Addr.Value;
   end;
   setformColor(GeoLoc);
   Geoloc.showmodal;
   if Geoloc.ModalResult=MrOK then
   begin
      PlaceCode:= Geoloc.loccode;
      PlaceChanged := True;
      edPlace.Text := Geoloc.PlaceCity ;
   end
   else  if Geoloc.ModalResult=MrNo  then PlaceChanged:=False;
   GeoLoc.Free;
end;

procedure Tnmgdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  nmgdet := nil;
  Action := caFree;
end;

procedure Tnmgdet.meDocDateChange(Sender: TObject);
begin
  meDocDate.text := fdate.rdate(meDocDate.text);
end;

procedure Tnmgdet.meDocDateExit(Sender: TObject);
begin
if (not (DabData.checkdate(meDocDate.text))) and (meDocDate.text <> '  /  /  ') then
  begin
    DabData.ShowPopupMessage('.‰«—ÌŒ  Ê—ÊœÌ, €Ì— „⁄ »— «” ');
    meDocDate.SetFocus;
    meDocDate.text := '';
  end;
end;

procedure Tnmgdet.rbReciver1Click(Sender: TObject);
begin
 if rbReciver1.Checked then
  begin
   dblEmp.Enabled:=true;
   edExtReciver.Enabled:=false;
  end
 else
  begin
   dblEmp.Enabled:=false;
   edExtReciver.Enabled:=true;
  end;
end;

procedure Tnmgdet.rbReciver2Click(Sender: TObject);
begin
 if rbReciver2.Checked then
  begin
   dblEmp.Enabled:=false;
   edExtReciver.Enabled:=true;
  end
 else
  begin
   dblEmp.Enabled:=true;
   edExtReciver.Enabled:=false;
  end;
end;


procedure Tnmgdet.FormActivate(Sender: TObject);
begin
   btok.Enabled:=true;
   FormInitializer1.Execute;
   edPlace.Enabled:=False;
end;

end.
