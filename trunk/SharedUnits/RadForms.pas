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
  ActnList, MultiMon, Forms,  Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids, Define,db,ADODB, Buttons, ppDB, ppDBPipe,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppVar,
  ppPrnabl, ppCtrls, ppBarCod,BaseFrm, ppEndUsr, ComCtrls, ppModule,
  raCodMod, jpeg, Filter;

type

  TRadForm = class(TBaseForm)
    gbOkCancel: TGroupBox;
    RadBtOk: TBitBtn;
    RadBtCancel: TBitBtn;
    ppRadReport: TppReport;
    ppRadDBRadFrom: TppDBPipeline;
    ppRadDesigner: TppDesigner;
    ppRadTitleBand1: TppTitleBand;
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
    RadPopupMenu: TPopupMenu;
    Filter1: TFilter;
    procedure FormCreate(Sender: TObject);
    procedure CancelInsert;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadBtOkClick(Sender: TObject);
    procedure RadBtCancelClick(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppRadVariable1Reset(Sender: TObject; var Value: Variant);
    procedure OnEnterDBGrid(Sender: TObject);
    procedure OnExitDBGrid(Sender: TObject);
    procedure ppRadDesignerShow(Sender: TObject);
  private
    { Private declarations }
//    procedure WndProc (var Message: TMessage);Override;

  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
    procedure DoRun(var mes :TMessage);message RUN_CMD;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoScroll(var Mes : TMessage);message F_SCROLL ;
    procedure DoNext(var Mes : TMessage);message F_Next ;
    procedure DoPrv(var Mes : TMessage);message F_Prv ;
    procedure DoSearch(var Mes : TMessage);message F_SEARCH;
    procedure DoOk(var Mes : TMessage);message F_OK;
    procedure DoCancel(var Mes : TMessage);message F_Cancel;
  public
    FormID:String;
  end;
  TRadFormClass = class of TRadForm;

var
  RadForm: TRadForm;
  RowNumRad:Integer;
  DesignReportForm:TForm;
  ReportPageCtrl:TPageControl;
implementation

uses DabDmdle, fmMfrm, UCommon, fmVerify, fmSelCol4Print;

{$R *.dfm}


procedure TRadForm.FormCreate(Sender: TObject);
var
i,j:integer;
 tmp:TComponents;
begin
 inherited;
 if Owner is TMFrm then
    FormID:=TMFrm(Owner).LastMenuCliked;
 tmp:=FindComponents(Self,TDBGrid);
 for i:=0 to Length(tmp)-1 do
 begin
   if i=0 then
   begin
     SetActives(TDBGrid(tmp[i]),ActiveDBGrid,ActiveDataSet);
     TDBGrid(tmp[i]).Color:=clActiveGridColor;
   end
   else
    TDBGrid(tmp[i]).Color:=clDeActiveGridColor;
   TDBGrid(tmp[i]).OnEnter:=OnEnterDBGrid;
 end;
end;


// Event Messages
procedure TRadForm.DoNew(var Mes : TMessage);
begin
  if ActiveControl is TDBGrid then
  begin
    ActiveDBGrid:=TDBGrid(ActiveControl);
    ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet);
    ActiveDataSet.Append;
    ActiveDBGrid.Options:=[dgEditing,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
    ActiveDBGrid.Height:=ActiveDBGrid.Height-gbOkCancel.Height;
    gbOkCancel.Parent:=ActiveDBGrid.Parent;
//    gbOkCancel.Align:=ActiveDBGrid.Align;
    gbOkCancel.Visible:=true;
    Height:=Height+10;
  end
end;
procedure TRadForm.DoEdit(var Mes : TMessage);
begin
  if ActiveControl is TDBGrid then
  begin
    ActiveDBGrid:=TDBGrid(ActiveControl);
    ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet);
    ActiveDBGrid.Options:=[dgEditing,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
    ActiveDBGrid.Height:=ActiveDBGrid.Height-gbOkCancel.Height;
    gbOkCancel.Parent:=ActiveDBGrid.Parent;
//    gbOkCancel.Align:=ActiveDBGrid.Align;
    gbOkCancel.Visible:=true;
    Height:=Height+10;
  end
end;
procedure TRadForm.DoDelete(var Mes : TMessage);
begin
  if ActiveControl is TDBGrid then
  begin
    ActiveDBGrid:=TDBGrid(ActiveControl);
    ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet);
    Verify:=TVerify.Create(Self);
    if Verify.ShowModal=mrOk then
      ActiveDataSet.Delete;
  end
