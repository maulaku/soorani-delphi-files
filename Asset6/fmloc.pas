unit fmloc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,  SetForm, RSqlButton, RSqllookup, RSqlEdit,RadForms,Variants;

type
  TLoc = class(TRadForm)
    pagood: TPanel;
    dbgdetail: TDBGrid;
    edcode:TRSqlEdit;
    edloc_desc:TRSqlEdit;
    dsdetail: TDataSource;
    pagood2: TPanel;
    btok:TRSqlButton;
    btca:TRSqlButton;
    quinloc: TADOQuery;
    quuploc: TADOQuery;
    qudelloc: TADOQuery;
    dblemp:TRSqlDbLookup;
    dsemp: TDataSource;
    quemp: TADOQuery;
    Panel1: TPanel;
    dblctg:TRSqlDbLookup;
    dblunit:TRSqlDbLookup;
    lbctg: TLabel;
    lbunit: TLabel;
    qudetail: TADOQuery;
    eddescr:TRSqlEdit;
    quempemp_no: TStringField;
    quempname: TStringField;
    quempfamily: TStringField;
    quempfather_name: TStringField;
    quempbirth_certificate_no: TStringField;
    quempbirth_date: TStringField;
    quempsex: TSmallintField;
    quempnationality_code: TSmallintField;
    quempbirth_loc_code: TStringField;
    quempcer_loc_code: TStringField;
    quempnational_card_no: TStringField;
    quempis_married: TSmallintField;
    quempnum_of_child: TSmallintField;
    quempreligion: TSmallintField;
    quemphealth_state: TStringField;
    quempsoldiery: TSmallintField;
    quempedu_degree: TSmallintField;
    quempimmunity_reason: TStringField;
    quemplast_school_name: TStringField;
    quemplast_school_loc_code: TStringField;
    quemplast_diploma_date: TStringField;
    quempwriting: TStringField;
    quempemp_type: TSmallintField;
    quemporg_code: TIntegerField;
    quempunit_code: TSmallintField;
    quempisargary_state: TSmallintField;
    quempemployed_emp_law: TSmallintField;
    quempemp_state: TSmallintField;
    quempcomment: TStringField;
    quempemp_photo: TBlobField;
    quempdiploma_name: TStringField;
    quemppost_no: TIntegerField;
    quempjob_lev: TSmallintField;
    quempIn_First: TFloatField;
    quempemp_code: TStringField;
    quempFLName: TStringField;
    qudetailloc_code: TSmallintField;
    qudetailloc_desc: TStringField;
    qudetailemp_no: TStringField;
    qudetailunit_code: TSmallintField;
    qudetailorg_code: TIntegerField;
    qudetaildescr: TStringField;
    qudetailFLName: TStringField;
    qudetailUt_Mast_Code: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure qudetailAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure dbgdetailEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblctgCloseUp(Sender: TObject);
    procedure dblunitCloseUp(Sender: TObject);
    procedure dblunitExit(Sender: TObject);
    procedure dblunitClick(Sender: TObject);
  private
     procedure deleteloc();
    { Private declarations }

  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  public
    { Public declarations }
  end;

var
  Loc: TLoc;
  mde : byte;

implementation
uses DabDmdle,  fmElam, UCommon;
{$R *.DFM}


procedure TLoc.FormShow(Sender: TObject);
begin
  FormInitializer1.Execute;
  mde := 0;
  pagood.Visible := false;
  pagood2.Visible := false;
  quemp.close;
  quemp.open;

  qudetail.Close;
  qudetail.Parameters[0].Value := 0;
  qudetail.Parameters[1].Value := 0;
  qudetail.Open;
  qudetail.Sort:='loc_code';
  DabData.quOrgUnit.Close;
  DabData.quOrgUnit.Parameters[0].Value := OrganizCode;
  DabData.quOrgUnit.Open;
//  dblctg.KeyValue := qudetailUt_Mast_Code.AsInteger;

  DabData.quCostCenter.Close;
  DabData.quCostCenter.Parameters[0].Value := OrganizCode;
  DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
  DabData.quCostCenter.Open;
//  dblunit.KeyValue := qudetailunit_code.AsInteger;

  dbgdetail.Color := clActiveGridColor;
end;

procedure TLoc.qudetailAfterScroll(DataSet: TDataSet);
begin
if mde<> 1 then
begin
   edcode.text     := qudetailloc_code.asstring;
   edloc_desc.text := qudetailloc_desc.asstring;
   dblemp.keyvalue := qudetailemp_no.asstring;
   eddescr.text    := qudetaildescr.asstring;
end;
end;

procedure TLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=caFree;
end;

