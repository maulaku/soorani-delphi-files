unit fmCalendar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Menus, DB, ADODB, fcClearPanel, fcButtonGroup, StdCtrls, fcButton,
  fcImgBtn, Grids, Buttons, ExtCtrls, ComCtrls, fcLabel,RadForms,Fard
  , RXDBCtrl, DBCtrls;

type
  TCalendar = class(TRadForm)
    Panel1: TPanel;
    Label17: TfcLabel;
    PopupMenu2: TPopupMenu;
    N25: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pg: TPageControl;
    tabday: TTabSheet;
    Panel18: TPanel;
    Bevel1: TBevel;
    peedButton6: TSpeedButton;
    peedButton1: TSpeedButton;
    peedButton2: TSpeedButton;
    peedButton5: TSpeedButton;
    peedButton3: TSpeedButton;
    peedButton4: TSpeedButton;
    peedButton7: TSpeedButton;
    peedButton8: TSpeedButton;
    peedButton9: TSpeedButton;
    peedButton10: TSpeedButton;
    peedButton11: TSpeedButton;
    peedButton12: TSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    cbMah: TComboBox;
    paTar: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    lbsal: TLabel;
    sgTst: TStringGrid;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel27: TPanel;
    lbhour: TListBox;
    Panel16: TPanel;
    SpeedButton6: TSpeedButton;
    StDay: TStringGrid;
    tabweek: TTabSheet;
    Panel28: TPanel;
    lb0: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    lb5: TLabel;
    lb6: TLabel;
    stweek: TStringGrid;
    p6: TPanel;
    p5: TPanel;
    p4: TPanel;
    p2: TPanel;
    p1: TPanel;
    p7: TPanel;
    p3: TPanel;
    Panel29: TPanel;
    lbweek: TLabel;
    tabmonth: TTabSheet;
    Label26: TLabel;
    stmonth: TStringGrid;
    Panel15: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Panel17: TPanel;
    lbmonth: TLabel;
    pnlw: TPanel;
    fcButtonGroup1: TfcButtonGroup;
    fcButtonGroup1fcImageBtn1: TfcImageBtn;
    fcButtonGroup1fcImageBtn2: TfcImageBtn;
    fcButtonGroup1fcImageBtn3: TfcImageBtn;
    dsuCALENDAR_EVENTS: TADODataSet;
    dsuCALENDAR_EVENTSCALENDAR_SRL: TStringField;
    dsuCALENDAR_EVENTSEVENT_DATE: TStringField;
    dsuCALENDAR_EVENTSEVENT_TYPE: TStringField;
    dsuCALENDAR_EVENTSEVENT_DSC: TStringField;
    dsuCALENDAR_EVENTSMANDATORY_OT: TStringField;
    dsuCALENDAR_EVENTSSal: TStringField;
    dsuCALENDAR_EVENTSMah: TStringField;
    dsuCALENDAR_EVENTSRouz: TStringField;
    Image1: TImage;
    dsuCalendar_Events_Day: TADODataSet;
    dsuCalendar_Events_DaySal: TStringField;
    dsuCalendar_Events_DayMah: TStringField;
    dsuCalendar_Events_DayRouz: TStringField;
    dsuCalendar_Events_DayCALENDAR_SRL: TStringField;
    dsuCalendar_Events_DayEVENT_DATE: TStringField;
    dsuCalendar_Events_DayEVENT_TYPE: TStringField;
    dsuCalendar_Events_DayEVENT_DSC: TStringField;
    dsuCalendar_Events_DayMANDATORY_OT: TStringField;
    mmLabel: TDBMemo;
    DataSource1: TDataSource;
    procedure RxDBGrid1GetCellParams2(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid3GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure sgTstDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgTstSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbMahChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure tabdayShow(Sender: TObject);
    procedure peedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure sgTstDblClick(Sender: TObject);
    procedure stmonthDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stmonthDblClick(Sender: TObject);
    procedure tabmonthShow(Sender: TObject);
    procedure pgChange(Sender: TObject);
    procedure StDayDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure stweekDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure tabweekShow(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure fcButtonGroup1fcImageBtn1Click(Sender: TObject);
    procedure fcButtonGroup1fcImageBtn2Click(Sender: TObject);
    procedure fcButtonGroup1fcImageBtn3Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetHoliday;
  private
    { Private declarations }
  public
   tim:integer;
   prv:boolean;
   admin:boolean;
   uno:integer;
   pr:boolean;
   kc,ic:integer;
   yy,mm,dd :integer;
   SaveTat:array[1.. 10] of string[3];
   Pa:array[1.. 10] of TShape;
   Function  SetWeek(acl,Rcl:integer):string;
   procedure ref_color;
   procedure Chn_Color(cl,rw:integer;clr:Tcolor);
    procedure SetMah(yg,mg,dg,mde:integer);
    procedure setnow;
    procedure listclear;
    procedure setstmah;
    procedure getdate(acol,arow:integer;var y,m,d:integer);
    procedure getmonthfromdb;
    procedure initstday;
    procedure getweekfromdb;
    procedure initcap;
    procedure initstweektime;
    function setttl(s:string):boolean;

  end;

var
  Calendar: TCalendar;
  FDate: TFar_date;
  _cut:boolean=false;
  _copy:boolean=false;
  lb:array [0..10,0..10] of Tlabel;
  y,m,d,kkk:integer;
  first:boolean=false;
  yy1,mm1,dd1:integer;
  dbl:boolean=false;
  pghng:boolean;
  strsrch:string;
  time:integer;
implementation

uses  DabDmdle;


{$R *.DFM}





procedure TCalendar.RxDBGrid1GetCellParams2(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
 if (sender as TRxDBGrid).DataSource.DataSet.FieldByName('pr').AsInteger=1 then
 begin
  Background:=$00d2ffd2;
  AFont.Color:=clblack;
 end;
 if ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('t1').AsInteger=4) and ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('show').AsInteger=0) then
   if Field.FieldName='sh' then AFont.Size:=8
 else  if ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('t2').AsInteger=4) and ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('show').AsInteger=1) then
   if Field.FieldName='sh' then AFont.Size:=8
 else  if ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('t3').AsInteger=4) and ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('show').AsInteger=2) then
   if Field.FieldName='sh' then AFont.Size:=8
 else  if ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('t4').AsInteger=4) and ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('show').AsInteger=3) then
   if Field.FieldName='sh' then AFont.Size:=8
 else  if ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('t5').AsInteger=4) and ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('show').AsInteger=4) then
   if Field.FieldName='sh' then AFont.Size:=8
 else  if ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('t6').AsInteger=4) and ((sender as TRxDBGrid).DataSource.DataSet.FieldByName('show').AsInteger=5) then
   if Field.FieldName='sh' then AFont.Size:=8;
