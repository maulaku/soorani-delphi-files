unit fmcnty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, StdCtrls, Db, DBCtrls, ExtCtrls,define, ADODB,
  fcButton, fcImgBtn, fcClearPanel, fcButtonGroup, SmoothShow,variants;


type
  TCountry = class(TForm)
    quIncntry: TADOQuery;
    quInprovince: TADOQuery;
    quIncnty: TADOQuery;
    dscntry: TDataSource;
    dsprovince: TDataSource;
    dscnty: TDataSource;
    quUpcntry: TADOQuery;
    quUpprovince: TADOQuery;
    quUpcnty: TADOQuery;
    quDelcntry: TADOQuery;
    quDelprovince: TADOQuery;
    quDelcnty: TADOQuery;
    qutemp: TADOQuery;
    dstemp: TDataSource;
    qutempprovince_code: TSmallintField;
    qutempprovince_name: TStringField;
    pgcntry: TPageControl;
    tsvillage: TTabSheet;
    tssection: TTabSheet;
    tscnty: TTabSheet;
    tsprovince: TTabSheet;
    tscntry: TTabSheet;
    pacntry1: TPanel;
    lbname1: TLabel;
    lbCode1: TLabel;
    lbdegree1: TLabel;
    lbbadw1: TLabel;
    edcode1: TEdit;
    edname1: TEdit;
    edbadw1: TEdit;
    eddegree1: TEdit;
    dbgcntry: TDBGrid;
    paprovince1: TPanel;
    lbcntry2: TLabel;
    dblcntry2: TDBLookupComboBox;
    paprovince2: TPanel;
    lbname2: TLabel;
    lbCode2: TLabel;
    edName2: TEdit;
    edcode2: TEdit;
    dbgprovince: TDBGrid;
    pacnty1: TPanel;
    lbcntry3: TLabel;
    lbprovince3: TLabel;
    dblcntry3: TDBLookupComboBox;
    dblprovince3: TDBLookupComboBox;
    pacnty2: TPanel;
    lbcode3: TLabel;
    lbname3: TLabel;
    edcode3: TEdit;
    edName3: TEdit;
    dbgcnty: TDBGrid;
    pasection2: TPanel;
    lbcode4: TLabel;
    lbname4: TLabel;
    edcode4: TEdit;
    edname4: TEdit;
    dbgsection: TDBGrid;
    pasection1: TPanel;
    lbcntry4: TLabel;
    lbprovince4: TLabel;
    dblcntry4: TDBLookupComboBox;
    dblprovince4: TDBLookupComboBox;
    lbcnty4: TLabel;
    dblcnty4: TDBLookupComboBox;
    quinsection: TADOQuery;
    quupsection: TADOQuery;
    qudelsection: TADOQuery;
    dssection: TDataSource;
    pavillage1: TPanel;
    lbcntry5: TLabel;
    lbprovince5: TLabel;
    lbcounty5: TLabel;
    dblcntry5: TDBLookupComboBox;
    dblprovince5: TDBLookupComboBox;
    dblcnty5: TDBLookupComboBox;
    pavillage2: TPanel;
    lbcode5: TLabel;
    lbname5: TLabel;
    edcode5: TEdit;
    edname5: TEdit;
    dbgvillage: TDBGrid;
    dblsection5: TDBLookupComboBox;
    lbsection5: TLabel;
    quinvillage: TADOQuery;
    quupvillage: TADOQuery;
    qudelvillage: TADOQuery;
    dsvillage: TDataSource;
    qutemp1: TADOQuery;
    dstemp1: TDataSource;
    dstemp2: TDataSource;
    qutemp2: TADOQuery;
    qutemp2section_code: TSmallintField;
    qutemp2section_name: TStringField;
    quvaldel: TADOQuery;
    quvaldelcntry: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edgrade: TEdit;
    edjpay: TEdit;
    edgrp: TEdit;
    edgrade1: TEdit;
    edjpay1: TEdit;
    edgrp1: TEdit;
    edgrade2: TEdit;
    edjpay2: TEdit;
    edgrp2: TEdit;
    cbpay: TComboBox;
    cbpay1: TComboBox;
    cbpay2: TComboBox;
    btCa1: TButton;
    btOk1: TButton;
    btCa2: TButton;
    btOk2: TButton;
    btOk3: TButton;
    btCa3: TButton;
    btok4: TButton;
    btca4: TButton;
    btok5: TButton;
    btca5: TButton;
    fcButtonGroup1: TfcButtonGroup;
    ft1: TfcImageBtn;
    ft2: TfcImageBtn;
    ft3: TfcImageBtn;
    ft4: TfcImageBtn;
    ft5: TfcImageBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btOk3Click(Sender: TObject);
    procedure btOk2Click(Sender: TObject);
    procedure btOk1Click(Sender: TObject);
    procedure btCa1Click(Sender: TObject);
    procedure btCa2Click(Sender: TObject);
    procedure btCa3Click(Sender: TObject);
    procedure edcode3Change(Sender: TObject);
    procedure edNameChange(Sender: TObject);
    procedure edName2Change(Sender: TObject);
    procedure edcode3KeyPress(Sender: TObject; var Key: Char);
    procedure dblPtJob3Click(Sender: TObject);
    procedure tssectionHide(Sender: TObject);
    procedure tsvillageHide(Sender: TObject);
    procedure tscntyHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tscntryShow(Sender: TObject);
    procedure dbgcntryKeyPress(Sender: TObject; var Key: Char);
    procedure dbgprovinceKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcntyKeyPress(Sender: TObject; var Key: Char);
    procedure FormHide(Sender: TObject);
    procedure dbgcntryColEnter(Sender: TObject);
    procedure edcode1Change(Sender: TObject);
    procedure edname1Change(Sender: TObject);
    procedure edcode1KeyPress(Sender: TObject; var Key: Char);
    procedure pgcntryChange(Sender: TObject);
    procedure dblcntry2CloseUp(Sender: TObject);
    procedure edcode2Change(Sender: TObject);
    procedure edcode2KeyPress(Sender: TObject; var Key: Char);
    procedure dblprovince3CloseUp(Sender: TObject);
    procedure dblcntry3CloseUp(Sender: TObject);
    procedure edName3Change(Sender: TObject);
    procedure eddegree1KeyPress(Sender: TObject; var Key: Char);
    procedure edbadw1KeyPress(Sender: TObject; var Key: Char);
    procedure dblcntry4CloseUp(Sender: TObject);
    procedure dblprovince4CloseUp(Sender: TObject);
    procedure dblcnty4CloseUp(Sender: TObject);
    procedure edname4Change(Sender: TObject);
    procedure edcode4Change(Sender: TObject);
    procedure edgrade4KeyPress(Sender: TObject; var Key: Char);
    procedure edgrp4KeyPress(Sender: TObject; var Key: Char);
    procedure btok4Click(Sender: TObject);
    procedure btca4Click(Sender: TObject);
    procedure dblcntry5CloseUp(Sender: TObject);
    procedure dblprovince5CloseUp(Sender: TObject);
    procedure dblcnty5CloseUp(Sender: TObject);
    procedure dblsection5CloseUp(Sender: TObject);
    procedure dbgprovinceColEnter(Sender: TObject);
    procedure dbgcntyColEnter(Sender: TObject);
    procedure dbgsectionColEnter(Sender: TObject);
    procedure dbgvillageColEnter(Sender: TObject);
    procedure edname5Change(Sender: TObject);
    procedure edcode5Change(Sender: TObject);
    procedure btok5Click(Sender: TObject);
    procedure btca5Click(Sender: TObject);
    procedure dbgcntryEnter(Sender: TObject);
    procedure dbgprovinceEnter(Sender: TObject);
    procedure dbgcntyEnter(Sender: TObject);
    procedure dbgsectionEnter(Sender: TObject);
    procedure dbgvillageEnter(Sender: TObject);
    procedure tscntryHide(Sender: TObject);
    procedure tsprovinceHide(Sender: TObject);
    procedure edgradeKeyPress(Sender: TObject; var Key: Char);
    procedure edgrpKeyPress(Sender: TObject; var Key: Char);
    procedure edjpayKeyPress(Sender: TObject; var Key: Char);
    procedure edgrade1KeyPress(Sender: TObject; var Key: Char);
    procedure edgrp1KeyPress(Sender: TObject; var Key: Char);
    procedure edjpay1KeyPress(Sender: TObject; var Key: Char);
    procedure edgrade2KeyPress(Sender: TObject; var Key: Char);
    procedure edgrp2KeyPress(Sender: TObject; var Key: Char);
    procedure edjpay2KeyPress(Sender: TObject; var Key: Char);
    procedure ft5Click(Sender: TObject);
    procedure ft4Click(Sender: TObject);
    procedure ft3Click(Sender: TObject);
    procedure ft2Click(Sender: TObject);
    procedure ft1Click(Sender: TObject);
    procedure fcButtonGroup1Change(ButtonGroup: TfcCustomButtonGroup;
      OldSelected, Selected: TfcButtonGroupItem);
    procedure tscntyShow(Sender: TObject);


  private
    procedure checkctg();
    procedure checkjob();
    procedure delcountry();
    procedure delprovince();
    procedure delcounty();
    procedure delsection();
    procedure delvillage();

    { Private declarations }
  public
     flag   : boolean;
     mde   :integer;

    { Public declarations }
  protected
      procedure DoNew(var mes :TMessage);message F_NEW;
      procedure DoEdit(var mes :TMessage);message F_EDIT;
      procedure DoScrol(var mes :TMessage);message F_SCROLL;
      procedure DoDelete(var mes :TMessage);message F_Del;

  end;

var
  Country: TCountry;

implementation

uses DabDmdle, fmElam, fmelam2;

{$R *.DFM}

procedure TCountry.DoNew(var mes :TMessage);
 var
