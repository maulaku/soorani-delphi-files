unit fmnonmgood;

interface

uses
  Windows,Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,setform,
  SmoothShow,  RadForms, RSqlEdit;

type
 Tnonmgood = class(TRadForm)
    DBGrid1: TDBGrid;
    dsnonmgood: TDataSource;
    quDelete: TADOQuery;
    qunonmgood: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    qunonmgoodplaque_no: TStringField;
    qunonmgoodreg_no: TIntegerField;
    qunonmgoodreg_date: TStringField;
    qunonmgoodloc_code: TStringField;
    qunonmgoodground_area: TIntegerField;
    qunonmgoodbuilding_area: TIntegerField;
    qunonmgoodbounds: TStringField;
    qunonmgoodaddress: TStringField;
    qunonmgoodlength: TIntegerField;
    qunonmgoodwidth: TIntegerField;
    qunonmgoodfacility: TStringField;
    qunonmgoodappendix: TStringField;
    qunonmgoodexpert_price: TFloatField;
    qunonmgoodbuy_price: TFloatField;
    qunonmgoodprice_unit: TSmallintField;
    qunonmgoodarea_unit: TSmallintField;
    qunonmgoodlength_unit: TSmallintField;
    qunonmgoodwidth_unit: TSmallintField;
    qunonmgoodowner_doc: TSmallintField;
    qunonmgooditem_code: TStringField;
    qunonmgoodstate: TSmallintField;
    qunonmgooddoc_no: TStringField;
    qunonmgooddoc_date: TStringField;
    qunonmgoodReciever: TStringField;
    qunonmgoodFile_No: TStringField;
    qunonmgooddoc_Type: TSmallintField;
    qunonmgoodReg_Loc: TStringField;
    qunonmgoodOffice_No: TIntegerField;
    qunonmgoodPrint_No: TLargeintField;
    qunonmgoodReg_Plaque: TStringField;
    qunonmgoodDoc_Desc: TStringField;
    qunonmgoodOwner_Org: TStringField;
    qunonmgoodUser_Org: TStringField;
    qunonmgoodExt_Reciver: TStringField;
    qunonmgoodExit_Date: TStringField;
    qunonmgoodDesc: TStringField;
    qunonmgooditem_name: TStringField;
    qunonmgoodPlaque_NoStr: TStringField;
    qunonmgoodCounty_Name: TStringField;
    qunonmgoodClass_Name: TStringField;
    qunonmgoodcowner: TStringField;
    qunonmgoodState_Name: TStringField;
    edSearch: TRSqlEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
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
  nonmgood: Tnonmgood;

implementation
uses DabDmdle, fmElam, fmnmgdet, UCommon;
{$R *.DFM}


procedure Tnonmgood.DoNew(var mes :TMessage);
var Qr:TADOQuery;
begin
  nmgdet := Tnmgdet.Create(Application);
  nmgdet.Caption:='                                      À»  «ÿ·«⁄«  «„Ê«· €Ì— „‰ﬁÊ·';
  qunonmgood.Last;
  Qr:=TADOQuery.Create(nil);
  Qr.Connection:=DabData.ADOC;
  Qr.SQL.Text:=' Select IsNull('+
               '(Select Max(Cast(Plaque_No as BigInt)+1 )'+
               'from NonMovable_Goods),'+
               '  SubString(Dbo.GetPDate(GetDate()),1,2)+''00000000'')';
  Qr.Close;
  Qr.Open;
  nmgdet.edplaque.text :=Qr.Fields[0].AsString;
  nmgdet.dblitem.KeyValue := NULL ;
//  nmgdet.dbllocation.KeyValue:=-1;
  //nmgdet.pagood.Visible:=true;
  nmgdet.mde:=1;
  nmgdet.dblEmp.KeyValue := NULL;
  DBGrid1.Color := clDeactiveGridColor;
  setformColor(nmgdet);
  nmgdet.ShowModal;
  qunonmgood.close;
  qunonmgood.open;
  qunonmgood.Last;
  DBGrid1.Color := clActiveGridColor;

end;