end;



procedure TCalendar.RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin

 if (sender as TRxDBGrid).DataSource.DataSet.FieldByName('pr').AsInteger=1 then
  if (sender as TRxDBGrid).DataSource.DataSet.FieldByName('cmpl').AsInteger=1 then
  begin
   Background:=$00ffb3ff;
   AFont.Color:=clblack;
  end
  else
  begin
   Background:=$00d2ffd2;
   AFont.Color:=clblack;
  end
 else //no pr
  if (sender as TRxDBGrid).DataSource.DataSet.FieldByName('cmpl').AsInteger=1 then
  begin
   Background:=clSilver;
   AFont.Color:=clblack;
  end
  else
  begin
  end;
  if field.fieldname='Note' then
   case (sender as TRxDBGrid).DataSource.DataSet.FieldByName('priority').AsInteger of
    0: Background:=$00a953ff;
    1: Background:=$00dbb7ff;
    2: Background:=$00A4D1FF;
    3: Background:=$009bffff;
    4: Background:=clwhite;
   end;
end;



procedure TCalendar.RxDBGrid3GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
 if (sender as TRxDBGrid).DataSource.DataSet.FieldByName('pr').AsInteger=1 then
 begin
  Background:=$00d2ffd2;
  AFont.Color:=clblack;
 end;