aun : integer;
begin
  if mde=0 then
  begin
    if pgcntry.ActivePage=tscntry then
    begin
      DabData.qucountry.last;
      aun := DabData.quCountryCountry_code.asinteger;
      pacntry1.Visible:=true;
      btok1.Enabled:=false;
      edcode1.Enabled:=false;
      edName1.Text:='';
      aun := aun + 1;
      edcode1.text:= inttostr(aun);
      edname1.SetFocus;
      eddegree1.text := '';
      edbadw1.text := '';
      mde:=1
    end;
    if pgcntry.ActivePage=tsprovince then
    begin
      if (dblcntry2.Text <> '') then
      begin
        DabData.quprovince1.Last;
        aun := DabData.quprovince1province_code.asinteger;
        aun := aun + 1;
        edcode2.text := inttostr(aun);
        paprovince2.Visible:=true;
        btok2.Enabled:=false;
        edcode2.Enabled:=false;
        edname2.enabled := true;
        edname2.Text:='';
        edname2.SetFocus;
        mde:=1;
      end;
    end;
    if pgcntry.ActivePage=tscnty then
    begin
      if (dblcntry3.Text <> '') and (dblprovince3.Text <> '') then
      begin
        pacnty2.Visible:=true;
        btok3.Enabled:=false;
        DabData.qucounty1.Last;
        aun := DabData.qucounty1county_code.asinteger;
        aun := aun + 1;
        edcode3.Enabled:=false;
        edname3.Enabled:=true;
       // edname3.Color:=clrequiredfield;
        edcode3.text:=inttostr(aun);
        edname3.text:='';
        cbpay.itemindex:=-1;
        edgrade.Text:='';
        edgrp.Text:='';
        edjpay.Text:='';
        edname3.SetFocus;
        mde:=1;
      end;
    end;

    if pgcntry.ActivePage=tssection then
    begin
      if (dblcntry4.Text <> '') and (dblprovince4.Text <> '') and (dblcnty4.text <> '') then
      begin
        pasection2.Visible:=true;
        btok4.Enabled:=false;
        DabData.qusection1.Last;
        aun := DabData.qusection1section_code.asinteger;
        aun := aun + 1;
        edcode4.Enabled:=false;
        edname4.Enabled:=true;
       // edname4.Color:=clrequiredfield;
        edcode4.text:=inttostr(aun);
        edname4.text:='';
        cbpay1.itemindex:=-1;
        edgrade1.Text:='';
        edgrp1.Text:='';
        edjpay1.Text:='';
        edname4.SetFocus;
        mde:=1;
      end;
    end;

    if pgcntry.ActivePage=tsvillage then
    begin
      if (dblcntry5.Text <> '') and (dblprovince5.Text <> '') and (dblcnty5.text <> '') and (dblsection5.text <> '')then
      begin
        pavillage2.Visible:=true;
        btok5.Enabled:=false;
        DabData.quvillage1.Last;
        aun := DabData.quvillage1village_code.asinteger;
        aun := aun + 1;
        edcode5.Enabled:=false;
        edcode5.text:=inttostr(aun);
        edname5.Enabled:=true;
      //  edname5.Color:=clrequiredfield;
        edname5.text:='';
        cbpay2.itemindex:=-1;
        edgrade2.Text:='';
        edgrp2.Text:='';
        edjpay2.Text:='';
        edname5.SetFocus;
        mde:=1;
      end;
    end;
  end;
end;



procedure TCountry.DoEdit(var mes :TMessage);
begin
  if mde=0 then
  begin
    if (pgcntry.ActivePage=tscntry) and (edcode1.text <> '') and (edname1.text <> '') then
      if (DabData.qucountry.RecordCount <> 0) then
    begin
      pacntry1.Visible:=true;
      edcode1.Enabled:=false;
     // edName1.Color:=clrequiredfield;
      edName1.SetFocus;
   //   eddegree1.Color:=cloptionalfield;
     // edbadw1.color :=cloptionalfield;
      mde:=2;
    end;
    if (pgcntry.ActivePage=tsprovince) then
    begin
      if (dblcntry2.KeyValue <> -1) and (edcode2.text <> '') and (edname2.text <> '') then
        if (DabData.quprovince1.RecordCount <> 0) then
      begin
        paprovince2.Visible:=true;
        edcode2.Enabled:=false;
     //   edname2.Color:=clrequiredfield;
        edname2.SetFocus;
        mde:=2;
      end;
    end;
    if (pgcntry.ActivePage=tscnty) then
    begin
      if (dblcntry3.Text<> '') and(dblprovince3.Text<> '') and (edcode3.text <> '') and (edname3.text <> '') then
        if (DabData.qucounty1.RecordCount <> 0) then
        begin
         pacnty2.Visible:=true;
         edcode3.Enabled:=false;
        // edname3.Color := clrequiredfield;
         edname3.Enabled := true;
         edname3.SetFocus;
         mde:=2;
       end;
    end;

    if (pgcntry.ActivePage=tssection)  then
    begin
      if (dblcntry4.Text <> '') and(dblprovince4.Text<> '') and (edcode4.text <> '') and (dblcnty4.text <> '') and (edname4.text <> '') then
       if (DabData.qusection1.RecordCount <> 0) then
        begin
         pasection2.Visible:=true;
         edcode4.Enabled:=false;
       //  edname4.Color := clrequiredfield;
         edname4.Enabled := true;
         edname4.SetFocus;
         mde:=2;
      end;
    end;

    if (pgcntry.ActivePage=tsvillage)  then
    begin
      if (dblcntry5.Text <> '') and (dblprovince5.Text<> '') and (edcode5.text <> '') and (dblcnty5.text <> '') and (dblsection5.text <> '') and (edname5.text <> '') then
       if (DabData.quvillage1.RecordCount <> 0) then
       begin
         pavillage2.Visible:=true;
         edcode5.Enabled:=false;
    //     edname5.Color := clrequiredfield;
         edname5.Enabled := true;
         edname5.SetFocus;
         mde:=2;
      end;
    end;
  end;
end;


procedure TCountry.DoDelete(var mes :TMessage);
begin
   if (pgcntry.ActivePage=tscntry)  then
   begin
     DabData.qucountry.open;
     if (DabData.qucountry.recordcount > 0) then
     begin
       Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
       Elam.showmodal;
       if Elam.bbOk.modalResult=mrOk then
       begin
         mde:=3;
         delcountry();
       end;
     end;
   end;
   if (pgcntry.ActivePage=tsprovince) then
   begin
     if (dblcntry2.keyvalue <> -1)  then
     if (DabData.quprovince1.RecordCount > 0)  then
     begin
       if (Mde=0) then
       if (DabData.quprovince1.RecordCount > 0) then
       begin
         Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
         Elam.showmodal;
         if Elam.bbOk.modalResult=mrOk then
         begin
           mde:=3;
           delprovince();
         end;
       end;
     end;
   end;
   if pgcntry.ActivePage=tscnty then
   begin
     if (dblcntry3.Text<> '') and(dblprovince3.Text<> '') then
     begin
       if (Mde=0) then
       if (DabData.qucounty1.RecordCount > 0 ) then
       begin
         Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
         Elam.showmodal;
         if Elam.bbOk.modalResult=mrOk then
         begin
           mde:=3;
           delcounty();
         end;
       end;
     end;
  end;

 if pgcntry.ActivePage=tssection then
   begin
     if (dblcntry4.Text<> '') and(dblprovince4.Text<> '') and (dblcnty4.Text<> '') then
     begin
       if (Mde=0) then
       if (DabData.qusection1.RecordCount > 0 ) then
       begin
         Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
         Elam.showmodal;
         if Elam.bbOk.modalResult=mrOk then
         begin
           mde:=3;
           delsection();
         end;
       end;
     end;
  end;



 if pgcntry.ActivePage=tsvillage then
   begin
     if (dblcntry5.Text<> '') and(dblprovince5.Text<> '') and (dblcnty5.Text<> '')and (dblsection5.Text<> '') then
     begin
       if (Mde=0) then
       if (DabData.quvillage1.RecordCount > 0) then
       begin
         Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
         Elam.showmodal;
         if Elam.bbOk.modalResult=mrOk then
         begin
           mde:=3;
           delvillage();
         end;
       end;
     end;

  end;
 end;

procedure TCountry.DoScrol(var mes :TMessage);
begin
    if pgcntry.ActivePage=tscntry then
    begin
      edcode1.Text:=DabData.quCountrycountry_code.asstring;
      edName1.Text:=DabData.quCountryCountry_name.asstring;
      eddegree1.text:=trim(DabData.quCountrydegree.Value );
      edbadw1.Text:=TRIM(DabData.quCountryBad_Weather_Degree.Value) ;
    end;
    if pgcntry.ActivePage=tsprovince then
      begin
        edcode2.Text:=DabData.quprovince1province_code.asstring;
        edname2.Text:=DabData.quprovince1province_name.asstring;
      end;
    if pgcntry.ActivePage=tscnty then
    begin
        edcode3.text := DabData.qucounty1county_code.asstring;
        edName3.text := DabData.qucounty1county_name.asstring;
        cbpay.ItemIndex:=DabData.qucounty1M_pay.AsInteger;
        edgrade.text:=DabData.qucounty1grade.AsString;
        edgrp.Text:=DabData.qucounty1grp.AsString;
        edjpay.Text:=DabData.qucounty1j_pay.AsString
    end;
   if pgcntry.ActivePage=tssection then
    begin
       edcode4.text := DabData.qusection1section_code.asstring;
       edname4.text := DabData.qusection1section_name.asstring;
       cbpay1.ItemIndex:=DabData.qusection1M_pay.AsInteger;
       edgrade1.text:=DabData.qusection1grade.AsString;
       edgrp1.Text:=DabData.qusection1grp.AsString;
       edjpay1.Text:=DabData.qusection1j_pay.AsString
    end;

    if pgcntry.ActivePage=tsvillage then
      begin
        edcode5.text := DabData.quvillage1village_code.asstring;
        edname5.text := DabData.quvillage1village_name.asstring;
        cbpay2.ItemIndex:=DabData.quvillage1M_pay.AsInteger;
        edgrade2.text:=DabData.quvillage1grade.AsString;
        edgrp2.Text:=DabData.quvillage1grp.AsString;
        edjpay2.Text:=DabData.quvillage1j_pay.AsString
      end;
