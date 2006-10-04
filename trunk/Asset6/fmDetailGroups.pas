unit fmDetailGroups;

interface

uses
  Windows, Messages, Define ,SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, ADODB, RSqlEdit, RSqlButton,
  SetForm, SmoothShow,RadForms;

type
  TDetailGroups = class(TRadForm)
    quDelete: TADOQuery;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    dbgUnitItem: TDBGrid;
    panInput: TPanel;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    edCode: TRSqlEdit;
    edDesc: TRSqlEdit;
    quDetail: TADOQuery;
    dsDetail: TDataSource;
    quDetailPK_MasterGroup: TSmallintField;
    quDetailPK_DetailGroup: TSmallintField;
    quDetailClass_Code: TSmallintField;
    quDetailDesc: TStringField;
    quDetaildsc: TStringField;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbgUnitItemDblClick(Sender: TObject);
    procedure dbgUnitItemKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
    Mode : SmallInt ;
  public
    SearchStr:String;
  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;

  end;

var
  DetailGroups: TDetailGroups;
  bk:TBookMark;

implementation

uses DabDmdle, UCommon , fmElam, fmgoodsdet ;

{$R *.DFM}

procedure TDetailGroups.DoDelete(var mes: TMessage);
begin
    if(not quDetail.IsEmpty) then
    begin
        Elam := TElam.Create(Application) ;
        Elam.lbStr.Caption := '¬Ì« „«Ì· »Â Õ–› «Ì‰ Ê«Õœ ﬂ«·« „Ì »«‘Ìœø' ;
        if(Elam.ShowModal= mrOK) then
        begin
            quDelete.Parameters[0].Value := quDetailPk_DetailGroup.Value ;
            quDelete.Parameters[1].Value := goodsdet.dblMaster.KeyValue;
            quDelete.Parameters[2].Value := DabData.quGoodsClass_Code.AsInteger ;
            DabData.ADOC.BeginTrans ;
            try
                quDelete.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            quDetail.Close ;
            quDetail.Open ;
        end;
    end;
end;

procedure TDetailGroups.DoEdit(var mes: TMessage);
begin

    if(not  quDetail.IsEmpty) then
    begin
        Mode := 2 ;
        edCode.Text := quDetailPk_DetailGroup.AsString ;
        edDesc.Text := TRIM(quDetailDesc.Value);
        Height := Height + panInput.Height ;
        panInput.Visible := TRUE ;
        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;
        panInput.SetFocus ;
        if ((edDesc.Enabled) and  (edCode.Visible)) then
          edDesc.SetFocus;
    end;
end;

procedure TDetailGroups.DoNew(var mes: TMessage);
begin
    Mode := 1 ;
    if(quDetail.IsEmpty) then
        edCode.Text := '1'
    else
    begin
        quDetail.Last ;
        edCode.Text := IntToStr(quDetailPk_DetailGroup.AsInteger+1) ;
    end;
    Height := Height + panInput.Height ;
    panInput.Visible := TRUE ;
    FormInitializer1.FieldMode := fmInsert ;
    FormInitializer1.Execute ;
    panInput.SetFocus ;
    if ((edDesc.Enabled) and  (edCode.Visible)) then 
      edDesc.SetFocus;
end;


procedure TDetailGroups.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=27;
  Application.MainForm.Dispatch(mes);
end;

procedure TDetailGroups.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TDetailGroups.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TDetailGroups.FormShow(Sender: TObject);
begin
    quDetail.Close ;
    quDetail.Parameters[0].Value:=DabData.quGoodsClass_Code.AsInteger;
    quDetail.Parameters[1].Value:=goodsdet.dblMaster.KeyValue;
    quDetail.Open ;
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
    SearchStr:='';
    Top:=40;
    Left:=243;
end;
procedure TDetailGroups.btnOKClick(Sender: TObject);
var
    bmPlace : TBookMark ;
begin
    if(Mode = 1) then
    begin
        quInsert.Parameters[0].Value := DabData.quGoodsClass_Code.AsInteger ;
        quInsert.Parameters[1].Value := goodsdet.dblMaster.KeyValue;
        quInsert.Parameters[2].Value := edDesc.Text ;
        DabData.ADOC.BeginTrans ;
        try
            quInsert.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        quDetail.Close ;
        quDetail.Open ;
        quDetail.Last ;
    end ;

    if(Mode = 2) then
    begin
        bmPlace := quDetail.GetBookmark ;
        quUpdate.Parameters[0].Value := edDesc.Text ;
        quUpdate.Parameters[1].Value := quDetailPK_DetailGroup.Value;
        quUpdate.Parameters[2].Value := quDetailPK_MasterGroup.Value;
        quUpdate.Parameters[3].Value := DabData.quGoodsClass_Code.AsInteger ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        quDetail.Close ;
        quDetail.Open ;
        quDetail.GotoBookmark(bmPlace);
        quDetail.FreeBookmark(bmPlace);
    end;
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
end;

procedure TDetailGroups.btnCancelClick(Sender: TObject);
begin

    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
end;

procedure TDetailGroups.dbgUnitItemDblClick(Sender: TObject);
begin
  goodsdet.dblMasterClick(nil);
  goodsdet.dblDetail.KeyValue:=quDetailPk_DetailGroup.Value;
  goodsdet.dblDetailClick(nil);
  Close;
end;

procedure TDetailGroups.dbgUnitItemKeyPress(Sender: TObject;
  var Key: Char);
begin
  Timer1.Enabled:=true;
  SearchStr:=SearchStr+Key;
  if Key=#27 then
    SearchStr:='';
  if SearchStr<>'' then
    quDetail.Locate('Dsc',SearchStr,[loPartialKey]);
end;

procedure TDetailGroups.Timer1Timer(Sender: TObject);
begin
  inherited;
   SearchStr:='';
   Timer1.Enabled:=false;
end;

end.






