unit fmempIn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Db, ADODB, Buttons, ExtDlgs, Fard,
  SetForm, RSqlButton, RSqllookup, RSqlMaskEdit, RSqlMemo, RSQLComboBox,
  RSqlEdit, MSNPopUp,variants,BaseFrm;

type
  TEmpIn = class(TBaseForm)
    GBinsert1: TGroupBox;
    lbno: TLabel;
    dblorg:TRSqlDbLookup;
    dblunit:TRSqlDbLookup;
    gbinsert2: TGroupBox;
    lbname: TLabel;
    lbcert: TLabel;
    lbloc: TLabel;
    lbfather: TLabel;
    lbfamily: TLabel;
    lbncode: TLabel;
    lbbirthdate: TLabel;
    lbbirthloc: TLabel;
    gbinsert3: TGroupBox;
    rbsex: TRadioGroup;
    lbchild: TLabel;
    lbreg: TLabel;
    gbinsert4: TGroupBox;
    lbsolder: TLabel;
    lbimmunity: TLabel;
    lbhealth: TLabel;
    gbinsert5: TGroupBox;
    lbdegree: TLabel;
    lblastdate: TLabel;
    lbpost: TLabel;
    lbeduloc: TLabel;
    lbplace: TLabel;
    lblev: TLabel;
    lbtitle: TLabel;
    gbinsert6: TGroupBox;
    lbcomment: TLabel;
    lbsit: TLabel;
    lbrule: TLabel;
    lbtype: TLabel;
    lbwrite: TLabel;
    lborg: TLabel;
    edunit: TLabel;
    edno:TRSqlEdit;
    edfamily:TRSqlEdit;
    edfather:TRSqlEdit;
    edcode:TRSqlEdit;
    edname:TRSqlEdit;
    edcert:TRSqlEdit;
    cbreg:TRSqlComboBox;
    rbmarried: TRadioGroup;
    cbsold:TRSqlComboBox;
    edimmun:TRSqlEdit;
    edhealth:TRSqlEdit;
    melastdate:TRSqlMaskEdit;
    edlastedu:TRSqlEdit;
    edlev:TRSqlEdit;
    edlastloc:TRSqlEdit;
    dblpost:TRSqlDbLookup;
    edwrite:TRSqlEdit;
    cbrule:TRSqlComboBox;
    cbtype:TRSqlComboBox;
    cbsit:TRSqlComboBox;
    edchild:TRSqlEdit;
    CHBisar: TCheckBox;
    mebirth:TRSqlMaskEdit;
    dscountry: TDataSource;
    dsorg: TDataSource;
    dsunit: TDataSource;
    dspost: TDataSource;
    quorg: TADOQuery;
    quunit: TADOQuery;
    qucountry: TADOQuery;
    qupost: TADOQuery;
    SpeedButton3: TSpeedButton;
    OpenPictureDialog: TOpenPictureDialog;
    quorgorg_code: TIntegerField;
    quorgorg_name: TStringField;
    quunitut_code: TSmallintField;
    quunitut_name: TStringField;
    qupostpt_code: TIntegerField;
    lbnation: TLabel;
    dblnation:TRSqlDbLookup;
    Panel1: TPanel;
    quvalkey: TADOQuery;
    qucity: TADOQuery;
    qucitycounty_code: TSmallintField;
    qucitycounty_name: TStringField;
    quupdate: TADOQuery;
    quvalkeyemp_no: TStringField;
    quvalkeyname: TStringField;
    quvalkeyfamily: TStringField;
    quvalkeyfather_name: TStringField;
    quvalkeybirth_certificate_no: TStringField;
    quvalkeybirth_date: TStringField;
    quvalkeysex: TSmallintField;
    quvalkeynationality_code: TSmallintField;
    quvalkeybirth_loc_code: TStringField;
    quvalkeycer_loc_code: TStringField;
    quvalkeynational_card_no: TStringField;
    quvalkeyis_married: TSmallintField;
    quvalkeynum_of_child: TSmallintField;
    quvalkeyreligion: TSmallintField;
    quvalkeyhealth_state: TStringField;
    quvalkeysoldiery: TSmallintField;
    quvalkeyedu_degree: TSmallintField;
    quvalkeyimmunity_reason: TStringField;
    quvalkeylast_school_name: TStringField;
    quvalkeylast_school_loc_code: TStringField;
    quvalkeylast_diploma_date: TStringField;
    quvalkeywriting: TStringField;
    quvalkeyemp_type: TSmallintField;
    quvalkeyorg_code: TIntegerField;
    quvalkeyunit_code: TSmallintField;
    quvalkeyisargary_state: TSmallintField;
    quvalkeyemployed_emp_law: TSmallintField;
    quvalkeyemp_state: TSmallintField;
    quvalkeycomment: TStringField;
    quvalkeyemp_photo: TBlobField;
    quvalkeydiploma_name: TStringField;
    quvalkeypost_no: TIntegerField;
    quvalkeyjob_lev: TSmallintField;
    edcomment:TRSqlMemo;
    quinsert: TADOQuery;
    Image: TImage;
    dbltype:TRSqlDbLookup;
    dstype: TDataSource;
    qutype: TADOQuery;
    qutypefield_no: TSmallintField;
    qutypefield_name: TStringField;
    spedu:TRSqlButton;
    edbirth:TRSqlEdit;
    edcer:TRSqlEdit;
    quuppost: TADOQuery;
    dbdegree:TRSqlDbLookup;
    qudegree: TADOQuery;
    dsdegree: TDataSource;
    qudegreeCode: TIntegerField;
    qudegreeDescr: TStringField;
    btbirth:TRSqlButton;
    btcer:TRSqlButton;
