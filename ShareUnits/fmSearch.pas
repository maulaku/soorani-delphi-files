unit fmSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids,BaseFrm, InRadForms;
const
  FirstHeigth=12;
  SpaceHeigth=25;
  CompHeigth=22;
type
  TSearch = class(TBaseForm)
    gbOkCancel: TGroupBox;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
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
    ActiveDataSet:TADODataSet;
//    ActiveGrid: TDBGrid;
    { Public declarations }
  end;

var
  Search: TSearch;
  IndexCom:Integer;
  edSearch:array of TEdit;
  cbTypeAdd:array of TComboBox;
  cbEqual:array of TComboBox;
  cbSearch:array of TComboBox;
implementation

{$R *.dfm}

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
          Filters[i]:=ActiveDBGrid.Columns[TComboBox(FindComponent('cbSearch'+IntToStr(i))).ItemIndex].FieldName+GetSame(TComboBox(FindComponent('cbEqual'+IntToStr(i))).Text)+''''+TEdit(FindComponent('edSearch'+IntToStr(i))).Text+''''
       else
          Filters[i]:=ActiveDBGrid.Columns[TComboBox(FindComponent('cbSearch'+IntToStr(i))).ItemIndex].FieldName+GetSame(TComboBox(FindComponent('cbEqual'+IntToStr(i))).Text)+'NULL ';
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
  ShowAlertMessage(Filter,2);
  try
    ActiveDataSet.Filtered := False;
    ActiveDataSet.Filter:=Filter;
    ActiveDataSet.Filtered := True;
  except
   ShowAlertMessage('œ— «‰ Œ«» ŒÊœ œﬁ  ›—„«ÌÌœ Ã” ÃÊ ‘„« «⁄„«· ‰ê—œÌœ',1);
  end;
//  Close;
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
procedure TSearch.cbEqualChange(Sender: TObject);
var
  Pos:Integer;
begin
  inherited;
  Pos:=StrToInt(Copy(TComboBox(Sender).Name,8,length(TComboBox(Sender).Name)-7));
  if TComboBox(FindComponent('cbEqual'+IntToStr(Pos))).Text='‘»ÌÂ' then
      TEdit(FindComponent('edSearch'+IntToStr(Pos))).Text:='%'+TEdit(FindComponent('edSearch'+IntToStr(Pos))).Text+'%';
end;

end.
