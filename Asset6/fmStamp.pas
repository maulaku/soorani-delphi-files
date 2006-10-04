
unit fmStamp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms ,Variants;

type
  Tstamp = class(TRadForm)
    dbgdetail: TDBGrid;
    dsstamp: TDataSource;
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
  stamp: Tstamp;

implementation
uses DabDmdle, fmElam, fmstampdet, UCommon;
{$R *.DFM}


procedure Tstamp.DoNew(var mes :TMessage);
begin
  stampdet := Tstampdet.Create(Application);
  stampdet.height:=375;
  stampdet.btok.enabled:=false;
  stampdet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Stamp_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(stampdet);
  stampdet.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Tstamp.DoEdit(var mes :TMessage);
begin
  if (DabData.qustamp.RecordCount<> 0) then
  begin
    stampdet := Tstampdet.Create(Application);
    stampdet.mde:=2;
    stampdet.cbType.ItemIndex:=DabData.qustampSts_type.AsInteger;
    stampdet.edprice.text:=DabData.qustampSts_price.AsString;
    stampdet.edlen.text:=DabData.qustampSts_len.asstring;
    stampdet.edwit.text:=DabData.qustampSts_wit.Asstring;
    stampdet.edissue.text:=DabData.qustampSts_isue.AsString;
    stampdet.eddesign.text:=DabData.qustampSts_design.AsString;
    stampdet.eddate.text:=DabData.qustampSts_date.AsString;
    stampdet.cbqul.ItemIndex:=DabData.qustampSts_qul.Asinteger;
    stampdet.edPtype.text:=DabData.qustampSts_ptype.AsString;
    stampdet.cbperf.ItemIndex:=DabData.qustampSts_perf.Asinteger;
    stampdet.cbback.itemindex:=DabData.qustampSts_back.Asinteger;
    stampdet.cbface.itemindex:=DabData.qustampSts_face.Asinteger;
    stampdet.eddesc.text:=DabData.qustampSts_desc.AsString;
    stampdet.btok.enabled:=true;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Stamp_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.qustampSts_gcode.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    stampdet.dblgood.KeyValue := DabData.qustampSts_gcode.AsString;
    stampdet.Panel3.Enabled := False;
    stampdet.btok.enabled:=true;
    stampdet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;

    stampdet.dblgoodUp.Visible  := False;
    stampdet.btGoodUp.Visible   := False;
    stampdet.lbGoodUp.Visible   := False;
    stampdet.lbctg.Caption      :=':ﬂœ „«·';
    stampdet.dblgood.Visible    := False;
    stampdet.btmal.Visible      := False;
    stampdet.edGood.Text        := DabData.qustampSts_gcode.AsString;
    setformColor(stampdet);
    stampdet.showmodal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure Tstamp.DoDelete(var mes :TMessage);
begin
  if ( DabData.qustamp.RecordCount >=1 )and( DabData.qustamp.RecNo >= 1 ) then
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
procedure Tstamp.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qustampSts_gcode.AsString;
    quDelete.ExecSql;
    DabData.qustamp.close;
    DabData.qustamp.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;


procedure Tstamp.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=83;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tstamp.FormShow(Sender: TObject);
begin
   DabData.qustamp.close;
   DabData.qustamp.open;
   dbgdetail.Color := clActiveGridColor;
end;


procedure Tstamp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  stamp:=nil;
  Action:=caFree;
end;

procedure Tstamp.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
