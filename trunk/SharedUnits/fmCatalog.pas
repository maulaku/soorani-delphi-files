unit fmCatalog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ADODB, DBCtrls,Radforms, RSqllookup, StdCtrls, Mask,
  ExtCtrls, RSqlEdit,define;

type
  TCatalog = class(TRadForm)
    ADODataSet1: TADODataSet;
    ADODataSet1Description: TVariantField;
    ADODataSet1Tbl: TWideStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADODataSet2: TADODataSet;
    ADODataSet2Description: TVariantField;
    ADODataSet2Col: TWideStringField;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    ADODataSet3: TADODataSet;
    Panel1: TPanel;
    RSqlDbLookup2: TRSqlDbLookup;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lkpReciever: TRSqlDbLookup;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    RSqlEdit1: TRSqlEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ADODataSet3ID: TIntegerField;
    ADODataSet3tbl: TStringField;
    ADODataSet3col: TStringField;
    ADODataSet3desc: TStringField;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    RSqlEdit2: TRSqlEdit;
    procedure ADODataSet1AfterScroll(DataSet: TDataSet);
    procedure ADODataSet2AfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure RSqlEdit1Change(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Catalog: TCatalog;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TCatalog.ADODataSet1AfterScroll(DataSet: TDataSet);
begin
 ADODataSet2.close;
 ADODataSet2.Parameters[0].Value:=ADODataSet1Tbl.Value;
 ADODataSet2.Open;
end;

procedure TCatalog.ADODataSet2AfterScroll(DataSet: TDataSet);
begin
 ADODataSet3.close;
 ADODataSet3.Parameters[0].Value:=ADODataSet1Tbl.Value;
 ADODataSet3.Parameters[1].Value:=ADODataSet2Col.Value;
 ADODataSet3.Open;
end;

procedure TCatalog.FormShow(Sender: TObject);
begin
 ADODataSet1.close;
 ADODataSet1.Open;
 ADODataSet2.close;
 ADODataSet2.Open;
 ADODataSet3.close;
 ADODataSet3.Open;
end;

procedure TCatalog.Panel1DblClick(Sender: TObject);
begin
  DBEdit3.Visible:=true;
  DBEdit4.Visible:=true;
  DBEdit5.Visible:=true;
  DBEdit6.Visible:=true;
end;

procedure TCatalog.RSqlEdit1Change(Sender: TObject);
begin
  ADODataSet1.close;
 ADODataSet1.Parameters[0].Value:=RSqlEdit1.Text;
 ADODataSet1.Parameters[1].Value:=RSqlEdit2.Text;
 ADODataSet1.Open;
 lkpReciever.KeyValue:=ADODataSet1Tbl.Value;
 while Not(ADODataSet2.Eof) do
 begin
   if ADODataSet3.RecordCount=0 then
      ADODataSet2.Next
   else
     Exit;
 end;
 RSqlDbLookup2.KeyValue:=ADODataSet2Col.Value;
end;

procedure TCatalog.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
  idLast:Integer;
begin
  if Key=107 then  //'+'
  begin
     ADODataSet3.Last;
     idLast:=ADODataSet3ID.Value+1;
     ADODataSet3.Append;
     ADODataSet3ID.Value:=idLast;
     ADODataSet3tbl.Value:=ADODataSet1Tbl.Value;
     ADODataSet3col.Value:=ADODataSet2col.Value;
     DBEdit1.Text:=IntToStr(idLast);
     DBEdit3.Text:=ADODataSet1Tbl.Value;
     DBEdit4.Text:=ADODataSet2col.Value;
  end
  else if Key=109 then  //'-'
    if MessageDlg('¬Ì« ‘„« „ÿ„⁄‰ Â” Ìœ ﬂÂ „Ì ŒÊ«ÂÌœ «Ì‰ «ÿ·«⁄«  Å«ﬂ ‘Êœ', mtWarning, [mbYes, mbNo, mbCancel], 0)=mrYes then
       ADODataSet3.Delete;

end;


procedure TCatalog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TCatalog.DoDelete(var mes: TMessage);
begin
  ADODataSet3.Delete;
end;

procedure TCatalog.DoEdit(var mes: TMessage);
begin
  ADODataSet3.Edit;
end;

procedure TCatalog.DoNew(var mes: TMessage);
begin
  ADODataSet3.Append;
end;

end.