FormInitializer1 : TFormInitializer;
    btca: TRSqlButton;
    btok: TRSqlButton;
    quemp: TADOQuery;
    MSNPopUp1: TMSNPopUp;
    quempnum: TIntegerField;
    quselemp: TADOQuery;
    quselempemp_code: TStringField;
    qucomp: TADOQuery;
    quiran: TADOQuery;
    quiranCountry_code: TSmallintField;
    quiranCountry_name: TStringField;
    quirandegree: TStringField;
    quiranBad_Weather_Degree: TStringField;
    qupoststr: TStringField;
    quus: TADOQuery;
    quusEmp_code: TStringField;
    procedure paimgClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure speduClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dblorgCloseUp(Sender: TObject);
    procedure dblunitCloseUp(Sender: TObject);
    procedure edlevKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Click(Sender: TObject);
    procedure ImageClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure dblorgExit(Sender: TObject);
    procedure cbsoldChange(Sender: TObject);
    procedure rbsexClick(Sender: TObject);
    procedure rbmarriedClick(Sender: TObject);
    procedure dblunitExit(Sender: TObject);
    procedure edlasteduChange(Sender: TObject);
    procedure edchildExit(Sender: TObject);
    procedure btbirthClick(Sender: TObject);
    procedure btcerClick(Sender: TObject);
    procedure ednoExit(Sender: TObject);
    procedure dblorgClick(Sender: TObject);
    procedure dblunitClick(Sender: TObject);
    procedure cbsoldClick(Sender: TObject);
  private
    Attached : boolean;
    Flag : boolean;
    { Private declarations }
  public
    BirthLoc, CertLoc, LastLoc : string;
    mde : byte;
    editAttached : boolean;
    { Public declarations }
  end;

var
  EmpIn: TEmpIn;
  FDate : TFar_Date;

implementation

{$R *.DFM}
uses DabDmdle, Define, fmlocspc;



procedure TEmpIn.paimgClick(Sender: TObject);
begin
  OpenPictureDialog.Execute;
end;

procedure TEmpIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;


procedure TEmpIn.speduClick(Sender: TObject);
begin
  GeoLoc := TGeoLoc.Create(Application);
  if (edLastLoc.text <> '') then
    GeoLoc.LocCode := LastLoc
   else
    GeoLoc.LocCode := '00000000000000';

  GeoLoc.showmodal;
  LastLoc := GeoLoc.LocCode;
  if (LastLoc <> '00000000000000') then
     edlastloc.text := GeoLoc.CityName
   else
         GeoLoc.LocCode := '00000000000000';
  GeoLoc.free;
end;

