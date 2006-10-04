unit fmItem;

interface

uses
  Windows, Messages, Define ,SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, ADODB, RSqlEdit, RSqlButton,
  SetForm, SmoothShow,RadForms;

type
  TItem = class(TRadForm)
    quDelete: TADOQuery;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    dbgUnitItem: TDBGrid;
    panInput: TPanel;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    edCode: TRSqlEdit;
    edDesc: TRSqlEdit;
    quItem: TADOQuery;
    quItemCode: TSmallintField;
    quItemUnit_Item_Desc: TStringField;
    dsUnitItem: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);

  private
    { Private declarations }
    Mode : SmallInt ;
  public

  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;

  end;

var
  Item: TItem;
  bk:TBookMark;

implementation

uses DabDmdle, UCommon , fmElam ;

{$R *.DFM}

procedure TItem.DoDelete(var mes: TMessage);
begin
    if(not quItem.IsEmpty) then
    begin
        Elam := TElam.Create(Application) ;
        Elam.lbStr.Caption := '¬Ì« „«Ì· »Â Õ–› «Ì‰ Ê«Õœ ﬂ«·« „Ì »«‘Ìœø' ;
        if(Elam.ShowModal= mrOK) then
        begin
            quDelete.Parameters[0].Value := quItemCode.Value ;
            DabData.ADOC.BeginTrans ;
            try
                quDelete.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            quItem.Close ;
            quItem.Open ;
        end;
    end;
end;

procedure TItem.DoEdit(var mes: TMessage);
begin

    if(not  quItem.IsEmpty) then
    begin
        Mode := 2 ;
        edCode.Text := quItemCode.AsString ;
        edDesc.Text := TRIM(quItemUnit_Item_Desc.Value);
        Height := Height + panInput.Height ;
        panInput.Visible := TRUE ;
        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;
        panInput.SetFocus ;        
    end;
end;

procedure TItem.DoNew(var mes: TMessage);
begin
    Mode := 1 ;
    if(quItem.IsEmpty) then
        edCode.Text := '1'
    else
    begin
        quItem.Last ;
        edCode.Text := IntToStr(quItemCode.AsInteger+1) ;
    end;
    Height := Height + panInput.Height ;
    panInput.Visible := TRUE ;
    FormInitializer1.FieldMode := fmInsert ;
    FormInitializer1.Execute ;
    panInput.SetFocus ;
end;


procedure TItem.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=27;
  Application.MainForm.Dispatch(mes);
end;

procedure TItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TItem.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TItem.FormShow(Sender: TObject);
begin
    quItem.Close ;
    quItem.Open ;
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;

    Top:=40;
    Left:=243;
end;
procedure TItem.btnOKClick(Sender: TObject);
var
    bmPlace : TBookMark ;
begin
    if(Mode = 1) then
    begin
        quInsert.Parameters[0].Value := StrToInt(edCode.Text) ;
        quInsert.Parameters[1].Value := edDesc.Text ;
        DabData.ADOC.BeginTrans ;
        try
            quInsert.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        quItem.Close ;
        quItem.Open ;
        quItem.Last ;
    end ;

    if(Mode = 2) then
    begin
        bmPlace := quItem.GetBookmark ;
        quUpdate.Parameters[0].Value := edDesc.Text ;
        quUpdate.Parameters[1].Value := StrToInt(edCode.Text) ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        quItem.Close ;
        quItem.Open ;
        quItem.GotoBookmark(bmPlace);
        quItem.FreeBookmark(bmPlace);
    end;
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
end;

procedure TItem.btnCancelClick(Sender: TObject);
begin
    
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
end;

end.