end;














procedure TCalendar.sgTstDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  Ref_Color;
end;

procedure TCalendar.ref_color;
var i:integer;
begin
  if kc>=2 then
    for i:=1 to kc-1 do
      if SaveTat[i]<>'' then
        Chn_Color(strtoint(copy(SaveTat[i],1,1)),strtoint(copy(SaveTat[i],2,1)),strtoint(copy(SaveTat[i],3,1)));
  for i:=1 to 6 do
    Chn_Color(6,i,clred);
end;

procedure TCalendar.Chn_Color(cl, rw: integer; clr: Tcolor);
var
  Rct:TRect;
  ff1:integer;
begin
  if clr=5 then
    sgTst.Canvas.Font.color:=clBlue
  else
    sgTst.Canvas.Font.color:=clRed;
  sgTst.Canvas.Font.size:=10;
  sgTst.Canvas.brush.color:=ClinfoBk;
  rct:=sgtst.CellRect(Cl,Rw);
  ff1:=(rct.right-rct.left)-(sgTst.Canvas.textwidth(sgTst.cells[Cl,Rw]));
  sgtst.Canvas.Textout(rct.left+ff1-3,Rct.top+2,sgTst.cells[Cl,Rw]);

end;

procedure TCalendar.sgTstSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 if sgtst.cells[acol,arow]='' then canselect:=false
 else
 begin
  getdate(acol,arow,y,m,d);
  dsuCalendar_Events_Day.Close;
  dsuCalendar_Events_Day.Parameters[0].Value:='13'+IntToStr(y);
  dsuCalendar_Events_Day.Parameters[1].Value:=m;
  dsuCalendar_Events_Day.Parameters[2].Value:=d;
  dsuCalendar_Events_Day.Open;
  mmLabel.Text:=dsuCalendar_Events_DayEVENT_DSC.Value;

  initstday;
 end;
end;

function TCalendar.SetWeek(acl, Rcl: integer): string;
var Dhaf :string;
begin
  case acl of
   0:Dhaf:='‘‰»Â';
   1:Dhaf:='Ìﬂ‘‰»Â';
   2:Dhaf:='œÊ‘‰»Â';
   3:Dhaf:='”Â ‘‰»Â';
   4:Dhaf:='çÂ«—‘‰»Â';
   5:Dhaf:='Å‰Ã ‘‰»Â';
   6:Dhaf:='Ã„⁄Â';
  end;
  SetWeek:=Dhaf;
end;

procedure TCalendar.cbMahChange(Sender: TObject);
var salb:integer;
    mmm,sal,esm :integer;
begin
  Sal:=strtoint(inttostr(strtoint(lbSal.caption)+621));
  if (sal mod 4)=0 then
   begin
     mmm:=1;
     esm:=0
   end
  else
   begin
     mmm:=0;
     esm:=-1;
   end;
  SalB:=sal+1;
  if cbMah.text='›—Ê—œÌ‰'  then SetMah(Sal,3,21-mmm,1);
  if cbMah.text='«—œÌ»Â‘ ' then SetMah(Sal,4,21-mmm,1);
  if cbMah.text='Œ—œ«œ'    then SetMah(Sal,5,22-mmm,1);
  if cbMah.text=' Ì—'      then SetMah(Sal,6,22-mmm,1);
  if cbMah.text='„—œ«œ'    then SetMah(Sal,7,23-mmm,1);
  if cbMah.text='‘Â—ÌÊ—'   then SetMah(Sal,8,23-mmm,1);
  if cbMah.text='„Â—'      then SetMah(Sal,9,23-mmm,0);
  if cbMah.text='¬»«‰'     then SetMah(Sal,10,23-mmm,0);
  if cbMah.text='¬–—'      then SetMah(Sal,11,22-mmm,0);
  if cbMah.text='œÌ'       then SetMah(Sal,12,22-mmm,0);
  if cbMah.text='»Â„‰'     then SetMah(SalB,1,21-mmm,0);
  if cbMah.text='«”›‰œ'    then SetMah(SalB,2,20-mmm,esm);