procedure TLoc.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;
procedure TLoc.DoNew(var mes :TMessage);
var
  Aun : integer;
begin

if (mde = 0 ) and (dblctg.text <> '') and (dblunit.text <> '') then
 begin
  //XPPlus1.Active:=False;
  dblctg.TabStop    := False;
  dblunit.TabStop   := False;
  dbgdetail.TabStop := False;

  pagood2.Visible := true;
  pagood.visible  := true;
  RefreshForm;
  edcode.color := clSilver;
  edcode.enabled := false;
  eddescr.text := '';
  edloc_desc.text := '';
  edloc_desc.color    := clActiveFieldColor;
  eddescr.color       := cloptionalFieldColor;
  dblemp.color        := clActiveFieldColor;
  edloc_desc.setfocus;
  edloc_desc.text := '';
  dblemp.keyvalue := null;
  mde := 1;
  qudetail.Last;
  Aun := qudetail.fieldbyname('loc_code').asinteger;
  Aun := Aun + 1;
  edcode.text := inttostr(Aun);
 end;
 FormInitializer1.FieldMode:=fmInsert;
 FormInitializer1.Execute;
 //XPPlus1.Active:=True;
end;

procedure TLoc.DoEdit(var mes :TMessage);
begin
  if  (edcode.text <> '') and (mde = 0) and (dblctg.text <> '') and(dblunit.text <> '') then
   if (qudetail.RecordCount <> 0) then
   begin
    //XPPlus1.Active:=False;
    dblctg.TabStop    := False;
    dblunit.TabStop   := False;
    dbgdetail.TabStop := False;

    pagood2.Visible  := true;
    pagood.visible   := true;
    RefreshForm;
    dblemp.Enabled   := true;
    dblemp.color     := clActiveFieldColor;
    edcode.color     := clDeactiveFieldColor;
    edcode.enabled   := false;
    eddescr.color    := cloptionalFieldColor;
    edloc_desc.color := clActiveFieldColor;
    edloc_desc.setfocus;
    mde := 2;
    FormInitializer1.FieldMode:=fmInsert;
    FormInitializer1.Execute;
    //XPPlus1.Active:=True;
  end;
end;

procedure TLoc.DoDelete(var mes :TMessage);
begin
     if (dblctg.text <> '') and (dblunit.text <>'') then
     if not(qudetail.IsEmpty ) and (mde = 0) then
     begin
       Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
       Elam.showmodal;
       if Elam.bbOk.modalResult=mrOk then
       begin
         mde:=3;
         deleteloc();
       end;
     end;
    qudetail.Close;
    qudetail.Parameters[0].Value := OrganizCode;
    qudetail.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
    qudetail.Open;
    qudetail.Last;
end;

procedure TLoc.btokClick(Sender: TObject);
var
  bm : TBookMark;
begin
case mde of
 1: begin
 if   (edcode.text <> '') and (dblctg.Text <> '') and (dblunit.Text <> '') then
 begin
         dabdmdle.DabData.ADOC.BeginTrans;
         quinloc.Parameters[0].value := edcode.text;
         quinloc.Parameters[1].value := edloc_desc.text;
         quinloc.Parameters[2].value := dblemp.keyvalue;
         quinloc.Parameters[3].value := dblunit.KeyValue;
         quinloc.Parameters[4].value := OrganizCode;
         quinloc.Parameters[5].value := eddescr.text;
        try
          begin
          quinloc.ExecSql;
          dabdmdle.DabData.ADOC.CommitTrans;
         end;
        except
           DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
           dabdmdle.DabData.ADOC.RollbackTrans;
        end;
        mde:=0;
        qudetail.close;
        qudetail.parameters[0].Value := OrganizCode;
        qudetail.parameters[1].value := dblunit.keyvalue;
        qudetail.Open;
        qudetail.Last;
        pagood.Visible  := false;
        pagood2.Visible := false;
        edcode.text     := qudetailloc_code.asstring;
        edloc_desc.text := qudetailloc_desc.asstring;
        dblemp.keyvalue := qudetailemp_no.asstring;
    end;
  end;//1
