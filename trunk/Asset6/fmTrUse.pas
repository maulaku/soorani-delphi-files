unit fmTrUse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SetForm, ExtCtrls, Grids, DBGrids , Define, Db, ADODB,RadForms;

type
  TTrUse = class(TRadForm)
    dbgUseTrans: TDBGrid;
    Panel1: TPanel;
    dbgDetUseTrans: TDBGrid;
    dsUseTrans: TDataSource;
    dsDetUseTrans: TDataSource;
    quDelete: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbgUseTransEnter(Sender: TObject);
    procedure dbgUseTransExit(Sender: TObject);
    procedure dbgDetUseTransEnter(Sender: TObject);
    procedure dbgDetUseTransExit(Sender: TObject);
  private
    { Private declarations }
    SQL : String ;
    Mode : SmallInt ;
  public
    { Public declarations }
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
    procedure DoScroll(var Mes : TMessage);message F_SCROLL ;
  end;

var
  TrUse: TTrUse;
  StateOfTrUser : SmallInt ;

implementation
uses
    DabDmdle , fmInuseTrans, fmVerify;

{$R *.DFM}

procedure TTrUse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DabData.quUseTrans.Close ;
    DabData.quUseTrans.SQL.Text := SQL ;
    FormDeactivate(nil);
    Action := caFree ;
end;

procedure TTrUse.FormShow(Sender: TObject);
begin
    Left := 0 ;
    Top := 0 ;
    SQL := DabData.quUseTrans.SQL.Text ;
    if(StateOfTrUser = 1) then
    begin
        DabData.quUseTrans.Close ;
        DabData.quUseTrans.SQL.Text := SQL + ' WHERE UT.State = 1' ;
        DabData.quUseTrans.Open ;

        DabData.quDetUseTrans.Close ;
        DabData.quDetUseTrans.Parameters[0].Value := DabData.quUseTransUse_Tr_No.AsString ;
        DabData.quDetUseTrans.Open ;
    end;

    if(StateOfTrUser = 2) then
    begin
        Dabdata.quUseTrans.close ;
        DabData.quUseTrans.Open ;

        DabData.quDetUseTrans.Close ;
        DabData.quDetUseTrans.Parameters[0].Value := DabData.quUseTransUse_Tr_No.Value ;
        DabData.quDetUseTrans.Open ;
    end;

end;

procedure TTrUse.FormActivate(Sender: TObject);
var
    Mes : TMessage ;
begin
    Mes.Msg := FORM_STATE ;
    case StateOfTrUser of
    1: Mes.LParam := 107 ;
    2: Mes.LParam := 110 ;
    else
      Mes.LParam := 107 ;
    end ;
    Application.MainForm.Dispatch(Mes);
end;

procedure TTrUse.FormDeactivate(Sender: TObject);
var
    Mes : TMessage ;
begin
    Mes.Msg := FORM_DEACT ;
    Application.MainForm.Dispatch(Mes);
end;

procedure TTrUse.DoDelete(var Mes: TMessage);
begin
    if(Mode = 1) then
    begin
        if(StateOfTrUser = 1) then
        begin
            if(DabData.quUseTrans.Active) and (not DabData.quUseTrans.IsEmpty) then
            begin
                Verify := TVerify.Create(Application) ;
                if(Verify.ShowModal = mrOK) then
                begin
                    quDelete.Parameters[0].Value := DabData.quUseTransUse_Tr_No.Value ;
                    DabData.ADOC.BeginTrans ;
                    try
                        quDelete.ExecSQL ;
                        DabData.ADOC.CommitTrans ;
                    except
                        DabData.ADOC.RollbackTrans ;
                    end;
                    DabData.quUseTrans.Close ;
                    DabData.quUseTrans.Open ;
                    DabData.quDetUseTrans.Close ;
                    DabData.quDetUseTrans.Parameters[0].Value := DabData.quUseTransUse_Tr_No.Value ;
                    DabData.quDetUseTrans.Open ;
                end;
            end;
        end
    end;
end;

procedure TTrUse.DoEdit(var Mes: TMessage);
begin
    if(StateOfTrUser = 1)then
    begin
        if(Mode = 1) then
        begin
            if(not Dabdata.quUseTrans.IsEmpty) then
            begin
                InUseTrans := TInUseTrans.Create(Application);
                InUseTrans.State := 1 ;
                InUseTrans.Creation_Mode := 2 ;
                InUseTrans.ShowModal ;
            end
        end;
    end;

    if(StateOfTrUser = 2) then
    begin
        if(Mode = 1) then
        begin
            if(not Dabdata.quUseTrans.IsEmpty) then
            begin
                if(DabData.quUseTransState.value = 1) then
                begin
                    InUseTrans := TInUseTrans.Create(Application);
                    InUseTrans.State := 2 ;
                    InUseTrans.ShowModal ;
                end
                else
                    DabData.ShowPopupMessage('«Ì‰ ’Ê— Ã·”Â  «ÌÌ‰ Ê÷⁄Ì  ‘œÂ «” ');
            end
        end;
    end;
end;

procedure TTrUse.DoNew(var Mes: TMessage);
begin
    if(StateOfTrUser = 1)then
    begin
        if(Mode = 1) then
        begin
            InUseTrans := TInUseTrans.Create(Application);
            InUseTrans.State := 1 ;
            InUseTrans.Creation_Mode := 1 ;
            InUseTrans.ShowModal ;
        end;
    end;

end;

procedure TTrUse.DoScroll(var Mes: TMessage);
begin
    if(DabData.quUseTrans.Active) then
    begin
        DabData.quDetUseTrans.Close ;
        DabData.quDetUseTrans.Parameters[0].Value := DabData.quUseTransUse_Tr_No.Value ;
        DabData.quDetUseTrans.Open ;
    end;
end;

procedure TTrUse.dbgUseTransEnter(Sender: TObject);
begin
    dbgUseTrans.Color := clactivegrid ;
    Mode := 1 ;
end;

procedure TTrUse.dbgUseTransExit(Sender: TObject);
begin
    dbgUseTrans.Color := cldeactivegrid ;
    Mode := 0 ;
end;

procedure TTrUse.dbgDetUseTransEnter(Sender: TObject);
begin
    dbgDetUseTrans.Color := clactivegrid ;
    Mode := 2 ;
end;

procedure TTrUse.dbgDetUseTransExit(Sender: TObject);
begin
    dbgDetUseTrans.Color := cldeactivegrid ;
    Mode := 0 ;
end;

end.
