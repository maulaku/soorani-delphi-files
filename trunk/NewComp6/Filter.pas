unit Filter;

interface

uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms,   Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids , Db, ADODB,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppEndUsr, ppBands, ppVar,
  ppCtrls, ppPrnabl, ppCache, ppDB, ppDBPipe, ppViewr, dxfDesigner,
  Buttons, Danhint;

  const
  FirstHeigth=12;
  SpaceHeigth=25;
  CompHeigth=22;
  RAD_FILTERED=WM_USER+89;

type
  TFilter = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
   procedure DoSearch(ActiveDBGrid:TDBGrid;ActiveDataSet:TCustomADODataSet;Mes:TMessage);
    { Public declarations }
  published
    { Published declarations }
  end;
  TSearch = class(TForm)
    Panel1: TPanel;
    bbCancel: TBitBtn;
    bbOk: TBitBtn;
    procedure bbOkClick(Sender: TObject);
    procedure cbEqualChange(Sender: TObject);
    procedure cbSearchChange(Sender: TObject);
    function  GetSame(Persion:String):String;
    procedure bbCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure AddAllComp;
    procedure AddedSearch;
    procedure AddcbTypeAdd;
    procedure AddcbEqual;
    procedure AddcbSearch;
  private
    { Private declarations }
  public
    ActiveDataSet:TCustomADODataSet;
    ActiveGrid: TDBGrid;
    { Public declarations }
  end;

  TComponents= array of TComponent;
  TmpStrings=array of String;
  function FindComponents(Sender:TComponent;RetType:TClass ): TComponents;
var
  Search: TSearch;
  IndexCom:Integer;
  edSearch:array of TEdit;
  cbTypeAdd:array of TComboBox;
  cbEqual:array of TComboBox;
  cbSearch:array of TComboBox;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Majid', [TFilter]);
end;
procedure TFilter.DoSearch(ActiveDBGrid:TDBGrid;ActiveDataSet:TCustomADODataSet;Mes:TMessage);
var
 i:Integer;
 ActiveReport:TppReport;
 ActiveViewer:TppViewer;
 tmpDataSet:TComponents;
 spGetColDescription:TADOStoredProc;
begin
  ActiveReport:=nil;

  tmpDataSet:=FindComponents(Self.Owner,TppReport);
  if Length(tmpDataSet)>0 then
     ActiveReport:=TppReport(tmpDataSet[0]);
  if ActiveDBGrid=nil then
  begin
    tmpDataSet:=FindComponents(Self.Owner,TCustomADODataSet);
    if Length(tmpDataSet)>0 then
       ActiveDataSet:=TCustomADODataSet(tmpDataSet[0]);
  end;
  if Mes.WParam=2 then
  begin
    if ActiveDataSet<>nil then
      ActiveDataSet.Filter:='';
    if ((ActiveReport<>nil) and (ActiveDBGrid=nil)) then
    begin
      tmpDataSet:=FindComponents(Self.Owner,TppViewer);
      if Length(tmpDataSet)>0 then
      begin
        ActiveViewer:=TppViewer(tmpDataSet[0]);
        ActiveViewer.Reset;
        ActiveViewer.Report.PrintToDevices;
      end;
    end;
    SendMessage(Application.MainForm.Handle,RAD_FILTERED,1,0);
    exit;
  end;
  if ActiveDataSet=nil then exit;
  Search:=TSearch.Create(Self.Owner);
  if ActiveDBGrid=nil then
  begin
     Search.ActiveDataSet:=ActiveDataSet;
     spGetColDescription:=TADOStoredProc.Create(Self.Owner);
     spGetColDescription.Connection:=ActiveDataSet.Connection;
     spGetColDescription.ProcedureName:='spGetColDescription;1';
     spGetColDescription.Parameters.AddParameter;
     spGetColDescription.Parameters.AddParameter;
     spGetColDescription.Parameters.AddParameter;
     spGetColDescription.Parameters[0].DataType := ftString;
     spGetColDescription.Parameters[0].Size := 100;
     spGetColDescription.Parameters[0].Name := '@RETURN_VALUE';
     spGetColDescription.Parameters[0].Direction:=pdReturnValue;
     spGetColDescription.Parameters[1].DataType := ftString;
     spGetColDescription.Parameters[1].Direction:=pdInput;
     spGetColDescription.Parameters[1].Size := 100;
     spGetColDescription.Parameters[1].Name := '@Tbl';
     spGetColDescription.Parameters[2].DataType := ftString;
     spGetColDescription.Parameters[2].Size := 100;
     spGetColDescription.Parameters[2].Direction:=pdInput;
     spGetColDescription.Parameters[2].Name := '@Col';
    for i:=0 to ActiveDataSet.Fields.Count-1 do
    begin
      spGetColDescription.ExecProc;
      spGetColDescription.Close;
      spGetColDescription.Parameters[2].Value:=ActiveDataSet.Fields[i].FieldName;
      spGetColDescription.Open;
      if spGetColDescription.Fields[0].IsNull then
         TComboBox(Search.FindComponent('cbSearch1')).Items.Add(ActiveDataSet.Fields[i].FieldName)
      else
         TComboBox(Search.FindComponent('cbSearch1')).Items.Add(spGetColDescription.Fields[0].AsString);
    end;
  end
  else
     Search.ActiveDataSet:=ActiveDataSet;
  Search.ActiveGrid:=ActiveDBGrid;
  if ActiveDBGrid<>nil then
  begin
    for i:=0 to ActiveDBGrid.Columns.Count-1 do
    begin
      TComboBox(Search.FindComponent('cbSearch1')).Items.Add(ActiveDBGrid.Columns[i].Title.Caption);
    end;
  end;
  if Search.ShowModal=mrOk then
  begin
    if ((ActiveReport<>nil) and (ActiveDBGrid=nil)) then
    begin
      tmpDataSet:=FindComponents(Self.Owner,TppViewer);
      if Length(tmpDataSet)>0 then
      begin
        ActiveViewer:=TppViewer(tmpDataSet[0]);
        ActiveViewer.Reset;
        ActiveViewer.Report.PrintToDevices;
      end;
    end;
    SendMessage(Application.MainForm.Handle,RAD_FILTERED,2,0)
  end