2: begin
 if   (edcode.text <> '') and  (dblctg.Text <> '') and (dblunit.Text <> '') and (qudetail.RecordCount <> 0)  then
 begin
         bm := qudetail.GetBookmark();
         dabdmdle.DabData.ADOC.BeginTrans;
         quuploc.Parameters[0].value := edloc_desc.text;
         quuploc.Parameters[1].value := dblemp.keyvalue;
         quuploc.Parameters[2].value := eddescr.text;
         quuploc.Parameters[3].value := OrganizCode;
         quuploc.Parameters[4].value := dblunit.KeyValue;
         quuploc.Parameters[5].value := edcode.text;
        try
          begin
          quuploc.ExecSql;
          dabdmdle.DabData.ADOC.CommitTrans;
         end;
        except
           DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
           dabdmdle.DabData.ADOC.RollbackTrans;
        end;
        mde:=0;
        qudetail.close;
        qudetail.parameters[0].Value := OrganizCode;
        qudetail.parameters[1].value := dblunit.keyvalue;
        qudetail.Open;
        qudetail.GotoBookmark(bm);
        qudetail.FreeBookmark(bm);
        pagood.Visible  := false;
        pagood2.Visible := false;
        edcode.text     := qudetailloc_code.asstring;
        edloc_desc.text := qudetailloc_desc.asstring;
        dblemp.keyvalue := qudetailemp_no.asstring;
    end;
  end;//1

 end;//case
end; //procedure




procedure TLoc.btcaClick(Sender: TObject);
begin
   mde := 0;
   pagood.Visible  := false;
   pagood2.Visible := false;
  { edloc_desc.text := '';
   edcode.text     := qudetailloc_code.asstring;
   edloc_desc.text := qudetailloc_desc.asstring;
   dblemp.keyvalue := qudetailemp_no.asstring; }
end;

procedure TLoc.deleteloc();
begin
    DabData.ADOC.BeginTrans;
    qudelloc.parameters[0].value := edcode.text;
    qudelloc.parameters[1].value := OrganizCode;
    qudelloc.parameters[2].value := dblunit.KeyValue;
   try
   begin
     qudelloc.ExecSQL;
     DabData.ADOC.CommitTrans;
   end;
   except
     DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
     DabData.ADOC.RollbackTrans;
   end;
       if (qudelloc.RowsAffected = 0) then
           DabData.ShowPopupMessage('.‘„« ‰„Ì  Ê«‰Ìœ «Ì‰ ”ÿ— —« Õ–› ﬂ‰Ìœ');
        qudetail.close;
        qudetail.parameters[0].Value := OrganizCode;
        qudetail.parameters[1].value := dblunit.keyvalue;
        qudetail.Open;
        mde := 0;
        pagood.Visible  := false;
        pagood2.Visible := false;
        edcode.text     := qudetailloc_code.asstring;
        edloc_desc.text := qudetailloc_desc.asstring;
        dblemp.keyvalue := qudetailemp_no.asstring;
end;

procedure TLoc.dbgdetailEnter(Sender: TObject);
begin
  mde := 0;
  pagood.Visible := false;
  pagood2.Visible := false;
  if (dblctg.Text <> '') and (dblunit.text <> '') then
  begin
    edcode.text := qudetailloc_code.asstring;
    edloc_desc.text := qudetailloc_desc.asstring;
    dblemp.keyvalue := qudetailemp_no.asstring;
  end;
end;


procedure TLoc.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
 mes.Msg:=FORM_STATE;
 mes.Lparam:=11;
 Application.MainForm.Dispatch(mes);
left := 0;
top := 0;
height := 480;
width := 795;
end;

procedure TLoc.dblctgCloseUp(Sender: TObject);
begin
   DabData.quCostCenter.Close;
   DabData.quCostCenter.Parameters[0].Value := OrganizCode;
   DabData.quCostCenter.Parameters[1].Value := DabData.quOrgUnitUt_Code.AsInteger;
   DabData.quCostCenter.Open;
   dblunit.KeyValue := -1 ;

   qudetail.Close;
   qudetail.Parameters[0].Value := 0;
   qudetail.Parameters[1].Value := 0;
   qudetail.Open;

   mde := 0;
   pagood.Visible := false;
   pagood2.Visible := false;
end;

procedure TLoc.dblunitCloseUp(Sender: TObject);
begin
    {qudetail.Close;
    qudetail.Parameters[0].Value := OrganizCode;
    qudetail.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
    qudetail.Open;
    enablebt();
    mde := 0;
    pagood.Visible := false;
    pagood2.Visible := false;}
end;

procedure TLoc.dblunitExit(Sender: TObject);
begin
{if (dblctg.Text <> '') and (dblunit.Text <> '') then
 begin
   qudetail.close;
   qudetail.parameters[0].Value := OrganizCode;
   qudetail.Parameters[1].Value := dblunit.KeyValue;
   qudetail.open;
 end;}

end;

procedure TLoc.dblunitClick(Sender: TObject);
begin
    qudetail.Close;
    qudetail.Parameters[0].Value := OrganizCode;
    qudetail.Parameters[1].Value := DabData.quCostCenterUt_Code.AsInteger;
    qudetail.Open;
    mde := 0;
    pagood.Visible := false;
    pagood2.Visible := false;
end;


end.