procedure TEmpIn.FormShow(Sender: TObject);
begin
 top:=65;
 left:=20;
 attached := false;
 qudegree.close;
 qudegree.open;
 lastloc := '';
 if (mde = 1) then
  begin
    qutype.close;
    qutype.open;
    rbsex.ItemIndex := 0;
    edcode.text:= inttostr(0);
    rbmarried.ItemIndex := 0;
    quorg.close;
    quorg.open;
 {   DabData.qulocal.close;
    DabData.qulocal.open;
    if DabData.qulocalorg_code.AsString='' then
      dblorg.KeyValue :=null
    else
      dblorg.KeyValue :=DabData.qulocalorg_code.AsString ;
     quunit.close;
     quunit.parameters[0].value := DabData.qulocalorg_code.Asinteger ;
     quunit.open;
    qupost.close;
    dblpost.KeyValue := null;
   } qucountry.close;
    qucountry.Open;
    edno.Text := '';
    edname.Text := '';
    edfamily.Text := '';
    edfather.Text := '';
    edbirth.Text := '';
    mebirth.Text := '  /  /  ';
    edcert.Text := '';
    edcer.Text := '';
    cbreg.ItemIndex:=0;
    quiran.close;
    quiran.open ;
    dblnation.KeyValue:=quirancountry_code.value;
    cbsold.Text := '';
    edhealth.Text := '';
    edimmun.Text := '';
    edlastedu.Text := '';
    edlastloc.Text := '';
    melastdate.text := '  /  /  ';
    edlev.Text := '';
    edwrite.Clear;
    cbrule.Text := '';
    cbtype.Text := '';
    cbsit.Text := '';
    edcomment.clear;
    edno.setfocus;
    FormInitializer1.FieldMode:=fmInsert;
  end;
if (mde = 2) then
 begin
    if (DabData.quemplast_school_loc_code.asstring <> '') then
      lastloc := DabData.quemplast_school_loc_code.asstring;

    if (DabData.quempbirth_loc_code.asstring <> '') then
      birthloc := DabData.quempbirth_loc_code.asstring;

    if (DabData.quempcer_loc_code.asstring <> '') then
      certloc := DabData.quempcer_loc_code.asstring;
    if (rbmarried.ItemIndex = 1) then
      edchild.Enabled := true;
    edname.setfocus;
    edbirth.enabled:=false;
    edcer.enabled:=false;
    dblpost.FieldType:=ftDisplay;
    dblorg.FieldType:=ftDisplay;
    dblunit.FieldType:=ftDisplay;
   // edno.FieldType:=ftDisplay;
    edlev.FieldType:=ftDisplay;
     FormInitializer1.FieldMode:=fmEdit;
  end;
FormInitializer1.Execute;
  edbirth.enabled:=false;
    edcer.enabled:=false;
end;
procedure TEmpIn.dblorgCloseUp(Sender: TObject);
begin
  if (dblorg.text <> '') then
   begin
     quunit.close;
     quunit.parameters[0].value := dblorg.KeyValue;
     quunit.open;
     dblunit.KeyValue := -1;
     dblpost.KeyValue := null;
   end;
end;

procedure TEmpIn.dblunitCloseUp(Sender: TObject);
begin
if mde=1 then
begin
  if (dblorg.text <> '') and (dblunit.Text <> '') then
   begin
     quPost.close;
     quPost.parameters[0].value := dblorg.KeyValue;
     quPost.parameters[1].value := dblunit.KeyValue;
     quPost.open;
     dblPost.KeyValue := -1;
   end;
end;   
end;





procedure TEmpIn.edlevKeyPress(Sender: TObject; var Key: Char);
begin
    key:=DabData.CheckKey(key);
     if (edlev.text > inttostr(20)) then
begin
    edlev.Clear;
    edlev.setfocus;
end;
end;

procedure TEmpIn.Panel1Click(Sender: TObject);
begin
  OpenPictureDialog.Execute;
end;

procedure TEmpIn.ImageClick(Sender: TObject);
begin
 if (OpenPictureDialog.Execute) then
   begin
     Attached := true;
     Panel1.Caption := '';
     Image.Picture.LoadFromFile(OpenPictureDialog.FileName);
     Panel1.Caption := '';
   end
 else
  begin
   Attached := false;
   Panel1.caption := '„Õ· œ—Ã ⁄ﬂ”';
  end; 
end;






procedure TEmpIn.btcaClick(Sender: TObject);
begin
Close;
end;


