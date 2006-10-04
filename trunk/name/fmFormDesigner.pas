
unit fmFormDesigner;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,Menus, Db, ADODB, DBCtrls, RSqllookup, Grids,
  DBGrids, Buttons,RadForms, ExtCtrls, dxfDesigner;

const
  FieldStr='	,[F_%$%_%NUM%] [varchar] (50)   NULL ';
  FieldFloat='	,[F_%$%_%NUM%] [Float](53)     NULL ';
  FieldOrg='	,[F_%$%_%NUM%] [int]     NULL ';
  FieldUnit='	,[F_%$%_%NUM%] [smallint]  NULL ';
  FieldDesc='	,[F_%$%_%NUM%] [varchar] (500)   NULL ';
  FieldDate='	,[F_%$%_%NUM%] [datetime] (500)   NULL ';
  FieldEmp='	,[F_%$%_%NUM%] [char] (10)  NULL ';
  FieldState='	,[F_%$%_%NUM%] [smallint] DEFAULT 1  NULL ';
  DesciptionOfFileld='DECLARE @v sql_variant SET @v = N''%Descipt%''  EXECUTE sp_addextendedproperty N''MS_Description'', @v, N''user'', N''dbo'', N''table'', N''%Tab%'', N''column'', N''%Col%''';
type
  TFormDesigner = class(TRadForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Panel1: TPanel;
    spEmp: TADOStoredProc;
    dsemp: TDataSource;
    frmLike: TPanel;
    Panel3: TPanel;
    Prop: TStringGrid;
    quCreateTable: TADOQuery;
    GlbPrp: TStringGrid;
    Panel4: TPanel;
    spSaveFrm: TSpeedButton;
    quIn2DesignForm: TADOQuery;
    quIn2DesignFormField: TADOQuery;
    quFormID: TADOQuery;
    quFormIDFormID: TIntegerField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    mmDetailGroup: TMemo;
    dsuItem: TDataSource;
    dsItem: TADODataSet;
    dsItemItem_Code: TStringField;
    dsItemMaster_Name: TStringField;
    dsItemDetail_Name: TStringField;
    dsItemItem_Name: TStringField;
    dsItemPosition_code: TStringField;
    dsItemInventory_Limit: TSmallintField;
    dsItemOrder_Point: TSmallintField;
    dsItemItem_Inventory: TIntegerField;
    dsItemitem_desc: TStringField;
    dsItemclass_code: TSmallintField;
    dsItemclass_desc: TStringField;
    dsItemclass_name: TStringField;
    dsItemClass_Type: TSmallintField;
    dsItemppc_code: TStringField;
    dsItempc_code: TStringField;
    dsItemps_code: TStringField;
    dsItemUnit_Item: TStringField;
    dsItemClass_TypeStr: TStringField;
    Panel5: TPanel;
    cdItem: TRSqlDbLookup;
    SpeedButton5: TSpeedButton;
    RaddxfDesigner: TdxfDesigner;
    SpeedButton6: TSpeedButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUserName: TEdit;
    ADODataSet1: TADODataSet;
    ImgfmLike: TImage;
    cbViewState: TComboBox;
    Label3: TLabel;
    dstSystems: TADODataSet;
    dstSystemsRow: TIntegerField;
    dstSystemsName: TStringField;
    DataSource1: TDataSource;
    cbSystems: TDBLookupComboBox;
    fmCaption: TEdit;
    ComponentControl: TControlBar;
    EditBox: TImage;
    EditInteger: TImage;
    ComboBox: TImage;
    OrgName: TImage;
    UnitName: TImage;
    MultiLineEditor: TImage;
    procedure SetItemClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure ItemsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure InItemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SetCtrlProp;
    procedure PropSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure frmLikeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spSaveFrmClick(Sender: TObject);
    procedure PropEnter(Sender: TObject);
    procedure PropExit(Sender: TObject);
    procedure frmLikeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ChangeLabel(Sender:TImage;x,y:Integer);
    function FindLabel(Sender:TImage):TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure dsItemAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cbSystemsClick(Sender: TObject);
    procedure ImgfmLikeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GlbPrpSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure ResetForm;
    procedure fmCaptionEnter(Sender: TObject);
    procedure fmCaptionExit(Sender: TObject);
    procedure fmCaptionChange(Sender: TObject);
    procedure frmLikeDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    tmpCtrl:TIMage;
    GridFocued:Boolean;
    Drag:Boolean;

  end;

var
  FormDesigner: TFormDesigner;
  dragedClass:Integer; //1:TextBox , 2 ComboBox
  TagCounter:Integer;

implementation

uses DabDmdle, fmMfrm, UCommon;

{$R *.DFM}

procedure TFormDesigner.SetItemClick(Sender: TObject);
begin
  tmpCtrl:=TImage(Sender);
  SetCtrlProp;
  if Sender is TMenu  then
  begin
    if TMenu(Sender).Name='N2' then
      dragedClass:=1;
  end
  else if Sender is TImage then
  begin
    if TImage(Sender).Name='EditBox' then
      dragedClass:=1
    else if  TImage(Sender).Name='ComboBox' then
      dragedClass:=2
    else if  TImage(Sender).Name='UnitName' then
      dragedClass:=3
    else if  TImage(Sender).Name='EditInteger' then
      dragedClass:=4
    else if  TImage(Sender).Name='OrgName' then
      dragedClass:=5
    else if  TImage(Sender).Name='MultiLineEditor' then
      dragedClass:=6;
  end
  else
      dragedClass:=7;
  frmLike.Cursor:=crDrag;
  Drag:=true;
  Mouse.Capture;

end;

procedure TFormDesigner.FormClick(Sender: TObject);
var
  lineEditor:TImage;
  LabelStr:String;
begin
  tmpCtrl:=TImage(Sender);
  SetCtrlProp;
 if Drag then
 begin
  tmpCtrl:=TImage.Create(frmLike);
  with tmpCtrl do
  begin
     AutoSize := True;
     if dragedClass = 1 then
     begin
      Picture.Bitmap:=EditBox.Picture.Bitmap;
      Name:='EditBox'+IntToStr(TagCounter);
      LabelStr:='»—ç”»';
     end
     else if dragedClass = 2 then
     begin
       Picture.Bitmap:=ComboBox.Picture.Bitmap;
       Name:='ComboBox'+IntToStr(TagCounter);
       LabelStr:='ﬂ«—„‰œ';
     end
     else if dragedClass = 3 then
     begin
       Picture.Bitmap:=UnitName.Picture.Bitmap;
       Name:='UnitName'+IntToStr(TagCounter);
       LabelStr:='‰«„ Ê«Õœ ”«“„«‰Ì';
     end
     else if dragedClass = 4 then
     begin
       Picture.Bitmap:=EditInteger.Picture.Bitmap;
       Name:='EditInteger'+IntToStr(TagCounter);
       LabelStr:='‘„«—Â';
     end
     else if dragedClass = 5 then
     begin
       Picture.Bitmap:=OrgName.Picture.Bitmap;
       Name:='OrgName'+IntToStr(TagCounter);
       LabelStr:='‰«„ ”«“„«‰';
     end
     else if dragedClass = 6 then
     begin
       Picture.Bitmap:=MultiLineEditor.Picture.Bitmap;
       Name:='MultiLineEditor'+IntToStr(TagCounter);
       LabelStr:='‘—Õ';
     end;

     Parent:=frmLike;
     tmpCtrl.Stretch:=True;
     tmpCtrl.AutoSize:=False;
     Top:=Mouse.CursorPos.y-frmLike.Top-105;
     Left:=Mouse.CursorPos.x-frmLike.Left-Left-5;
     Cursor:=crDrag;
     Tag:=TagCounter;
     Inc(TagCounter);
     OnMouseDown:=InItemMouseDown;
     OnMouseMove:=frmLikeMouseMove;
     Drag:=False;
     ReleaseCapture;
     CreateLabel(TWinControl(tmpCtrl),LabelStr);
   end;
  end;
end;

procedure TFormDesigner.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TWinControl(Sender).Left:=Mouse.CursorPos.x-Left-20-Panel3.Width;
  TWinControl(Sender).Top:=Mouse.CursorPos.y-Top-105;
  frmLike.Cursor:=crDefault;
  ReleaseCapture;
end;


procedure TFormDesigner.FormShow(Sender: TObject);
begin
//   RaddxfDesigner.Active:=True;
   dstSystems.Close;
   dstSystems.Open;
   RadDanHint.HintActive:=False;
   Drag:=False;
   Top:=0 ;
   Left:=0 ;
   TagCounter:=1;
   GridFocued:=False;
   Prop.Cols[0].Add('‰«„');
   Prop.Cols[1].Add('„ﬁœ«—');
   Prop.Cols[0].Add('çÅ');
   Prop.Cols[0].Add('»«·«');
   Prop.Cols[0].Add('ÿÊ·');
   Prop.Cols[0].Add('⁄—÷');
   Prop.Cols[0].Add('„ ‰');
   Prop.Cols[0].Add('‘„«—Â ›Ì·œ');
   GlbPrp.Cols[0].Add('‰«„');
   GlbPrp.Cols[1].Add('„ﬁœ«—');
   GlbPrp.Cols[0].Add('Name');
   GlbPrp.Cols[1].Add('frmDesign_'+DabData.emp_no+'_1');
   GlbPrp.Cols[0].Add('⁄‰Ê«‰');
   GlbPrp.Cells[1,2]:='›—„ ÃœÌœ';
   GlbPrp.Cols[0].Add('çÅ');
   GlbPrp.Cols[0].Add('»«·«');
   GlbPrp.Cols[0].Add('ÿÊ·');
   GlbPrp.Cols[0].Add('⁄—÷');
   mmDetailGroup.Ctl3D:=False;
   dsItem.Close;
   dsItem.Open;
   edUserName.Text:=DabData.Lname+' '+DabData.FName;
{  spEmp.Close;
  spEmp.Open;}
end;

procedure TFormDesigner.ItemsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SetItemClick(Sender);
end;
procedure TFormDesigner.InItemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  tmpCtrl:=TImage(Sender);
  SetCtrlProp;
  ChangeLabel(tmpCtrl,tmpCtrl.Left+tmpCtrl.Width,tmpCtrl.Top);
  tmpCtrl.Refresh;
  frmLike.Refresh;
end;

procedure TFormDesigner.SetCtrlProp;
begin
   if tmpCtrl=nil then Exit;
   Prop.Cols[1][1]:=IntToStr(tmpCtrl.left);// ('çÅ');
   Prop.Cols[1][2]:=IntToStr(tmpCtrl.Top);//  ('»«·«');
   Prop.Cols[1][3]:=IntToStr(tmpCtrl.Width);//  ('ÿÊ·');
   Prop.Cols[1][4]:=IntToStr(tmpCtrl.Height);//  ('⁄—÷');
   Prop.Cols[1][5]:=FindLabel(tmpCtrl).Caption;//  ('⁄‰Ê«‰');
   Prop.Cols[1][6]:=IntToStr(tmpCtrl.Tag);//  (' ê');
end;

procedure TFormDesigner.PropSetEditText(Sender: TObject; ACol, ARow: Integer;const Value: String);
begin
  if tmpCtrl=nil then exit;
  if Prop.Cols[ACol][ARow]='' then exit;
  Case ARow  of
   1:tmpCtrl.Left:=StrToInt(Prop.Cols[ACol][ARow]);
   2:tmpCtrl.Top:=StrToInt(Prop.Cols[ACol][ARow]);
   3:tmpCtrl.Width:=StrToInt(Prop.Cols[ACol][ARow]);
   4:tmpCtrl.Height:=StrToInt(Prop.Cols[ACol][ARow]);
   5:FindLabel(tmpCtrl).Caption:=Prop.Cols[ACol][ARow];
  end;
  tmpCtrl.Repaint;
  frmLike.Refresh;
  Refresh;
end;

procedure TFormDesigner.frmLikeMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
begin
  if Shift=[ssLeft] then
  begin
    ImgfmLike.Top:=frmLike.Top-28;
    ImgfmLike.Left:=frmLike.Left-3;
    ImgfmLike.Width:=frmLike.Width+7;
    ImgfmLike.Height:=frmLike.Height+32;
    fmCaption.Top:=ImgfmLike.Top+5;
    fmCaption.Left:=ImgfmLike.Left+ImgfmLike.Width-70-fmCaption.Width;
  end;
  if Not(RaddxfDesigner.Active) then
     RaddxfDesigner.Active:=True;
  if tmpCtrl=nil then exit;
  Caption:=' y='+IntToStr(x)+' y='+IntToStr(y);
  if Shift=[ssLeft] then
  begin
    //tmpCtrl.Left:=Mouse.CursorPos.x-Left-20-Panel3.Width;
    //tmpCtrl.Top:=Mouse.CursorPos.y-Top-105;
    SetCtrlProp;
    ChangeLabel(tmpCtrl,tmpCtrl.Left+tmpCtrl.Width,tmpCtrl.Top);
    tmpCtrl.Refresh;
    frmLike.Refresh;
  end;
end;

procedure TFormDesigner.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
var
 tmpLabel:TLabel;
begin
  if GridFocued then exit;
  if key=46 then if (tmpCtrl<>nil) then
     begin
        tmpLabel:=FindLabel(tmpCtrl);
        tmpLabel.OnClick:=nil;
        tmpLabel.OnDblClick:=nil;
        tmpLabel.Free;
        tmpLabel:=nil;
        tmpCtrl.OnClick:=nil;
        tmpCtrl.OnMouseDown:=nil;
        tmpCtrl.OnMouseMove:=nil;
        tmpCtrl.OnMouseUp:=nil;
        tmpCtrl.Free;
        tmpCtrl:=nil;
     end;
  if key=27 then
  begin
     frmLike.Cursor:=crDefault;
     ReleaseCapture
  end;
  if key=116 then frmLike.Refresh;
end;

procedure TFormDesigner.spSaveFrmClick(Sender: TObject);
var
  StrFields:TStrings;
  i:integer;
begin
  RaddxfDesigner.SavePosition;
  if GlbPrp.Cells[1,2]='' then
  begin
    ShowMessage('«» œ« ‰«„ ›—„ —« „‘Œ’ ﬂ‰Ìœ');
    Exit;
  end;
  quIn2DesignForm.Parameters.ParamByName('Left').Value:=frmLike.Left;
  quIn2DesignForm.Parameters.ParamByName('Top').Value:=frmLike.Top;
  quIn2DesignForm.Parameters.ParamByName('Width').Value:=frmLike.Width;
  quIn2DesignForm.Parameters.ParamByName('Height').Value:=frmLike.height;
  quIn2DesignForm.Parameters.ParamByName('FormName').Value:=GlbPrp.Cells[1,1];
  quIn2DesignForm.Parameters.ParamByName('Table_Name').Value:='Tbl_'+GlbPrp.Cells[1,1];
  quIn2DesignForm.Parameters.ParamByName('Item_Code').Value:=cdItem.KeyValue;
  quIn2DesignForm.Parameters.ParamByName('FormCaption').Value:=GlbPrp.Cells[1,2];
  quIn2DesignForm.Parameters.ParamByName('SystemID').Value:=cbSystems.KeyValue;
  quIn2DesignForm.Parameters.ParamByName('ViewState').Value:=cbViewState.ItemIndex;
  try
    DabData.Adoc.BeginTrans;
    quIn2DesignForm.ExecSQL;
    quFormID.Close;
    quFormID.Open;
    StrFields:=TStringList.Create;
    For i:=0 to frmLike.ComponentCount-1 do
    begin
      with TImage(frmLike.Components[i]) do
        if Tag>0 then
        begin
          if ((ClassName='TImage')) then
          begin
            if Pos('EditBox',Name)>0 then
            begin
              StrFields.Add(StringReplace(FieldStr,'%NUM%',IntToStr(Tag),[]));
              quIn2DesignFormField.Parameters.ParamByName('Type').Value:=1
            end
            else if Pos('EditInteger',Name)>0 then
            begin
              StrFields.Add(StringReplace(FieldFloat,'%NUM%',IntToStr(Tag),[]));
              quIn2DesignFormField.Parameters.ParamByName('Type').Value:=2
            end
            else if Pos('ComboBox',Name)>0 then
            begin
              StrFields.Add(StringReplace(FieldEmp,'%NUM%',IntToStr(Tag),[]));
              quIn2DesignFormField.Parameters.ParamByName('Type').Value:=3;
            end
            else if Pos('OrgName',Name)>0 then
            begin
              StrFields.Add(StringReplace(FieldOrg,'%NUM%',IntToStr(Tag),[]));
              quIn2DesignFormField.Parameters.ParamByName('Type').Value:=4;
            end
            else if Pos('UnitName',Name)>0 then
            begin
              StrFields.Add(StringReplace(FieldUnit,'%NUM%',IntToStr(Tag),[]));
              quIn2DesignFormField.Parameters.ParamByName('Type').Value:=5;
            end
            else if Pos('MultiLineEditor',Name)>0 then
            begin
              StrFields.Add(StringReplace(FieldDesc,'%NUM%',IntToStr(Tag),[]));
              quIn2DesignFormField.Parameters.ParamByName('Type').Value:=6;
            end;
            quIn2DesignFormField.Parameters.ParamByName('FormID').Value:=quFormIDFormID.Value;
            quIn2DesignFormField.Parameters.ParamByName('Field_ID').Value:=Tag;
            quIn2DesignFormField.Parameters.ParamByName('Left').Value:=Left;
            quIn2DesignFormField.Parameters.ParamByName('Top').Value:=Top;
            quIn2DesignFormField.Parameters.ParamByName('Width').Value:=Width;
            quIn2DesignFormField.Parameters.ParamByName('height').Value:=Height;
            quIn2DesignFormField.Parameters.ParamByName('Caption').Value:=FindLabel(TImage(frmLike.Components[i])).Caption;
            quIn2DesignFormField.Parameters.ParamByName('Table_Field').Value:='F_'+GlbPrp.Cells[1,1]+'_'+IntToStr(Tag);
            quIn2DesignFormField.ExecSQL;
          end;
        end;
      end;
    quCreateTable.SQL.Text:=StringReplace(quCreateTable.SQL.Text,'%Fs%',StrFields.Text,[rfReplaceAll]);
    quCreateTable.SQL.Text:=StringReplace(quCreateTable.SQL.Text,'%$%',GlbPrp.Cells[1,1],[rfReplaceAll]);
    DabData.ShowPopupMessageSmall(quCreateTable.SQL.Text);
    quCreateTable.SQL.SaveToFile('C:\Test.sql');
    quCreateTable.ExecSQL;
   DabData.Adoc.CommitTrans;
   except
    DabData.Adoc.RollbackTrans;
  end;
end;

procedure TFormDesigner.PropEnter(Sender: TObject);
begin
  GridFocued:=True;
end;

procedure TFormDesigner.PropExit(Sender: TObject);
begin
  GridFocued:=False;
end;

procedure TFormDesigner.frmLikeMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    frmLike.Refresh;
end;

procedure TFormDesigner.SpeedButton2Click(Sender: TObject);
begin
//   MFrm.RunForm(TDesignShow,Sender,DesignShow);
end;

procedure TFormDesigner.SpeedButton3Click(Sender: TObject);
var
  i,j:Integer;
begin
  for i:=frmLike.ComponentCount-1 downto 0 do
    if frmLike.Components[i].Tag>0 then
      frmLike.Components[i].Destroy;
end;
function TFormDesigner.FindLabel(Sender:TImage):TLabel;
var
  i:Integer;
begin
  Result:=nil;
  for i:=frmLike.ComponentCount-1 downto 0 do
    if (frmLike.Components[i].Tag=Sender.Tag) and (frmLike.Components[i] is TLabel) then
    begin
      Result:=TLabel(frmLike.Components[i]);
      Result.Font.Color:=clRed;
      Result.Font.Style:=[fsBold];
//      exit;
    end
    else if (frmLike.Components[i] is TLabel) then
    begin
      TLabel(frmLike.Components[i]).Font.Color:=clBlack;
      TLabel(frmLike.Components[i]).Font.Style:=[];
    end;



end ;
procedure TFormDesigner.ChangeLabel(Sender:TImage;x,y:Integer);
var
  i:Integer;
  tmpLabel:TLabel;

begin
   tmpLabel:=FindLabel(Sender);
   if tmpLabel=nil then exit;
   tmpLabel.Left:=x;
   tmpLabel.Top:=y;
end ;

procedure TFormDesigner.SpeedButton4Click(Sender: TObject);
begin
  tmpCtrl:=nil;
end;

procedure TFormDesigner.dsItemAfterScroll(DataSet: TDataSet);
begin
  mmDetailGroup.Text:='ÿ»ﬁÂ «„Ê«·Ì:'+
                      #13#10+dsItemClass_TypeStr.Value+
                      #13#10+' ê—ÊÂ «’·Ì :'+
                      #13#10+dsItemMaster_Name.Value+
                      #13#10+'ê—ÊÂ ›—⁄Ì:'+
                      #13#10+dsItemDetail_Name.Value+
                      #13#10+'ﬂœ ﬂ«·«:'+
                      #13#10+dsItemItem_Code.Value;
end;

procedure TFormDesigner.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFormDesigner.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if RadDanHint.HintActive then
	 RadDanHint.HintActive:=False
  else
	 RadDanHint.HintActive:=True;
end;

procedure TFormDesigner.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if RaddxfDesigner.Active then
      RaddxfDesigner.Active:=False;
end;

procedure TFormDesigner.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if RaddxfDesigner.Active then
     RaddxfDesigner.Active:=False
  else
     RaddxfDesigner.Active:=True;
end;

procedure TFormDesigner.cbSystemsClick(Sender: TObject);
begin
   GlbPrp.Cells[1,1]:='frmDesign_'+DabData.emp_no+'_'+IntToStr(dstSystems.RecNo)+'_1';
end;

procedure TFormDesigner.ImgfmLikeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Shift=[ssLeft] then
  begin
    ResetForm;
  end;
end;

procedure TFormDesigner.GlbPrpSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
  inherited;
  if Trim(Value)='' then exit;
  Case ARow  of
    2:fmCaption.Text:=GlbPrp.Cells[1,2];
    3:ImgfmLike.Left:=StrToInt(GlbPrp.Cells[1,3]);
    4:ImgfmLike.Top:=StrToInt(GlbPrp.Cells[1,4]);
    5:ImgfmLike.Height:=StrToInt(GlbPrp.Cells[1,5]);
    6:ImgfmLike.Width:=StrToInt(GlbPrp.Cells[1,6]);
  end;//case
  ResetForm;
end;
procedure TFormDesigner.ResetForm;
begin
    frmLike.Top:=ImgfmLike.Top+28;
    frmLike.Left:=ImgfmLike.Left+3;
    frmLike.Width:=ImgfmLike.Width-7;
    frmLike.Height:=ImgfmLike.Height-32;
    fmCaption.Top:=ImgfmLike.Top+5;
    fmCaption.Left:=ImgfmLike.Left+ImgfmLike.Width-70-fmCaption.Width;
    GlbPrp.Cells[1,3]:=IntToStr(frmLike.Left);
    GlbPrp.Cells[1,4]:=IntToStr(frmLike.Top);
    GlbPrp.Cells[1,5]:=IntToStr(frmLike.Height);
    GlbPrp.Cells[1,6]:=IntToStr(frmLike.Width);
end;


procedure TFormDesigner.fmCaptionEnter(Sender: TObject);
begin
  inherited;
  (Sender as TEdit).Ctl3D:=True;
end;

procedure TFormDesigner.fmCaptionExit(Sender: TObject);
begin
  inherited;
  (Sender as TEdit).Ctl3D:=False;
  GlbPrp.Cells[1,2]:=(Sender as TEdit).Text;
end;

procedure TFormDesigner.fmCaptionChange(Sender: TObject);
var
  MyCanvas:TControlCanvas;
begin
  inherited;
  MyCanvas:=TControlCanvas.Create;
  MyCanvas.Control:=(Sender as TControl);
  (Sender as TEdit).Width:= MyCanvas.TextWidth((Sender as TEdit).Text)+20;
  ResetForm;
end;

procedure TFormDesigner.frmLikeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  ShowMessage(Sender.ClassName);
end;

end.
