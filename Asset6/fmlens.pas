unit fmlens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms,Variants;

type
  Tlens = class(TRadForm)
    dbgdetail: TDBGrid;
    dslens: TDataSource;
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
  lens: Tlens;

implementation
uses DabDmdle, fmElam, fmlensdet, UCommon;
{$R *.DFM}


procedure Tlens.DoNew(var mes :TMessage);
begin
  lensdet:= Tlensdet.Create(Application);
  lensdet.height:=317;
  lensdet.btok.enabled:=false;
  lensdet.mde:=1;
  DabData.quMalClass.close;
  DabData.quMalClass.Parameters[0].Value := Lens_Code   ;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.open;
  dbgdetail .Color:= clDeactiveGridColor;
  setformColor(lensdet);
  lensdet.ShowModal  ;
  dbgdetail .Color:= clActiveGridColor ;

end;

procedure Tlens.DoEdit(var mes :TMessage);
begin
  if (DabData.qulens.RecordCount <>0)then
  begin
    lensdet:= Tlensdet.Create(Application);
    lensdet.btok.enabled:=true;
    lensdet.mde:=2;
    lensdet.edname.text:=DabData.qulensfactory_name.AsString;
    lensdet.edno.text:=DabData.qulensfactory_no.AsString;
    lensdet.edmodel.text:=DabData.qulensmodel.AsString;
    lensdet.edpower.text:=DabData.qulenslens_power.AsString;
    lensdet.edserial.text:=DabData.qulensserial.AsString;
    lensdet.eddate.text:=DabData.qulensmake_date.AsString;
    lensdet.eddesc.text:=DabData.qulensspecification.AsString;
    lensdet.panel3.Enabled :=false;
    lensdet.dblgood .Color := clDeactiveFieldColor;
    lensdet.btok.enabled:=true;
    DabData.quMalClass.close;
    DabData.quMalClass.Parameters[0].Value := Lens_Code    ;
    DabData.quMalClass.Parameters[1].Value := DabData.qulensgoods_code.AsString ;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.open;
    lensdet.dblgood .KeyValue := DabData .quLensgoods_code .AsString ;
    dbgdetail .Color:= clDeactiveGridColor;

    lensdet.dblgoodUp.Visible  := False;
    lensdet.btGoodUp.Visible   := False;
    lensdet.lbGoodUp.Visible   := False;
    lensdet.lbctg.Caption      :=':ﬂœ „«·';
    lensdet.dblgood.Visible    := False;
    lensdet.Button1.Visible      := False;
    lensdet.edGood.Text        := DabData.qulensgoods_code.AsString ;
    setformColor(lensdet);
    lensdet.ShowModal  ;
    dbgdetail .Color:= clActiveGridColor ;
   end;
end;

procedure Tlens.DoDelete(var mes :TMessage);
begin
  if ( DabData.qulens.RecordCount >=1 )and( DabData.qulens.RecNo >= 1 )  then
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
procedure Tlens.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qulensgoods_code.AsString ;
    quDelete.ExecSql;
    DabData.qulens.close;
    DabData.qulens.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tlens.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=95;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tlens.FormShow(Sender: TObject);
begin
 DabData.qulens.close;
 DabData.qulens.open;
 dbgdetail .Color := clActiveGridColor; 
end;


procedure Tlens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  lens:=nil;
  Action:=caFree;
end;

procedure Tlens.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
