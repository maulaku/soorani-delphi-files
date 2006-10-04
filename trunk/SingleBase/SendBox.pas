unit SendBox;

interface
uses classes,graphics,windows,forms,extctrls;

const Speed=0.006;
var   BackColor,ForColor,ContextColor:TColor;
      width,length:integer;
procedure Connect(component:TForm;HeadObject,TailObject: TShape;state:smallint);

implementation

procedure Connect(component:TForm;HeadObject,TailObject: TShape;state:smallint);
var brect,erect:trect;
    BeginPoint,EndPoint,Point:Tpoint;
    i,j:real;
begin
 BackColor:=clblack;
 ForColor:=clyellow;
 ContextColor:=$00DFBDBD;
 width:=5;
 length:=4;

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
      j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=BeginPoint.y;
      brect.Right:=brect.Left+length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
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
      j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i)+length;
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i);
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;
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
      j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left+length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
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
    while i<EndPoint.y//-length do
      do
     begin
      j:=i-10;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i);
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i)+length;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
     // Sleep(20);
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
    Do
     begin
      j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left+length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
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
      j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=BeginPoint.y;
      brect.Right:=brect.Left-length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;
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
      j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i)+length;
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i);
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;
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
      j:=i+length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left-length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;
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
      j:=i-10;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=BeginPoint.x;
      brect.Top:=round(i);
      brect.Right:=brect.Left+width;
      brect.Bottom:=round(i)+length;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i+Speed;
      J:=J+Speed;
     // Sleep(20);
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
      j:=i-length;
      TForm(Component).Canvas.brush.Color:=ForColor;
      TForm(Component).Canvas.pen.Color:=BackColor;
      brect.Left:=round(i);
      brect.Top:=EndPoint.y;
      brect.Right:=brect.Left-length;
      brect.Bottom:=EndPoint.y+width;
      TForm(Component).Canvas.Rectangle(brect);
      i:=i-Speed;
      J:=J-Speed;
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
 //HeadObject.Repaint;
 TailObject.Repaint;
end;
end.
