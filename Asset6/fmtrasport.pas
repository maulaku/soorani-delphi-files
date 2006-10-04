unit fmtrasport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms ,Variants; 

type
  TTransport = class(TRadForm)
    dbgdetail: TDBGrid;
    dstrans: TDataSource;
    qudelete: TADOQuery;
    erSearch: TRadioGroup;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dbgdetailKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Delete();

    { Private declarations }

  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  public
    SearchStr:String;
    { Public declarations }
  end;

var
  Transport: TTransport;

implementation
uses DabDmdle, fmElam, fmtrdet, UCommon;
{$R *.DFM}


procedure TTransport.DoNew(var mes :TMessage);
begin
  trdet := Ttrdet.Create(Application);
  trdet.height:=348;
  trdet.btok.enabled:=false;
  trdet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Transport_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(trdet);
  trdet.dblgood.Color := CLinfobk;
  trdet.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure TTransport.DoEdit(var mes :TMessage);
begin
  if(DabData.qutrans.RecordCount<>0)then
  begin
    trdet := Ttrdet.Create(Application);
    trdet.mde:=2;
    trdet.cbType.ItemIndex:=DabData.qutransTra_type.AsInteger;
    trdet.edcountry.text:=DabData.qutransTra_mcou.AsString;
    trdet.edfactory.text:=DabData.qutransTra_mfac.AsString;
    trdet.edeno.text:=DabData.qutransTra_eno.AsString;
    trdet.edcno.text:=DabData.qutransTra_cno.AsString;
    trdet.edpno.text:=DabData.qutransTra_pno.AsString;
    trdet.edcolor.text:=DabData.qutransTra_color.AsString;
    trdet.edmod.text:=DabData.qutransTra_mod.AsString;
    trdet.edcap.text:=DabData.qutransTra_cap.AsString;
    trdet.edmdate.text:=DabData.qutransTra_mdate.AsString;
    trdet.eddesc.text:=DabData.qutransTra_desc.AsString;
    trdet.btok.enabled:=true;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Transport_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.qutransTra_gcode.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    trdet.dblgood.KeyValue := DabData.qutransTra_gcode.AsString;
    trdet.Panel3.Enabled := False;
    trdet.btok.enabled:=true;
    trdet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;
    trdet.dblgood.Color := $00FDD6BD;
    trdet.dblgoodUp.Visible  := False;
    trdet.btGoodUp.Visible   := False;
    trdet.lbGoodUp.Visible   := False;
    trdet.lbctg.Caption      :=':ﬂœ „«·';
    trdet.dblgood.Visible    := False;
    trdet.btmal.Visible      := False;
    trdet.edGood.Text        := DabData.qutransTra_gcode.AsString;
    setformColor(trdet);
    trdet.ShowModal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure TTransport.DoDelete(var mes :TMessage);
begin
  if ( DabData.qutrans.RecordCount >=1 )and( DabData.qutrans.RecNo >= 1 ) then
  begin
    Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
    Elam.showmodal;
    if Elam.bbOk.modalResult=mrOk then
    begin
      delete();
    end;
  end;
end;

(*** This procedure Delete a chosen row***)
procedure TTransport.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qutransTra_gcode.AsString;
    quDelete.ExecSql;
    DabData.qutrans.close;
    DabData.qutrans.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure TTransport.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=85;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure TTransport.FormShow(Sender: TObject);
begin 
 DabData.qutrans.close;
 DabData.qutrans.open;
 dbgdetail.Color := clActiveGridColor;
end;


procedure TTransport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Transport:=nil;
  Action:=caFree;
end;

procedure TTransport.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;


procedure TTransport.Timer1Timer(Sender: TObject);
begin
  inherited;
  SearchStr:='';
  Timer1.Enabled:=false;
end;

procedure TTransport.dbgdetailKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Timer1.Enabled:=true;
  SearchStr:=SearchStr+Key;
  if Key=#27 then
    SearchStr:='';
  if SearchStr<>'' then
  case erSearch.ItemIndex of
    0: DabData.qutrans.Locate('Tra_gcode',SearchStr,[loPartialKey]);
    1: DabData.qutrans.Locate('typecase',SearchStr,[loPartialKey]);
    2: DabData.qutrans.Locate('Tra_mfac',SearchStr,[loPartialKey]);
    3: DabData.qutrans.Locate('Tra_eno',SearchStr,[loPartialKey]);
    4: DabData.qutrans.Locate('Tra_cno',SearchStr,[loPartialKey]);
    5: DabData.qutrans.Locate('Tra_pno',SearchStr,[loPartialKey]);
    6: DabData.qutrans.Locate('Tra_color',SearchStr,[loPartialKey]);
  end;

end;

end.
