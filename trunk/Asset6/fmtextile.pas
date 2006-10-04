unit fmtextile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms,Variants;

type
  Ttextile = class(TRadForm)
    dbgdetail: TDBGrid;
    dstextile: TDataSource;
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
  textile: Ttextile;

implementation
uses DabDmdle, fmElam, fmtextiledet, UCommon;
{$R *.DFM}


procedure Ttextile.DoNew(var mes :TMessage);
begin
  textiledet := Ttextiledet.Create(Application);
  textiledet.height:=332;
  textiledet.btok.enabled:=false;
  textiledet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Textile_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(textileDet);
  textiledet.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Ttextile.DoEdit(var mes :TMessage);
begin
  if (DabData.qutextile.recordcount <> 0)then
  begin
    textiledet := Ttextiledet.Create(Application);
    textiledet.mde:=2;
    textiledet.cbtype.ItemIndex:=DabData.qutextileTexture_type.Asinteger;
    textiledet.edloc.text:=DabData.qutextileTexture_loc.AsString;
    textiledet.edmark.text:=DabData.qutextilemark.AsString;
    textiledet.eddate.text:=DabData.qutextileTexture_Date.AsString;
    textiledet.edlen.text:=DabData.qutextilelength.AsString;
    textiledet.edwid.text:=DabData.qutextilewidth.AsString;
    textiledet.edbcolor.text:=DabData.qutextileback_color.AsString;
    textiledet.edcolor.text:=DabData.qutextileborder_color.AsString;
    textiledet.eddesc.text:=DabData.qutextilespecification.AsString;
    textiledet.edmap.text:=DabData.qutextilemap.AsString;
    textiledet.btok.enabled:=true;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Transport_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.qutextilegoods_code.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    textiledet.dblgood.KeyValue := DabData.qutextilegoods_code.AsString;
    textiledet.Panel3.Enabled := False;
    textiledet.btok.enabled:=true;
    textiledet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;

    textiledet.dblgoodUp.Visible  := False;
    textiledet.btGoodUp.Visible   := False;
    textiledet.lbGoodUp.Visible   := False;
    textiledet.lbctg.Caption      :=':ﬂœ „«·';
    textiledet.dblgood.Visible    := False;
    textiledet.btmal.Visible      := False;
    textiledet.edGood.Text        := DabData.qutextilegoods_code.AsString;
    setformColor( textileDet);
    textiledet.showmodal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure Ttextile.DoDelete(var mes :TMessage);
begin
  if ( DabData.qutextile.RecordCount >=1 )and( DabData.qutextile.RecNo >= 1 )  then
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
procedure Ttextile.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qutextilegoods_code.AsString;
    quDelete.ExecSql;
    DabData.qutextile.close;
    DabData.qutextile.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Ttextile.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=93;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Ttextile.FormShow(Sender: TObject);
begin
 DabData.qutextile.close;
 DabData.qutextile.open;
  dbgdetail.Color := clActiveGridColor;
end;


procedure Ttextile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  textile:=nil;
  Action:=caFree;
end;

procedure Ttextile.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
