unit fmfilm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms,Variants;

type
  Tfilm = class(TRadForm)
    dbgdetail: TDBGrid;
    dsfilm: TDataSource;
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
  film: Tfilm;

implementation
uses DabDmdle, fmElam, fmfilmdet, UCommon;
{$R *.DFM}


procedure Tfilm.DoNew(var mes :TMessage);
begin
  filmdet := Tfilmdet.Create(Application);

  filmdet.height:=282;
  filmdet.btok.enabled:=false;
  filmdet.mde:=1;
  DabData.quMalClass.close;
  DabData.quMalClass.Parameters[0].Value := Diskette_Code    ;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.open;
  dbgdetail .Color:= clDeactiveGridColor;
  SetFormColor(filmdet);
  filmdet.ShowModal  ;
  dbgdetail .Color:= clActiveGridColor ;


end;

procedure Tfilm.DoEdit(var mes :TMessage);
begin
  if (DabData.qufilm.RecordCount<> 0 )then
  begin
    filmdet := Tfilmdet.Create(Application);
    filmdet.mde:=2;
    filmdet.edsub.text:=DabData.qufilmSubject.Asstring;
    filmdet.cbType.ItemIndex:=DabData.qufilmtype.Asinteger;
    filmdet.edsize.text:=DabData.qufilmgood_size.AsString;
    filmdet.cbsize.itemindex:=DabData.qufilmsize_unit.Asinteger;
    filmdet.cbmeasure.itemindex:=DabData.qufilmmeasure_unit.Asinteger;
    filmdet.eddesc.text:=DabData.qufilmspecification.AsString;
    filmdet.panel3.Enabled :=false;
    filmdet.dblgood .Color := clDeactiveFieldColor;
    filmdet.btok.enabled:=true;

    DabData.quMalClass.close;
    DabData.quMalClass.Parameters[0].Value := Diskette_Code    ;
    DabData.quMalClass.Parameters[1].Value := DabData.qufilmgoods_code.AsString ;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.open;
    filmdet.dblgood .KeyValue := DabData .qufilmgoods_code .AsString ;
    dbgdetail .Color:= clDeactiveGridColor;

    filmdet.dblgoodUp.Visible  := False;
    filmdet.btGoodUp.Visible   := False;
    filmdet.lbGoodUp.Visible   := False;
    filmdet.lbctg.Caption      :=':ﬂœ „«·';
    filmdet.dblgood.Visible    := False;
    filmdet.Button1.Visible      := False;
    filmdet.edGood.Text        := DabData.qufilmgoods_code .AsString ;
    SetFormColor(filmdet);
    filmdet.ShowModal  ;
    dbgdetail .Color:= clActiveGridColor ;
  end;
end;

procedure Tfilm.DoDelete(var mes :TMessage);
begin
  if ( DabData.qufilm.RecordCount <> 0 )and( DabData.qufilm.RecNo >= 1 ) then
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
procedure Tfilm.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.qufilmgoods_code.AsString ;
    quDelete.ExecSql;
    DabData.qufilm.close;
    DabData.qufilm.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tfilm.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=99;
  Application.MainForm.Dispatch(mes);
  left:=0;
  top:=0;
end;


procedure Tfilm.FormShow(Sender: TObject);
begin
 DabData.qufilm.close;
 DabData.qufilm.open;
 dbgdetail .Color := clActiveGridColor;
end;


procedure Tfilm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  film:=nil;
  Action:=caFree;
end;

procedure Tfilm.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