procedure Tnonmgood.DoEdit(var mes :TMessage);
var str : string;
begin
  if (qunonmgood.RecordCount<>0)then
  begin
    nmgdet := Tnmgdet.Create(Application);
      nmgdet.Caption:='                                      ÊÌ—«Ì‘ «ÿ·«⁄«  «„Ê«· €Ì— „‰ﬁÊ·';
    nmgdet.edFileNo.Text:=qunonmgoodFile_No.Value;
    if   qunonmgooddoc_Type.Value=1 then
         nmgdet.rbtype1.checked:=true
    else
         nmgdet.rbtype2.checked:=true;
    nmgdet.edRegLoc.Text:=qunonmgoodReg_Loc.Value;
    nmgdet.edOffice.Text:=qunonmgoodOffice_No.AsString;
    nmgdet.edPrintNo.Text:=qunonmgoodPrint_No.AsString;
    nmgdet.edRegPlaque.Text:=qunonmgoodReg_Plaque.AsString;
    nmgdet.edDocDesc.Text:=qunonmgoodDoc_Desc.AsString;
    nmgdet.edOwnerOrg.Text:=qunonmgoodOwner_Org.AsString;
    nmgdet.edUserOrg.Text:=qunonmgoodUser_Org.AsString;
    if trim(qunonmgoodExt_Reciver.Value)<>'Null' then
      begin
       nmgdet.rbReciver2.Checked:=true;
       nmgdet.edExtReciver.Text:=qunonmgoodExt_Reciver.AsString;
      end
    else
      begin
       nmgdet.rbReciver1.Checked:=true;
       nmgdet.dblEmp.KeyValue:=trim(qunonmgoodReciever.AsString);
      end;
    nmgdet.edExitDate.Text:=qunonmgoodExit_Date.AsString;
    nmgdet.edDesc.Text:=qunonmgoodDesc.AsString;
    nmgdet.istrue.Text:='edit';
    nmgdet.mde:=2;
    nmgdet.edDocNo.text   := qunonmgooddoc_no.AsString;
    nmgdet.meDocDate.text := qunonmgooddoc_date.AsString;
    nmgdet.edplaque.text  := qunonmgoodplaque_no.AsString;
    nmgdet.edItemCode.text:= qunonmgooditem_code.AsString;
    nmgdet.edregno.Text   := qunonmgoodreg_no.AsString;
    nmgdet.meregdate.text := qunonmgoodreg_date.AsString;
    nmgdet.edPlace.Text   := qunonmgoodCounty_Name.Asstring;
    nmgdet.edgarea.text   := qunonmgoodground_area.AsString;
    nmgdet.edbarea.text   := qunonmgoodbuilding_area.AsString;
    nmgdet.edbound.text   := qunonmgoodbounds.AsString;
    nmgdet.edadr.text     := qunonmgoodaddress.AsString;
    nmgdet.edlength.text  := qunonmgoodlength.AsString;
    nmgdet.edwidth.text   := qunonmgoodwidth.AsString;
    nmgdet.edfac.text     := qunonmgoodfacility.AsString;
    nmgdet.edapp.text     := qunonmgoodappendix.asstring;
    nmgdet.edexp.text     := qunonmgoodexpert_price.asstring;
    nmgdet.edbuy.text     := qunonmgoodbuy_price.AsString;
    nmgdet.cbuprice.ItemIndex := qunonmgoodprice_unit.AsInteger;
    nmgdet.cbuarea.ItemIndex  := qunonmgoodarea_unit.AsInteger;
    nmgdet.cbulength.ItemIndex:= qunonmgoodlength_unit.AsInteger;
    //nmgdet.cbuwidth.ItemIndex := qunonmgoodwidth_unit.AsInteger;
    nmgdet.cbowner.ItemIndex  := qunonmgoodowner_doc.AsInteger;
    nmgdet.edclass.text       := qunonmgoodClass_Name.AsString;
    nmgdet.edplaque.Enabled   := false;
    //nmgdet.btok.enabled       := true;
    nmgdet.istrue.Text:='insert';
    nmgdet.PlaceCode          := qunonmgoodloc_code.AsString;
    nmgdet.quitem.Close;
    nmgdet.quitem.Open;
    str := qunonmgooditem_code.AsString;
    nmgdet.dblitem.KeyValue   := str;
    nmgdet.dblEmp.KeyValue    := qunonmgoodReciever.AsString;
    DBGrid1.Color := clDeactiveGridColor;
    setformColor(nmgdet);
    nmgdet.ShowModal;
    DBGrid1.Color := clActiveGridColor;
  end;
end;
procedure Tnonmgood.DoDelete(var mes :TMessage);
begin
  if  (qunonmgood.RecordCount <> 0) then
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
procedure Tnonmgood.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:= qunonmgoodplaque_no.asString;
    quDelete.ExecSql;
    qunonmgood.close;
    if Trim (edsearch.Text) = ''
        then  qunonmgood.Parameters[0].Value := '%'
        else  qunonmgood.Parameters[0].Value := Trim(edSearch.Text)+'%';
    qunonmgood.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tnonmgood.FormShow(Sender: TObject);
begin
  DabData.quemp.Close;
  DabData.quemp.Open;
  
  qunonmgood.close;
  qunonmgood.Parameters[0].Value := '%';
  qunonmgood.open;
  DBGrid1.Color:= clActiveGridColor;
end;



procedure Tnonmgood.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=49;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top := 0;
end;


procedure Tnonmgood.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  nonmgood:=nil;
  Action:=caFree;
end;

procedure Tnonmgood.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;
procedure Tnonmgood.edSearchChange(Sender: TObject);
begin
    qunonmgood.Close;
    if Trim (edsearch.Text) = ''
        then  qunonmgood.Parameters[0].Value := '%'
        else  qunonmgood.Parameters[0].Value := Trim(edSearch.Text)+'%';
    qunonmgood.Open;
end;

end.
