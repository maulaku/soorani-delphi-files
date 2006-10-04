unit fmtaxidermy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms,Variants;

type
  Ttaxidermy = class(TRadForm)
    dbgdetail: TDBGrid;
    dstaxidermy: TDataSource;
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
  taxidermy: Ttaxidermy;

implementation
uses DabDmdle, fmElam, fmtaxidermydet, UCommon;
{$R *.DFM}


procedure Ttaxidermy.DoNew(var mes :TMessage);
begin
  taxidermydet:= Ttaxidermydet.Create(Application);
//  taxidermydet.height:=234;
  taxidermydet.btok.enabled:=false;
  taxidermydet.panel3.Enabled :=true;
  taxidermydet.mde:=1;
  DabData.quMalClass.close;
  DabData.quMalClass.Parameters[0].Value := Taxidermy_Code    ;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.open;
  dbgdetail .Color:= clDeactiveGridColor;
  setformColor(taxidermyDet);
  taxidermydet .ShowModal  ;
  dbgdetail .Color:= clActiveGridColor ;

end;

procedure Ttaxidermy.DoEdit(var mes :TMessage);
begin
  if (DabData.qutaxidermy.recordcount<>0)then
  begin
    taxidermydet:= Ttaxidermydet.Create(Application);
    taxidermydet.btok.enabled:=true;
    taxidermydet.mde:=2;
    taxidermydet.edtype.text:=DabData.qutaxidermytype.AsString;
    taxidermydet.edskeleton.text:=DabData.qutaxidermyskeleton.AsString;
    taxidermydet.edcase.text:=DabData.qutaxidermyexternal_case.AsString;
    taxidermydet.edfossil.text:=DabData.qutaxidermyfossil.AsString;
    taxidermydet.edloc.text:=DabData.qutaxidermycollect_loc.AsString;
    taxidermydet.eddesc.text:=DabData.qutaxidermyspecification.AsString;
    taxidermydet.panel3.Enabled :=false;
    taxidermydet.dblgood .Color := clDeactiveFieldColor;
    taxidermydet.btok.enabled:=true;
    DabData.quMalClass.close;
    DabData.quMalClass.Parameters[0].Value := Taxidermy_Code    ;
    DabData.quMalClass.Parameters[1].Value := DabData.qutaxidermygoods_code.AsString ;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.open;
    taxidermydet.dblgood .KeyValue := DabData .qutaxidermygoods_code .AsString ;
    dbgdetail .Color:= clDeactiveGridColor;

    taxidermydet.dblgoodUp.Visible  := False;
    taxidermydet.btGoodUp.Visible   := False;
    taxidermydet.lbGoodUp.Visible   := False;
    taxidermydet.lbctg.Caption      :=':ﬂœ „«·';
    taxidermydet.dblgood.Visible    := False;
    taxidermydet.Button1.Visible    := False;
    taxidermydet.edGood.Text        := DabData.qutaxidermygoods_code.AsString ;
    setformColor(taxidermyDet);
    taxidermydet.ShowModal  ;

    dbgdetail .Color:= clActiveGridColor ;
  end;
end;

procedure Ttaxidermy.DoDelete(var mes :TMessage);
begin
  if  ( DabData.qutaxidermy.RecordCount >=1 )and( DabData.qutaxidermy.RecNo >= 1 )  then
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
procedure Ttaxidermy.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qutaxidermygoods_code.AsString ;
    quDelete.ExecSql;
    DabData.qutaxidermy.close;
    DabData.qutaxidermy.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Ttaxidermy.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=97;
  Application.MainForm.Dispatch(mes);
  top:=0;
  left:=0;
end;


procedure Ttaxidermy.FormShow(Sender: TObject);
begin
 DabData.qutaxidermy.close;
 DabData.qutaxidermy.open;
 dbgdetail.Color := clActiveGridColor;
end;


procedure Ttaxidermy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  taxidermy:=nil;
   Action:=caFree;

end;

procedure Ttaxidermy.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