end;
procedure TRadForm.DoRun(var mes :TMessage);
begin
end;
procedure TRadForm.DoSearch(var Mes : TMessage);
begin
  Filter1.DoSearch(ActiveDBGrid,ActiveDataSet,Mes);
end;
procedure TRadForm.DoScroll(var Mes : TMessage);
begin
end;
procedure TRadForm.DoNext(var Mes : TMessage);
begin
 if ActiveDataSet<>nil then
    ActiveDataSet.Next;
end;
procedure TRadForm.DoPrv(var Mes : TMessage);
begin
 if ActiveDataSet<>nil then
    ActiveDataSet.Prior;
end;
procedure TRadForm.DoOk(var Mes: TMessage);
begin
   try
     ActiveDataSet.Edit;
     ActiveDataSet.FieldByName('State').Value:='2';
     ActiveDataSet.UpdateBatch();
     ActiveDataSet.Filter:='State=2';
     ActiveDataSet.Filtered:=True;
     Caption:=Caption+'  «ÌÌœ ‘œÂÂ«  '
   except;
     ActiveDataSet.Cancel;
     DabData.ShowPopupMessageSmall('—ÊÌ —ﬂÊ—œ «„ﬂ«‰  «ÌÌœ Ê Ì« ·€Ê ÊÃÊœ ‰œ«—œ ');
   end;
 end;
procedure TRadForm.DoCancel(var Mes: TMessage);
begin

   try
     ActiveDataSet.Edit;
     ActiveDataSet.FieldByName('State').Value:='3';
     ActiveDataSet.UpdateBatch();
     ActiveDataSet.Filter:='State=3';
     ActiveDataSet.Filtered:=True;
     Caption:=Caption+' ·€Ê ‘œÂÂ«  '
   except;
     ActiveDataSet.Cancel;
     DabData.ShowPopupMessageSmall('—ÊÌ —ﬂÊ—œ «„ﬂ«‰  «ÌÌœ Ê Ì« ·€Ê ÊÃÊœ ‰œ«—œ ');
   end;
end;

//print Messages

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

    if DabData<>nil then  ppRadLabelDate.Caption:=DabData.disp_date;
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
        tmpppLabel.Height:=0.2;
        tmpppLabel.left:=6.5-checkCounter;
        tmpppLabel.Top:=0.5;
        tmpppLabel.Width:=7/(checkCount+1);
        tmpppLabel.Caption:=ActiveDBGrid.Columns[i].Title.Caption;
        tmpppLabel.SendToBack;
        tmpppLabel.Transparent := True;
        tmpppLabel.Alignment:=taRightJustify;
        tmpppLabel.Band:=ppRadHeaderBand1;

        tmpppRadLine:=TppLine.Create(ppRadReport);
        tmpppRadLine.UserName    :='ppRadLine'+IntToStr(checkCounter+1);
        tmpppRadLine.Height      := 0.2;
        tmpppRadLine.Position    := ppRadLine3.Position;
        tmpppRadLine.Left        := 6.5-checkCounter;
        tmpppRadLine.Top         := 0.01;
        tmpppRadLine.Width       := 0.01;
        tmpppRadLine.Band        := ppRadDetailBand1;

        tmpppDBText:=TppDBText.Create(ppRadReport);
        tmpppDBText.UserName    :='ppRadLine'+IntToStr(checkCounter+1);
        tmpppDBText.Height      := 0.2;