end;
procedure TSearch.bbOkClick(Sender: TObject);
var
 Filter:String;
 Filters:Array of String;
 var i:integer;
begin
  inherited;
  SetLength(Filters,IndexCom-1);
  for i:=1 to IndexCom-2 do
  begin
    Filters[i]:='';
    if TComboBox(FindComponent('cbSearch'+IntToStr(i))).Text<>'' then
       if TEdit(FindComponent('edSearch'+IntToStr(i))).Text<>'' then
       begin
          if ActiveGrid<>nil then
              Filters[i]:=ActiveGrid.Columns[TComboBox(FindComponent('cbSearch'+IntToStr(i))).ItemIndex].FieldName+GetSame(TComboBox(FindComponent('cbEqual'+IntToStr(i))).Text)+''''+TEdit(FindComponent('edSearch'+IntToStr(i))).Text+''''
          else
              Filters[i]:=ActiveDataSet.Fields[TComboBox(FindComponent('cbSearch'+IntToStr(i))).ItemIndex].FieldName+GetSame(TComboBox(FindComponent('cbEqual'+IntToStr(i))).Text)+''''+TEdit(FindComponent('edSearch'+IntToStr(i))).Text+''''
       end
       else
       begin
          if ActiveGrid<>nil then
             Filters[i]:=ActiveGrid.Columns[TComboBox(FindComponent('cbSearch'+IntToStr(i))).ItemIndex].FieldName+GetSame(TComboBox(FindComponent('cbEqual'+IntToStr(i))).Text)+'NULL '
          else
             Filters[i]:=ActiveDataSet.Fields[TComboBox(FindComponent('cbSearch'+IntToStr(i))).ItemIndex].FieldName+GetSame(TComboBox(FindComponent('cbEqual'+IntToStr(i))).Text)+'NULL ';
       end;
  end;
  Filter:='';
  for i:=1 to IndexCom-2 do
  begin
    if Filters[i]<>'' then
      if Filter='' then
         Filter:=Filters[i]
      else
         Filter:=Filter+' ' + GetSame(TComboBox(FindComponent('cbTypeAdd'+IntToStr(i-1))).Text)+' '+Filters[i];
  end;
  try
    ActiveDataSet.Filtered := False;
    ActiveDataSet.Filter:=Filter;
    ActiveDataSet.Filtered := True;
  except
   On ex:Exception do
   begin
     Raise ex;
     ShowMessage('œ— «‰ Œ«» ŒÊœ œﬁ  ›—„«ÌÌœ Ã” ÃÊ ‘„« «⁄„«· ‰ê—œÌœ');
   end;
  end;
//  Close;
end;
procedure TSearch.cbEqualChange(Sender: TObject);
var
  Pos:Integer;
begin
  inherited;
  Pos:=StrToInt(Copy(TComboBox(Sender).Name,8,length(TComboBox(Sender).Name)-7));
  if TComboBox(FindComponent('cbEqual'+IntToStr(Pos))).Text='‘»ÌÂ' then
      TEdit(FindComponent('edSearch'+IntToStr(Pos))).Text:='%'+TEdit(FindComponent('edSearch'+IntToStr(Pos))).Text+'%';
end;

procedure TSearch.cbSearchChange(Sender: TObject);
begin
  inherited;
  if Copy(TComboBox(Sender).Name,9,length(TComboBox(Sender).Name)-8)=IntToStr(IndexCom-1) then
    AddAllComp;
  TComboBox(FindComponent('cbTypeAdd'+IntToStr(IndexCom-2))).ItemIndex:=1;
end;

function  TSearch.GetSame(Persion:String):String;
begin
  if Persion='Ì«' then GetSame:='OR'
  else if Persion='Ê' then GetSame:='AND'
  else if Persion='Ì« ‰Â' then GetSame:='OR NOT'
  else if Persion='Ê ‰Â' then GetSame:='AND NOT'
  else if Persion='‘»ÌÂ' then GetSame:=' like '
  else if Persion='„Œ«·›' then GetSame:=' <> '
  else GetSame:=Persion;
