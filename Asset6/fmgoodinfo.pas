unit fmGoodInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ADODB,define,RadForms, StdCtrls, RSqlEdit, ExtCtrls;

type
  TGoodinfo = class(TRadForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    edFind: TRSqlEdit;
    procedure QuGoodsRadifGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edFindChange(Sender: TObject);
  private
    { Private declarations }
  public
    GF:Integer;
    { Public declarations }
  end;

var
  Goodinfo: TGoodinfo;
  SRH:string;
implementation

uses DabDmdle,  fmItemRequestInput, fmrepItemRepair;

{$R *.DFM}

procedure TGoodinfo.QuGoodsRadifGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if  DabData.qumoveable.IsEmpty  then  Text:=''
   else  Text:=IntToStr(DabData.qumoveable.recno) ;
end;

procedure TGoodinfo.FormShow(Sender: TObject);
begin
DabData.qumoveable.Close;
DabData.qumoveable.Parameters[4].Value := '%';
DabData.qumoveable.Open;
DBGrid1.SetFocus;
end;

procedure TGoodinfo.DBGrid1DblClick(Sender: TObject);
begin
 if (GF=2) then
 begin
  RepItemRepair.edGood_Code.text:=DabData.qumoveablegoods_code.Value;
  RepItemRepair.edGood_Name.text:=DabData.qumoveableitem_name.AsString;
  GoodInfo.Close;
 end
 else
  begin
  ItemReqInput.edGoodCode.text:=DabData.qumoveablegoods_code.Value;
  ItemReqInput.edGoodName.text:=DabData.qumoveableitem_name.AsString;

  GoodInfo.Close;
 end;
end;

procedure TGoodinfo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
srh:=srh+key;
if (key=#8) then
 delete(srh,length(srh)-1,2);
if (key=#27) then
srh:='';
if (srh<>'') then
DabData.qumoveable.Locate('item_name',srh,[lopartialkey]);
if(key=#13) then
 if (GF=1) then
  begin
//   ServReqInput.edGood_Code.Text:=inttostr(DabData.qumoveablegoods_code.asinteger);
//   ServReqInput.edGoodName.Text:=DabData.qumoveableitem_name.AsString;
//   ServReqInput.edGoodLable.Text:=inttostr(DabData.qumoveablelabel.asinteger);
   Goodinfo.Close;
  end
 else if (GF=2) then
  begin
   RepItemRepair.edGood_Code.text:=inttostr(DabData.qumoveablegoods_code.asinteger);
   RepItemRepair.edGood_Name.text:=DabData.qumoveableitem_name.AsString;
   GoodInfo.Close;
  end
 else
  begin
   ItemReqInput.edGoodCode.text:=inttostr(DabData.qumoveablegoods_code.asinteger);
   ItemReqInput.edGoodName.text:=DabData.qumoveableitem_name.AsString;
   GoodInfo.Close;
  end;

end;

procedure TGoodinfo.DBGrid1Enter(Sender: TObject);
begin
dbgrid1.Color:=clActivegrid;
end;

procedure TGoodinfo.FormActivate(Sender: TObject);
begin
srh:='';
end;

procedure TGoodinfo.edFindChange(Sender: TObject);
begin
  inherited;
    DabData.qumoveable.Close;
    if Trim (edFind.Text) = ''
        then  DabData.qumoveable.Parameters[4].Value := '%'
        else  DabData.qumoveable.Parameters[4].Value := '%'+Trim(edFind.Text)+'%';
    DabData.qumoveable.Open;
end;

end.
