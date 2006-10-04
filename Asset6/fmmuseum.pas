unit fmmuseum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms ,Variants;

type
  Tmuseum = class(TRadForm)
    dbgdetail: TDBGrid;
    dsmuseum: TDataSource;
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
  museum: Tmuseum;

implementation
uses DabDmdle, fmElam, fmmusdet, UCommon, fmShowMal;
{$R *.DFM}


procedure Tmuseum.DoNew(var mes :TMessage);
begin
  musdet := Tmusdet.Create(Application);
  musdet.height:=337;
  musdet.btok.enabled:=false;
  musdet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Museum_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(musdet);
  musdet.showmodal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Tmuseum.DoEdit(var mes :TMessage);
begin
  if(DabData.qumuseum.RecordCount<> 0) then
  begin
    musdet := Tmusdet.Create(Application);
    musdet.mde:=2;
    musdet.cbType.ItemIndex :=DabData.qumuseumMts_type.AsInteger;
    musdet.edloc.text:=DabData.qumuseumMts_loc.AsString;
    musdet.edstyle.text:=DabData.qumuseumMts_style.AsString;
    musdet.edrag.text:=DabData.qumuseumMts_rag.AsString;
    musdet.edmat.text:=DabData.qumuseumMts_mat.AsString;
    musdet.edwoof.text:=DabData.qumuseumMts_woof.AsString;
    musdet.edfuzz.text:=DabData.qumuseumMts_fuzz.AsString;
    musdet.edplane.text:=DabData.qumuseumMts_plane.AsString;
    musdet.edbcolo.text:=DabData.qumuseumMts_bcolor.AsString;
    musdet.edcolor.text:=DabData.qumuseumMts_color.AsString;
    musdet.edlen.text:=DabData.qumuseumMts_len.AsString;
    musdet.edwith.text:=DabData.qumuseumMts_with.AsString;
    musdet.edarea.text:=DabData.qumuseumMts_area.AsString;
    musdet.eddate.text:=DabData.qumuseumMts_date.AsString;
    musdet.edframe.text:=DabData.qumuseumMts_frame.AsString;
    musdet.edold.text:=DabData.qumuseumMts_old.AsString;
    musdet.eddegree.text:=DabData.qumuseumMts_degree.AsString;
    musdet.edpdate.text:=DabData.qumuseumMts_pdate.AsString;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Museum_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.qumuseumMts_gcode.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    musdet.dblgood.KeyValue := DabData.qumuseumMts_gcode.AsString;
    musdet.Panel3.Enabled := False;
    musdet.btok.enabled:=true;
    musdet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;

    musdet.dblgoodUp.Visible  := False;
    musdet.btGoodUp.Visible   := False;
    musdet.lbGoodUp.Visible   := False;
    musdet.lbctg.Caption      :=':ﬂœ „«·';
    musdet.dblgood.Visible    := False;
    musdet.btmal.Visible      := False;
    musdet.edGood.Text        := DabData.qumuseumMts_gcode.AsString;
    setformColor(musdet);
    musdet.ShowModal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure Tmuseum.DoDelete(var mes :TMessage);
begin
  if ( DabData.qumuseum.RecordCount >=1 )and( DabData.qumuseum.RecNo >= 1 ) then
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
procedure Tmuseum.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qumuseumMts_gcode.AsString;
    quDelete.ExecSql;
    DabData.qumuseum.close;
    DabData.qumuseum.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tmuseum.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=81;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tmuseum.FormShow(Sender: TObject);
begin
  DabData.qumuseum.close;
  DabData.qumuseum.open;
  dbgdetail.Color := clActiveGridColor;
end;


procedure Tmuseum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  museum:=nil;
  Action:=caFree;
end;

procedure Tmuseum.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