end;

procedure TSearch.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TSearch.FormCreate(Sender: TObject);
begin
  inherited;
  IndexCom:=1;
  AddAllComp;
end;
procedure TSearch.AddAllComp;
begin
  if IndexCom <11 then
  begin
    Top:=Top-Trunc(SpaceHeigth/2);
    Height:=Height+SpaceHeigth;
  end;
  SetLength(edSearch,IndexCom+1);
  SetLength(cbTypeAdd,IndexCom+1);
  SetLength(cbEqual,IndexCom+1);
  SetLength(cbSearch,IndexCom+1);
  AddedSearch;
  AddcbTypeAdd;
  AddcbEqual;
  AddcbSearch;
  Inc(IndexCom);
//  XPPlus1.Active:=False;
//  XPPlus1.Active:=True;
end;
procedure TSearch.AddedSearch;
begin
  edSearch[IndexCom]:=TEdit.Create(Self);
  edSearch[IndexCom].Parent:=Self;
  edSearch[IndexCom].Left:=216;
  edSearch[IndexCom].Width:=121;
  edSearch[IndexCom].Top:=(IndexCom-1)*SpaceHeigth+FirstHeigth;
  edSearch[IndexCom].Height:=CompHeigth;
  edSearch[IndexCom].Name:='edSearch'+IntToStr(IndexCom);
  edSearch[IndexCom].Text:='';
end;
procedure TSearch.AddcbTypeAdd;
begin
  cbTypeAdd[IndexCom]:=TComboBox.Create(Self);
  cbTypeAdd[IndexCom].Parent:=Self;
  cbTypeAdd[IndexCom].Left:=348;
  cbTypeAdd[IndexCom].Width:=49;
  cbTypeAdd[IndexCom].Top:=(IndexCom-1)*SpaceHeigth+FirstHeigth;
  cbTypeAdd[IndexCom].Height:=CompHeigth;
  cbTypeAdd[IndexCom].Name:='cbTypeAdd'+IntToStr(IndexCom);
  cbTypeAdd[IndexCom].Text:=' ';
  cbTypeAdd[IndexCom].Items.Add(' ');
  cbTypeAdd[IndexCom].Items.Add('Ì«');
  cbTypeAdd[IndexCom].Items.Add('Ê');
  cbTypeAdd[IndexCom].Items.Add('Ê ‰Â');
  cbTypeAdd[IndexCom].Items.Add('Ì« ‰Â');
end;
procedure TSearch.AddcbEqual;
begin
  cbEqual[IndexCom]:=TComboBox.Create(Self);
  cbEqual[IndexCom].Parent:=Self;
  cbEqual[IndexCom].BiDiMode:=bdLeftToRight;
  cbEqual[IndexCom].Left:=174;
  cbEqual[IndexCom].Width:=37;
  cbEqual[IndexCom].Top:=(IndexCom-1)*SpaceHeigth+FirstHeigth;
  cbEqual[IndexCom].Height:=CompHeigth;
  cbEqual[IndexCom].Name:='cbEqual'+IntToStr(IndexCom);
  cbEqual[IndexCom].Text:='=';
  cbEqual[IndexCom].Items.Add('=');
  cbEqual[IndexCom].Items.Add('<');
  cbEqual[IndexCom].Items.Add('>');
  cbEqual[IndexCom].Items.Add('<=');
  cbEqual[IndexCom].Items.Add('>=');
  cbEqual[IndexCom].Items.Add('‘»ÌÂ');
  cbEqual[IndexCom].Items.Add('„Œ«·›');
  cbEqual[IndexCom].OnChange:=cbEqualChange;
end;
procedure TSearch.AddcbSearch;
begin
  cbSearch[IndexCom]:=TComboBox.Create(Self);
  cbSearch[IndexCom].Parent:=Self;
  cbSearch[IndexCom].Left:=24;
  cbSearch[IndexCom].Width:=145;
  cbSearch[IndexCom].Top:=(IndexCom-1)*SpaceHeigth+FirstHeigth;
  cbSearch[IndexCom].Height:=CompHeigth;
  cbSearch[IndexCom].Name:='cbSearch'+IntToStr(IndexCom);
  cbSearch[IndexCom].Text:='';
  cbSearch[IndexCom].OnChange:=cbSearchChange;
  if IndexCom > 1 then
    cbSearch[IndexCom].Items:=TComboBox(FindComponent('cbSearch1')).Items;

end;
function FindComponents(Sender:TComponent;RetType:TClass ): TComponents;
var
  CountComp:Integer;
  retVal:TComponents;
  retCount:Integer;
begin
  retCount:=0;
  with Sender do
    for CountComp:=0 to  ComponentCount-1 do
      if Components[CountComp] is RetType then
      begin
          SetLength(retVal, retCount+1);
          retVal[retCount]:=Components[CountComp];
          inc(retCount);
      end;
  Result:=retVal;
end;

end.