end;

procedure TCalendar.SpeedButton6Click(Sender: TObject);
begin
 setnow;
 SetHoliday;
 Ref_Color;
 paTar.caption:=SetWeek(sgTst.Col,sgTst.Row)+' '+sgTst.Cells[sgTst.Col,sgTst.Row]+' '+cbMah.text+' „«Â '+' ”‹«·'+lbsal.caption;
end;

procedure TCalendar.SetMah(yg, mg, dg, mde: integer);
var g,k,kk,ss,jj    :Integer;
    ff              :TDateTime;
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


procedure TCalendar.tabdayShow(Sender: TObject);
begin
if not first then
begin
 initstweektime;
 setnow;
 pg.activepageindex:=1;
 pg.activepageindex:=0;
 first:=true;
 setnow;
end;
end;

procedure TCalendar.setnow;
 var i,j  :integer;
    m1,y1 :integer;
 begin
  y1:=1300+strtoint(copy(FDate.disp_date(DabData.ADOC),1,2));
  lbsal.caption:=inttostr(y1);
  m1:=strtoint(copy(FDate.disp_date(DabData.ADOC),7,2));
  cbMah.itemindex:=strtoint(copy(FDate.disp_date(DabData.ADOC),4,2))-1;
  cbMahChange(nil);
end;

procedure TCalendar.listclear;
VAR I,J :INTEGER;
begin
 for i:=0 to 6 do
  for j:=1 to 6 do
    sgTst.CELLS[i,j]:='';

end;

procedure TCalendar.peedButton1Click(Sender: TObject);
begin
 cbmah.Itemindex:=(sender as tspeedbutton).tag-1;
 cbmahchange(nil);
 setstmah;
 SetHoliday;
 SetHoliday;
 ref_color;
 initstday;
 getdate(sgtst.col,sgtst.row,y,m,d);
end;

procedure TCalendar.SpeedButton7Click(Sender: TObject);
begin
 lbsal.caption:=inttostr(strtoint(lbsal.caption)+1);
 cbmahchange(nil);
 setstmah;
end;

procedure TCalendar.SpeedButton8Click(Sender: TObject);
begin
 lbsal.caption:=inttostr(strtoint(lbsal.caption)-1);
 cbmahchange(nil);
 setstmah;
end;

procedure TCalendar.setstmah;
var
 i,j:integer;
 r:trect;
begin
  stmonth.bidimode:=bdrighttoleft;
  stmonth.refresh;
 for i:=1 to 7 do
 begin
  for j:=0 to 6 do
  begin
  begin
  if lb[j,i-1]=nil then
  begin
   Lb[j,i-1]:=TLabel.Create(StMonth);
   lb[j,i-1].transparent:=false;
  end;
   Lb[j,i-1].Parent:=StMonth;
   if SgTst.Cells[j,i]='' then
   begin
    lb[j,i-1].tag:=1;
    lb[j,i-1].visible:=false;
   end
   else
   begin
    lb[j,i-1].tag:=0;
    lb[j,i-1].visible:=true;
   end;
   Lb[j,i-1].Caption:=SgTst.Cells[j,i];
   r:=stmonth.cellrect(j,i-1);
   lb[j,i-1].autosize:=false;
   lb[j,i-1].left:=r.left+0;//+StMonth.DefaultColWidth;
   lb[j,i-1].top:=r.top+1;
   lb[j,i-1].height:=20;
   lb[j,i-1].width:=r.right-r.left-0;
   lb[j,i-1].color:=$00EAD5D5;
   lb[j,i-1].alignment:=taleftjustify;
    if j<>6 then
      lb[j,i-1].font.color:=clpurple
   else
      lb[j,i-1].font.color:=clRed;
   if SgTst.Cells[j,i]<>'' then
   begin
    if setttl(SgTst.Cells[j,i]) then
       lb[j,i-1].font.color:=clRed;
   end;
   if sgtst.cells[sgtst.col,sgtst.row]<>'' then
   begin
    if dbl then
    begin
    getdate(sgtst.col,sgtst.row,yy1,mm1,dd1);
    if (Lb[j,i-1].Caption<>'') and (strtoint(Lb[j,i-1].Caption)=dd1) then
    begin
     lb[j,i-1].font.color:=clyellow;
     lb[j,i-1].color:=clblue;
     lb[j,i-1].width:=r.right-r.left-0;
    end;
    end;
   end;
  end;
  end;//j
 end;//i
