{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{       Majid Surany Email soorani@gawab.com          }
{                                                       }
{*******************************************************}
unit fmLine;

interface

{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}


uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms,  SetForm, SmoothShow,Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids, RSQLComboBox ,Define, XPMenu;

type

  TLine = class(TForm)
    XPMenu1: TXPMenu;
    FormInitializer1: TFormInitializer;
    procedure FormCreate(Sender: TObject);
    procedure SetCaption();
    procedure ShowMeMessage(Text:String);
    procedure ShowMessage2(Text:String);
    Procedure SetXpFoMainMenu;
    Procedure RefreshForm;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMax :Boolean;
    FXpMode :Boolean;
    First : Boolean;
  published
    Property Maximum : Boolean read FMax Write FMax;
    Property XpMode : Boolean read FXpMode Write FXpMode;
  Protected
    procedure WndProc (var Message: TMessage);Override;
    procedure SetXpMode(var mes :TMessage);message XPMODE;
  end;

var
  Line: TLine;

implementation

uses DabDmdle, fmMfrm;

{$R *.DFM}


procedure TLine.FormCreate(Sender: TObject);
var
i,j:integer;
begin
 First:=true;
 if(csDesigning In ComponentState) then
   FMax:=true;
 for i:=0 to ComponentCount-1 do
  begin
   if(Components[i] is TMainMenu) then
   begin
     SetXpFoMainMenu;
   end;                 
   if(DabData<>nil) then
      if(DabData.FontDialog1<>nil) then
         if(Components[i] is TWinControl) then 
        PostMessage((Components[i] as TWinControl).Handle,WM_SETFONT,WPARAM(DabData.FontDialog1.Font),0);
   if (Components[i] is TComboBox) then
   if (Components[i] as TComboBox).Color=$0080FFFF then
      (Components[i] as TComboBox).Color:=clinfobk;
   if (Components[i] is tpanel) then
    if (Components[i] as TPanel).Tag<>1010 then
      (Components[i] as tpanel).Color:=$00DFBDBD;
   if (Components[i] is TDBGrid) then
   if (Components[i] as tdbgrid).tag<>1010 then
    begin
     (Components[i] as tdbgrid).FixedColor:=$00DFBDBD;
//     (Components[i] as tdbgrid).Color:=cldeactivegrid;
     for j:= 0 to (Components[i] as tdbgrid).Columns.Count-1 do
      begin
       (Components[i] as tdbgrid).Columns.Items[j].Title.Font.Color:= clYellow;
       (Components[i] as tdbgrid).Columns.Items[j].Title.Color:= $00c08080;
//       (Components[i] as tdbgrid).Columns.Items[j].Color:= cldeactivegrid;
       if(DabData<>nil) then
          if(DabData.FontDialog1<>nil) then
           (Components[i] as tdbgrid).Columns.Items[j].Title.Font:=DabData.FontDialog1.Font;
      end;
    end;
  end;
  if tag<>1010 then color:=$00dfbdbd;
  SetCaption;
  if(DabData<>nil) then
   if(DabData.FontDialog1<>nil) then
     Font:=DabData.FontDialog1.Font;
end;


procedure TLine.SetCaption;
var CapText:String;
  i:Integer;
  CountSpace:Integer;
  MovingFront:Integer;
  CapTextWidth:Integer;
  MyCanvas:TControlCanvas;
begin
  MyCanvas := TControlCanvas.Create;
  MyCanvas.Control:=Self;
  MyCanvas.Font.Name:='MS Sans Serif (Arabic)';
//  MyCanvas.Font.Size:=8;
  MyCanvas.Font.Style:=[fsBold];
//  DabData.ShowPopupMessage(MyCanvas.Font.Name);
  CapText:=Trim(Caption);
  CapTextWidth:=MyCanvas.TextWidth(CapText);
  MovingFront:=Trunc((Width-CapTextWidth)/2);
  CountSpace:=Trunc(MovingFront/MyCanvas.TextWidth(' '));
  for i:=0 to CountSpace do
     CapText:=' '+CapText;
 { while(MyCanvas.TextWidth(CapText)<(Trunc(Width/2)+CapTextWidth)) do
     CapText:=' '+CapText;
//  CapText:='          '+CapText; }
  Caption:=CapText ;
end;


procedure TLine.SetXpFoMainMenu;
begin
{  XPPlus1.DimLevel := 30   ;
  XPPlus1.GrayLevel :=10;
  XPPlus1.Font.Charset :=ARABIC_CHARSET;
  XPPlus1.Font.Color :=clBlue           ;
  XPPlus1.Font.Height :=-12              ;
  XPPlus1.Font.Name :='MS Sans Serif'     ;
  XPPlus1.Font.Style :=[]                  ;
  XPPlus1.Color :=16699834                  ;
  XPPlus1.DrawMenuBar :=False                ;
  XPPlus1.IconBackColor :=16562584            ;
  XPPlus1.MenuBarColor :=16705498              ;
  XPPlus1.SelectColor :=12615808                ;
  XPPlus1.SelectBorderColor :=clHighlight        ;
  XPPlus1.SelectFontColor :=clMenuText            ;
  XPPlus1.DisabledColor :=clInactiveCaption        ;
  XPPlus1.SeparatorColor :=clBtnFace                ;
  XPPlus1.CheckedColor :=clHighlight                 ;
  XPPlus1.IconWidth :=24                              ;
  XPPlus1.DrawSelect :=True                              ;
  XPPlus1.UseSystemColors :=False                      ;
  XPPlus1.UseDimColor :=False                           ;
  XPPlus1.OverrideOwnerDraw :=False                       ;
  XPPlus1.Gradient :=True                                  ;
  XPPlus1.FlatMenu :=False                                  ;
  XPPlus1.AutoDetect :=False                                 ;}

end;

procedure TLine.ShowMeMessage(Text: String);
begin
 { if(DabData<>nil) then
   if(DabData.MSNPopUp1<>nil) then
   begin
     DabData.MSNPopUp1.Font.Size:=8;
     DabData.MSNPopUp1.Font.Style:=[];
     DabData.ShowPopupMessage(Text);
     DabData.MSNPopUp1.Font.Style:=[fsBold];
     DabData.MSNPopUp1.Font.Size:=10;
     exit;
   end;
  ShowMessage(Text)     }
end;
procedure TLine.ShowMessage2(Text: String);
begin
  if(DabData<>nil) then
   if(DabData.MSNPopUp1<>nil) then
   begin
     DabData.ShowPopupMessage(Text);
     exit;
   end;
  ShowMessage(Text)
end;

procedure TLine.WndProc(var Message: TMessage);
begin
  inherited;
  Case Message.Msg of
    WM_CREATE:
       First:=true;
    WM_SHOWWINDOW:
    if(Bool(Message.wParam)) then
    begin
      if(DabData<>nil) then
      begin
        if(DabData.IsInXpMode) then
          XPMenu1.Active:=true;
        First:=False;
      end
      else
         XPMenu1.Active:=true;
    //   SmoothShow1.Execute;
       FormInitializer1.Execute;
    end;
    WM_ACTIVATE:
      if(Message.WParamLo=WA_ACTIVE) then
        if(FormInitializer1<>nil) then
           FormInitializer1.Execute;
//      else if(Message.WParamLo=WA_CLICKACTIVE) then
//        FormInitializer1.Execute;
    WM_SIZE:
     if(MFrm<>nil) and (First) then
      begin
{        Left:=0 ;
        Top:=0 ;
        Width:=MFrm.MDIWallpaper1.TileWidth-2;
        Height:=MFrm.MDIWallpaper1.TileHeight-20;
        First:=false;                            }
      end;
    end;
end;

procedure TLine.SetXpMode(var mes: TMessage);
begin
  XPMenu1.Active:=Not(XPMenu1.Active);
end;

procedure TLine.RefreshForm;
begin
  SendMessage(Handle,WM_ENTERSIZEMOVE,0,0);
  SendMessage(Handle,WM_EXITSIZEMOVE,0,0);
end;

procedure TLine.FormActivate(Sender: TObject);
begin
  inherited;
//  FormInitializer1.Execute;
end;

end.
