unit fmAnimal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms ,Variants;

type
  TAnimal = class(TRadForm)
    dbgdetail: TDBGrid;
    dsanimal: TDataSource;
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
  Animal: TAnimal;

implementation
uses DabDmdle, fmElam, fmanimaldet, UCommon, fmfilmdet;
{$R *.DFM}


procedure TAnimal.DoNew(var mes :TMessage);
begin
  animaldet := Tanimaldet.Create(Application);
  SetFormColor(animaldet);
  animaldet.height:=270;
  animaldet.btok.enabled:=false;
  animaldet.mde:=1;
  DabData.quMalClass.close;
  DabData.quMalClass.Parameters[0].Value := Animal_Code   ;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.open;
  dbgdetail .Color:= clDeactiveGridColor;
  animaldet.ShowModal  ;
  dbgdetail .Color:= clActiveGridColor ;

end;

procedure TAnimal.DoEdit(var mes :TMessage);
begin
  if (DabData.quanimal.RecordCount<> 0 )then
  begin
    animaldet := Tanimaldet.Create(Application);
    SetFormColor(animaldet);
    animaldet.mde:=2;
    animaldet.cbsex.ItemIndex:=DabData.quanimalsex.AsInteger;
    animaldet.edorg.text:=DabData.quanimalorigin.AsString;
    animaldet.edmark.text:=DabData.quanimalspecial_mark.AsString;
    animaldet.edcolor.text:=DabData.quanimalcolor.AsString;
    animaldet.edheight.text:=DabData.quanimalheight.AsString;
    animaldet.edage.text:=DabData.quanimalage.AsString;
    animaldet.eddesc.text:=DabData.quanimalspecification.AsString;
    animaldet.panel3.Enabled :=false;
    animaldet.dblgood .Color := clDeactiveFieldColor;
    animaldet.btok.enabled:=true;
    DabData.quMalClass.close;
    DabData.quMalClass.Parameters[0].Value := Animal_Code   ;
    DabData.quMalClass.Parameters[1].Value := DabData.quanimalGoods_code .AsString ;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    animaldet.dblgood.KeyValue :=  DabData.quanimalGoods_code .AsString;
    DabData.quMalClass.open;
    dbgdetail .Color:= clDeactiveGridColor;

    animaldet.dblgoodUp.Visible  := False;
    animaldet.btGoodUp.Visible   := False;
    animaldet.lbGoodUp.Visible   := False;
    animaldet.lbctg.Caption      :=':ﬂœ „«·';
    animaldet.dblgood.Visible    := False;
    animaldet.Button1.Visible      := False;
    animaldet.edGood.Text        := DabData.quanimalGoods_code .AsString;

    animaldet.ShowModal  ;
    dbgdetail .Color:= clActiveGridColor ;

  end;
end;

procedure TAnimal.DoDelete(var mes :TMessage);
begin
  if ( DabData.quanimal.RecordCount >=1 )and( DabData.quanimal.RecNo >= 1 ) then
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
procedure TAnimal.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=DabData.quanimalGoods_code.AsString ;
    quDelete.ExecSql;
    DabData.quanimal.close;
    DabData.quanimal.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure TAnimal.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=101;
  Application.MainForm.Dispatch(mes);
  top:=0;
  left:=0;
end;


procedure TAnimal.FormShow(Sender: TObject);
begin
 DabData.quanimal.close;
 DabData.quanimal.open;
 dbgdetail .Color := clActiveGridColor;
end;


procedure TAnimal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Animal:=nil;
  Action:=caFree;
end;

procedure TAnimal.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;

end.