end;

procedure TCalendar.getdate(acol, arow: integer; var y, m, d: integer);
var i:integer;
begin
 d:=0;
 if ic>1 then
    for i:=1 to ic-1 do
      pa[i].free;
  ic:=1;
  lbsal.caption:='13'+copy(lbsal.caption,3,2);
  y:=strtoint(copy(lbsal.caption,3,2));
  M:=cbMah.ItemIndex+1;
  if sgTst.Cells[aCol,aRow]<>'' then
    d:=strtoint(sgTst.Cells[aCol,aRow]);
end;

procedure TCalendar.sgTstDblClick(Sender: TObject);
begin
 pg.activepageindex:=0;
 pg.ActivePageIndex:=2;
 dbl:=true;
 setstmah;
 dbl:=false;
 getmonthfromdb;
 fcButtonGroup1fcImageBtn3.down:=true;
end;

procedure TCalendar.stmonthDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
//if  stmonth.cells[acol,arow]='' then
if lb[acol,arow]<>nil then
 if  lb[acol,arow].tag=1 then
begin
 dec(rect.right,2);
 dec(rect.bottom,2);
 inc(rect.top,2);
 inc(rect.left,2);
 stmonth.Canvas.brush.color:=clsilver;
 stmonth.Canvas.FillRect(rect);
end
else
begin
end;
 inherited;
end;


procedure TCalendar.stmonthDblClick(Sender: TObject);
begin
 tabday.show;
end;


procedure TCalendar.tabmonthShow(Sender: TObject);
begin
 lbmonth.caption:=cbMah.text+' „«Â '+'   '+' ”«· '+lbsal.caption+' ';
end;

procedure TCalendar.pgChange(Sender: TObject);
begin
 pghng:=true;
 if pg.activepageindex=2 then
 begin
  setstmah;
  getmonthfromdb;
 end;
 if pg.activepageindex=0 then
 begin
  if not first then
  begin
   first:=true;
   pg.ActivePageIndex:=2;
   pg.ActivePageIndex:=0;
  end;
 end;
end;

procedure TCalendar.getmonthfromdb;
var i,j:integer;
begin
pnlw.Visible:=true;
pnlw.repaint;
for i:=0 to 5 do
 for j:=0 to 6 do
  stmonth.cells[j,i]:='';
pnlw.visible:=false;
end;





procedure TCalendar.initstday;
var j:integer;
begin
 for j:=0 to lbhour.items.count-1 do
 begin
    if j=0 then
    begin
        StDay.cells[0,j]:=lbhour.items[j]+':00'+'’»Õ';
    end
    else
    begin
        if j=12 then
            StDay.cells[0,j]:=lbhour.items[j]+':00'+'⁄’—'
        else
            StDay.cells[0,j]:=lbhour.items[j]+':00';
    end;
 end;
 kkk:=0;

end;



procedure TCalendar.StDayDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
 if gdselected in state then
 begin
   stday.canvas.brush.color:=stday.color;
   StDay.Canvas.FillRect(rect);
 end;
end;

