unit fmspec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow, RadForms ,Variants;

type
  Tspecific = class(TRadForm)
    dbgdetail: TDBGrid;
    dsant: TDataSource;
    qudelete: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure Delete();

    { Private declarations }

  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  public
    { Public declarations }
  end;

var
  specific: Tspecific;

implementation
uses DabDmdle, fmElam, fmdesc, UCommon, fmShowMal;
{$R *.DFM}


procedure Tspecific.DoNew(var mes :TMessage);
begin
  desc := Tdesc.Create(Application);
  desc.btok.enabled:=false;
  desc.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Antique_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL ;
  DabData.quMalClass.Parameters[3].Value := NULL ;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(desc);
  desc.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Tspecific.DoEdit(var mes :TMessage);
begin
  if ( DabData.quant.RecordCount<> 0)then
  begin
    desc := Tdesc.Create(Application);
    desc.btok.enabled:=true;
    desc.mde:=2;
    desc.edprd.text    := DabData.quantAnt_hprd.AsString;
    desc.edloc.text    := DabData.quantAnt_dloc.AsString;
    desc.edddate.text  := DabData.quantAnt_ddate.AsString;
    desc.edweight.text := DabData.quantAnt_weight.AsString;
    desc.edcolor.text  := DabData.quantAnt_color.AsString;
    desc.eddim.text    := DabData.quantAnt_dim.AsString;
    desc.edmark.text   := DabData.quantAnt_mark.AsString;
    desc.edPdate.text  := DabData.quantAnt_pdate.AsString;
    desc.eddesc.text   := DabData.quantAnt_desc.AsString;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Antique_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.quantAnt_gcode.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL ;
    DabData.quMalClass.Parameters[3].Value := NULL ;
    DabData.quMalClass.Open;
    desc.dblgood.KeyValue := DabData.quantAnt_gcode.AsString;
    desc.dblgood.Color := clDeactiveFieldColor;
    desc.panel3.Enabled:= false;
    dbgdetail.Color := clDeactiveGridColor;

    desc.dblgoodUp.Visible  := False;
    desc.btGoodUp.Visible   := False;
    desc.lbGoodUp.Visible   := False;
    desc.lbctg.Caption      :=':ﬂœ „«·';
    desc.dblgood.Visible    := False;
    desc.btmal.Visible      := False;
    desc.edGood.Text        := DabData.quantAnt_gcode.AsString;
    setformColor(desc);
    desc.btok.enabled:=true;
    desc.ShowModal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure Tspecific.DoDelete(var mes :TMessage);
begin
  if ( DabData.quant.RecordCount >=1 )and( DabData.quant.RecNo >= 1 )  then
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
procedure Tspecific.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.quantAnt_gcode.AsString;
    quDelete.ExecSql;
    DabData.quant.close;
    DabData.quant.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tspecific.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=79;
  Application.MainForm.Dispatch(mes);
  Left := 0;
  Top  := 0;
end;


procedure Tspecific.FormShow(Sender: TObject);
begin
  DabData.quant.close;
  DabData.quant.open;
  dbgdetail.Color := clActiveGridColor;
  
end;


procedure Tspecific.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  specific:=nil;
  Action:=caFree;
end;

procedure Tspecific.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;

end.