end;



procedure TCountry.FormClose(Sender: TObject; var Action: TCloseAction);
begin //...
  FormDeactivate(nil);
  Action:=caFree;
end;



procedure TCountry.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin //...
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;



procedure TCountry.FormActivate(Sender: TObject);
var mes:TMessage;
begin //...
   mes.Msg:=FORM_STATE;
   mes.Lparam:=7;
   Application.MainForm.Dispatch(mes);
end;



procedure TCountry.btOk3Click(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
  case mde of
   1:begin
    if (dblcntry3.text <>  '') and (dblprovince3.text<> '')then
    begin
      DabData.ADOC.BeginTrans;
      quincnty.Parameters[0].Value:=dblcntry3.KeyValue;
      quincnty.Parameters[1].Value:=dblprovince3.keyvalue;
      quincnty.Parameters[2].Value:=edcode3.Text;
      quincnty.Parameters[3].Value:=edname3.Text;
      if (cbpay.Text <> '') then
         quincnty.Parameters[4].Value:=cbpay.ItemIndex
      else
        quincnty.Parameters[4].Value:=3 ;
      if (edgrade.Text <> '') then
         quincnty.Parameters[5].Value:=edgrade.Text
     else
         quincnty.Parameters[5].Value:=0;
      if (edgrp.text <> '') then
         quincnty.Parameters[6].Value:=edgrp.text
      else
         quincnty.Parameters[6].Value:=0 ;
      if (edjpay.text <> '')  then
         quincnty.Parameters[7].Value:=edjpay.text
      else
         quincnty.Parameters[7].Value:=0;
        Try
        begin
            quincnty.ExecSQL;
            DabData.ADOC.CommitTrans;
        end;
        except
            showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
            DabData.ADOC.RollbackTrans;
        end;
        DabData.qucounty1.Close;
        DabData.qucounty1.open;
    end;
    end;//case mde=1
  2:begin
  if (dblcntry3.text <> '')  and (dblprovince3.text <> '') and (edcode3.text <> '') and (edname3.text <> '') then
      begin
      bmPlace := DabData.qucounty1.GetBookmark ;
      DabData.ADOC.BeginTrans;
      quupcnty.Parameters[0].Value:=edname3.text;
      quupcnty.Parameters[1].Value:=cbpay.ItemIndex;
      quupcnty.Parameters[2].Value:=edgrade.text;
      quupcnty.Parameters[3].Value:=edgrp.text;
      quupcnty.Parameters[4].Value:=edjpay.text;
      quupcnty.Parameters[5].Value:=dblcntry3.keyvalue;
      quupcnty.Parameters[6].Value:=dblprovince3.KeyValue;
      quupcnty.Parameters[7].Value:=edcode3.text;
      Try
      begin
        quupcnty.ExecSQL;
        DabData.ADOC.CommitTrans;
      end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
      end;
      DabData.qucounty1.Close;
      DabData.qucounty1.open;
      DabData.qucounty1.GotoBookmark(bmPlace);
      DabData.qucounty1.FreeBookmark(bmPlace);
    end;
      end;
  end;
   mde:=0;
   pacnty2.Visible:=false;

   edcode3.text := DabData.qucounty1county_code.asstring;
   edName3.text := DabData.qucounty1county_name.asstring;
end;

procedure TCountry.btOk2Click(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
  case mde of
  1:begin
        DabData.ADOC.BeginTrans;
        quinprovince.Parameters[0].Value:=dblcntry2.keyvalue;
        quinprovince.Parameters[1].Value:=edcode2.text;
        quinprovince.Parameters[2].Value:=edname2.text;
        Try
        begin
          quinprovince.ExecSQL;
          DabData.ADOC.CommitTrans;
        end;
        except
          showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
          DabData.ADOC.RollbackTrans;
        end;
        DabData.quprovince1.close;
        DabData.quprovince1.Open;
    end;
    //case mde=1
  2:begin
      if (dblcntry2.keyvalue <> -1)then
      begin
        bmPlace := DabData.quprovince1.GetBookmark ;
        DabData.ADOC.BeginTrans;
        quupprovince.Parameters[0].Value:=edname2.text;
        quupprovince.Parameters[1].Value:=dblcntry2.keyvalue; edcode2.text;
        quupprovince.Parameters[2].Value:= edcode2.text;
        Try
        begin
          quupprovince.ExecSQL;
          DabData.ADOC.CommitTrans;
        end;
        except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
        end;
        DabData.quprovince1.close;
        DabData.quprovince1.Open;
        DabData.quprovince1.GotoBookmark(bmPlace);
        DabData.quprovince1.FreeBookmark(bmPlace);
      end;
    end;//case mde=2
  end;
  mde:=0;
  paprovince2.Visible:=false;
  edcode2.Text:=DabData.quprovince1province_code.asstring;
  edname2.Text:=DabData.quprovince1province_name.asstring;
end;



procedure TCountry.btOk1Click(Sender: TObject);
var
  bm:Tbookmark;
begin
  case mde of
  1:begin
    if (edName1.text<> '') and (edname1.text <> '')then
    begin
      DabData.ADOC.BeginTrans;
      quincntry.Parameters[0].Value:=strtoint(edcode1.text);
      quincntry.Parameters[1].Value:=edName1.Text;
      if (eddegree1.text <> '') then
        quincntry.Parameters[2].Value:=StrToInt(eddegree1.text)
      else
        quincntry.Parameters[2].Value:=0;
      if (edbadw1.text <> '') then
        quincntry.Parameters[3].Value:=StrToInt(edbadw1.text)
      else
        quincntry.Parameters[3].Value:=0;

      Try
      begin
        quincntry.ExecSQL;
        DabData.ADOC.CommitTrans;
      end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
      end;
    end;
  end;//case mde=1
  2:begin
       DabData.ADOC.BeginTrans;
       bm:=DabData.qucountry.GetBookmark;
       quupcntry.Parameters[0].Value:=edName1.text;
       if eddegree1.text <> '' then
            quupcntry.Parameters[1].Value:=StrToInt(eddegree1.text);
       if edbadw1.text <> '' then
            quupcntry.Parameters[2].Value:=StrToInt(edbadw1.text);
       quupcntry.Parameters[3].Value:=edcode1.text;
       Try
       begin
        quupcntry.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
       except
         showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
         DabData.ADOC.RollbackTrans;
      end;
    end;//case mde=2
  end;
  mde:=0;
  pacntry1.Visible:=false;
  DabData.qucountry.Close;
  DabData.qucountry.open;
  DabData.qucountry.gotobookmark(bm);
  DabData.qucountry.freebookmark(bm);
  edcode1.Text:=DabData.quCountrycountry_code.asstring;
  edName1.Text:=DabData.quCountryCountry_name.asstring;
  eddegree1.text:=trim(DabData.quCountrydegree.asstring);
  edbadw1.Text:=trim(DabData.quCountryBad_Weather_Degree.asstring);
end;



procedure TCountry.btCa1Click(Sender: TObject);
begin
  pacntry1.Visible:=false;
  edcode1.Text:=DabData.quCountrycountry_code.asstring;
  edName1.Text:=DabData.quCountryCountry_name.asstring;
  eddegree1.text:=trim(DabData.quCountrydegree.asstring);
  edbadw1.Text:=trim(DabData.quCountryBad_Weather_Degree.asstring);
  mde:=0;

end;



procedure TCountry.btCa2Click(Sender: TObject);
begin
  mde:=0;
  paprovince2.Visible:=false;
  edcode2.Text:=DabData.quprovince1province_code.asstring;
  edname2.Text:=DabData.quprovince1province_name.asstring;
end;



procedure TCountry.btCa3Click(Sender: TObject);
begin
  mde:=0;
  pacnty2.Visible:=false;
  edcode3.text := DabData.qucounty1county_code.asstring;
  edName3.text := DabData.qucounty1county_name.asstring;
end;



procedure TCountry.edcode3Change(Sender: TObject);
begin
   if (dblprovince3.text <> '') and (dblcntry3.text <> '')
     and (edcode3.text <> '') and (edname3.text <> '') then
          btok3.Enabled := true
     else
          btok3.Enabled := false;
end;



(*This procedure checks fields
   if they werenot empty the button willbe active*)
procedure TCountry.checkctg();
begin
{  if (edName1.text <> '')then
    btok1.Enabled:=true
  else
    btok1.Enabled:=false;
}end;






(*This procedure checks fields
   if they werenot empty the button willbe active*)
procedure TCountry.checkjob();
begin
{ if (edname3.text <> '') and (edcode3.text <> '') then
     btok3.Enabled := true
   else
    btok3.Enabled := false;
}end;



procedure TCountry.edNameChange(Sender: TObject);
begin
  checkctg();
end;



procedure TCountry.edName2Change(Sender: TObject);
begin
 if (edcode2.text <> '') and (edname2.text <> '')
  and (dblcntry2.KeyValue <> -1) then
   btOk2.Enabled := true
 else
   btok2.Enabled := false;
end;



procedure TCountry.edcode3KeyPress(Sender: TObject; var Key: Char);
begin
  key:=DabData.CheckKey(key);
end;





procedure TCountry.dblPtJob3Click(Sender: TObject);
begin
  checkjob();
end;



procedure TCountry.tssectionHide(Sender: TObject);
begin
  DabData.qusection1.close;
  pasection2.Visible:=false;
  mde:=0;
  qutemp.close;
end;



procedure TCountry.tsvillageHide(Sender: TObject);
begin
  DabData.quvillage1.Close;
  pavillage2.Visible:=false;
  qutemp.close;
  mde:=0;
end;



procedure TCountry.tscntyHide(Sender: TObject);
begin
  qutemp.close;
  pacnty2.Visible:=false;
  mde:=0;
end;



procedure TCountry.FormShow(Sender: TObject);
begin    //...
   Top:=10;
   left:=200;
   width := 441;
   height := 400;
  paprovince2.Visible:=false;
  pacnty2.Visible:=false;
  mde:=0;
  pacntry1.Visible:=false;

  pasection2.visible := false;

  pavillage2.visible := false;

  DabData.quCountry.close;
  DabData.quCountry.open;

  edcode1.text := DabData.quCountryCountry_code.asstring;
  edname1.text := DabData.quCountryCountry_name.asstring;
  eddegree1.text := TRIM(DabData.quCountrydegree.asstring);
  edbadw1.Text := TRIM(DabData.quCountryBad_Weather_Degree.asstring);
  DabData.quprovince1.close;
  DabData.quprovince1.parameters[0].Value := 0;
  DabData.quprovince1.open;

  DabData.qucounty1.close;
  DabData.qucounty1.parameters[0].Value := 0;
  DabData.qucounty1.parameters[1].Value := 0;
  DabData.qucounty1.open;

  DabData.qusection1.close;
  DabData.qusection1.parameters[0].Value := 0;
  DabData.qusection1.parameters[1].Value := 0;
  DabData.qusection1.parameters[2].Value := 0;
  DabData.qusection1.open;

  DabData.quvillage1.close;
  DabData.quvillage1.parameters[0].Value := 0;
  DabData.quvillage1.parameters[1].Value := 0;
  DabData.quvillage1.parameters[2].Value := 0;
  DabData.quvillage1.parameters[3].Value := 0;
  DabData.quvillage1.open;
  pgcntry.ActivePage:= tscntry;


end;



procedure TCountry.tscntryShow(Sender: TObject);
begin
end;



(*This procedure Delete the choosen row*)
procedure TCountry.delcountry();
var
flag : boolean;
begin
  flag := true;
  quvaldelcntry.close;
  quvaldelcntry.Parameters[0].Value := DabData.qucountrycountry_code.asstring;
  quvaldelcntry.Parameters[1].Value := DabData.qucountrycountry_code.asstring;
  quvaldelcntry.Parameters[2].Value := DabData.qucountrycountry_code.asstring;
  quvaldelcntry.Parameters[3].Value := DabData.qucountrycountry_code.asstring;
  quvaldelcntry.Open;
  if (quvaldelcntry.RecordCount <> 0) then
    begin
      showmessage2('.‘„« „Ã«“ »Â Õ–› «Ì‰ ﬂ‘Ê— ‰„Ì »«‘Ìœ');
      mde := 0;
      exit;
    end;
  quvaldel.close;
  quvaldel.SQL.Clear;
  quvaldel.SQL.Add('select * from province');
  quvaldel.SQL.Add('where');
  quvaldel.SQL.Add('country_code = :p1');
  quvaldel.Parameters[0].value := DabData.qucountrycountry_code.asstring;
  quvaldel.open;
  if (quvaldel.RecordCount <> 0) then
    begin
     elam2 := Telam2.Create(application);
     elam2.lbfirst.Caption := 'Õ–› «Ì‰ ﬂ‘Ê— „‰Ã— »Â Õ–› «” «‰ Â«Ì „—»ÊÿÂ ŒÊ«Âœ ‘œ.';
     elam2.lbsecond.caption := '¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
     elam2.ShowModal;
    if Elam2.prd = 1 then
       flag := true
      else if elam2.prd = 2 then
        flag := false;
    end;
  if (flag) then
  begin
   DabData.ADOC.BeginTrans;
   try
   begin
     qudelcntry.parameters[0].value:=DabData.qucountrycountry_code.asstring;
     qudelcntry.ExecSql;
     DabData.ADOC.CommitTrans;
   end;
   except
     ShowMessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
     DabData.ADOC.RollbackTrans;
   end;
   DabData.quCountry.close;
   DabData.quCountry.Open;
   end;
  if (DabData.quCountry.RecordCount = 0) then
    begin
      edname1.text := '';
      edcode1.text := '';
      eddegree1.text := '';
      edbadw1.text := '';
    end;
  mde:=0;
  DabData.qucountry.close;
  DabData.qucountry.Open;
end;



(*This procedure Delete the choosen row*)
procedure TCountry.delprovince();
var
flag : boolean;
begin
  flag := true;
  quvaldel.close;
  quvaldel.SQL.Clear;
  quvaldel.SQL.Add('select * from county');
  quvaldel.SQL.Add('where');
  quvaldel.SQL.Add('province_code = :p1');
  quvaldel.Parameters[0].value := edcode2.text;
  quvaldel.open;
  if (quvaldel.RecordCount <> 0) then
    begin
     elam2 := Telam2.Create(application);
     elam2.lbfirst.Caption := 'Õ–› «Ì‰ «” «‰ „‰Ã— »Â Õ–› ‘Â—” «‰Â«Ì „—»ÊÿÂ ŒÊ«Âœ ‘œ.';
     elam2.lbsecond.caption := '¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
     elam2.ShowModal;
    if Elam2.prd = 1 then
       flag := true
      else if elam2.prd = 2 then
        flag := false;
    end;
  if (flag) then
  begin
  DabData.ADOC.BeginTrans;
  try
  begin
    qudelprovince.parameters[0].value:= dblcntry2.KeyValue;
    qudelprovince.parameters[1].value:= edcode2.text;
    qudelprovince.parameters[2].value:=edname2.text;
    qudelprovince.ExecSql;
    DabData.ADOC.CommitTrans;
  end;
  except
    ShowMessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
  end;
  mde:=0;
  DabData.quprovince1.close;
  DabData.quprovince1.Open;
end;



(*This procedure Delete the choosen row*)
procedure TCountry.delcounty();
var
flag : boolean;
begin
  flag := true;
  quvaldel.close;
  quvaldel.SQL.Clear;
  quvaldel.SQL.Add('select * from section');
  quvaldel.SQL.Add('where');
  quvaldel.SQL.Add('county_code = :p1');
  quvaldel.Parameters[0].value := DabData.qucounty1county_code.asstring;
  quvaldel.open;
  if (quvaldel.RecordCount <> 0) then
    begin
     elam2 := Telam2.Create(application);
     elam2.lbfirst.Caption := 'Õ–› «Ì‰ ‘Â—” «‰ „‰Ã— »Â Õ–› »Œ‘Â«Ì „—»ÊÿÂ ŒÊ«Âœ ‘œ.';
     elam2.lbsecond.caption := '¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
     elam2.ShowModal;
    if Elam2.prd = 1 then
       flag := true
      else if elam2.prd = 2 then
        flag := false;
    end;
  if (flag) then
  begin
  DabData.ADOC.BeginTrans;
  try
  begin
    qudelcnty.parameters[0].value:=DabData.qucounty1country_code.asstring;
    qudelcnty.parameters[1].value:=DabData.qucounty1province_code.asstring;
    qudelcnty.parameters[2].value:=DabData.qucounty1county_code.asstring;
    qudelcnty.ExecSQL;
    DabData.ADOC.CommitTrans;
  end;
  except
    ShowMessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
   end;
  mde:=0;
  DabData.qucounty1.close;
  DabData.qucounty1.Open;
end;



procedure TCountry.dbgcntryKeyPress(Sender: TObject; var Key: Char);
var mes:TMessage;
begin
  if key='+' then
  begin
    mes.Msg:=F_NEW;
    DisPatch(mes);
  end;
  if key='-' then
  begin
    mes.Msg:=F_DEL;
    DisPatch(mes);
  end;
end;



procedure TCountry.dbgprovinceKeyPress(Sender: TObject; var Key: Char);
var mes:TMessage;
begin
  if key='+' then
  begin
    mes.Msg:=F_NEW;
    DisPatch(mes);
  end;
  if key='-' then
  begin
    mes.Msg:=F_DEL;
    DisPatch(mes);
  end;
end;



procedure TCountry.dbgcntyKeyPress(Sender: TObject; var Key: Char);
var mes:TMessage;
begin
  if key='+' then
  begin
    mes.Msg:=F_NEW;
    DisPatch(mes);
  end;
  if key='-' then
  begin
    mes.Msg:=F_Del;
    DisPatch(mes);
  end;
end;



procedure TCountry.FormHide(Sender: TObject);
begin
  pacntry1.Visible:=false;
  paprovince2.Visible:=false;
  pacnty2.Visible:=false;
  mde:=0;
  pacntry1.Visible:=false;

end;

procedure TCountry.dbgcntryColEnter(Sender: TObject);
begin
      edcode1.Text:=DabData.quCountrycountry_code.asstring;
      edName1.Text:=DabData.quCountryCountry_name.asstring;
      eddegree1.text:=TRIM(DabData.quCountrydegree.asstring);
      edbadw1.Text:=TRIM(DabData.quCountryBad_Weather_Degree.asstring);

end;

procedure TCountry.edcode1Change(Sender: TObject);
begin
 if (edcode1.text <> '') and (edname1.text <> '') then
   btOk1.Enabled := true
 else
   btok1.Enabled := false;
end;

procedure TCountry.edname1Change(Sender: TObject);
begin
 if (edcode1.text <> '') and (edname1.text <> '') then
   btOk1.Enabled := true
 else
   btok1.Enabled := false;
end;

procedure TCountry.edcode1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;

procedure TCountry.pgcntryChange(Sender: TObject);
begin
    if pgcntry.ActivePage = tscntry then
     begin
          edcode1.text := DabData.quCountryCountry_code.asstring;
          edname1.text := DabData.quCountryCountry_name.asstring;
          eddegree1.text := TRIM(DabData.quCountrydegree.asstring);
          edbadw1.Text := TRIM(DabData.quCountryBad_Weather_Degree.asstring);
     end;
   if pgcntry.ActivePage = tsprovince then
    if (edcode1.text <> '')  then
         begin
             DabData.quprovince1.Parameters[0].value := edcode1.text;
             DabData.quprovince1.ExecSQL;
             DabData.quprovince1.Close;
             DabData.quprovince1.open;
             dblcntry2.KeyValue := edcode1.text;
             edcode2.Text:=DabData.quprovince1province_code.asstring;
             edname2.Text:=DabData.quprovince1province_name.asstring;
         end;
    if (edcode1.text = '') then
      begin
             DabData.quprovince1.Close;
             DabData.quprovince1.Parameters[0].value := 0;
             DabData.quprovince1.open;
             dblcntry2.KeyValue := null;
      end;

   if pgcntry.ActivePage = tscnty then
    begin
     if (dblcntry2.text <> '') then
      begin
        dblcntry3.keyvalue := dblcntry2.KeyValue;
        qutemp.Parameters[0].value := strtoint(dblcntry3.keyvalue);
        qutemp.close;
        qutemp.open;
       if edcode2.text <> '' then
        dblprovince3.keyvalue := edcode2.text
       else
        begin
         dblprovince3.keyvalue := null;
         DabData.qucounty1.Close;
         DabData.qucounty1.Parameters[0].value := 0;
         DabData.qucounty1.Parameters[1].value := 0;
         DabData.qucounty1.open;
        end;
       if (dblprovince3.text <> '') and (dblcntry3.text <> '') then
          begin
           DabData.qucounty1.Parameters[0].value := dblcntry3.keyvalue;
           DabData.qucounty1.Parameters[1].value := dblprovince3.keyvalue;
           DabData.qucounty1.Close;
           DabData.qucounty1.open;
           edcode3.text := DabData.qucounty1county_code.asstring;
           edName3.text := DabData.qucounty1county_name.asstring;
          end;
      end;
       if (dblcntry3.text = '') then
         begin
          DabData.qucounty1.Close;
          DabData.qucounty1.Parameters[0].value := 0;
          DabData.qucounty1.Parameters[1].value := 0;
          DabData.qucounty1.open;
          qutemp.close;
          qutemp.Parameters[0].value := 0;
          qutemp.open;
          dblprovince3.KeyValue := null;
         end;

      end;

   if pgcntry.ActivePage = tssection then
     begin
     if(dblcntry3.Text <> '') then
       begin
        dblcntry4.keyvalue := dblcntry3.keyvalue;
        qutemp.Parameters[0].value := strtoint(dblcntry4.keyvalue);
        qutemp.close;
        qutemp.open;
      end
    else
      begin
        dblcntry4.keyvalue := -1;
        qutemp.close;
        qutemp.Parameters[0].value := 0;
        qutemp.open;
        qutemp1.Parameters[0].value := 0;
        qutemp1.Parameters[1].value := 0;
        qutemp1.close;
        qutemp1.open;
        DabData.qusection1.Parameters[0].value := 0;
        DabData.qusection1.Parameters[1].value := 0;
        DabData.qusection1.Parameters[2].value := 0;
        DabData.qusection1.Close;
        DabData.qusection1.open;
      end;

    if (dblprovince3.text <> '') then
       dblprovince4.keyvalue := dblprovince3.keyvalue
     else
       begin
        dblprovince4.keyvalue := null;
        dblcnty4.keyvalue := null;
       end;
     if (dblcntry4.text <> '') and (dblprovince4.text <>'') then
       begin
          qutemp1.Parameters[0].value := strtoint(dblcntry4.keyvalue);
          qutemp1.Parameters[1].value := strtoint(dblprovince4.keyvalue);
          qutemp1.close;
          qutemp1.open;
          dblcnty4.KeyValue := -1;
       end;

     if (edcode3.text <> '') then
        dblcnty4.KeyValue := edcode3.text
       else
        dblcnty4.keyvalue := null; 


       if (dblprovince4.text <> '') and (dblcntry4.text <> '') and (dblcnty4.text <> '') then
          begin
           DabData.qusection1.Parameters[0].value := dblcntry4.keyvalue;
           DabData.qusection1.Parameters[1].value := dblprovince4.keyvalue;
           DabData.qusection1.Parameters[2].value := dblcnty4.keyvalue;
           DabData.qusection1.Close;
           DabData.qusection1.open;

           edcode4.text := DabData.qusection1section_code.asstring;
           edname4.text := DabData.qusection1section_name.asstring;
         end;
      end;

   if pgcntry.ActivePage = tsvillage then
     begin
     if (dblcntry4.text <> '') then
          dblcntry5.keyvalue := dblcntry4.KeyValue
      else
       begin
         dblcntry5.keyvalue := -1;
         qutemp.close;
         qutemp.Parameters[0].value := 0;
         qutemp.Open;
         dblprovince5.KeyValue := null;
         qutemp1.close;
         qutemp1.Parameters[0].value := 0;
         qutemp1.Parameters[1].value := 0;
         qutemp1.open;
         dblcnty5.KeyValue := null;
         qutemp2.close;
         qutemp2.Parameters[0].value := 0;
         qutemp2.Parameters[1].value := 0;
         qutemp2.Parameters[2].value := 0;
         qutemp2.open;
         dblsection5.KeyValue := null;
         DabData.quvillage1.close;
         DabData.quvillage1.parameters[0].value := 0;
         DabData.quvillage1.parameters[1].value := 0;
         DabData.quvillage1.parameters[2].value := 0;
         DabData.quvillage1.parameters[3].value := 0;
         DabData.quvillage1.open;
       end;

    if (dblcntry5.text <> '' ) then
      begin
        qutemp.close;
        qutemp.Parameters[0].value := strtoint(dblcntry5.keyvalue);
        qutemp.open;
      end;


    if (dblprovince4.text <> '') then
       dblprovince5.keyvalue := dblprovince4.keyvalue
    else
     begin
         dblprovince5.KeyValue := -1;
         qutemp1.close;
         qutemp1.Parameters[0].value := 0;
         qutemp1.Parameters[1].value := 0;
         qutemp1.open;
         dblcnty5.KeyValue := null;
         qutemp2.close;
         qutemp2.Parameters[0].value := 0;
         qutemp2.Parameters[1].value := 0;
         qutemp2.Parameters[2].value := 0;
         qutemp2.open;
         dblsection5.KeyValue := null;
         DabData.quvillage1.close;
         DabData.quvillage1.parameters[0].value := 0;
         DabData.quvillage1.parameters[1].value := 0;
         DabData.quvillage1.parameters[2].value := 0;
         DabData.quvillage1.parameters[3].value := 0;
         DabData.quvillage1.open;
     end;


     if (dblcntry5.text <> '') and (dblprovince5.text <>'') then
       begin
          qutemp1.Parameters[0].value := strtoint(dblcntry5.keyvalue);
          qutemp1.Parameters[1].value := strtoint(dblprovince5.keyvalue);
          qutemp1.close;
          qutemp1.open;
          dblcnty5.KeyValue := -1;
          dblsection5.KeyValue := -1;
       end;

     if (dblcnty4.Text <> '') then
        dblcnty5.keyvalue := dblcnty4.keyvalue
      else
       begin
         dblcnty5.KeyValue := -1;
         qutemp2.close;
         qutemp2.Parameters[0].value := 0;
         qutemp2.Parameters[1].value := 0;
         qutemp2.Parameters[2].value := 0;
         qutemp2.open;
         dblsection5.KeyValue := null;
         DabData.quvillage1.close;
         DabData.quvillage1.parameters[0].value := 0;
         DabData.quvillage1.parameters[1].value := 0;
         DabData.quvillage1.parameters[2].value := 0;
         DabData.quvillage1.parameters[3].value := 0;
         DabData.quvillage1.open;
       end;

     if (dblcntry5.text <> '') and (dblprovince5.text <>'') and (dblcnty5.text <> '') then
       begin
          qutemp2.Parameters[0].value := strtoint(dblcntry5.keyvalue);
          qutemp2.Parameters[1].value := strtoint(dblprovince5.keyvalue);
          qutemp2.parameters[2].value := strtoint(dblcnty5.keyvalue);
          qutemp2.close;
          qutemp2.open;
          dblsection5.keyvalue := -1;
       end;

       if (edcode4.text <> '') then
         dblsection5.keyvalue := edcode4.text
        else
          begin
            dblsection5.KeyValue := -1;
            DabData.quvillage1.close;
            DabData.quvillage1.parameters[0].value := 0;
            DabData.quvillage1.parameters[1].value := 0;
            DabData.quvillage1.parameters[2].value := 0;
            DabData.quvillage1.parameters[3].value := 0;
            DabData.quvillage1.open;
          end;

      if (dblprovince5.text <> '') and (dblcntry5.text <> '') and (dblcnty5.text <> '') and (dblsection5.text <> '') then
         begin
           DabData.quvillage1.Parameters[0].value := dblcntry5.keyvalue;
           DabData.quvillage1.Parameters[1].value := dblprovince5.keyvalue;
           DabData.quvillage1.Parameters[2].value := dblcnty5.keyvalue;
           DabData.quvillage1.Parameters[3].value := dblsection5.keyvalue;
           DabData.quvillage1.Close;
           DabData.quvillage1.open;

           edcode5.text := DabData.quvillage1village_code.asstring;
           edname5.text := DabData.quvillage1village_name.asstring;
         end;
      end
end;

procedure TCountry.dblcntry2CloseUp(Sender: TObject);
begin
   if (dblcntry2.keyvalue <> -1) then
     begin
       DabData.quprovince1.Parameters[0].value := dblcntry2.keyvalue;
       DabData.quprovince1.ExecSQL;
       DabData.quprovince1.Close;
       DabData.quprovince1.open;
     end;
       if (paprovince2.Enabled = true) and (edcode2.text <> '')
       and (edname2.text <> '') and (dblcntry2.keyvalue <> -1)
         then
           btok2.Enabled := true
           else
           btok2.Enabled := false;
end;

procedure TCountry.edcode2Change(Sender: TObject);
begin
 if (edcode2.text <> '') and (edname2.text <> '')
   and (dblcntry2.KeyValue <> -1) then
   btOk2.Enabled := true
 else
   btok2.Enabled := false;

end;

procedure TCountry.edcode2KeyPress(Sender: TObject; var Key: Char);
begin
key := DabData.CheckKey(key);
end;

procedure TCountry.dblprovince3CloseUp(Sender: TObject);
begin
   if (dblprovince3.keyvalue <> -1)then
     begin
       DabData.qucounty1.Parameters[0].value := dblcntry3.keyvalue;
       DabData.qucounty1.Parameters[1].value := dblprovince3.keyvalue;
       DabData.qucounty1.ExecSQL;
       DabData.qucounty1.Close;
       DabData.qucounty1.open;
        end
         else dblprovince3.keyvalue := -1;
       if (paprovince2.Enabled = true) and (edcode2.text <> '')
       and (edname2.text <> '') and (dblcntry2.keyvalue <> -1)
         then
           btok3.Enabled := true
           else
           btok3.Enabled := false;
end;

procedure TCountry.dblcntry3CloseUp(Sender: TObject);
begin
    if (dblcntry3.text <> '')then
     begin
       qutemp.Parameters[0].value := dblcntry3.keyvalue;
       qutemp.ExecSQL;
       qutemp.close;
       qutemp.open;
       dblprovince3.KeyValue := -1;
       DabData.quCounty1.close;
     end;
end;

procedure TCountry.edName3Change(Sender: TObject);
begin
   if (dblprovince3.text <> '') and (dblcntry3.text <> '')
     and (edcode3.text <> '') and (edname3.text <> '') then
          btok3.Enabled := true
     else
          btok3.Enabled := false;
end;

procedure TCountry.eddegree1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);

end;

procedure TCountry.edbadw1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);

