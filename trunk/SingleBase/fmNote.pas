unit fmNote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, DBGrids, Buttons, Spin, Grids,define,db,
  ComCtrls, DBTables, Menus, OleCtnrs,Ufdate,variants;

type
  TNote = class(TForm)
    quDelSch: TQuery;
    quGetTatil: TQuery;
    quCntTab: TQuery;
    dsCntTab: TDataSource;
    quCntTabSAL: TSmallintField;
    quCntTabMAH: TSmallintField;
    quCntTabROUZ: TSmallintField;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    Panel2: TPanel;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    sgTst: TStringGrid;
    cbMah: TComboBox;
    seSal: TSpinEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    paTar: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel11: TPanel;
    Panel12: TPanel;
    DBMemo1: TDBMemo;
    quGetTr: TQuery;
    quCntTabDEFCD: TIntegerField;
    quCntTabNDESC: TMemoField;
    seda: TOleContainer;
    quCntTabSOLE: TBlobField;
    taTabNote: TTable;
    taTabNoteDEFCD: TIntegerField;
    taTabNoteSAL: TSmallintField;
    taTabNoteMAH: TSmallintField;
    taTabNoteROUZ: TSmallintField;
    taTabNoteNDESC: TMemoField;
    taTabNoteSOLE: TBlobField;
    sps: TSpeedButton;
    quChkNewNote: TQuery;
    quCntTabRTAG: TSmallintField;
    quCntTabFTIME: TStringField;
    quCntTabSA: TStringField;
    Panel10: TPanel;
    Panel14: TPanel;
    mmTat: TMemo;
    procedure cbMahChange(Sender: TObject);
    procedure sgTstSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dblPerClick(Sender: TObject);
    procedure sgTstDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spsClick(Sender: TObject);
  private
    SaveTat                :array[1.. 15] of string[2];
    cdper:string;
    SaveMeet               :array[1.. 100] of string[2];
    Ic,Kc,Kcnt       :integer;
    yy,mm,dd               :integer;
    procedure SetMeetPos;
    procedure SetTatil;
    procedure RefNote(cl,rw:integer);
    procedure ListClear;
    procedure SetMah(yg,mg,dg,mde:integer);
    procedure SetNow;
    procedure Chn_Color(cl,rw:integer;clr:Tcolor);
    procedure Ref_Color;
    { Private declarations }
  public
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    { Public declarations }
  end;

var
  Note: TNote;
implementation

uses DabDmdle, fmNEdit;
procedure TNote.DoNew(var mes :TMessage);
var MyBook    :TBookMark;
begin
     if (sgTst.cells[sgTst.col,sgTst.Row]<>'')  then
       begin
        quChkNewNote.Close;
        quChkNewNote.params[0].value:=DabData.LetCd;
        quChkNewNote.params[1].asinteger:=strtoint(copy(inttostr(seSal.value), 3, 2));
        quChkNewNote.params[2].asinteger:=MahAdad(cbMah.text);
        quChkNewNote.params[3].asinteger:=strtoint(sgTst.Cells[sgTst.Col,sgTst.Row]);
        quChkNewNote.Open;
        if quChkNewNote.RecordCount=0 then
         begin
            Nedit:=Tnedit.Create(Application);
            Nedit.salg:=strtoint(copy(inttostr(seSal.value), 3, 2));
            Nedit.Mahg:=MahAdad(cbMah.text);
            Nedit.Rouzg:=strtoint(sgTst.Cells[sgTst.Col,sgTst.Row]);
            Nedit.CdPer:=DabData.LetCd;
            Nedit.mde:=1;
            Nedit.Showmodal;
            Nedit.free;
            SetMeetPos;
            RefNote(sgTst.col,sgTst.row);
            if not quCntTabSole.IsNull then taTabNote.RefResh;
            MyBook:=quCntTab.GetBookMark;
            quCntTab.GotoBookMark(MyBook);
            quCntTab.FreeBookMark(MyBook);
         end
        else
         showmessage2('œ— «Ì‰ —Ê“ ﬁ»·« Ì«œœ«‘  ê–«‘ Â ‘œÂ «” ');
       end;