procedure TEmpIn.btokClick(Sender: TObject);
var aun,i:integer;
begin   //main
    if mde=1 then
    begin
    qucomp.close;
    qucomp.Parameters[0].value:=Trim(edno.text);
    qucomp.Open;
    if qucomp.RecordCount = 0 then
    begin
      quemp.close;
      quemp.open;
      quemp.last;
      if (quemp.RecordCount <> 0)  then
        i:=quempnum.asinteger
      else
        i:=0;
        aun:=i+1;
        Flag := true;
        quinsert.parameters[0].value :=aun;
        quinsert.parameters[1].value := edname.Text;
        quinsert.parameters[2].value := edfamily.Text;
        quinsert.parameters[3].value := edfather.Text;
        quinsert.parameters[4].value := edcert.text;
        quinsert.parameters[5].value := mebirth.Text;
        quinsert.parameters[6].value := rbSex.ItemIndex + 1;
        quinsert.parameters[7].value := dblnation.keyvalue;
        quinsert.parameters[8].value := BirthLoc;
        quinsert.parameters[9].value := CertLoc;
        quinsert.parameters[10].value := edcode.text;
        quinsert.parameters[11].value := rbmarried.ItemIndex + 1;
        quinsert.parameters[12].value := edchild.text;
        quinsert.parameters[13].value := cbreg.ItemIndex + 1;
        if (edhealth.text <> '') then
          quinsert.parameters[14].value := edhealth.Text
        else
          quinsert.parameters[14].value := '';
        quinsert.parameters[15].value := cbsold.ItemIndex + 1;
        quinsert.parameters[16].value := dbdegree.KeyValue;
        if (edimmun.text <> '') then
          quinsert.parameters[17].value := edimmun.text
        else
          quinsert.parameters[17].value := '';
        if (edlastedu.text <> '') then
          quinsert.parameters[18].value := edlastedu.text
        else
          quinsert.parameters[18].value := '';
        if (edlastloc.text <> '') then
           quinsert.parameters[19].value := lastloc
        else
          quinsert.parameters[19].value := '';
        if (melastdate.text <> '  /  /  ') then
          quinsert.parameters[20].value :=  melastdate.Text
        else
           quinsert.parameters[20].value := '';
        if (edwrite.text <> '') then
          quinsert.parameters[21].value := edwrite.text
        else
          quinsert.Parameters[21].value := '';
        quinsert.parameters[22].value := cbtype.ItemIndex + 1;
        quinsert.parameters[23].value := dblorg.KeyValue;
        quinsert.parameters[24].value := dblunit.KeyValue;
        if (CHBisar.Checked) then
         quinsert.parameters[25].value := 1
        else
          quinsert.parameters[25].value := 2;
        quinsert.parameters[26].value := cbrule.ItemIndex + 1;
        quinsert.parameters[27].value := cbsit.ItemIndex + 1;
        if (edcomment.text <> '') then
          quinsert.parameters[28].value := edcomment.text
        else
          quinsert.parameters[28].value := '';
        if (Attached) then
          quinsert.parameters[29].Assign(Image.Picture)
        else
          quinsert.parameters[29].Value := null;
        if (dbltype.Text <> '') then
          quinsert.parameters[30].value := dbltype.KeyValue
        else
          quinsert.parameters[30].value := null;
        if (dblpost.text <> '') then
           quinsert.parameters[31].value := dblpost.KeyValue
        else
           quinsert.parameters[31].value := null;
        if (edlev.text <> '') then
           quinsert.parameters[32].value := edlev.text
        else
          quinsert.parameters[32].value := 0;
        quinsert.parameters[33].value :=0;
        quinsert.parameters[34].value :=edno.text;
        quuppost.Parameters[0].Value:=dblorg.KeyValue;
        quuppost.Parameters[1].Value:=dblunit.KeyValue;
        quuppost.Parameters[2].Value:= dblpost.KeyValue;
        DabData.ADOC.BeginTrans;
        Try
        begin
           quinsert.ExecSQL;
           DabData.ADOC.CommitTrans;
        end;
        except
          showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
          DabData.ADOC.RollbackTrans;
          Flag := false;
          try
           quuppost.ExecSQL;
          except
          end;
        end;
        end
     else
       showmessage2('‘„«—Â „” Œœ„Ì —«  ﬂ—«—Ì Ê«—œ ﬂ—œÂ «Ìœ');
     end;
 if (mde = 2) then
   begin
      if (Attached = false) and (editAttached = true) then
        Attached := true;
      DabData.ADOC.BeginTrans;
      quupdate.Close;
      quupdate.parameters[0].value := edname.Text;
      quupdate.parameters[1].value := edfamily.Text;
      quupdate.parameters[2].value := edfather.Text;
      quupdate.parameters[3].value := edcert.text;
      quupdate.parameters[4].value := mebirth.Text;
      quupdate.parameters[5].value := rbSex.ItemIndex + 1;
      quupdate.parameters[6].value := dblnation.keyvalue;
      quupdate.parameters[7].value := BirthLoc;
      quupdate.parameters[8].value := CertLoc;
      quupdate.parameters[9].value := edcode.text;
      quupdate.parameters[10].value := rbmarried.ItemIndex + 1;
      quupdate.parameters[11].value := edchild.text;
      quupdate.parameters[12].value := cbreg.ItemIndex + 1;
      if (edhealth.text <> '') then
        quupdate.parameters[13].value := edhealth.Text
      else
        quupdate.parameters[13].value := '';
      quupdate.parameters[14].value := cbsold.ItemIndex + 1;
      quupdate.parameters[15].value := dbdegree.KeyValue;
      if (edimmun.text <> '') then
        quupdate.parameters[16].value := edimmun.text
      else
        quupdate.parameters[16].value := '';
      if (edlastedu.text <> '') then
        quupdate.parameters[17].value := edlastedu.text
      else
        quupdate.parameters[17].value := '';
      if (edlastloc.text <> '') then
         quupdate.parameters[18].value := lastloc
       else
        quupdate.parameters[18].value := '';

      if (melastdate.text <> '  /  /  ') then
        quupdate.parameters[19].value :=  melastdate.Text
      else
         quupdate.parameters[19].value := '';
      if (edwrite.text <> '') then
        quupdate.parameters[20].value := edwrite.text
      else
         quupdate.Parameters[20].value := '';
      quupdate.parameters[21].value := cbtype.ItemIndex + 1;
      if (CHBisar.Checked) then
        quupdate.parameters[22].value := 1
      else
        quupdate.parameters[22].value := 2;
      quupdate.parameters[23].value := cbrule.ItemIndex + 1;
      if (edcomment.text <> '') then
        quupdate.parameters[24].value := edcomment.text
      else
        quupdate.parameters[24].value := '';
      if (Attached) then
        quupdate.parameters[25].Assign(Image.Picture)
      else
        quupdate.parameters[25].Value := null;
      quupdate.parameters[26].value := dbltype.keyvalue;
      if (edlev.text <> '') then
        quupdate.parameters[27].value := edlev.text
      else
        quupdate.parameters[27].value := 0;
      quupdate.parameters[28].value :=edno.text;
      quupdate.parameters[29].value :=dabdata.quempemp_no.Value;
      Try
        begin
          quupdate.ExecSQL;
          DabData.ADOC.CommitTrans;
        end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
      end;          //exept
      end;//update
    DabData.quemp.close;
    DabData.quemp.open;
    Close;
      end;    //main