procedure TCalendar.stweekDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var i,j:integer;
begin
 if gdselected in state then
 begin
   stweek.canvas.brush.color:=stweek.color;
   Stweek.Canvas.FillRect(rect);
 end;
 if (acol<>0) then
 if (tlabel(findcomponent('lb'+inttostr(acol-1))).caption)='' then
 begin
  dec(rect.right,2);
  dec(rect.bottom,2);
  inc(rect.top,2);
  inc(rect.left,2);
  stweek.Canvas.brush.color:=clsilver;
  stweek.Canvas.FillRect(rect);
 end;

{  if sgtst.cells[acol,sgtst.row]='' then
  begin
    stweek.canvas.brush.color:=clsilver;
    stweek.canvas.FillRect(rect);
  end //if
  else
  begin
    stweek.canvas.brush.color:=stweek.color;
  end;}

end;

procedure TCalendar.tabweekShow(Sender: TObject);
var s:string;
begin
 case sgTst.row of
  1:s:='«Ê·';
  2:s:='œÊ„';
  3:s:='”Ê„';
  4:s:='çÂ«—„';
  5:s:='Å‰Ã„';
  6:s:='‘‘„';
 end;//case
 lbweek.caption:=' Â› Â '+s+'     '+cbMah.text+' „«Â '+'   '+' ”«· '+lbsal.caption+' ';
 initcap;
 getweekfromdb;
end;

procedure TCalendar.getweekfromdb;
var i,j,k,l:integer;
begin
if pghng then
begin
 pghng:=false;
 initcap;
// initstweek;
end;
for k:=1 to 7 do
begin
if tlabel(findcomponent('lb'+inttostr(k-1))).caption<>'' then
begin
 j:=strtoint(tlabel(findcomponent('lb'+inttostr(k-1))).caption);
 l:=k;
end;
end;
  stweek.col:=l;
  stweek.toprow:=tim+1;
end;
procedure TCalendar.initcap;
var i:integer;
begin
 stweek.RowHeights[0]:=25;
{ stweek.cells[1,0]:='‘‰»Â';
 stweek.cells[2,0]:='Ìﬂ‘‰»Â';
 stweek.cells[3,0]:='œÊ‘‰»Â';
 stweek.cells[4,0]:='”Â ‘‰»Â';
 stweek.cells[5,0]:='çÂ«— ‘‰»Â';
 stweek.cells[6,0]:='Å‰Ã ‘‰»Â';
 stweek.cells[7,0]:='Ã„⁄Â';}
 p1.caption:='‘‰»Â';
 p2.caption:='Ìﬂ‘‰»Â';
 p3.caption:='œÊ‘‰»Â';
 p4.caption:='”Â ‘‰»Â';
 p5.caption:='çÂ«— ‘‰»Â';
 p6.caption:='Å‰Ã ‘‰»Â';
 p7.caption:='Ã„⁄Â';
 for i:=1 to 7 do
 begin
//  stweek.cells[i,0]:=stweek.cells[i,0]+' '+sgtst.cells[i-1,sgtst.row];
  tpanel(findcomponent('p'+inttostr(i))).caption:=tpanel(findcomponent('p'+inttostr(i))).caption+' '+sgtst.cells[i-1,sgtst.row];
  tlabel(findcomponent('lb'+inttostr(i-1))).caption:=sgtst.cells[i-1,sgtst.row];
  if setttl(tlabel(findcomponent('lb'+inttostr(i-1))).caption) then
     tpanel(findcomponent('p'+inttostr(i))).font.color:=clred;
 end; //for
 stweek.tag:=cbmah.itemindex+1;
 stweek.cells[0,0]:=cbmah.text;
end;

