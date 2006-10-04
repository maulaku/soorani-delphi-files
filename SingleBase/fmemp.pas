unit fmemp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls, Db, StdCtrls, Mask, DBCtrls, ExtCtrls, Define,
  ADODB, fcButton, fcImgBtn, fcClearPanel, fcButtonGroup, RSqlButton,BaseFrm;

type
  TEmp = class(TBaseForm)
    dsemp: TDataSource;
    dsPensioner: TDataSource;
    dsemp_esp: TDataSource;
    dsemp_lan: TDataSource;
    dscontact: TDataSource;
    dsemp_work: TDataSource;
    dsac_edu: TDataSource;
    dsemp_edu: TDataSource;
    quempdel: TADOQuery;
    qupendel: TADOQuery;
    qudelesp: TADOQuery;
    qudellan: TADOQuery;
    qucontdel: TADOQuery;
    qudelwork: TADOQuery;
    qudeldeg: TADOQuery;
    qudeledu: TADOQuery;
    Panel1: TPanel;
    pgemp: TPageControl;
    tsedu: TTabSheet;
    dbgedu: TDBGrid;
    tsac_edu: TTabSheet;
    dbgac_edu: TDBGrid;
    tswork: TTabSheet;
    dbgwork: TDBGrid;
    tscontact: TTabSheet;
    dbgcont: TDBGrid;
    tslang: TTabSheet;
    dbglan: TDBGrid;
    tsesp: TTabSheet;
    dbgesp: TDBGrid;
    tspens: TTabSheet;
    dbgPensioner: TDBGrid;
    tspersonal: TTabSheet;
    lbdegree: TLabel;
    lbisar: TLabel;
    lbdiploma: TLabel;
    lbemptype: TLabel;
    lbsoldery: TLabel;
    lbtitle: TLabel;
    dbedegree: TDBEdit;
    dbeisar: TDBEdit;
    dbediploma: TDBEdit;
    GroupBox1: TGroupBox;
    lbcert: TLabel;
    lbbirth: TLabel;
    lbnation: TLabel;
    dbecert: TDBEdit;
    dbebirth: TDBEdit;
    DBImage1: TDBImage;
    dbenational: TDBEdit;
    GroupBox2: TGroupBox;
    lbchild: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    dbechild: TDBEdit;
    dbeemptype: TDBEdit;
    dbesoldery: TDBEdit;
    dbetitle: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgEmp: TDBGrid;
    rbid: TRadioButton;
    rbname: TRadioButton;
    rbfamily: TRadioButton;
    Edit1: TEdit;
    tsjob: TTabSheet;
    DBGrid1: TDBGrid;
    dsper: TDataSource;
    qudelper: TADOQuery;
    fcButtonGroup4: TfcButtonGroup;
    Ft1: TfcImageBtn;
    Panel4: TPanel;
    qupost: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgEmpKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure tspersonalShow(Sender: TObject);
    procedure Ft1Click(Sender: TObject);
    procedure rbnameClick(Sender: TObject);
    procedure rbfamilyClick(Sender: TObject);
    procedure rbidClick(Sender: TObject);
  private
    procedure DeleteEmp();
   // Procedure SetDown(i:integer);
    { Private declarations }
  protected
      procedure DoNew(var mes :TMessage);message F_NEW;
      procedure DoEdit(var mes :TMessage);message F_EDIT;
    //  procedure DoScrol(var mes :TMessage);message F_SCROLL;
      procedure DoDelete(var mes :TMessage);message F_Del;

  public
    ss:string;
    { Public declarations }
  end;

var
  Emp: TEmp;

implementation

uses  DabDmdle, fmempIn, fmElam;

{$R *.DFM}

