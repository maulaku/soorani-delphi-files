unit fmMasterGroups;

interface

uses
  Windows, Messages, Define ,SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, ADODB, RSqlEdit, RSqlButton,
  SetForm, SmoothShow,RadForms;

type
  TMasterGroups = class(TRadForm)
    quDelete: TADOQuery;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    dbgUnitItem: TDBGrid;
    panInput: TPanel;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    edCode: TRSqlEdit;
    edDesc: TRSqlEdit;
    quMaster: TADOQuery;
    dsMaster: TDataSource;
    quMasterPk_MasterGroup: TSmallintField;
    quMasterClass_Code: TSmallintField;
    quMasterDesc: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbgUnitItemDblClick(Sender: TObject);
    procedure dbgUnitItemKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    Mode : SmallInt ;
    SearchStr:String;
  public

  protected
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;

  end;

var
  MasterGroups: TMasterGroups;
  bk:TBookMark;

implementation

uses DabDmdle, UCommon , fmElam, fmgoodsdet ;

{$R *.DFM}

procedure TMasterGroups.DoDelete(var mes: TMessage);
begin
    if(not quMaster.IsEmpty) then
    begin
        Elam := TElam.Create(Application) ;
        Elam.lbStr.Caption := '¬Ì« „«Ì· »Â Õ–› «Ì‰ Ê«Õœ ﬂ«·« „Ì »«‘Ìœø' ;
        if(Elam.ShowModal= mrOK) then
        begin
            quDelete.Parameters[0].Value := quMasterPk_MasterGroup.Value ;
            quDelete.Parameters[1].Value := DabData.quGoodsClass_Code.AsInteger ;
            DabData.ADOC.BeginTrans ;
            try
                quDelete.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            quMaster.Close ;
            quMaster.Open ;
        end;
    end;
end;

procedure TMasterGroups.DoEdit(var mes: TMessage);
begin
    if(not  quMaster.IsEmpty) then
    begin
        Mode := 2 ;
        edCode.Text := quMasterPk_MasterGroup.AsString ;
        edDesc.Text := TRIM(quMasterDesc.Value);
        Height := Height + panInput.Height ;
        panInput.Visible := TRUE ;
        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;
        panInput.SetFocus ;
        if ((edDesc.Enabled) and  (edCode.Visible)) then
          edDesc.SetFocus;
    end;
end;

procedure TMasterGroups.DoNew(var mes: TMessage);
begin
    Mode := 1 ;
    if(quMaster.IsEmpty) then
        edCode.Text := '1'
    else
    begin
        quMaster.Last ;
        edCode.Text := IntToStr(quMasterPk_MasterGroup.AsInteger+1) ;
    end;
    Height := Height + panInput.Height ;
    panInput.Visible := TRUE ;
    FormInitializer1.FieldMode := fmInsert ;
    FormInitializer1.Execute ;
    panInput.SetFocus ;
    if ((edDesc.Enabled) and  (edCode.Visible)) then 
      edDesc.SetFocus;


end;


procedure TMasterGroups.FormActivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=27;
  Application.MainForm.Dispatch(mes);
end;

procedure TMasterGroups.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=CaFree;
end;

procedure TMasterGroups.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TMasterGroups.FormShow(Sender: TObject);
begin
    quMaster.Close ;
    quMaster.Parameters[0].Value:=DabData.quGoodsClass_Code.AsInteger;
    quMaster.Open ;
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;

    Top:=40;
    Left:=243;
end;
procedure TMasterGroups.btnOKClick(Sender: TObject);
var
    bmPlace : TBookMark ;
begin
    if(Mode = 1) then
    begin
        quInsert.Parameters[0].Value := DabData.quGoodsClass_Code.AsInteger ;
        quInsert.Parameters[1].Value := edDesc.Text ;
        DabData.ADOC.BeginTrans ;
        try
            quInsert.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        quMaster.Close ;
        quMaster.Open ;
        quMaster.Last ;
    end ;

    if(Mode = 2) then
    begin
        bmPlace := quMaster.GetBookmark ;
        quUpdate.Parameters[0].Value := edDesc.Text ;
        quUpdate.Parameters[1].Value := StrToInt(edCode.Text) ;
        quUpdate.Parameters[2].Value := DabData.quGoodsClass_Code.AsInteger ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        quMaster.Close ;
        quMaster.Open ;
        quMaster.GotoBookmark(bmPlace);
        quMaster.FreeBookmark(bmPlace);
    end;
    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
end;

procedure TMasterGroups.btnCancelClick(Sender: TObject);
begin

    panInput.Visible := FALSE ;
    Height := Height - panInput.Height ;
end;

procedure TMasterGroups.dbgUnitItemDblClick(Sender: TObject);
begin
  DabData.quMasterGroups.Close;
  DabData.quMasterGroups.Open;
  goodsdet.dblMaster.KeyValue:=quMasterPk_MasterGroup.Value;
  goodsdet.dblMasterClick(nil);
  Close;
end;

procedure TMasterGroups.dbgUnitItemKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
    SearchStr:='';
  SearchStr:=SearchStr+Key;
  quMaster.Locate('Desc',SearchStr,[loPartialKey]);
end;

end.