//        tmpppRadLine.Position    := TppLinePosition.;
        tmpppDBText.Left        := 6.5-checkCounter;
        tmpppDBText.Top         := 0.01;
        tmpppDBText.Width       := 7/(checkCount+1);
        tmpppDBText.Band        := ppRadDetailBand1;
        tmpppDBText.Transparent := True;
        tmpppDBText.Alignment   :=taRightJustify;
        tmpppDBText.DataPipeline:=ppRadDBRadFrom;
        tmpppDBText.DataField:=ActiveDBGrid.Columns[i].FieldName;

      end;


    ppRadCaption.Caption:=Self.Caption;
//    ppRadReport.Print;
    SelCol4Print.Free;
    ppRadDesigner.ShowModal;
  end;
end;
procedure TRadForm.ppLabel6GetText(Sender: TObject; var Text: String);
begin
  Text:=IntToStr(RowNumRad);
  inc(RowNumRad);
end;

procedure TRadForm.ppRadVariable1Reset(Sender: TObject; var Value: Variant);
begin
  RowNumRad:=1;
end;

procedure TRadForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TRadForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then   SetFocusNextObject(Sender);
  if Key=27 then   CancelInsert;
end;

procedure TRadForm.RadBtOkClick(Sender: TObject);
begin
  if ActiveDBGrid<>nil then
  begin
     ActiveDBGrid.Height:=ActiveDBGrid.Height+gbOkCancel.Height;
     ActiveDBGrid.Options:=[dgRowSelect,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
     ActiveDataSet.UpdateBatch();
  end;
  gbOkCancel.Visible:=false;

end;

procedure TRadForm.RadBtCancelClick(Sender: TObject);
begin
  CancelInsert;
end;
procedure TRadForm.CancelInsert;
begin
  if((ActiveDBGrid<>nil) and (gbOkCancel.Visible)) then
  begin
     gbOkCancel.Visible:=false;
     ActiveDBGrid.Height:=ActiveDBGrid.Height+gbOkCancel.Height;
     ActiveDBGrid.Options:=[dgRowSelect,dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
     if ActiveDataSet<>nil then
       if ActiveDataSet.State in [dsInsert]  then
          ActiveDataSet.Delete;
  end;
end;

procedure TRadForm.OnEnterDBGrid(Sender: TObject);
begin
   if ActiveDBGrid<>nil then
      ActiveDBGrid.Color:=clDeActiveGridColor;
   ActiveDBGrid:=TDBGrid(Sender);
   if ActiveDBGrid.DataSource<>nil then
     ActiveDataSet:=TADODataSet(ActiveDBGrid.DataSource.DataSet)
   else
     ShowDebugMessage('Developer Please Set DataSet For this Grid');

   TDBGrid(Sender).Color:=clActiveGridColor;
end;

procedure TRadForm.OnExitDBGrid(Sender: TObject);
begin
   CancelInsert;
   ActiveDBGrid:=nil;
   ActiveDataSet:=nil;
   TDBGrid(Sender).Color:=clDeActiveGridColor;
end;

procedure TRadForm.ppRadDesignerShow(Sender: TObject);
var
 tmpComp:TComponents;
begin
  inherited;
  DesignReportForm:=TForm(Sender);
  with DesignReportForm do
  begin
    BiDiMode:=bdRightToLeft;
    Menu.BiDiMode:=bdRightToLeft;
    Menu.Items[0].Caption:='    ';
    ReportPageCtrl:=TPageControl(FindComponents(TForm(Sender),TPageControl)[0]);
    ReportPageCtrl.Pages[0].Caption:='ÿ—«ÕÌ ';
    ReportPageCtrl.Pages[1].Caption:='œ— Õ«· ÅÌ‘ ‰„«Ì‘';
  end;

end;

end.
