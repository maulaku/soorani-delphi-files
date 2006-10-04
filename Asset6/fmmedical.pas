unit fmmedical;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms,Variants;

type
  Tmedical = class(TRadForm)
    dbgdetail: TDBGrid;
    dsmedical: TDataSource;
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
  medical: Tmedical;

implementation
uses DabDmdle, fmElam, fmmedicaldet, UCommon;
{$R *.DFM}


procedure Tmedical.DoNew(var mes :TMessage);
begin
  medicaldet := Tmedicaldet.Create(Application);
  medicaldet.height:=283;
  medicaldet.btok.enabled:=false;
  medicaldet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Medical_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(medicaldet);
  medicaldet.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Tmedical.DoEdit(var mes :TMessage);
begin
  if(DabData.qumedical.RecordCount<>0)then
  begin
    medicaldet := Tmedicaldet.Create(Application);
    medicaldet.mde:=2;
    medicaldet.edcountry.text:=DabData.qumedicalMaker_country.Asstring;
    medicaldet.edfactory.text:=DabData.qumedicalmaker_factory.AsString;
    medicaldet.edfactno.text:=DabData.qumedicalfactory_no.AsString;
    medicaldet.edmodel.text:=DabData.qumedicalmodel.AsString;
    medicaldet.edserial.text:=DabData.qumedicalserial.AsString;
    medicaldet.eddesc.text:=DabData.qumedicalspecification.AsString;
    medicaldet.btok.enabled:=true;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Transport_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.qumedicalgoods_code.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    medicaldet.dblgood.KeyValue := DabData.qumedicalgoods_code.AsString;
    medicaldet.Panel3.Enabled := False;
    medicaldet.btok.enabled:=true;
    medicaldet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;

    medicaldet.dblgoodUp.Visible  := False;
    medicaldet.btGoodUp.Visible   := False;
    medicaldet.lbGoodUp.Visible   := False;
    medicaldet.lbctg.Caption      :=':ﬂœ „«·';
    medicaldet.dblgood.Visible    := False;
    medicaldet.btmal.Visible      := False;
    medicaldet.edGood.Text        := DabData.qumedicalgoods_code.AsString;
    setformColor(medicaldet);
    medicaldet.ShowModal;
    dbgdetail.Color := clActiveGridColor;
  end;
end;

procedure Tmedical.DoDelete(var mes :TMessage);
begin
  if ( DabData.qumedical.RecordCount >=1 ) and ( DabData.qumedical.RecNo >= 1 ) then
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
procedure Tmedical.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qumedicalgoods_code.AsString;
    quDelete.ExecSql;
    DabData.qumedical.close;
    DabData.qumedical.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tmedical.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=87;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tmedical.FormShow(Sender: TObject);
begin
 DabData.qumedical.close;
 DabData.qumedical.open;
  dbgdetail.Color := clActiveGridColor;
end;


procedure Tmedical.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  medical:=nil;
  Action:=caFree;
end;

procedure Tmedical.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;


end.
