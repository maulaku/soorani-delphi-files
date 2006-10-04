unit fmQsrch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids,db,DbTables;

type
  TQsrch = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Qry: TQuery;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure Run_Qry(ss,TblName,FldName:string);
    { Private declarations }
  public
    tb,fl:string;
    Fname,Fname1:String;
    Res:integer;
    { Public declarations }
  end;

var
  Qsrch: TQsrch;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TQsrch.FormShow(Sender: TObject);
begin
  edit1.setfocus;
  Edit1.text:='';
end;

procedure TQsrch.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   begin
      Run_Qry(Edit1.text,Tb,fl);
      DbGrid1.Columns[0].Fieldname:=fl;
      dbgrid1.setfocus;
   end;
  if key=#27 then close;
end;

procedure TQsrch.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   begin
    res:=Qry.fields[0].asinteger;
    close;
   end;
end;

procedure TQsrch.Run_Qry(ss,TblName,FldName:string);
begin
  Qry.close;
  Qry.Sql.Text:='';
  Qry.Sql.Text:='Select *  from '+TblName+' Where '+FldName+' like '+''''+'%'+ss+'%'+'''';
  Qry.Open;
end;

end.