end;

procedure TNote.DoEdit(var mes :TMessage);
var MyBook:TBookMark;
begin
  if (sgTst.cells[sgTst.col,sgTst.Row]<>'') and (quCntTabSal.asstring<>'')  then
    begin
      Nedit:=Tnedit.Create(Application);
      Nedit.salg:=quCntTabSal.Value;
      Nedit.Mahg:=quCntTabMah.Value;;
      Nedit.Rouzg:=quCntTabRouz.Value;
      Nedit.CdPer:=DabData.LetCd;
      Nedit.Memo1.lines.assign(quCntTabNdesc);
      Nedit.mde:=2;
      Nedit.Showmodal;
      Nedit.free;
      MyBook:=quCntTab.GetBookMark;
      quCntTab.Close;
      quCntTab.params[0].value:=DabData.Letcd;
      quCntTab.params[1].asinteger:=strtoint(copy(inttostr(seSal.value),3,2));
      quCntTab.params[2].asinteger:=MahAdad(cbMah.text);
      quCntTab.params[3].asinteger:=strtoint(sgTst.Cells[sgTst.Col,sgTst.Row]);
      quCntTab.Open;
      RefNote(sgTst.Col,sgTst.Row);
      if not quCntTabSole.IsNull then taTabNote.RefResh;
      quCntTab.GotoBookMark(MyBook);
      quCntTab.FreeBookMark(MyBook);
    end;
end;

procedure TNote.DoPrint(var mes :TMessage);
begin
  //*******
end;

procedure TNote.DoDelete(var mes :TMessage);
begin
  if quCntTab.fieldbyname('DefCd').asstring<>'' then
    begin
     quDelSch.params[0].asinteger:=quCntTabSal.Value;
     quDelSch.params[1].asinteger:=quCntTabMah.Value;
     quDelSch.params[2].asinteger:=quCntTabRouz.Value;
     quDelSch.params[3].value:=DabData.LetCd;
     quDelSch.ExecSql;
     RefNote(sgTst.col,sgTst.row);
     SetMeetPos;
     sgTst.Refresh ;
     quCntTab.Close;
     quCntTab.params[0].value:=CdPer;
     quCntTab.params[1].asinteger:=strtoint(copy(inttostr(seSal.value),3,2));
     quCntTab.params[2].asinteger:=MahAdad(cbMah.text);
     quCntTab.params[3].asinteger:=strtoint(sgTst.Cells[sgTst.Col,sgTst.Row]);
     quCntTab.Open;
    end;
end;

procedure TNote.sgTstSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  RefNote(acol,arow);
end;
procedure TNote.RefNote(cl,rw:integer);
var p1,p2,p3       :integer;
begin
  ic:=1;
  p3:=0;
  p1:=strtoint(copy(inttostr(seSal.value),3,2));
  p2:=MahAdad(cbMah.text);
  if sgTst.Cells[Cl,Rw]<>'' then
   begin
     p3:=strtoint(sgTst.Cells[Cl,Rw]);
     paTar.caption:=sgTst.Cells[Cl,Rw]+' '+cbMah.text+' „«Â '+' ”‹«·'+seSal.text;
   end
  else
    paTar.caption:='';
  quCntTab.Close;
  quCntTab.params[0].value:=CdPer;
  quCntTab.params[1].asinteger:=p1;
  quCntTab.params[2].asinteger:=p2;
  quCntTab.params[3].asinteger:=p3;
  quCntTab.Open;
  if not quCntTabSole.IsNull then
     sps.show 
  else
     sps.Hide;
end;
procedure TNote.ListClear;
VAR I,J :INTEGER;
begin
 for i:=0 to 6 do
  for j:=1 to 6 do
    sgTst.CELLS[i,j]:='';
end;

{$R *.DFM}

procedure TNote.cbMahChange(Sender: TObject);
var salb:integer;
    mmm,sal :integer;