end;

procedure TCountry.dblcntry4CloseUp(Sender: TObject);
begin
    if (dblcntry4.text <> '')then
     begin
       qutemp.Parameters[0].value := dblcntry4.keyvalue;
       qutemp.ExecSQL;
       qutemp.close;
       qutemp.open;
       dblprovince4.KeyValue := -1;
       dblcnty4.KeyValue := -1;
       DabData.quSection1.close;
     end;

end;

procedure TCountry.dblprovince4CloseUp(Sender: TObject);
begin
   if (dblprovince4.text <> '') and (dblcntry4.text <> '') then
     begin
       qutemp1.Parameters[0].value := dblcntry4.keyvalue;
       qutemp1.Parameters[1].value := dblprovince4.keyvalue;
       qutemp1.ExecSQL;
       qutemp1.Close;
       qutemp1.open;
       dblcnty4.KeyValue := -1;
       DabData.quSection1.close;
     end
      else dblprovince4.keyvalue := -1;

end;

procedure TCountry.dblcnty4CloseUp(Sender: TObject);
begin
   if (dblcntry4.text <>'') and (dblprovince4.keyvalue <> -1) and (dblcnty4.text<>'') then
     begin
       DabData.qusection1.Parameters[0].value := dblcntry4.keyvalue;
       DabData.qusection1.Parameters[1].value := dblprovince4.keyvalue;
       DabData.qusection1.Parameters[2].value := dblcnty4.keyvalue;
       DabData.qusection1.ExecSQL;
       DabData.qusection1.Close;
       DabData.qusection1.open;
     end
     else
     dblcnty4.keyvalue := -1;