procedure TEmpIn.dblorgExit(Sender: TObject);
begin
  if (dblorg.text <> '') then
   begin
     quunit.close;
     quunit.parameters[0].value := dblorg.KeyValue;
     quunit.open;
     dblunit.KeyValue := -1;
     dblpost.KeyValue := null;
   end;


end;



procedure TEmpIn.cbsoldChange(Sender: TObject);
begin
  if (cbsold.ItemIndex In [1, 2, 3]) then
   begin
    edimmun.FieldType:=ftnonrequired;
    edimmun.text:='';
   end
  else
    begin
       edimmun.FieldType:=ftdisplay ;
       edimmun.text:='';
    end;
  forminitializer1.Execute;
end;


procedure TEmpIn.rbsexClick(Sender: TObject);
begin
if  (rbsex.ItemIndex = 1) then
  begin
     cbsold.ItemIndex:=4;
     cbsold.FieldType:=ftDisplay;
  end
  else
  begin
     cbsold.ItemIndex:=-1;
     cbsold.FieldType:=ftNonRequired;
  end;
   FormInitializer1.Execute;

end;

procedure TEmpIn.rbmarriedClick(Sender: TObject);
begin
  if (rbmarried.ItemIndex = 0) then
    begin
     edchild.text := '0';
     edchild.FieldType:=ftDisplay;
    end
   else
     begin
      edchild.FieldType:=ftrequired;
     end;
     FormInitializer1.Execute;