begin
  Sal:=strtoint(inttostr(seSal.value+621));
  if (sal mod 4)=0 then mmm:=1
  else
    mmm:=0;
  SalB:=sal+1;
  if cbMah.text='›—Ê—œÌ‰' then SetMah(Sal,3,21-mmm,1);
  if cbMah.text='«—œÌ»Â‘ ' then SetMah(Sal,4,21-mmm,1);
  if cbMah.text='Œ—œ«œ' then SetMah(Sal,5,22-mmm,1);
  if cbMah.text=' Ì—' then SetMah(Sal,6,22-mmm,1);
  if cbMah.text='„—œ«œ' then SetMah(Sal,7,23-mmm,1);
  if cbMah.text='‘Â—ÌÊ—' then SetMah(Sal,8,23-mmm,1);
  if cbMah.text='„Â—' then SetMah(Sal,9,23-mmm,0);
  if cbMah.text='¬»«‰' then SetMah(Sal,10,23-mmm,0);
  if cbMah.text='¬–—' then SetMah(Sal,11,22-mmm,0);
  if cbMah.text='œÌ' then SetMah(Sal,12,22-mmm,0);
  if cbMah.text='»Â„‰' then SetMah(SalB,1,21-mmm,0);
  if cbMah.text='«”›‰œ' then SetMah(SalB,2,20-mmm,-1);
  RefNote(sgTst.col,sgTst.row);
  SetTatil;
  SetMeetPos;
end;
procedure TNote.SetMah(yg,mg,dg,mde:integer);
var g,k,kk,ss,jj    :integer;
    ff                   :TdateTime;
begin
    ListClear;
    ff:=strtodate(inttostr(dg)+'/'+inttostr(mg)+'/'+inttostr(yg));
    k:=DayOfWeek(ff);
    if k=7 then k:=0;
    ss:=0;
    if k<7 then g:=6-k
    else g:=6;
    for kk:=1 to 6 do
     begin
       for jj:=0 to g do
        begin
         ss:=ss+1;
         if ss<=30+mde then
           sgTst.cells[jj+k,kk]:=inttostr(ss);
        end;
      k:=0;
      g:=6;
     end;
end;
procedure TNote.SetNow;
 var i,j   :integer;
    m1,y1 :integer;
 begin
  y1:=1300+strtoint(copy(disp_date,1,2));
  seSal.value:=y1;
  m1:=strtoint(copy(disp_date,7,2));
  cbMah.itemindex:=strtoint(copy(disp_date,4,2))-1;
  cbMahChange(nil);
  for i:=0 to 6 do
    for j:=1 to 6 do
     begin
      if sgTst.CELLS[i,j]<>'' then
       if strtoint(sgTst.CELLS[i,j])=m1 then
          begin
            sgTst.col:=i;
            sgTst.row:=j;
            SetMeetPos;
            break;
          end;
     end
 end;


procedure TNote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  taTabNote.Close;
  Action:=caFree;
end;

procedure TNote.BitBtn1Click(Sender: TObject);
begin
  SetNow;
  paTar.caption:=sgTst.Cells[sgTst.Col,sgTst.Row]+' '+cbMah.text+' „«Â '+' ”‹«·'+seSal.text;
end;

procedure TNote.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=19;
   Application.MainForm.Dispatch(mes);
end;

procedure TNote.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;
procedure TNote.dblPerClick(Sender: TObject);
begin
  SetNow;
end;
procedure TNote.Chn_color(cl,rw:integer;clr:Tcolor);
var
  Rct:TRect;
  ff1:integer;
begin
  sgTst.Canvas.Font.color:=clr;
  sgTst.Canvas.Font.size:=10;
  sgTst.Canvas.brush.color:=ClinfoBk;
  rct:=sgtst.CellRect(Cl,Rw);
  ff1:=(rct.right-rct.left)-(sgTst.Canvas.textwidth(sgTst.cells[Cl,Rw]));
  sgtst.Canvas.Textout(rct.left+ff1-3,Rct.top+2,sgTst.cells[Cl,Rw]);
