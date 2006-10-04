{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{       Majid Surany Email mgso22002@yahoo.com          }
{                                                       }
{*******************************************************}
unit RadForms;

interface

{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}


uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms, XPPlus, SetForm, SmoothShow,Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids, RSQLComboBox ,Define;

type

  TRadForm = class(TForm)
    FormInitializer1: TFormInitializer;
    XPPlus1: TXPPlus;
    procedure FormCreate(Sender: TObject);
    procedure SetCaption();
    procedure ShowMeMessage(Text:String);
    procedure ShowMessage2(Text:String);
    Procedure SetXpFoMainMenu;
  private
    { Private declarations }
    procedure WndProc (var Message: TMessage);Override;
  public
    { Public declarations }
    FMax :Boolean;
    First : Boolean;
    Property Maximum : Boolean read FMax Write FMax;
  Protected
    procedure SetXpMode(var mes :TMessage);message XPMODE;
  end;

var
  RadForm: TRadForm;

implementation

uses DabDmdle, fmMfrm;

{$R *.DFM}


procedure TRadForm.FormCreate(Sender: TObject);
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
  { if(
     (Components[i].ClassName='TComboBox') or
     (Components[i].ClassName='TEdit') or
     (Components[i].ClassName='TMaskEdit')
     )then
   begin
           ShowMeMessage('Component '+Components[i].Name+' is Old Class ->'
                                     +Components[i].ClassName
                                     +'In Form '+Caption+'('+Name+') Please Replace With TRql'+
                                     Copy(Components[i].ClassName,2, Length(Components[i].ClassName)));
   end;    }
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
     for j:= 0 to (Components[i] as tdbgrid).Columns.Count-1 do
      begin
       (Components[i] as tdbgrid).Columns.Items[j].Title.Font.Color:= clYellow;
       (Components[i] as tdbgrid).Columns.Items[j].Title.Color:= $00c08080;
      end;
    end;
  end;
  if tag<>1010 then color:=$00dfbdbd;
  SetCaption;
end;


procedure TRadForm.SetCaption;
var CapText:String;
  i:Integer;
  CountSpace:Integer;
  MovingFront:Integer;
  CapTextWidth:Integer;
  MyCanvas:TControlCanvas;
begin
  MyCanvas := TControlCanvas.Create;
  MyCanvas.Control:=Self;
  MyCanvas.Font.Name:='Arial (Arabic)';
  MyCanvas.Font.Size:=8;
//  MyCanvas.Font.Style:=[fsBold];
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


procedure TRadForm.SetXpFoMainMenu;
begin
  XPPlus1.DimLevel := 30   ;
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
  XPPlus1.AutoDetect :=False                                 ;

end;

procedure TRadForm.ShowMeMessage(Text: String);
begin
  if(DabData<>nil) then
   if(DabData.MSNPopUp1<>nil) then
   begin
     DabData.MSNPopUp1.Font.Size:=8;
     DabData.MSNPopUp1.Font.Style:=[];
     DabData.MSNPopUp1.Font.Style:=[fsBold];
     DabData.MSNPopUp1.Font.Size:=10;
     exit;
   end;
  ShowMessage(Text)
end;
procedure TRadForm.ShowMessage2(Text: String);
begin
  if(DabData<>nil) then
   if(DabData.MSNPopUp1<>nil) then
   begin
     exit;
   end;
  ShowMessage(Text)
end;

procedure TRadForm.WndProc(var Message: TMessage);
begin
  inherited;
  Case Message.Msg of
    WM_CREATE:
       First:=true;
    WM_SHOWWINDOW:
    if(Bool(Message.wParam)) then
    begin
    //   SmoothShow1.Execute;
       FormInitializer1.Execute;
    end;
    XPMODE:
     ShowMeMessage('XPMODE');
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

procedure TRadForm.SetXpMode(var mes: TMessage);
begin
  XPPlus1.Active:=Not(XPPlus1.Active);
end;

end.