end;

procedure TCountry.edname4Change(Sender: TObject);
begin
if (dblcntry4.text <>'') and (dblcnty4.text <>'') and (dblprovince4.text <>'') and
      (edcode4.text <> '') and (edname4.text <> '') then
     btok4.Enabled := true
  else
     btok4.Enabled := false;
end;

procedure TCountry.edcode4Change(Sender: TObject);
begin
if (dblcntry4.text <>'') and (dblcnty4.text <>'') and (dblprovince4.text <>'') and
      (edcode4.text <> '') and (edname4.text <> '') then
     btok4.Enabled := true
  else
     btok4.Enabled := false;

end;

procedure TCountry.edgrade4KeyPress(Sender: TObject; var Key: Char);
begin
  key:=DabData.CheckKey(key);

end;

procedure TCountry.edgrp4KeyPress(Sender: TObject; var Key: Char);
begin
  key:=DabData.CheckKey(key);

end;

procedure TCountry.btok4Click(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
  case mde of
   1:begin
    if (dblcntry4.text <>  '') and (dblprovince4.text<> '') and (dblcnty4.text <> '') then
      begin
      DabData.ADOC.BeginTrans;
      quinsection.Parameters[0].Value:=dblcntry4.KeyValue;
      quinsection.Parameters[1].Value:=dblprovince4.keyvalue;
      quinsection.Parameters[2].Value:=dblcnty4.keyvalue;
      quinsection.Parameters[3].Value:=edcode4.Text;
      quinsection.Parameters[4].Value:=edname4.Text;
      if (cbpay1.Text <> '') then
         quinsection.Parameters[5].Value:=cbpay1.ItemIndex
      else
         quinsection.Parameters[5].Value:=3 ;
      if (edgrade1.Text <> '') then
         quinsection.Parameters[6].Value:=edgrade1.Text
      else
         quinsection.Parameters[6].Value:=0;
      if (edgrp1.Text <> '') then
         quinsection.Parameters[7].Value:=edgrp1.Text
      else
         quinsection.Parameters[7].Value:=0;
      if (edjpay1.Text <> '') then
        quinsection.Parameters[8].Value:=edjpay1.Text
      else
        quinsection.Parameters[8].Value:=0;

    Try
       begin
        quinsection.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
       end;
       DabData.qusection1.Close;
       DabData.qusection1.open;
      end;
    end;//case mde=1
  2:begin
      if (dblcntry4.text <> '')  and (dblprovince4.text <> '') and (dblcnty4.text <> '') and (edcode4.text <> '') and (edname4.text <> '') then
      begin
        bmPlace := DabData.qusection1.GetBookmark ;
        DabData.ADOC.BeginTrans;
        quupsection.Parameters[0].Value:=edname4.text;
        quupsection.Parameters[1].Value:=cbpay1.ItemIndex;
        quupsection.Parameters[2].Value:=edgrade1.text;
        quupsection.Parameters[3].Value:=edgrp1.text;
        quupsection.Parameters[4].Value:=edjpay1.Text;
        quupsection.Parameters[5].Value:=dblcntry4.keyvalue;
        quupsection.Parameters[6].Value:=dblprovince4.KeyValue;
        quupsection.Parameters[7].Value:=dblcnty4.KeyValue;
        quupsection.Parameters[8].Value:=strtoint(edcode4.text);
      Try
      begin
        quupsection.ExecSQL;
        DabData.ADOC.CommitTrans;
      end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
      end;
       DabData.qusection1.Close;
       DabData.qusection1.open;
       DabData.qusection1.GotoBookmark(bmPlace);
       DabData.qusection1.FreeBookmark(bmPlace);
    end;
      end;
  end;
   mde:=0;
   pasection2.Visible:=false;
   edcode4.text := DabData.qusection1section_code.asstring;
   edname4.text := DabData.qusection1section_name.asstring;
   //edgrade4.text := DabData.qusection1grade.asstring;
   //edgrp4.text := DabData.qusection1grp.asstring;
end;

procedure TCountry.delsection();
var
flag : boolean;
begin
  flag := true;
  quvaldel.close;
  quvaldel.SQL.Clear;
  quvaldel.SQL.Add('select * from village');
  quvaldel.SQL.Add('where');
  quvaldel.SQL.Add('section_code = :p1');
  quvaldel.Parameters[0].value :=  DabData.qusection1section_code.asstring;
  quvaldel.open;
  if (quvaldel.RecordCount <> 0) then
    begin
     elam2 := Telam2.Create(application);
     elam2.lbfirst.Caption := 'Õ–› «Ì‰ »Œ‘ „‰Ã— »ÂÚ Õ–› œÂ” «‰ Â«Ì „—»ÊÿÂ ŒÊ«Âœ ‘œ.';
     elam2.lbsecond.caption := '¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
     elam2.ShowModal;
    if Elam2.prd = 1 then
       flag := true
      else if elam2.prd = 2 then
        flag := false;
    end;
  if (flag) then
  begin
  DabData.ADOC.BeginTrans;
  try
  begin
    qudelsection.parameters[0].value:=DabData.qusection1country_code.asstring;
    qudelsection.parameters[1].value:=DabData.qusection1province_code.asstring;
    qudelsection.parameters[2].value:=DabData.qusection1county_code.asstring;
    qudelsection.parameters[3].value:=DabData.qusection1section_code.asstring;
    qudelsection.ExecSQL;
    DabData.ADOC.CommitTrans;
  end;
  except
    ShowMessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
  end; 
  mde:=0;
  DabData.qusection1.close;
  DabData.qusection1.Open;
end;
procedure TCountry.btca4Click(Sender: TObject);
begin
  mde:=0;
  pasection2.Visible:=false;
  edcode4.text := DabData.qusection1section_code.asstring;
  edname4.text := DabData.qusection1section_name.asstring;
end;

procedure TCountry.dblcntry5CloseUp(Sender: TObject);
begin
    if (dblcntry5.text <> '')then
     begin
       qutemp.Parameters[0].value := dblcntry5.keyvalue;
       qutemp.ExecSQL;
       qutemp.close;
       qutemp.open;
       dblprovince5.KeyValue := -1;
       dblcnty5.KeyValue := -1;
       dblsection5.KeyValue := -1;
       DabData.quvillage1.close;
     end;

end;

procedure TCountry.dblprovince5CloseUp(Sender: TObject);
begin
   if (dblprovince5.text <> '') and (dblcntry5.text <> '') then
     begin
       qutemp1.Parameters[0].value := dblcntry5.keyvalue;
       qutemp1.Parameters[1].value := dblprovince5.keyvalue;
       qutemp1.ExecSQL;
       qutemp1.Close;
       qutemp1.open;
       dblcnty5.KeyValue := -1;
       dblsection5.KeyValue := -1;
       DabData.quvillage1.close;
     end
   else dblprovince5.keyvalue := -1;  

end;

procedure TCountry.dblcnty5CloseUp(Sender: TObject);
begin
  if (dblcntry5.text <>'') and (dblprovince5.text <> '') and (dblcnty5.text <> '') then
     begin
       qutemp2.Parameters[0].value := dblcntry5.keyvalue;
       qutemp2.Parameters[1].value := dblprovince5.keyvalue;
       qutemp2.Parameters[2].value := dblcnty5.keyvalue;
       qutemp2.ExecSQL;
       qutemp2.Close;
       qutemp2.open;
       dblsection5.KeyValue := -1;
       DabData.quvillage1.close;
     end
    else
      dblcnty5.keyvalue := -1;


end;

procedure TCountry.dblsection5CloseUp(Sender: TObject);
begin
   if (dblcntry5.text <>'') and (dblprovince5.keyvalue <> -1) and (dblcnty5.text<>'') and (dblsection5.text <> '') then
     begin
       DabData.quvillage1.Parameters[0].value := dblcntry5.keyvalue;
       DabData.quvillage1.Parameters[1].value := dblprovince5.keyvalue;
       DabData.quvillage1.Parameters[2].value := dblcnty5.keyvalue;
       DabData.quvillage1.Parameters[3].value := dblsection5.keyvalue;
       DabData.quvillage1.ExecSQL;
       DabData.quvillage1.Close;
       DabData.quvillage1.open;
     end
   else
     dblsection5.keyvalue := -1;  

end;

procedure TCountry.dbgprovinceColEnter(Sender: TObject);
begin
        edcode2.Text:=DabData.quprovince1province_code.asstring;
        edname2.Text:=DabData.quprovince1province_name.asstring;

end;

procedure TCountry.dbgcntyColEnter(Sender: TObject);
begin
        edcode3.text := DabData.qucounty1county_code.asstring;
        edName3.text := DabData.qucounty1county_name.asstring;

end;

procedure TCountry.dbgsectionColEnter(Sender: TObject);
begin
       edcode4.text := DabData.qusection1section_code.asstring;
       edname4.text := DabData.qusection1section_name.asstring;
      // edgrade4.text := DabData.qusection1grade.asstring;
      // edgrp4.text := DabData.qusection1grp.asstring;

end;

procedure TCountry.dbgvillageColEnter(Sender: TObject);
begin
        edcode5.text := DabData.quvillage1village_code.asstring;
        edname5.text := DabData.quvillage1village_name.asstring;

end;

procedure TCountry.edname5Change(Sender: TObject);
begin
if (dblcntry5.text <>'') and (dblcnty5.text <>'') and (dblprovince5.text <>'') and (dblsection5.text <> '') and
      (edcode5.text <> '') and (edname5.text <> '') then
     btok5.Enabled := true
  else
     btok5.Enabled := false;

end;

procedure TCountry.edcode5Change(Sender: TObject);
begin
if (dblcntry5.text <>'') and (dblcnty5.text <>'') and (dblprovince5.text <>'') and (dblsection5.text <> '') and
      (edcode5.text <> '') and (edname5.text <> '') then
     btok5.Enabled := true
  else
     btok5.Enabled := false;

end;

procedure TCountry.btok5Click(Sender: TObject);
var
    bmPlace : TBookMark ;
begin
  case mde of
   1:begin
    if (dblcntry5.text <>  '') and (dblprovince5.text<> '') and (dblcnty5.text <> '') and (dblsection5.text <> '')then
      begin
      DabData.ADOC.BeginTrans;
      quinvillage.Parameters[0].Value:=dblcntry5.KeyValue;
      quinvillage.Parameters[1].Value:=dblprovince5.keyvalue;
      quinvillage.Parameters[2].Value:=dblcnty5.keyvalue;
      quinvillage.Parameters[3].Value:=dblsection5.keyvalue;
      quinvillage.Parameters[4].Value:=edcode5.Text;
      quinvillage.Parameters[5 ].Value:=edname5.Text;
      if (cbpay2.Text <> '') then
        quinvillage.Parameters[6].Value:=cbpay2.ItemIndex
      else
        quinvillage.Parameters[6].Value:=3;
      if (edgrade2.text <> '') then
        quinvillage.Parameters[7].Value:=edgrade2.text
      else
        quinvillage.Parameters[7].Value:=0;
      if (edgrp2.Text <> '')then
        quinvillage.Parameters[8].Value:=edgrp2.Text
      else
        quinvillage.Parameters[8].Value:=0;
      if (edjpay2.Text <> '') then
         quinvillage.Parameters[9].Value:=edjpay2.Text
      else
        quinvillage.Parameters[9].Value:=0;
    Try
       begin
        quinvillage.ExecSQL;
        DabData.ADOC.CommitTrans;
       end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
       end;
       DabData.quvillage1.Close;
       DabData.quvillage1.open;
      end;
    end;//case mde=1
  2:begin
      if (dblcntry5.text <> '')  and (dblprovince5.text <> '') and (dblcnty5.text <> '') and (dblsection5.text <> '') and (edcode5.text <> '') and (edname5.text <> '') then
      begin
        bmPlace := DabData.quvillage1.GetBookmark ;
        DabData.ADOC.BeginTrans;
        quupvillage.Parameters[0].Value:=edname5.text;
        quupvillage.Parameters[1].Value:=cbpay2.ItemIndex;
        quupvillage.Parameters[2].Value:=edgrade2.text;
        quupvillage.Parameters[3].Value:=edgrp2.text;
        quupvillage.Parameters[4].Value:=edjpay2.Text;
        quupvillage.Parameters[5].Value:=dblcntry5.keyvalue;
        quupvillage.Parameters[6].Value:=dblprovince5.KeyValue;
        quupvillage.Parameters[7].Value:=dblcnty5.KeyValue;
        quupvillage.Parameters[8].Value:=dblsection5.KeyValue;
        quupvillage.Parameters[9].Value:=strtoint(edcode5.text);
      Try
      begin
        quupvillage.ExecSQL;
        DabData.ADOC.CommitTrans;
      end;
      except
        showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
        DabData.ADOC.RollbackTrans;
      end;
      DabData.quvillage1.Close;
      DabData.quvillage1.open;
      DabData.quvillage1.GotoBookmark(bmPlace);
      DabData.quvillage1.FreeBookmark(bmPlace);
    end;
      end;
  end;
   mde:=0;
   pavillage2.Visible:=false;
   edcode5.text := DabData.quvillage1village_code.asstring;
   edname5.text := DabData.quvillage1village_name.asstring;
end;


procedure TCountry.delvillage();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    qudelvillage.parameters[0].value:=DabData.quvillage1country_code.asstring;
    qudelvillage.parameters[1].value:=DabData.quvillage1province_code.asstring;
    qudelvillage.parameters[2].value:=DabData.quvillage1county_code.asstring;
    qudelvillage.parameters[3].value:=DabData.quvillage1section_code.asstring;
    qudelvillage.parameters[4].value:=strtoint(edcode5.text);
    qudelvillage.ExecSQL;
    DabData.ADOC.CommitTrans;
  end;
  except
    ShowMessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
  mde:=0;
  DabData.quvillage1.close;
  DabData.quvillage1.Open;
end;


procedure TCountry.btca5Click(Sender: TObject);
begin
  mde:=0;
  pavillage2.Visible:=false;
  edcode5.text := DabData.quvillage1village_code.asstring;
  edname5.text := DabData.quvillage1village_name.asstring;

end;

procedure TCountry.dbgcntryEnter(Sender: TObject);
begin
   mde:=0;
   pacntry1.Visible:=false;
end;

procedure TCountry.dbgprovinceEnter(Sender: TObject);
begin
   mde:=0;
   paprovince2.Visible:=false;
end;

procedure TCountry.dbgcntyEnter(Sender: TObject);
begin
   mde:=0;
   pacnty2.Visible:=false;
end;

procedure TCountry.dbgsectionEnter(Sender: TObject);
begin
    mde:=0;
    pasection2.Visible:=false;
end;

procedure TCountry.dbgvillageEnter(Sender: TObject);
begin
    mde:=0;
    pavillage2.Visible:=false;
end;

procedure TCountry.tscntryHide(Sender: TObject);
begin
 mde:=0;
  pacntry1.Visible:=false;

end;

procedure TCountry.tsprovinceHide(Sender: TObject);
begin
  mde:=0;
  paprovince2.Visible:=false;

end;

procedure TCountry.edgradeKeyPress(Sender: TObject; var Key: Char);
begin
Key := DabData.CheckKey(key);
end;

procedure TCountry.edgrpKeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;

procedure TCountry.edjpayKeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;

procedure TCountry.edgrade1KeyPress(Sender: TObject; var Key: Char);
begin
 Key := DabData.CheckKey(key);
end;

procedure TCountry.edgrp1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;

procedure TCountry.edjpay1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := DabData.CheckKey(key);
end;

procedure TCountry.edgrade2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;

procedure TCountry.edgrp2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;

procedure TCountry.edjpay2KeyPress(Sender: TObject; var Key: Char);
begin
  Key := DabData.CheckKey(key);
end;



procedure TCountry.ft5Click(Sender: TObject);
begin
  tscntry.Show;
  pgcntryChange(nil);
end;

procedure TCountry.ft4Click(Sender: TObject);
begin
  tsprovince.show;
  pgcntryChange(nil);
end;

procedure TCountry.ft3Click(Sender: TObject);
begin
 tscnty.show;
 pgcntryChange(nil);
end;

procedure TCountry.ft2Click(Sender: TObject);
begin
  tssection.Show;
  pgcntryChange(nil);
end;

procedure TCountry.ft1Click(Sender: TObject);
begin
 tsvillage.show;
 pgcntryChange(nil);
end;

procedure TCountry.fcButtonGroup1Change(ButtonGroup: TfcCustomButtonGroup;
  OldSelected, Selected: TfcButtonGroupItem);
begin
   if  pgcntry.ActivePage= tscntry then
     begin
          edcode1.text := DabData.quCountryCountry_code.asstring;
          edname1.text := DabData.quCountryCountry_name.asstring;
          eddegree1.text := TRIM(DabData.quCountrydegree.asstring);
          edbadw1.Text := TRIM(DabData.quCountryBad_Weather_Degree.asstring);
     end;
   if pgcntry.ActivePage = tsprovince then
     if (edcode1.text <> '')  then
         begin
             DabData.quprovince1.Parameters[0].value :=edcode1.text;
           //\  DabData.quprovince1.ExecSQL;
             DabData.quprovince1.Close;
             DabData.quprovince1.open;
             dblcntry2.KeyValue := edcode1.text;
             edcode2.Text:=DabData.quprovince1province_code.asstring;
             edname2.Text:=DabData.quprovince1province_name.asstring;
         end;
    if (edcode1.text = '') then
      begin
             DabData.quprovince1.Close;
             DabData.quprovince1.Parameters[0].value := 0;
             DabData.quprovince1.open;
             dblcntry2.KeyValue := null;
      end;

   if pgcntry.ActivePage = tscnty then
    begin
     if (dblcntry2.keyvalue <> 0 ) then
      begin
        dblcntry3.keyvalue := dblcntry2.KeyValue;
        if(dblcntry3.keyvalue <> NULL) then
        begin
            qutemp.Parameters[0].value := strtoint(dblcntry3.keyvalue);
            qutemp.close;
            qutemp.open;
        end;
       if edcode2.text <> '' then
        dblprovince3.keyvalue := edcode2.text
       else
        begin
         dblprovince3.keyvalue := null;
         DabData.qucounty1.Close;
         DabData.qucounty1.Parameters[0].value := 0;
         DabData.qucounty1.Parameters[1].value := 0;
         DabData.qucounty1.open;
        end;
       if (dblprovince3.text <> '') and (dblcntry3.text <> '') then
          begin
           DabData.qucounty1.Parameters[0].value := dblcntry3.keyvalue;
           DabData.qucounty1.Parameters[1].value := dblprovince3.keyvalue;
           DabData.qucounty1.Close;
           DabData.qucounty1.open;
           edcode3.text := DabData.qucounty1county_code.asstring;
           edName3.text := DabData.qucounty1county_name.asstring;
          end;
      end;
       if (dblcntry3.text = '') then
         begin
          DabData.qucounty1.Close;
          DabData.qucounty1.Parameters[0].value := 0;
          DabData.qucounty1.Parameters[1].value := 0;
          DabData.qucounty1.open;
          qutemp.close;
          qutemp.Parameters[0].value := 0;
          qutemp.open;
          dblprovince3.KeyValue := null;
         end;

      end;

   if pgcntry.ActivePage = tssection then
     begin
     if(dblcntry3.Text <> '') then
       begin
        dblcntry4.keyvalue := dblcntry3.keyvalue;
        qutemp.Parameters[0].value := strtoint(dblcntry4.keyvalue);
        qutemp.close;
        qutemp.open;
      end
    else
      begin
        dblcntry4.keyvalue := -1;
        qutemp.close;
        qutemp.Parameters[0].value := 0;
        qutemp.open;
        qutemp1.Parameters[0].value := 0;
        qutemp1.Parameters[1].value := 0;
        qutemp1.close;
        qutemp1.open;
        DabData.qusection1.Parameters[0].value := 0;
        DabData.qusection1.Parameters[1].value := 0;
        DabData.qusection1.Parameters[2].value := 0;
        DabData.qusection1.Close;
        DabData.qusection1.open;
      end;

    if (dblprovince3.text <> '') then
       dblprovince4.keyvalue := dblprovince3.keyvalue
     else
       begin
        dblprovince4.keyvalue := null;
        dblcnty4.keyvalue := null;
       end;
     if (dblcntry4.text <> '') and (dblprovince4.text <>'') then
       begin
          qutemp1.Parameters[0].value := strtoint(dblcntry4.keyvalue);
          qutemp1.Parameters[1].value := strtoint(dblprovince4.keyvalue);
          qutemp1.close;
          qutemp1.open;
          dblcnty4.KeyValue := -1;
       end;

     if (edcode3.text <> '') then
        dblcnty4.KeyValue := edcode3.text
       else
        dblcnty4.keyvalue := null; 


       if (dblprovince4.text <> '') and (dblcntry4.text <> '') and (dblcnty4.text <> '') then
          begin
           DabData.qusection1.Parameters[0].value := dblcntry4.keyvalue;
           DabData.qusection1.Parameters[1].value := dblprovince4.keyvalue;
           DabData.qusection1.Parameters[2].value := dblcnty4.keyvalue;
           DabData.qusection1.Close;
           DabData.qusection1.open;

           edcode4.text := DabData.qusection1section_code.asstring;
           edname4.text := DabData.qusection1section_name.asstring;
         end;
      end;

   if pgcntry.ActivePage = tsvillage then
     begin
     if (dblcntry4.text <> '') then
          dblcntry5.keyvalue := dblcntry4.KeyValue
      else
       begin
         dblcntry5.keyvalue := -1;
         qutemp.close;
         qutemp.Parameters[0].value := 0;
         qutemp.Open;
         dblprovince5.KeyValue := null;
         qutemp1.close;
         qutemp1.Parameters[0].value := 0;
         qutemp1.Parameters[1].value := 0;
         qutemp1.open;
         dblcnty5.KeyValue := null;
         qutemp2.close;
         qutemp2.Parameters[0].value := 0;
         qutemp2.Parameters[1].value := 0;
         qutemp2.Parameters[2].value := 0;
         qutemp2.open;
         dblsection5.KeyValue := null;
         DabData.quvillage1.close;
         DabData.quvillage1.parameters[0].value := 0;
         DabData.quvillage1.parameters[1].value := 0;
         DabData.quvillage1.parameters[2].value := 0;
         DabData.quvillage1.parameters[3].value := 0;
         DabData.quvillage1.open;
       end;

    if (dblcntry5.text <> '' ) then
      begin
        qutemp.close;
        qutemp.Parameters[0].value := strtoint(dblcntry5.keyvalue);
        qutemp.open;
      end;


    if (dblprovince4.text <> '') then
       dblprovince5.keyvalue := dblprovince4.keyvalue
    else
     begin
         dblprovince5.KeyValue := -1;
         qutemp1.close;
         qutemp1.Parameters[0].value := 0;
         qutemp1.Parameters[1].value := 0;
         qutemp1.open;
         dblcnty5.KeyValue := null;
         qutemp2.close;
         qutemp2.Parameters[0].value := 0;
         qutemp2.Parameters[1].value := 0;
         qutemp2.Parameters[2].value := 0;
         qutemp2.open;
         dblsection5.KeyValue := null;
         DabData.quvillage1.close;
         DabData.quvillage1.parameters[0].value := 0;
         DabData.quvillage1.parameters[1].value := 0;
         DabData.quvillage1.parameters[2].value := 0;
         DabData.quvillage1.parameters[3].value := 0;
         DabData.quvillage1.open;
     end;


     if (dblcntry5.text <> '') and (dblprovince5.text <>'') then
       begin
          qutemp1.Parameters[0].value := strtoint(dblcntry5.keyvalue);
          qutemp1.Parameters[1].value := strtoint(dblprovince5.keyvalue);
          qutemp1.close;
          qutemp1.open;
          dblcnty5.KeyValue := -1;
          dblsection5.KeyValue := -1;
       end;

     if (dblcnty4.Text <> '') then
        dblcnty5.keyvalue := dblcnty4.keyvalue
      else
       begin
         dblcnty5.KeyValue := -1;
         qutemp2.close;
         qutemp2.Parameters[0].value := 0;
         qutemp2.Parameters[1].value := 0;
         qutemp2.Parameters[2].value := 0;
         qutemp2.open;
         dblsection5.KeyValue := null;
         DabData.quvillage1.close;
         DabData.quvillage1.parameters[0].value := 0;
         DabData.quvillage1.parameters[1].value := 0;
         DabData.quvillage1.parameters[2].value := 0;
         DabData.quvillage1.parameters[3].value := 0;
         DabData.quvillage1.open;
       end;

     if (dblcntry5.text <> '') and (dblprovince5.text <>'') and (dblcnty5.text <> '') then
       begin
          qutemp2.Parameters[0].value := strtoint(dblcntry5.keyvalue);
          qutemp2.Parameters[1].value := strtoint(dblprovince5.keyvalue);
          qutemp2.parameters[2].value := strtoint(dblcnty5.keyvalue);
          qutemp2.close;
          qutemp2.open;
          dblsection5.keyvalue := -1;
       end;

       if (edcode4.text <> '') then
         dblsection5.keyvalue := edcode4.text
        else
          begin
            dblsection5.KeyValue := -1;
            DabData.quvillage1.close;
            DabData.quvillage1.parameters[0].value := 0;
            DabData.quvillage1.parameters[1].value := 0;
            DabData.quvillage1.parameters[2].value := 0;
            DabData.quvillage1.parameters[3].value := 0;
            DabData.quvillage1.open;
          end;

      if (dblprovince5.text <> '') and (dblcntry5.text <> '') and (dblcnty5.text <> '') and (dblsection5.text <> '') then
         begin
           DabData.quvillage1.Parameters[0].value := dblcntry5.keyvalue;
           DabData.quvillage1.Parameters[1].value := dblprovince5.keyvalue;
           DabData.quvillage1.Parameters[2].value := dblcnty5.keyvalue;
           DabData.quvillage1.Parameters[3].value := dblsection5.keyvalue;
           DabData.quvillage1.Close;
           DabData.quvillage1.open;

           edcode5.text := DabData.quvillage1village_code.asstring;
           edname5.text := DabData.quvillage1village_name.asstring;
         end;
      end


end;

procedure TCountry.tscntyShow(Sender: TObject);
begin
    if (dblcntry3.text <> '')then
     begin
       qutemp.Parameters[0].value := dblcntry3.keyvalue;
       qutemp.close;
       qutemp.open;
     end;
end;

end.


