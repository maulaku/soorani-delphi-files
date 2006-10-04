unit fmTimeZone;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RSqlButton, SetForm, Mask, RSqlMaskEdit, ExtCtrls,define,
  SmoothShow, RadForms;

type
  TtimeZone = class(TRadForm)
    Bevel1: TBevel;
    Label1: TLabel;
    meFrom: TRSqlMaskEdit;
    Label2: TLabel;
    meTo: TRSqlMaskEdit;
    btnOk: TRSqlButton;
    btnCancel: TRSqlButton;
    Bevel2: TBevel;
    Label3: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  timeZone: TtimeZone;

implementation

uses fmMfrm;

{$R *.DFM}

procedure TtimeZone.btnCancelClick(Sender: TObject);
begin
 Mfrm.WatchReport:=false;
 close;
end;

procedure TtimeZone.FormShow(Sender: TObject);
begin
 
 FormInitializer1.FieldMode:=fmInsert;
 FormInitializer1.Execute;
 SetFormColor(timeZone);
end;

procedure TtimeZone.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TtimeZone.btnOkClick(Sender: TObject);
begin
 MFrm.WatchReport:=true;
// Mfrm.StartDate :=meFrom.Text;
// Mfrm.FinishDate:=meTo.Text;
 Close;
end;

end.
