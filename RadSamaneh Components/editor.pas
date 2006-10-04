unit editor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, ADODB;

type
  TQGEditor = class(TForm)
    LBField: TListBox;
    Label1: TLabel;
    btok: TButton;
    Bevel1: TBevel;
    QuFields: TADOQuery;
    cmbTable: TComboBox;
    chkPk: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btokClick(Sender: TObject);
    procedure cmbTableChange(Sender: TObject);
    procedure LBFieldDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LBFieldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CString:string;
    Database:string;
    FieldName:string;
    TableName:string;
    FieldNumber,TableNumber:smallint;
    Selected,Fprimary:boolean;
    Procedure FillLB;
    procedure OpenQuery;
  end;

var
  QGEditor: TQGEditor;

implementation

{$R *.DFM}

procedure TQGEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TQGEditor.btokClick(Sender: TObject);
begin
 Fprimary:=false;
 TableName:=trim(cmbTable.Text);
 FieldName:=trim(LBField.Items[LBField.itemindex]);
 if chkPk.Checked then
    Fprimary:=true;
 FieldNumber:=LBField.itemindex;
 tableNumber:=cmbTable.ItemIndex;
 self.Close;
end;

procedure TQGEditor.cmbTableChange(Sender: TObject);
begin
 FillLB;
end;

procedure TQGEditor.LBFieldDblClick(Sender: TObject);
begin
  if Selected then
  begin
   Fprimary:=false;
   if chkPk.Checked then
    Fprimary:=true;
   TableName:=trim(cmbTable.Text);
   FieldName:=trim(LBField.Items[LBField.itemindex]);
   self.Close;
   btok.Enabled:=true;
   FieldNumber:=LBField.itemindex;
   TableNumber:=cmbTable.ItemIndex;
  end;
end;

procedure TQGEditor.FillLB;
var i:integer;
begin
 if trim(cmbTable.Text)<>'' then
  begin
  Selected:=true;
  OpenQuery;
  LBField.Clear;
  for i:=0 to QuFields.RecordCount-1 do
   begin
    LBField.Items.Add(QuFields.Fields[3].AsString);
    QuFields.next;
   end;
   end;
  //btok.Enabled:=true;
end;

procedure TQGEditor.FormShow(Sender: TObject);
begin
  Selected:=false;
end;

procedure TQGEditor.LBFieldClick(Sender: TObject);
begin
 if Selected then
    btok.Enabled:=true;

end;

procedure TQGEditor.OpenQuery;
begin
  QuFields.Close;
  QuFields.ConnectionString:=CString;
  QuFields.SQL.Clear;
  QuFields.SQL.Add('EXEC sp_columns @table_name = '+cmbTable.Text+',@table_qualifier = '+Database+'');
  QuFields.Open;
  QuFields.First;
end;

end.
