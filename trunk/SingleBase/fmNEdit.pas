unit fmNEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Db, DBTables, OleCtnrs,variants;

type
  TNedit = class(TForm)
    quInsertNote: TQuery;
    quUpdateNote: TQuery;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel2: TPanel;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    cbSeda: TCheckBox;
    seda: TOleContainer;
    taTabNote: TTable;
    taTabNoteDEFCD: TIntegerField;
    taTabNoteSAL: TSmallintField;
    taTabNoteMAH: TSmallintField;
    taTabNoteROUZ: TSmallintField;
    taTabNoteNDESC: TMemoField;
    taTabNoteSOLE: TBlobField;
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure cbSedaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
     Procedure PutSOnPer;
    { Private declarations }
  public
    mde,salg,mahg,rouzg   :integer;
    cdper:string;
    { Public declarations }
  end;

var
  Nedit: TNedit;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TNedit.BitBtn5Click(Sender: TObject);
begin
  close;
end;

procedure TNedit.Button1Click(Sender: TObject);
begin
  if mde=1 then
   begin
     quInsertnote.params[0].asinteger:=salg;
     quInsertnote.params[1].asinteger:=mahg;
     quInsertnote.params[2].asinteger:=rouzg;
     quInsertnote.params[3].value:=CdPer;
     quInsertnote.params[4].assign(memo1.lines);
     quInsertnote.ExecSql;
     if cbseda.Checked then putsOnper;
   end
  else
   begin
     quUpdateNote.params[0].assign(memo1.lines);
     quUpdateNote.params[1].asinteger:=salg;
     quUpdateNote.params[2].asinteger:=mahg;
     quUpdateNote.params[3].asinteger:=rouzg;
     quUpdateNote.params[4].value:=CdPer;
     quUpdateNote.ExecSql;
     if cbseda.Checked then putsOnper;
   end;

 close;
end;

procedure TNedit.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TNedit.Memo1Change(Sender: TObject);
begin
 if memo1.lines.Count>0 then
   Button1.Enabled:=true
 else
   Button1.Enabled:=false;

end;

procedure TNedit.cbSedaClick(Sender: TObject);
begin
  if cbSeda.Checked  then
    begin
      bitbtn3.show;
      bitbtn2.show;
    end
  else
    begin
      bitbtn3.hide;
      bitbtn2.hide;
    end
end;

procedure TNedit.BitBtn3Click(Sender: TObject);
begin
  Seda.doVerb(ovShow);
end;

procedure TNedit.BitBtn2Click(Sender: TObject);
begin
  Seda.doVerb(ovprimary);
end;
Procedure TNedit.PutSOnPer;
var  DocStream:TMemorystream;
     v1,v2,v3,v4 :variant;
begin
    taTabNote.Open;
    DocStream:=TMemorystream.Create;
    Seda.SaveToStream(DocStream);
    v1:=salg;
    v2:=mahg;
    v3:=rouzg;
    v4:=cdper;
    if taTabNote.Locate('sal;mah;rouz;defcd',vararrayof([v1,v2,v3,v4]),[]) then
     begin
       taTabNote.Edit;
       taTabNoteSole.LoadFromStream(DocStream);
       taTabNote.Post;
     end;
    DocStream.Free;
    taTabNote.Close;
end;

end.