end;

procedure TEmpIn.dblunitExit(Sender: TObject);
begin
  if (dblorg.text <> '') and (dblunit.Text <> '') then
   begin
     quPost.close;
     quPost.parameters[0].value := dblorg.KeyValue;
     quPost.parameters[1].value := dblunit.KeyValue;
     quPost.open;
     dblPost.KeyValue := -1;
   end;

end;

procedure TEmpIn.edlasteduChange(Sender: TObject);
begin
  if (edlastedu.text <> '') then
    begin
       melastdate.enabled := true;
       spedu.Enabled := true;
    end
  else
    begin
      melastdate.enabled := false;
      melastdate.text := '';
      spedu.Enabled := false;
      edlastloc.text := '';
    end;

end;

procedure TEmpIn.edchildExit(Sender: TObject);
begin
  if (edchild.text = '') then
      edchild.text := '0';
 end;



procedure TEmpIn.btbirthClick(Sender: TObject);
begin
  GeoLoc := TGeoLoc.Create(Application);
  if (edbirth.text <> '') then
    GeoLoc.LocCode := BirthLoc
   else
    GeoLoc.LocCode := '00000000000000';

  GeoLoc.showmodal;
  BirthLoc := GeoLoc.LocCode;
  if (BirthLoc <> '00000000000000') then
     edbirth.text := GeoLoc.CityName
   else
         GeoLoc.LocCode := '00000000000000';
  GeoLoc.free;

FormInitializer1.execute;
  edbirth.enabled:=false;
  edcer.enabled:=false;
end;

procedure TEmpIn.btcerClick(Sender: TObject);
begin
  GeoLoc := TGeoLoc.Create(Application);
  if (edcer.text <> '') then
    GeoLoc.LocCode := CertLoc
   else
    GeoLoc.LocCode := '00000000000000';

  GeoLoc.showmodal;
  CertLoc := GeoLoc.LocCode;
  if (CertLoc <> '00000000000000') then
     edcer.text := GeoLoc.CityName
   else
         GeoLoc.LocCode := '00000000000000';
  GeoLoc.free;

  FormInitializer1.execute;
  edbirth.enabled:=false;
  edcer.enabled:=false;  
end;

procedure TEmpIn.ednoExit(Sender: TObject);
begin
 quselemp.close;
 quselemp.parameters[0].value:=edno.text;
 quselemp.open;
 if quselemp.recordcount <> 0  then
 begin
   edno.text:='';
   edno.SetFocus;
   showmessage2('‘„«—Â „” Œœ„Ì  ﬂ—«—Ì Ê«—œ ﬂ—œÂ «Ìœ');
 end
end;

procedure TEmpIn.dblorgClick(Sender: TObject);
begin
  if (dblorg.text <> '') then
   begin
     quunit.close;
     quunit.parameters[0].value := dblorg.KeyValue;
     quunit.open;
     dblunit.KeyValue := -1;
     dblpost.KeyValue := null;
   end;
end;

procedure TEmpIn.dblunitClick(Sender: TObject);
begin
if mde=1 then
begin
  if (dblorg.text <> '') and (dblunit.Text <> '') then
   begin
     quPost.close;
     quPost.parameters[0].value := dblorg.KeyValue;
     quPost.parameters[1].value := dblunit.KeyValue;
     quPost.open;
     dblPost.KeyValue := -1;
   end;
end;   
end;

procedure TEmpIn.cbsoldClick(Sender: TObject);
begin
 if (cbsold.ItemIndex In [1, 2, 3]) then
   begin
    edimmun.FieldType:=ftnonrequired;
    edimmun.text:='';
   end
  else
    begin
       edimmun.FieldType:=ftdisplay ;
       edimmun.text:='';
    end;
  forminitializer1.Execute;
end;




end.