procedure TEmp.DeleteEmp();
 begin
    DabData.ADOC.BeginTrans;
    quempdel.parameters[0].value := DabData.quempemp_no.asstring;
    Try
      quempdel.ExecSQL;
      DabData.ADOC.CommitTrans;
    except
      showmessage2('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      DabData.ADOC.RollbackTrans;
    end;
    try
    qupost.Parameters[0].Value:=DabData.quemporg_code.AsInteger;
    qupost.Parameters[1].Value:=DabData.quemppost_no.AsInteger;
    qupost.ExecSQL;
    DabData.quemp.close;
    DabData.quemp.open;
    except
    end;
 end;


procedure TEmp.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=5;
   Application.MainForm.Dispatch(mes);
end;


procedure TEmp.FormDeactivate(Sender: TObject);
var
  Mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;

procedure TEmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=caFree;

end;

procedure TEmp.DoNew(var mes :TMessage);
begin
  if (pgemp.ActivePage = tspersonal) then
  begin
    EmpIn := TEmpIn.Create(Application);
    EmpIn.mde := 1;
    EmpIn.ShowModal;
  end;

end;


procedure TEmp.DoEdit(var mes :TMessage);
  var
    bm : TBookMark;
    per:string;
begin
  if (pgemp.ActivePage = tspersonal) and (DabData.quemp.recordcount <> 0) then
   begin
    bm :=DabData.quemp.GetBookmark();
    EmpIn := TEmpIn.Create(Application);
    EmpIn.mde := 2;
    EmpIn.qucountry.close;
    EmpIn.qucountry.Open;
    EmpIn.dblnation.keyvalue := DabData.quempnationality_code.asstring;
    EmpIn.edno.Text := DabData.quempemp_code.asstring;
    EmpIn.edname.Text := DabData.quempname.asstring;
    EmpIn.edfamily.Text := DabData.quempfamily.asstring;
    EmpIn.edfather.Text := DabData.quempfather_name.asstring;
    try
   (****) if (Trim(DabData.quempbirth_loc_code.asstring) <> '') then
      begin
        EmpIn.qucity.close;
        EmpIn.qucity.parameters[0].value := copy(DabData.quempbirth_loc_code.asstring, 1, 3);
        EmpIn.qucity.parameters[1].value := copy(DabData.quempbirth_loc_code.asstring, 4, 2);
        EmpIn.qucity.parameters[2].value := copy(DabData.quempbirth_loc_code.asstring, 6, 3);
        EmpIn.qucity.open;
        EmpIn.edbirth.Text := EmpIn.qucitycounty_name.asstring;
        EmpIn.birthloc := DabData.quempbirth_loc_code.asstring;
      end;
      except
      end;

    EmpIn.mebirth.Text := DabData.quempbirth_date.asstring;
    EmpIn.edcert.Text := DabData.quempbirth_certificate_no.asstring;
    try
    if (Trim(DabData.quempcer_loc_code.asstring) <> '') then
     begin
       EmpIn.qucity.close;
       EmpIn.qucity.parameters[0].value := copy(DabData.quempcer_loc_code.asstring, 1, 3);
       EmpIn.qucity.parameters[1].value := copy(DabData.quempcer_loc_code.asstring, 4, 2);
       EmpIn.qucity.parameters[2].value := copy(DabData.quempcer_loc_code.asstring, 6, 3);
       EmpIn.qucity.open;
       EmpIn.edcer.Text := EmpIn.qucitycounty_name.asstring;
       EmpIn.certloc := DabData.quempcer_loc_code.asstring;
     end;
     except
     end;
    EmpIn.edcode.Text := Dabdata.quempnational_card_no.AsString;
    EmpIn.edchild.Text := DabData.quempnum_of_child.asstring;
    EmpIn.rbsex.ItemIndex := DabData.quempsex.asinteger - 1;
    EmpIn.cbreg.ItemIndex := DabData.quempreligion.asinteger - 1;
    EmpIn.cbsold.ItemIndex :=DabData.quempsoldiery.asinteger - 1;
    if (EmpIn.cbsold.ItemIndex In [1, 2, 3]) then
      begin
        EmpIn.edimmun.Enabled := true;
        EmpIn.edimmun.color := clInfobk;
      end
    else
      begin
        EmpIn.edimmun.Enabled := false;
        EmpIn.edimmun.color := clsilver;
        EmpIn.edimmun.Text := '';
      end;
    EmpIn.edhealth.Text := DabData.quemphealth_state.asstring;
    EmpIn.edimmun.Text := DabData.quempimmunity_reason.asstring;
    EmpIn.dbdegree.KeyValue := DabData.quempedu_degree.asinteger;
    EmpIn.qutype.close;
    EmpIn.qutype.open;
    if   DabData.quempdiploma_name.value  <> ''  then
    EmpIn.dbltype.keyvalue := DabData.quempdiploma_name.asinteger;
    EmpIn.edlastloc.text := '';
    try
    if (Trim(DabData.quemplast_school_loc_code.asstring) <> '') then
      begin
        EmpIn.qucity.close;
        EmpIn.qucity.parameters[0].value := copy(DabData.quemplast_school_loc_code.asstring, 1, 3);
        EmpIn.qucity.parameters[1].value := copy(DabData.quemplast_school_loc_code.asstring, 4, 2);
        EmpIn.qucity.parameters[2].value := copy(DabData.quemplast_school_loc_code.asstring, 6, 3);
        EmpIn.qucity.open;
        EmpIn.edlastloc.Text := EmpIn.qucitycounty_name.asstring;
        EmpIn.lastloc := DabData.quemplast_school_loc_code.asstring;
      end;
      except
      end;
    EmpIn.edlastedu.Text := DabData.quemplast_school_name.asstring;
    EmpIn.melastdate.text := DabData.quemplast_diploma_date.asstring;
    EmpIn.edlev.Text := DabData.quempjob_lev.asstring;
    EmpIn.edwrite.Text := DabData.quempwriting.asstring;
    EmpIn.cbrule.ItemIndex := DabData.quempemployed_emp_law.asinteger - 1;
    EmpIn.cbtype.ItemIndex := DabData.quempemp_type.asinteger - 1;
    EmpIn.cbsit.ItemIndex := DabData.quempemp_state.asinteger - 1;
    EmpIn.edcomment.Text := DabData.quempcomment.asstring;
    if (Dabdata.quempemp_photo.asstring = '') then
      EmpIn.editAttached := false
    else
      EmpIn.editAttached := true;
    EmpIn.Image.Picture.Assign(DabData.quempemp_photo);
  //  EmpIn.rbsex.ItemIndex := DabData.quempsex.asinteger - 1;
    EmpIn.rbmarried.ItemIndex := DabData.quempis_married.asinteger - 1;
    if (EmpIn.rbmarried.ItemIndex = 0) then
     begin
       EmpIn.edchild.text := '0';
       EmpIn.edchild.color := clsilver;
       EmpIn.edchild.Enabled := false;
     end
    else
      begin
       EmpIn.edchild.enabled := true;
       EmpIn.edchild.color := clyellow;
     end;
    if (Dabdata.quempisargary_state.asinteger = 1) then
       EmpIn.CHBisar.Checked := true
    else
       EmpIn.CHBisar.Checked := false;
      EmpIn.ShowModal;
      DabData.quemp.GotoBookmark(bm);
      DabData.quemp.FreeBookmark(bm);
    end;

end;

procedure TEmp.FormShow(Sender: TObject);
begin
   Top:=0;
   Left:=0;
   width:=786;
   height:=471;
   DabData.quemp.close;
   DabData.quemp.open;
   pgemp.ActivePage := tspersonal;

end;

Procedure TEmp.DoDelete(var mes :TMessage);
begin
  if  (DabData.quemp.recordcount <> 0) and (pgemp.ActivePage = tspersonal) then
  begin
    Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
    Elam.showmodal;
    if Elam.bbOk.modalResult=mrOk then
    begin
      DeleteEmp();
    end;
  end;

end;


procedure TEmp.FormCreate(Sender: TObject);
begin
  DabData.quemp.close;
  DabData.quemp.open;
  ss:='';
end;

procedure TEmp.dbgEmpKeyPress(Sender: TObject; var Key: Char);
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
  if key='*' then
  begin
      mes.Msg:=F_EDIT;
      DisPatch(mes);
  end;
   If  ((ord(key)<> 27) and (ord(key)<> 13) and (length(ss)< 8)) then
  begin
    if key=#8 then setlength(ss,length(ss)-1)
    else ss:=ss+key;

    if rbfamily.checked then
       DabData.quemp.Locate('family',ss,[lopartialkey]);
    if rbname.checked then
        DabData.quemp.Locate('name',ss,[lopartialkey]);
    if rbid.checked then
        DabData.quemp.Locate('emp_code',ss,[lopartialkey]);
  end
  else
  begin
    ss:='';
  end;
     Edit1.text:=ss;
end;

procedure TEmp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 If  ((ord(key)<> 27) and (ord(key)<> 13) and (length(ss)< 8)) then
  begin
    if key=#8 then setlength(ss,length(ss)-1)
    else ss:=ss+key;
    if rbfamily.checked then
       DabData.quemp.Locate('family',ss,[lopartialkey]);
    if rbname.checked then
        DabData.quemp.Locate('name',ss,[lopartialkey]);
    if rbid.checked then
        DabData.quemp.Locate('emp_code',ss,[lopartialkey]);
  end
  else
  begin
    ss:='';
  end;
     Edit1.text:=ss;

end;


procedure TEmp.tspersonalShow(Sender: TObject);
begin
   dbgEmp.color:=$00FFE8F8;
end;

procedure TEmp.Ft1Click(Sender: TObject);
begin
  tspersonal.show;
end;


procedure TEmp.rbnameClick(Sender: TObject);
begin
 DabData.quemp.close;
 DabData.quemp.SQL.delete(DabData.quemp.Sql.Count-1);
 DabData.quemp.SQL.Add(' order by name');
 DabData.quemp.open;
end;

procedure TEmp.rbfamilyClick(Sender: TObject);
begin
 DabData.quemp.close;
 DabData.quemp.SQL.delete(DabData.quemp.Sql.Count-1);
 DabData.quemp.SQL.Add(' order by family');
 DabData.quemp.open;
end;

procedure TEmp.rbidClick(Sender: TObject);
begin
 DabData.quemp.close;
 DabData.quemp.SQL.delete(DabData.quemp.Sql.Count-1);
 DabData.quemp.SQL.Add('order by emp_code');
 DabData.quemp.open;

end;

end.
