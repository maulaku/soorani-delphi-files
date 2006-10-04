unit fmTatil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids,define,db, DBTables;

type
  TTatil = class(TForm)
    pcMain: TPageControl;
    TabSheet2: TTabSheet;
    quCalndr: TQuery;
    DBGrid1: TDBGrid;
    quCalndrSAL: TSmallintField;
    quCalndrMAH: TSmallintField;
    quCalndrROUZ: TSmallintField;
    quCalndrCDESC: TStringField;
    DataSource1: TDataSource;
    quCalndrTTAG: TSmallintField;
    quCalndrTagDesc: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure quCalndrCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    { Public declarations }
  end;

var
  Tatil: TTatil;

implementation

uses DabDmdle, fmchEnt, fmElam;

{$R *.DFM}
procedure TTatil.DoNew(var mes :TMessage);
begin
 if pcMain.ActivePage=tabsheet2 then
 begin
   ChEnt:=TChEnt.Create(Application);
   ChEnt.pp:=2;
   ChEnt.mde:=1;
   ChEnt.panel3.Hide;
   ChEnt.panel1.Show;
   ChEnt.edSal.text:='';
   ChEnt.edMah.text:='';
   ChEnt.edRouz.text:='';
   ChEnt.edDesc.text:='';
   ChEnt.Rgptt.itemindex:=0;
   ChEnt.ShowModal;
   ChEnt.Free;
   quCalnDr.Close;
   quCalnDr.Open;
 end;
end;
procedure TTatil.DoEdit(var mes :TMessage);
var MyBook:TBookMark;
begin
if pcMain.ActivePage=tabsheet2 then
 begin
   ChEnt:=TChEnt.Create(Application);
   ChEnt.mde:=2;
   ChEnt.pp:=2;
   ChEnt.panel1.show;
   ChEnt.panel3.Hide;
   ChEnt.edSal.text:=quCalnDr.fieldbyname('Sal').asstring;
   ChEnt.edMah.text:=quCalnDr.fieldbyname('Mah').asstring;
   ChEnt.edRouz.text:=quCalnDr.fieldbyname('Rouz').asstring;
   ChEnt.edDesc.text:=quCalnDr.fieldbyname('Cdesc').asstring;
   ChEnt.eS:=quCalnDr.fieldbyname('Sal').asstring;
   ChEnt.eM:=quCalnDr.fieldbyname('Mah').asstring;
   ChEnt.eR:=quCalnDr.fieldbyname('Rouz').asstring;
   ChEnt.Rgptt.itemindex:=quCalnDrTtag.asinteger;
   ChEnt.ShowModal;
   ChEnt.Free;
   MyBook:=quCalnDr.GetBookMark;
   quCalnDr.Close;
   quCalnDr.Open;
   quCalnDr.GotoBookMark(MyBook);
   quCalnDr.FreeBookMark(MyBook);
 end;

end;
procedure TTatil.DoDelete(var mes :TMessage);
var Qry    :TQuery;
    MyBook :TBookMark;
begin
if pcMain.ActivePage=tabsheet2 then
 begin
  Elam.ShowModal;
  if Elam.bbOk.ModalResult=mrok then
   begin
      Qry:=TQuery.Create(self);
      Qry.SessionName:='SalSession';
      Qry.DataBaseName:='DabirDataBase';
      if quCalNdr.RecordCount>0 then
        begin
         Qry.Close;
         Qry.Sql.text:='Delete from CalNdr where Sal='+quCalNdrSal.asstring+' and Mah='+quCalNdrMah.asstring+' and Rouz='+quCalNdrRouz.asstring;
         Qry.ExecSql;
         quCalnDr.Prior;
         if quCalNdr.RecordCOunt>0 then MyBook:=quCalNdr.GetBookMark;
         quCalNdr.close;
         quCalNdr.Open;
         if quCalNdr.RecordCOunt>0 then
           begin
             quCalNdr.GotoBookMark(MyBook);
             quCalNdr.FreeBookMark(MyBook);
           end;
        end;
      Qry.Free;
   end;
 end;
 Elam.lbStr.caption
end;
procedure TTatil.FormShow(Sender: TObject);
begin
  quCalnDr.Close;
  quCalnDr.Open;
end;

procedure TTatil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FormDeactivate(nil);
 Action:=CaFree;
end;

procedure TTatil.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=10;
   Application.MainForm.Dispatch(mes);
end;

procedure TTatil.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
 mes.Msg:=FORM_DEACT;
 Application.MainForm.Dispatch(mes);
end;

procedure TTatil.quCalndrCalcFields(DataSet: TDataSet);
begin
  if quCalndrTtag.value=0 then
    quCalndrTagDesc.value:='„‰«”» '
  else
    quCalndrTagDesc.value:=' ⁄ÿÌ·Ì';

end;

end.
