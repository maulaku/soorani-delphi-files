unit PipeTh;

interface

uses
  Classes,Forms,Extctrls,Windows,Graphics;

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

{ Important: Methods and properties of objects in VCL can only be used in a
  method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TPipe.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TPipe }

procedure TPipe.Execute;
begin
 Connect(Form,HObj,TObj,State);
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
const Speed=0.007;
var
 BackColor,ForColor,ContextColor:TColor;
 width,length:integer;
 brect,erect:trect;
 BeginPoint,EndPoint,Point:Tpoint;
 i,j:real;
begin
 BackColor:=clblack;
 ForColor:=clwhite;
 ContextColor:=clBtnFace;
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
