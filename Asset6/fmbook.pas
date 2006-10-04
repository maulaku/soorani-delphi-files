unit fmbook;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms ,Variants;

type
  Tbook = class(TRadForm)
    dbgdetail: TDBGrid;
    dstrans: TDataSource;
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
  book: Tbook;

implementation
uses DabDmdle, fmElam, fmbookdet, UCommon;
{$R *.DFM}


procedure Tbook.DoNew(var mes :TMessage);
begin
  bookdet := tbookdet.Create(Application);
  SetFormColor(bookdet);
  bookdet.btok.enabled:=false;
  bookdet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Book_Code  ;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  bookdet.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Tbook.DoEdit(var mes :TMessage);
begin
  if (DabData.quBook.RecordCount<> 0 )then
  begin
    bookdet := Tbookdet.Create(Application);
    SetFormColor(bookdet);
    bookdet.mde:=2;
    bookdet.edname.text:=DabData.qubookbos_name.Asstring;
    bookdet.edaut.text:=DabData.qubookbos_aut.AsString;
    bookdet.eddate.text:=DabData.qubookbos_date.AsString;
    bookdet.edtrans.text:=DabData.qubookbos_trans.AsString;
    bookdet.edpubl.text:=DabData.qubookbos_publ.AsString;
    bookdet.ednum.text:=DabData.qubookbos_num.Asstring;
    bookdet.eddim.text:=DabData.qubookbos_dim.AsString;
    bookdet.edptype.text:=DabData.qubookbos_ptype.AsString;
    bookdet.cbctype.itemindex:=DabData.qubookbos_ctype.Asinteger;
    bookdet.cbchtype.itemindex:=DabData.qubookbos_chtype.Asinteger;
    bookdet.edcname.text:=DabData.qubookbos_cname.AsString;
    bookdet.eddesc.text:=DabData.qubookbos_desc.AsString;
    bookdet.btok.enabled:=true;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Transport_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.quBookbos_gcode.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    bookdet.dblgood.KeyValue := DabData.quBookbos_gcode.AsString;
    bookdet.Panel3.Enabled := False;
    bookdet.btok.enabled := true;
    bookdet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;

    bookdet.dblgoodUp.Visible  := False;
    bookdet.btGoodUp.Visible   := False;
    bookdet.lbGoodUp.Visible   := False;
    bookdet.lbctg.Caption      :=':ﬂœ „«·';
    bookdet.dblgood.Visible    := False;
    bookdet.btmal.Visible      := False;
    bookdet.edGood.Text        := DabData.quBookbos_gcode.AsString;

    bookdet.showmodal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure Tbook.DoDelete(var mes :TMessage);
begin
  if (DabData.qubook.RecordCount <> 0) then
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
procedure Tbook.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qubookbos_gcode.AsString;
    quDelete.ExecSql;
    DabData.qubook.close;
    DabData.qubook.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tbook.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=91;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tbook.FormShow(Sender: TObject);
begin
 DabData.qubook.close;
 DabData.qubook.open;
  dbgdetail.Color := clActiveGridColor;
end;


procedure Tbook.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  book:=nil;
  Action:=caFree;
end;

procedure Tbook.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