procedure TCalendar.N25Click(Sender: TObject);
var iy,im,id,i:integer;
begin
 getdate(sgtst.col,sgtst.row,iy,im,id);
 if mmLabel.Text='' then
   dsuCalendar_Events_Day.Append
 else
   dsuCalendar_Events_Day.Edit;
 if (im <10) and (id<10) then
   dsuCalendar_Events_DayEVENT_DATE.Value:='13'+IntToStr(iy)+'/'+'0'+IntToStr(im)+'/'+'0'+IntToStr(id)
 else if (im<10) then
   dsuCalendar_Events_DayEVENT_DATE.Value:='13'+IntToStr(iy)+'/'+'0'+IntToStr(im)+'/'+IntToStr(id)
 else if (id<10) then
   dsuCalendar_Events_DayEVENT_DATE.Value:='13'+IntToStr(iy)+'/'+IntToStr(im)+'/'+IntToStr(id)
 else
   dsuCalendar_Events_DayEVENT_DATE.Value:='13'+IntToStr(iy)+'/'+IntToStr(im)+'/'+IntToStr(id);
 dsuCalendar_Events_DayCALENDAR_SRL.Value:='1';
((FindComponent('peedbutton'+inttostr(cbMah.itemindex+1))) as tspeedbutton).click;
end;

procedure TCalendar.initstweektime;
var j:integer;
begin
 for j:=0 to lbhour.items.count-1 do
   if j=0 then Stweek.cells[0,j+1]:=lbhour.items[j]+':00'+'’»Õ'
   else if j=12 then Stweek.cells[0,j+1]:=lbhour.items[j]+':00'+'⁄’—'
   else Stweek.cells[0,j+1]:=lbhour.items[j]+':00';
end;

procedure TCalendar.fcButtonGroup1fcImageBtn1Click(Sender: TObject);
begin
 tabday.show;
 fcButtonGroup1fcImageBtn1.down:=true;
end;

procedure TCalendar.fcButtonGroup1fcImageBtn2Click(Sender: TObject);
begin
 tabweek.show;
 fcButtonGroup1fcImageBtn2.down:=true;
end;

procedure TCalendar.fcButtonGroup1fcImageBtn3Click(Sender: TObject);
begin
 tabmonth.show;
 pgchange(pg);
 fcButtonGroup1fcImageBtn3.down:=true;
end;

procedure TCalendar.N23Click(Sender: TObject);
begin
 N25click(nil);
end;




procedure TCalendar.Edit1Exit(Sender: TObject);
begin
 (sender as tedit).text:='';
end;


function TCalendar.setttl(s:string):boolean;
var i,j:integer;
    _y,_m,_d:integer;
begin
 result:=false;
 if trim(s)<>'' then
 begin
 j:=strtoint(s);
 for i:=low(savetat) to high(savetat) do
 begin
  if savetat[i]<>'' then
  begin
   getdate(strtoint(savetat[i][1]),strtoint(savetat[i][2]),_y,_m,_d);
   if j=_d then result:=true;
  end;
 end;
 end;
end;




procedure TCalendar.FormShow(Sender: TObject);
begin
 inherited;
 setnow;
 SetHoliday;
 SetHoliday;
 ref_color;
 tabday.show;
end;

procedure TCalendar.SetHoliday;
var i,j:integer;
begin
  kc:=0;
  for i:=0 to 12  do
    SaveTat[i]:='';
  dsuCALENDAR_EVENTS.Close;
  dsuCALENDAR_EVENTS.Open;
  dsuCALENDAR_EVENTS.Parameters[0].Value:=strtoint(lbsal.caption);
  dsuCALENDAR_EVENTS.Parameters[1].Value:=cbMah.itemindex+1;
  dsuCALENDAR_EVENTS.First;
  while not(dsuCALENDAR_EVENTS.Eof) do
  begin
    for i:=0 to 7  do
      for j:=1 to 6  do
        if SgTst.cells[i,j]=dsuCALENDAR_EVENTS.fieldbyname('Rouz').asstring then
          begin
            SaveTat[kc]:=inttostr(i)+inttostr(j)+dsuCALENDAR_EVENTSEVENT_TYPE.Value;
            kc:=kc+1;
            break;
          end;
     dsuCALENDAR_EVENTS.Next;
  end;
end;

end.
