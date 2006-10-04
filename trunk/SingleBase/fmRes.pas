unit fmRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, DBTables;

type
  TRes = class(TForm)
    dblUser: TDBLookupComboBox;
    cbList: TComboBox;
    Button1: TButton;
    Button2: TButton;
    quInsertRes: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    cbAss: TComboBox;
    Label3: TLabel;
    quUpdateRes: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dblUserClick(Sender: TObject);
  private
    { Private declarations }
  public
   mde    :integer;
   atag :integer;
   ListRes:integer;
    { Public declarations }
  end;

var
  Res: TRes;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TRes.Button1Click(Sender: TObject);
begin
 close;
end;

procedure TRes.Button2Click(Sender: TObject);
begin
if mde=1 then
 begin
   quInsertRes.params[0].value:=DabData.LetCd;;
   quInsertRes.params[1].asinteger:=cbList.itemindex;
   quInsertRes.params[2].asinteger:=dblUser.keyvalue;
   quInsertRes.params[3].asinteger:=cbAss.itemindex;
   quInsertRes.ExecSql;
 end
else
 begin
   quUpdateRes.params[0].asinteger:=dblUser.keyvalue;
   quUpdateRes.params[1].asinteger:=cbAss.itemindex;
   quUpdateRes.params[2].asinteger:=ListRes;
   quUpdateRes.params[3].value:=DabData.LetCd;
   quUpdateRes.ExecSql;
 end;
  close;
end;

procedure TRes.dblUserClick(Sender: TObject);
begin
  if (dblUser.Text<>'') and (CbList.text<>'') and (cbAss.Text<>'') then
    button2.Enabled:=true
  else
    button2.Enabled:=false;
end;

end.
