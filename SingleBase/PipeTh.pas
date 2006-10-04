unit PipeTh;

interface

uses
  Classes,Forms,Extctrls,Windows,Graphics,Messages;

type
  TPipe = class(TThread)
  private
    { Private declarations }
   Form : TForm;
   HObj,TObj : TShape;
   State : smallint;
   procedure Connect(component:TForm;HeadObject,TailObject: TShape;state:smallint);
  protected
    procedure Execute; override;
  public
   procedure LinkShape (Frm : TForm;SShape,DShape:TShape;Op : smallint);
  end;

implementation

{Uses
 FmTv;}

 { TPipe }

procedure TPipe.Execute;
Var
 Mes : TMessage;
begin
 Connect(Form,HObj,TObj,State);
 Mes.Msg:=Wm_User+5005;
 TTV(Form).Mon.Id:=Self.ThreadID;
 TTV(Form).Mon.Dispatch(Mes);
end;

procedure TPipe.LinkShape(Frm: TForm; SShape, DShape: TShape;
  Op: smallint);
begin
 Form:=Frm;
 HObj:=SShape;
 TObj:=DShape;
 State:=Op;
end;

procedure TPipe.Connect(component:TForm;HeadObject,TailObject: TShape;state:smallint);
const Speed=1;
      SelfHeight=10;
var
 BackColor,ForColor,ContextColor:TColor;
 width,length:integer;
 brect,erect:trect;
 BeginPoint,EndPoint,Point:Tpoint;
 i,j:real;
 y1 : TBitMap;
 z,h : TRect;
begin

 //x:=component.Canvas.Handle;
 y1:=TBitMap.Create;

 i:=1;
 component.Canvas.CopyMode:=cmSrcInvert;
 case state of
 1: BackColor:=clGreen;
 2: BackColor:=clblue;
 3: BackColor:=clRed;
 4: BackColor:=clblack;
 end;//case

 ForColor:=clwhite;
 ContextColor:=$00dfbdbd;
 width:=8;
 length:=8;

 if HeadObject=TailObject then
 begin
  BeginPoint.x:=HeadObject.Left+round(HeadObject.Width/4);
  BeginPoint.y:=HeadObject.Top;
  EndPoint.x:=HeadObject.Left+round(HeadObject.Width/4);
  EndPoint.y:=HeadObject.Top-SelfHeight;
  i:=BeginPoint.y-Length;
  TForm(Component).Canvas.brush.Color:=BackColor;
  TForm(Component).Canvas.Pen.Color:=Backcolor;
  brect.Left:=BeginPoint.x;
  brect.Top:=BeginPoint.y;
  brect.Right:=BeginPoint.x+width;
  brect.Bottom:=EndPoint.y;
  TForm(Component).Canvas.Rectangle(brect);
/////////////////////////////////////////////////////////////////////
  brect.Left:=BeginPoint.x;
  brect.Top:=EndPoint.y;
  brect.Right:=EndPoint.x+round(HeadObject.Width/2)+width;
  brect.Bottom:=EndPoint.y+width;
  TForm(Component).Canvas.Rectangle(brect);
////////////////////////////////////////////////////////////////////
  BeginPoint.x:=HeadObject.Left+round(3*HeadObject.Width/4);
  BeginPoint.y:=HeadObject.Top-SelfHeight;
  EndPoint.x:=HeadObject.Left+round(3*HeadObject.Width/4);
  EndPoint.y:=HeadObject.Top;
  i:=BeginPoint.y;
  brect.Left:=BeginPoint.x;
  brect.Top:=BeginPoint.y;
  brect.Right:=BeginPoint.x+width;
  brect.Bottom:=EndPoint.y;
  TForm(Component).Canvas.Rectangle(brect);
