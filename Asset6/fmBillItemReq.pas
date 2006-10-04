unit fmBillItemReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, Grids, DBGrids, StdCtrls, RSqlButton , Define,RadForms;

type
  TBillItemReq = class(TRadForm)
    dbgItemReq: TDBGrid;
    Panel1: TPanel;
    dbgReqItem: TDBGrid;
    Panel2: TPanel;
    quItemReq: TADOQuery;
    quReqItem: TADOQuery;
    quItemReqReq_no: TIntegerField;
    quItemReqCreator: TStringField;
    quItemReqCreate_Date: TStringField;
    quItemReqOrg_Code: TSmallintField;
    quItemReqOrg_Unit_Code: TSmallintField;
    quItemReqConfirmer: TStringField;
    quItemReqConfirm_date: TStringField;
    quItemReqVerifier: TStringField;
    quItemReqVerify_date: TStringField;
    quItemReqState: TSmallintField;
    quItemReqReq_Type: TSmallintField;
    quItemReqOrg_Name: TStringField;
    quItemReqUt_Name: TStringField;
    dsItemReq: TDataSource;
    quItemReqReqType: TStringField;
    quReqItemItem_Code: TStringField;
    quReqItemReq_Amount: TIntegerField;
    quReqItemConf_Amount: TIntegerField;
    quReqItemRecieve_Amount: TIntegerField;
    quReqItemr_state: TSmallintField;
    quReqItemitem_type: TSmallintField;
    quReqItemReq_type: TSmallintField;
    quReqItemReq_number: TStringField;
    quReqItemitem_name: TStringField;
    quReqItemRState: TStringField;
    dsReqItem: TDataSource;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    quReqItemReq_No: TIntegerField;
    quItemReqGoods_Code: TStringField;
    quItemReqLoc_Code: TSmallintField;
    procedure quItemReqCalcFields(DataSet: TDataSet);
    procedure quReqItemCalcFields(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure quItemReqAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbgItemReqDblClick(Sender: TObject);
    procedure dbgReqItemDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Result : Boolean ;
    Req_No : Integer ;
  end;

var
  BillItemReq: TBillItemReq;

implementation
uses
    DabDmdle ;

{$R *.DFM}

procedure TBillItemReq.quItemReqCalcFields(DataSet: TDataSet);
begin
    case quItemReqReq_Type.Value of
    0: quItemReqReqType.Value := 'œ—ŒÊ«”  ⁄«œÌ ﬂ«·«' ;
    1: quItemReqReqType.Value := 'œ—ŒÊ«”  ”«·«‰Â ﬂ«·«' ;
    2: quItemReqReqType.Value := 'œ—ŒÊ«”  ﬂ«·« ÃÂ   ⁄„Ì— „«·' ;
    end;
end;

procedure TBillItemReq.quReqItemCalcFields(DataSet: TDataSet);
begin
    case quReqItemr_state.Value of
    0: quReqItemRState.Value := 'œ—ŒÊ«”  ‘œÂ' ;
    1: quReqItemRState.Value := ' ⁄ÌÌ‰ „Ì“«‰  ÕÊÌ·Ì' ;
    2: quReqItemRState.Value := ' ÕÊÌ· ‰«ﬁ’' ;
    3: quReqItemRState.Value := ' ÕÊÌ· ﬂ«„·' ;
    end;
end;

procedure TBillItemReq.btnOKClick(Sender: TObject);
begin
    Result := TRUE ;
    if(not quItemReq.IsEmpty) then
        Req_No := quItemReqReq_no.Value
    else
        Req_No := 0 ;
    Close ;
end;

procedure TBillItemReq.btnCancelClick(Sender: TObject);
begin
    Result := FALSE ;
    Close ;
end;

procedure TBillItemReq.quItemReqAfterScroll(DataSet: TDataSet);
begin
    quReqItem.Close ;
    quReqItem.Parameters[0].Value := quItemReqReq_no.Value ;
    quReqItem.Open ;
end;

procedure TBillItemReq.FormShow(Sender: TObject);
begin
    quItemReq.Close ;
    quItemReq.Open ;

    dbgItemReq.Color := clactivegrid ;
end;

procedure TBillItemReq.dbgItemReqDblClick(Sender: TObject);
begin
  inherited;
    Result := TRUE ;
    if(not quItemReq.IsEmpty) then
        Req_No := quItemReqReq_no.Value
    else
        Req_No := 0 ;
end;

procedure TBillItemReq.dbgReqItemDblClick(Sender: TObject);
begin
  inherited;
    Result := TRUE ;
    if(not quItemReq.IsEmpty) then
        Req_No := quItemReqReq_no.Value
    else
        Req_No := 0 ;
end;


end.
