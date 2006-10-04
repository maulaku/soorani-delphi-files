
{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{       Majid Surany Email soorani@gawab.com          }
{                                                       }
{*******************************************************}
unit RadForms;

interface

{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}


uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms,   Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids, RSQLComboBox ,Define, XPMenu, Db, ADODB,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppEndUsr, ppBands, ppVar,
  ppCtrls, ppPrnabl, ppCache, ppDB, ppDBPipe, ppViewr, dxfDesigner,ComCtrls,
  Buttons, Danhint, SetForm, Filter, ppModule, raCodMod, jpeg,BaseFrm;

type

  TRadForm = class(TBaseForm)
    RadPopupMenu: TPopupMenu;
    FormInitializer1: TFormInitializer;
    Filter1: TFilter;
    ppRadDesigner: TppDesigner;
    ppRadReport: TppReport;
    ppRadCaption: TppLabel;
    ppRadImage1: TppImage;
    ppRadLabelMasterOrg: TppLabel;
    ppRadLabelDetailOrg: TppLabel;
    ppRadHeaderBand1: TppHeaderBand;
    ppRadShape2: TppShape;
    ppRadShape1: TppShape;
    ppRadLabel1: TppLabel;
    ppRadSystemVariable1: TppSystemVariable;
    ppRadLabel2: TppLabel;
    ppRadSystemVariable2: TppSystemVariable;
    ppRadSystemVariable5: TppSystemVariable;
    ppRadLabel4: TppLabel;
    ppRadLabel5: TppLabel;
    ppRadLine2: TppLine;
    ppRadLabelDate: TppLabel;
    ppRadColumnHeaderBand1: TppColumnHeaderBand;
    ppRadDetailBand1: TppDetailBand;
    ppRadShape3: TppShape;
    ppRadLine3: TppLine;
    ppRadVariable1: TppVariable;
    ppRadColumnFooterBand1: TppColumnFooterBand;
    ppRadFooterBand1: TppFooterBand;
    raRadCodeModule1: TraCodeModule;
    ppRadDBRadFrom: TppDBPipeline;
    gbOkCancel: TGroupBox;
    RadBtOk: TBitBtn;
    RadBtCancel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure SetCaption();
    procedure ShowMeMessage(Text:String);
    procedure ShowMessage2(Text:String);
    Procedure RefreshForm;
    procedure FormActivate(Sender: TObject);
    procedure OnEnterDBGrid(Sender: TObject);
    procedure OnExitDBGrid(Sender: TObject);
    procedure RunProc(Sender:TObject);
    procedure ppRadVariable1GetText(Sender: TObject; var Text: String);
    procedure ppRadVariable1Reset(Sender: TObject; var Value: Variant);
    procedure RadPopupMenuPopup(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ActiveDataSet:TCustomADODataSet;
    OnEnterDBGridPrv:Array[1..4] of TNotifyEvent;
    OnEnterDBGridSameName:Array[1..4] of String;
    FirstEmpArray:Integer;
    ActiveDBGrid:TDBGrid;
    FMax :Boolean;
    FXpMode :Boolean;
    First : Boolean;
    FormID:String;
  published
    Property Maximum : Boolean read FMax Write FMax;
    Property XpMode : Boolean read FXpMode Write FXpMode;
  Protected
    procedure WndProc (var Message: TMessage);Override;
    procedure DoSearch(var Mes : TMessage);message F_SEARCH;
    procedure SetXpMode(var mes :TMessage);message XPMODE;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDesign(var mes :TMessage);message F_DESIGN;
  end;

  TRadFormClass = class of TRadForm;

var
  RadForm: TRadForm;
  RowNumRad:Integer;

implementation

uses DabDmdle, fmMfrm,  UCommon, fmSelCol4Print;

{$R *.DFM}


procedure TRadForm.FormCreate(Sender: TObject);
var
i,j:integer;
begin
 if Owner is TMFrm then
    FormID:=TMFrm(Owner).LastMenuCliked;
 FirstEmpArray:=0;
 First:=true;
 if(csDesigning In ComponentState) then
   FMax:=true;
 for i:=0 to ComponentCount-1 do
  begin
   if(Components[i] is TMainMenu) then
   begin
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
    if First then
    begin
      ActiveDBGrid:=(Components[i] as tdbgrid);
      First:=False;
    end;
     Inc(FirstEmpArray);
     OnEnterDBGridPrv[FirstEmpArray]:=(Components[i] as tdbgrid).OnEnter;
     OnEnterDBGridSameName[FirstEmpArray]:=(Components[i] as tdbgrid).Name;
     (Components[i] as tdbgrid).OnEnter:=OnEnterDBGrid;
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



procedure TRadForm.ShowMeMessage(Text: String);
begin
  if(DabData<>nil) then
   if(DabData.MSNPopUp1<>nil) then
   begin
     DabData.MSNPopUp1.Font.Size:=8;
     DabData.MSNPopUp1.Font.Style:=[];
     DabData.ShowPopupMessage(Text);
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
     DabData.ShowPopupMessage(Text);
     exit;
   end;
  ShowMessage(Text)
end;

procedure TRadForm.WndProc(var Message: TMessage);
 var mes:Tmessage;
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
        First:=False;
      end
      else

    //   SmoothShow1.Execute;
       FormInitializer1.Execute;
    end;
    WM_ACTIVATE:
    begin
      if(Message.WParamLo=WA_ACTIVE) then
        if(FormInitializer1<>nil) then
           FormInitializer1.Execute;
//      else if(Message.WParamLo=WA_CLICKACTIVE) then
//        FormInitializer1.Execute;
    end;
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

end;

procedure TRadForm.RefreshForm;
begin
  SendMessage(Handle,WM_ENTERSIZEMOVE,0,0);
  SendMessage(Handle,WM_EXITSIZEMOVE,0,0);
end;

procedure TRadForm.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  inherited;
  if ReadFromIniFile('Mode','Hint','False')='True' then
     RadDanHint.HintActive:=True
  else
     RadDanHint.HintActive:=False;
end;
procedure TRadForm.DoSearch(var Mes : TMessage);
begin
 Filter1.DoSearch(ActiveDBGrid,ActiveDataSet,Mes);
end;
procedure TRadForm.OnEnterDBGrid(Sender: TObject);
begin
   if ActiveDBGrid<>nil then
      ActiveDBGrid.Color:=cldeactivegrid;
   ActiveDBGrid:=TDBGrid(Sender);
   ActiveDataSet:=TADOQuery(ActiveDBGrid.DataSource.DataSet);
   TDBGrid(Sender).Color:=clactivegrid;
   RunProc(Sender);
end;

procedure TRadForm.OnExitDBGrid(Sender: TObject);
begin
   ActiveDBGrid:=nil;
   ActiveDataSet:=nil;
   TDBGrid(Sender).Color:=cldeactivegrid;
end;
procedure TRadForm.RunProc(Sender:TObject);
 var i:Integer;
begin
   for i:=0 to  FirstEmpArray do
     if OnEnterDBGridSameName[i]=TDBGrid(Sender).Name then
        if Assigned(OnEnterDBGridPrv[i]) then
            OnEnterDBGridPrv[i](Sender);
end;
procedure TRadForm.DoPrint(var mes :TMessage);
var
  i,j:Integer;
  tmpppLabel :TppLabel;
  tmpppDBText:TppDBText;
  tmpppRadLine:TppLine;
  checkCount,checkCounter:Integer;

begin
  if ActiveDBGrid<>nil then
  begin
    RowNumRad:=0;
    CheckPrintPage(ppRadReport);
    if DabData<>nil then  ppRadLabelDate.Caption:=DabData.disp_date;
//    ppRadLabelMasterOrg.Caption:=DabData.MasterOrgName;
    ppRadLabelDetailOrg.Caption:=OrganizName;
    ppRadDBRadFrom.DataSource:=ActiveDBGrid.DataSource;

    SelCol4Print:=TSelCol4Print.Create(Self);
    SelCol4Print.aveList.Items.Text:='';
    for i:=0 to ActiveDBGrid.Columns.Count-1 do
    begin
      SelCol4Print.aveList.Items.Add(ActiveDBGrid.Columns[i].Title.Caption)
    end;
    SelCol4Print.ShowModal;
    checkCount:=0;
    checkCounter:=0;
    For i:=0 to SelCol4Print.aveList.Items.Count-1 do
      if SelCol4Print.aveList.Checked[i] then
       inc(checkCount);
    For i:=0 to SelCol4Print.aveList.Items.Count-1 do
      if SelCol4Print.aveList.Checked[i] then
      begin
        inc(checkCounter);
        tmpppLabel:= TppLabel.Create(ppRadReport);
        tmpppLabel.UserName:='RadCol'+IntToStr(checkCounter+1);
        tmpppLabel.AutoSize:=False;
        tmpppLabel.Height:=ppRadLabel5.Height;
        tmpppLabel.left:=6.5-checkCounter;
        tmpppLabel.Top:=ppRadLabel5.Top;
        tmpppLabel.Width:=7/(checkCount+1);
        tmpppLabel.Caption:=ActiveDBGrid.Columns[i].Title.Caption;
        tmpppLabel.SendToBack;
        tmpppLabel.Transparent := True;
        tmpppLabel.Alignment:=taRightJustify;
        tmpppLabel.Band:=ppRadHeaderBand1;

        tmpppRadLine:=TppLine.Create(ppRadReport);
        tmpppRadLine.UserName    :='ppRadLine'+IntToStr(checkCounter+1);
        tmpppRadLine.Height      := 0.21;
        tmpppRadLine.Position    := ppRadLine3.Position;
        tmpppRadLine.Left        := 6.5-checkCounter;
        tmpppRadLine.Top         := 0.01;
        tmpppRadLine.Width       := 0.01;
        tmpppRadLine.Band        := ppRadDetailBand1;

        tmpppDBText:=TppDBText.Create(ppRadReport);
        tmpppDBText.UserName    :='ppRadLine'+IntToStr(checkCounter+1);
        tmpppDBText.Height      := 0.21;
//      tmpppRadLine.Position   := TppLinePosition.;
        tmpppDBText.Left        := 6.5-checkCounter;
        tmpppDBText.Top         := 0.01;
        tmpppDBText.Width       := 7/(checkCount+1);
        tmpppDBText.Band        := ppRadDetailBand1;
        tmpppDBText.Alignment   :=taRightJustify;
        tmpppDBText.Transparent := True;
        tmpppDBText.DataPipeline:=ppRadDBRadFrom;
        tmpppDBText.DataField   :=ActiveDBGrid.Columns[i].FieldName;

      end;


    ppRadCaption.Caption:=Self.Caption;
//    ppRadReport.Print;
    SelCol4Print.Free;
    ppRadDesigner.Form.Menu.BiDiMode:=bdRightToLeft;
    ppRadDesigner.Form.Menu.ParentBiDiMode:=True;
    TPageControl(FindComponents(ppRadDesigner.Form,TPageControl)[0]).ParentBiDiMode:=True;
    TPageControl(FindComponents(ppRadDesigner.Form,TPageControl)[0]).RaggedRight:=True;
//    ppRadDesigner.Form.FindComponent.ParentBiDiMode:=True;
    ppRadDesigner.ShowModal;
  end;
end;

procedure TRadForm.ppRadVariable1GetText(Sender: TObject;
  var Text: String);
begin
  Text:=IntToStr(RowNumRad);
  inc(RowNumRad);
end;

procedure TRadForm.ppRadVariable1Reset(Sender: TObject;
  var Value: Variant);
begin
  RowNumRad:=1;
end;

procedure TRadForm.RadPopupMenuPopup(Sender: TObject);
var
 i:integer;
 MySubItems: array of TMenuItem;
begin
  if MFrm=nil then exit;
  if RadPopupMenu.Items.Count>1 then Exit;
  with MFrm.Menu.Items[MFrm.Menu.Items	.Count-2] do
  begin
    SetLength(MySubItems,Count);
    for i := 0 to Count-1 do
    begin
      if Not(IsLine) then
      begin
    	   MySubItems[i]:=TMenuItem.Create(RadPopupMenu);
	   MySubItems[i].Caption:=items[i].Caption;
	   MySubItems[i].OnClick:=items[i].OnClick;
	   MySubItems[i].Name:='Rad'+items[i].Name;
	   RadPopupMenu.Items.Add(MySubItems[i]);
      end;
    end;
  end;
end;
procedure TRadForm.DoDesign(var mes :TMessage);
begin
//if Not(RaddxfDesigner.Active) then
// RaddxfDesigner.Active:=True
//else
// RaddxfDesigner.Active:=False;
end;

procedure TRadForm.FormDblClick(Sender: TObject);
begin
//if Not(RaddxfDesigner.Active) then
// RaddxfDesigner.Active:=True
//else
// RaddxfDesigner.Active:=False;
end;

end.