////////////////////////////////////////////////////////////////////////

  BeginPoint.x:=HeadObject.Left+round(HeadObject.Width/4);
  BeginPoint.y:=HeadObject.Top;
  EndPoint.x:=HeadObject.Left+round(HeadObject.Width/4);
  EndPoint.y:=HeadObject.Top-SelfHeight;
  i:=BeginPoint.y-Length;
  while i>EndPoint.y//+length do
    do
     begin
      y1.LoadFromFile('up.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(1);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      i:=i-Speed;
     end;//while

   /////////////////////////////////////////////////////////////////////////
    i:=BeginPoint.y-Length;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    BeginPoint.x:=HeadObject.Left+round(HeadObject.Width/4) ;
    BeginPoint.y:=HeadObject.Top-SelfHeight;
    EndPoint.x:=BeginPoint.x+round(HeadObject.Width/2);
    EndPoint.y:=HeadObject.Top-SelfHeight;
    i:=BeginPoint.x;
    while i<EndPoint.x //do
    do
     begin
      y1.LoadFromFile('right.bmp');
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      sleep(2);
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      i:=i+Speed;
     end;//while
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=beginpoint.x+round(HeadObject.Width/2)+width;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    i:=BeginPoint.x;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
////////////////////////////////////////////////////////////////////////

    BeginPoint.x:=HeadObject.Left+round(3*HeadObject.Width/4) ;
    BeginPoint.y:=HeadObject.Top-SelfHeight;
    EndPoint.x:=BeginPoint.x;
    EndPoint.y:=HeadObject.Top;
    i:=BeginPoint.y;
    while i<EndPoint.y//-length do
      do
     begin
      y1.LoadFromFile('down.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(2);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);{j:=i-10;}
      i:=i+Speed;
     end;//while
  BeginPoint.x:=HeadObject.Left+round(HeadObject.Width/4);
  BeginPoint.y:=HeadObject.Top;
  EndPoint.x:=HeadObject.Left+round(HeadObject.Width/4);
  EndPoint.y:=HeadObject.Top-SelfHeight;
  i:=BeginPoint.y-Length;
  TForm(Component).Canvas.brush.Color:=ContextColor;
  TForm(Component).Canvas.Pen.Color:=ContextColor;
  brect.Left:=BeginPoint.x;
  brect.Top:=BeginPoint.y;
  brect.Right:=BeginPoint.x+width;
  brect.Bottom:=EndPoint.y;
  TForm(Component).Canvas.Rectangle(brect);
/////////////////////////////////////////////////////////////////////
  brect.Left:=BeginPoint.x;
  brect.Top:=EndPoint.y;
  brect.Right:=EndPoint.x+round(HeadObject.Width)+width;
  brect.Bottom:=EndPoint.y+width;
  TForm(Component).Canvas.Rectangle(brect);
////////////////////////////////////////////////////////////////////
  BeginPoint.x:=HeadObject.Left+round(3*HeadObject.Width/4);
  BeginPoint.y:=HeadObject.Top-SelfHeight;
  EndPoint.x:=HeadObject.Left+round(3*HeadObject.Width/4);
  EndPoint.y:=HeadObject.Top;
  i:=BeginPoint.y;
  brect.Left:=BeginPoint.x;
  brect.Top:=BeginPoint.y;
  brect.Right:=BeginPoint.x+width;
  brect.Bottom:=EndPoint.y;
  TForm(Component).Canvas.Rectangle(brect);



/////////////////////////////////////////////////////////////////////////////
 end
 else

 begin
 if ((HeadObject.Left<=TailObject.Left) and (HeadObject.Top<=TailObject.Top)) then
  begin
   BeginPoint.x:=HeadObject.Left+Round(HeadObject.Width/2);
   BeginPoint.y:=HeadObject.Top+HeadObject.Height;
   EndPoint.x:=TailObject.Left;
   EndPoint.y:=TailObject.Top+Round(TailObject.Height/2);
  end;

 if ((HeadObject.Left<=TailObject.Left) and (HeadObject.Top>TailObject.Top)) then
  begin
   BeginPoint.x:=HeadObject.Left+Round(HeadObject.Width/2);
   BeginPoint.y:=HeadObject.Top;
   EndPoint.x:=TailObject.Left;
   EndPoint.y:=TailObject.Top+Round(TailObject.Height/2);
  end;

 if ((HeadObject.Left>=TailObject.Left) and (HeadObject.Top>=TailObject.Top)) then
  begin
   BeginPoint.x:=HeadObject.Left+Round(HeadObject.Width/2);
   BeginPoint.y:=HeadObject.Top;
   EndPoint.x:=TailObject.Left+TailObject.Width;
   EndPoint.y:=TailObject.Top+Round(TailObject.Height/2);
  end;

 if ((HeadObject.Left>=TailObject.Left) and (HeadObject.Top<TailObject.Top)) then
  begin
   BeginPoint.x:=HeadObject.Left+Round(HeadObject.Width/2);
   BeginPoint.y:=HeadObject.Top+HeadObject.Height;
   EndPoint.x:=TailObject.Left+TailObject.Width;
   EndPoint.y:=TailObject.Top+Round(TailObject.Height/2);
  end;




 if BeginPoint.x<EndPoint.x then
  begin
  if BeginPoint.y=EndPoint.y then
   begin
    i:=BeginPoint.x;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i<EndPoint.x//-length do
    do
     begin

      y1.LoadFromFile('right.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(2);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);{j:=i-10;}
      i:=i+Speed;
      {
      j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=BeginPoint.y;
      brect.Right:=brect.Left+length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;}
     end;//while
    TForm(Component).Canvas.brush.Color:=ContextColor;
    TForm(Component).Canvas.Pen.Color:=ContextColor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
   end;//if

 //////////////////////////////////////////////////////////////////////////

  if BeginPoint.y>EndPoint.y then
   begin
    i:=BeginPoint.y-Length;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i>EndPoint.y//+length do
    do
     begin

      y1.LoadFromFile('up.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(2);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);{j:=i-10;}
      i:=i-Speed;


      {
      j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i)+length;
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i);
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed; }
     end;//while

   /////////////////////////////////////////////////////////////////////////
    i:=BeginPoint.x;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i<EndPoint.x//-length do
    do
     begin
      y1.LoadFromFile('right.bmp');
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      sleep(2);
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      i:=i+Speed;
      {j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left+length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;}
     end;//while
    TForm(Component).Canvas.brush.Color:=ContextColor;
    TForm(Component).Canvas.Pen.Color:=ContextColor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
   end;//if

  ///////////////////////////////////////////////////////////////////////////

  if BeginPoint.y<EndPoint.y then
   begin
    i:=BeginPoint.y;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i<EndPoint.y-length //do
      do
     begin
      y1.LoadFromFile('down.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(2);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);{j:=i-10;}
      i:=i+Speed;
      {j:=i-10;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i);
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i)+length;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
     // Sleep(SelfHeight); }
     end;//while

   /////////////////////////////////////////////////////////////////////////
    i:=BeginPoint.x;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    while i<EndPoint.x//-length do
    Do
     begin
      y1.LoadFromFile('right.bmp');
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      sleep(2);
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      i:=i+Speed;
      {j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left+length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;}
     end;//while
    TForm(Component).Canvas.brush.Color:=ContextColor;
    TForm(Component).Canvas.Pen.Color:=ContextColor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y+length;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
   end;//if
  end;




  ///////////////////////////     LEFT  SIDE  //////////////////////////////////////





  if BeginPoint.x>EndPoint.x then
  begin
  if BeginPoint.y=EndPoint.y then
   begin
    i:=BeginPoint.x;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i>EndPoint.x//+length do
    Do
     begin

      y1.LoadFromFile('left.bmp');
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      sleep(2);
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      i:=i-Speed;
      {j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=BeginPoint.y;
      brect.Right:=brect.Left-length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;}
     end;//while
    TForm(Component).Canvas.brush.Color:=ContextColor;
    TForm(Component).Canvas.Pen.Color:=ContextColor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
   end;//if






 ///////////////////////////////////////////////////////////////////


 //////////////////////////////////////////////////////////////////////////
  if BeginPoint.y>EndPoint.y then
   begin
    i:=BeginPoint.y-Length;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i>EndPoint.y//-length //do
    do
     begin

      y1.LoadFromFile('up.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(2);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);{j:=i-10;}
      i:=i-Speed;

      {j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i)+length;
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i);
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed; }
     end;//while

   /////////////////////////////////////////////////////////////////////////
    i:=BeginPoint.x+width;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i>EndPoint.x//+length do
    do
     begin
      y1.LoadFromFile('left.bmp');
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      sleep(2);
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      i:=i-Speed;
      {j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left-length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;}
     end;//while
    TForm(Component).Canvas.brush.Color:=ContextColor;
    TForm(Component).Canvas.Pen.Color:=ContextColor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
   end;//if

  ///////////////////////////////////////////////////////////////////////////

  if BeginPoint.y<EndPoint.y then
   begin
    i:=BeginPoint.y;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x+width;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i<EndPoint.y//-length do
    do
     begin
      y1.LoadFromFile('down.bmp');
      component.Canvas.Draw(BeginPoint.x,round(i),y1);
      sleep(2);
      component.Canvas.Draw(BeginPoint.x,round(i),y1);{j:=i-10;}
      i:=i+Speed;
      {j:=i-10;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i);
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i)+length;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
     // Sleep(SelfHeight);}
     end;//while

   /////////////////////////////////////////////////////////////////////////
    i:=BeginPoint.x+width;
    TForm(Component).Canvas.brush.Color:=BackColor;
    TForm(Component).Canvas.Pen.Color:=Backcolor;
    brect.Left:=BeginPoint.x+width;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
    while i>EndPoint.x//+length do
    do
     begin

      y1.LoadFromFile('left.bmp');
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      sleep(2);
      component.Canvas.Draw(round(i),EndPoint.y,y1);
      i:=i-Speed;

      {j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left-length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;  }
     end;//while
    TForm(Component).Canvas.brush.Color:=ContextColor;
    TForm(Component).Canvas.Pen.Color:=ContextColor;
    brect.Left:=BeginPoint.x;
    brect.Top:=BeginPoint.y;
    brect.Right:=BeginPoint.x+width;
    brect.Bottom:=EndPoint.y;
    TForm(Component).Canvas.Rectangle(brect);
    brect.Left:=BeginPoint.x+width;
    brect.Top:=EndPoint.y;
    brect.Right:=EndPoint.x;
    brect.Bottom:=EndPoint.y+width;
    TForm(Component).Canvas.Rectangle(brect);
   end;//if
  end;
 end;//else
 TailObject.Repaint;

end;

end.