end;
procedure TNote.Ref_color;
var i:integer;
begin
  for i:=1 to 6 do
   Chn_Color(6,i,clred);
  if kc>=2 then
    for i:=1 to kc-1 do
      Chn_Color(strtoint(copy(SaveTat[i],1,1)),strtoint(copy(SaveTat[i],2,1)),clred);
  if kcnt>=2 then
    for i:=1 to kcnt-1 do
      Chn_Color(strtoint(copy(SaveMeet[i],1,1)),strtoint(copy(SaveMeet[i],2,1)),clFuchsia);
end;

procedure TNote.sgTstDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  Ref_Color;
end;


procedure TNote.SetTatil;
var i,j  :integer;
begin
  kc:=1;
  quGetTatil.Close;
  quGetTatil.params[0].asinteger:=strtoint(copy(inttostr(seSal.value),3,2));
  quGetTatil.params[1].asinteger:=MahAdad(cbMah.text);
  quGetTatil.Open;
  quGetTatil.First;
  mmTat.Clear ;
  While Not quGetTatil.Eof do
   begin
    for i:=0 to 7  do
      for j:=1 to 6  do
        if SgTst.cells[i,j]=quGetTatil.fieldbyname('Rouz').asstring then
          begin
            SaveTat[kc]:=inttostr(i)+inttostr(j);
            mmtat.Lines.Add('- '+SgTst.cells[i,j]+' '+cbMah.text+' „«Â '+quGetTatil.fieldbyname('CDesc').asstring);
            kc:=kc+1;
            break;
          end;
     quGetTatil.Next;
   end;
end;

procedure TNote.SpeedButton1Click(Sender: TObject);
begin
 if cbMah.itemindex>0 then
  begin
   cbMah.itemindex:=cbMah.itemindex-1;
   cbMahChange(nil);
  end;
end;
procedure TNote.SpeedButton2Click(Sender: TObject);
begin
 if cbMah.itemindex<=11 then
  begin
   cbMah.itemindex:=cbMah.itemindex+1;
   cbMahChange(nil);
  end;
end;

procedure TNote.N2Click(Sender: TObject);
begin
 top:=2;
 left:=1;
end;
procedure TNote.SetMeetPos;
var i,j:integer;
begin
  Kcnt:=1;
  quGetTr.Close;
  quGetTr.params[0].value:=CdPer;
  quGetTr.params[1].asinteger:=strtoint(copy(inttostr(seSal.value),3,2));
  quGetTr.params[2].asinteger:=MahAdad(cbMah.text);
  quGetTr.Open;
  quGetTr.First;
  While Not quGetTr.Eof do
   begin
    for i:=0 to 7  do
      for j:=1 to 6  do
        if SgTst.cells[i,j]=quGetTr.fieldbyname('Rouz').asstring then
          begin
            SaveMeet[kcnt]:=inttostr(i)+inttostr(j);
            kcnt:=kcnt+1;
            break;
          end;
     quGetTr.Next;
   end;
end;

procedure TNote.FormCreate(Sender: TObject);
begin
  taTabNote.Open;
  CdPer:=DabData.LetCd;
  top:=2;
  left:=1;
  yy:=99;
  dd:=21;
  mm:=3;
  panel2.refresh;
  SetNow;
end;

procedure TNote.spsClick(Sender: TObject);
var RdocStream  :TBlobStream;
    v1,v2,v3,v4 :variant;
begin
  taTabNote.RefResh;
  v1:=quCntTabsal.value;
  v2:=quCntTabmah.value;
  v3:=quCntTabrouz.Value;
  v4:=quCntTabDefCd.value;
  if taTabNote.Locate('sal;mah;rouz;defcd',vararrayof([v1,v2,v3,v4]),[]) then
   begin
     RdocStream:=TBlobStream.Create(taTabNoteSole,bmRead);
     Seda.LoadFromStream(RdocStream);
     Seda.DoVerb(OvPrimary);
     RdocStream.Free;
   end;
end;

end.

