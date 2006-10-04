unit fmMachin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms ,Variants;

type
  Tmachin = class(TRadForm)
    dbgdetail: TDBGrid;
    dsmachin: TDataSource;
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
  machin: Tmachin;

implementation
uses DabDmdle, fmElam, fmmachindet, UCommon;
{$R *.DFM}


procedure Tmachin.DoNew(var mes :TMessage);
begin
  machindet := Tmachindet.Create(Application);
  machindet.height:=361;
  machindet.btok.enabled:=false;
  machindet.mde:=1;
  DabData.quMalClass.Close;
  DabData.quMalClass.Parameters[0].Value := Machin_Code;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.Open;
  dbgdetail.Color := clDeactiveGridColor;
  setformColor(machindet);
  machindet.ShowModal;
  dbgdetail.Color := clActiveGridColor;
end;

procedure Tmachin.DoEdit(var mes :TMessage);
begin
  if(DabData.qumachin.RecordCount<> 0)then
  begin
    machindet := Tmachindet.Create(Application);
    machindet.mde:=2;
    machindet.edcountry.text:=DabData.qumachinMaker_country.AsString;
    machindet.edfactory.text:=DabData.qumachinMaker_factory.asstring;
    machindet.edfactno.text:=DabData.qumachinfactory_no.AsString;
    machindet.edenginno.text:=DabData.qumachinEngine_no.asstring;
    machindet.edmodel.text:=DabData.qumachinmodel.asstring;
    machindet.edcapacity.text:=DabData.qumachincapacity.asstring;
    machindet.edserial.text:=DabData.qumachinserial.asstring;
    machindet.edmdate.text:=DabData.qumachinmake_date.asstring;
    machindet.eddesc.text:=DabData.qumachinspecification.AsString;
    machindet.btok.enabled:=true;
    DabData.quMalClass.Close;
    DabData.quMalClass.Parameters[0].Value := Transport_Code;
    DabData.quMalClass.Parameters[1].Value := DabData.qumachingoods_code.AsString;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.Open;
    machindet.dblgood.KeyValue := DabData.qumachingoods_code.AsString;
    machindet.Panel3.Enabled := False;
    machindet.btok.enabled:=true;
    machindet.dblgood.Color := clDeactiveFieldColor;
    dbgdetail.Color := clDeactiveGridColor;

    machindet.dblgoodUp.Visible  := False;
    machindet.btGoodUp.Visible   := False;
    machindet.lbGoodUp.Visible   := False;
    machindet.lbctg.Caption      :=':ﬂœ „«·';
    machindet.dblgood.Visible    := False;
    machindet.btmal.Visible      := False;
    machindet.edGood.Text        := DabData.qumachingoods_code.AsString;
    setformColor(machindet);
    machindet.showmodal;
    dbgdetail.Color := clActiveGridColor;
  end;

end;

procedure Tmachin.DoDelete(var mes :TMessage);
begin
  if ( DabData.qumachin.RecordCount >=1 )and( DabData.qumachin.RecNo >= 1 )  then
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
procedure Tmachin.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qumachinGoods_code.AsString;
    quDelete.ExecSql;
    DabData.qumachin.close;
    DabData.qumachin.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tmachin.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=89;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tmachin.FormShow(Sender: TObject);
begin 
 DabData.qumachin.close;
 DabData.qumachin.open;
  dbgdetail.Color := clActiveGridColor;
end;


procedure Tmachin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  machin:=nil;
  Action:=caFree;
end;

procedure Tmachin.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
