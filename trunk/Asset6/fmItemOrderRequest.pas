unit fmItemOrderRequest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db , Define, ADODB,RadForms, ppDB, ppDBPipe,
  ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppModule, daDatMod;

type
  TItemOrderRequest = class(TRadForm)
    dbgOrderRequest: TDBGrid;
    Panel1: TPanel;
    dbgOrderedRequestItem: TDBGrid;
    dsItemOrderRequest: TDataSource;
    quDelete: TADOQuery;
    dsOrdReqItems: TDataSource;
    quDelItem: TADOQuery;
    quItemOrderRequest: TADOQuery;
    quItemOrderRequestOrder_Req_Type: TSmallintField;
    quItemOrderRequestOrder_Req_No: TStringField;
    quItemOrderRequestState: TSmallintField;
    quItemOrderRequestCreator: TStringField;
    quItemOrderRequestCreate_Date: TStringField;
    quItemOrderRequestConfirmer: TStringField;
    quItemOrderRequestConfirm_Date: TStringField;
    quItemOrderRequestCredit_Suplier: TStringField;
    quItemOrderRequestCS_Date: TStringField;
    quItemOrderRequestService_Desc: TStringField;
    quItemOrderRequestItem_Type: TSmallintField;
    quItemOrderRequestItem_Class: TSmallintField;
    quItemOrderRequestRequest_Refuse_Reason: TStringField;
    quItemOrderRequestService_Type_No: TSmallintField;
    quItemOrderRequestEstimate_Price: TFloatField;
    quItemOrderRequestDeal_Kind: TSmallintField;
    quItemOrderRequestInquiry_Date_Rec: TStringField;
    quItemOrderRequestState_Desc: TStringField;
    quItemOrderRequestclass_name: TStringField;
    quOrdReqItems: TADOQuery;
    quOrdReqItemsOrder_Type: TSmallintField;
    quOrdReqItemsOrder_Req_No: TStringField;
    quOrdReqItemsItem_Code: TStringField;
    quOrdReqItemsAmount_Number: TSmallintField;
    quOrdReqItemsPrice_Estimate_Number: TFloatField;
    quOrdReqItemsItem_name: TStringField;
    quOrdReqItemsItem_Unit: TSmallintField;
    quOrdReqItemsUnit_Item_Desc: TStringField;
    quItemOrderRequestStateStr: TStringField;
    quItemOrderRequestItemType: TStringField;
    dsBillItems: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppShape4: TppShape;
    ppLabel6: TppLabel;
    ppShape5: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine11: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel34: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel35: TppLabel;
    lbDate: TppLabel;
    ppImage2: TppImage;
    ppLabel37: TppLabel;
    edOrgan: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppVariable2: TppVariable;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine12: TppLine;
    ppLabel21: TppLabel;
    ppReportPDate: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbgOrderRequestEnter(Sender: TObject);
    procedure dbgOrderRequestExit(Sender: TObject);
    procedure dbgOrderedRequestItemExit(Sender: TObject);
    procedure dbgOrderedRequestItemEnter(Sender: TObject);
    procedure dbgOrderedRequestItemDblClick(Sender: TObject);
    procedure quItemOrderRequestAfterScroll(DataSet: TDataSet);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    Mode : SmallInt ;
    SQL : String ;
  public
    { Public declarations }
  protected
    procedure DoNew(var mes : TMessage) ; message F_NEW ;
    procedure DoEdit(var mes : TMessage) ; message F_EDIT ;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoDelete(var mes : TMessage) ; message F_DEL;
    procedure DoScroll(var mes : TMessage) ; message F_SCROLL ;
  end;

var
  ItemOrderRequest: TItemOrderRequest;
  StateOfItemOrderRequest : SmallInt ; 

implementation
uses
    DabDmdle , fmInItemOrderRequest , fmVerify, fmOrdReqItem,
  fmItemRequestList;

{$R *.DFM}

procedure TItemOrderRequest.DoNew(var mes: TMessage);
begin
    if(StateOfItemOrderRequest = 1) then
    begin
        if(Mode = 1) then
        begin
            InItemOrderRequest := TInItemOrderRequest.Create(Application);
            InItemOrderRequest.State := StateOfItemOrderRequest ;
            InItemOrderRequest.Creation_Mode := 1 ;
            InItemOrderRequest.ShowModal ;
        end;

        if(Mode = 2) then
        begin
            if(not ItemOrderRequest.quItemOrderRequest.IsEmpty) then
            begin
                if(ItemOrderRequest.quItemOrderRequestState.Value = 1) then
                begin
                    OrdReqItem := TOrdReqItem.Create(Application);
                    OrdReqItem.Creation_Mode := 1 ;
                    OrdReqItem.ShowModal ;
                end
                else
                    DabData.ShowPopupMessage('‘„« „Ã«“ »Â «÷«›Â ﬂ—œ‰ ﬂ«·« œ— «Ì‰ ﬁ”„  ‰„Ì »«‘Ìœ');
            end;
//            DabData.ShowPopupMessage('œ— «Ì‰ »Œ‘ ‰„Ì  Ê«‰Ìœ ﬂ«·«Ì ÃœÌœÌ Ê«—œ ﬂ‰Ìœ');
        end;
    end;
end;

procedure TItemOrderRequest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    ItemOrderRequest.quItemOrderRequest.Close ;
    ItemOrderRequest.quItemOrderRequest.SQL.Text := SQL ;
    FormDeactivate(nil);
    Action := caFree ;
end;

procedure TItemOrderRequest.FormShow(Sender: TObject);
var
    Mes : TMessage ;
begin
    Left := 0 ;
    Top  := 0 ;

    dbgOrderRequest.Color := clactivegrid ;
    dbgOrderedRequestItem.Color := cldeactivegrid ;

    SQL := quItemOrderRequest.SQL.Text ;

    if(StateOfItemOrderRequest = 1) then
    begin
        quItemOrderRequest.Close;
        quItemOrderRequest.SQL.Text := quItemOrderRequest.SQL.Text + ' WHERE ORR.Order_Req_Type = 1 AND ORR.State = 1 ' ;
        quItemOrderRequest.Open ;
    end;

    if(StateOfItemOrderRequest = 2) then
    begin
        quItemOrderRequest.Close;
        quItemOrderRequest.SQL.Text := quItemOrderRequest.SQL.Text + ' WHERE ORR.Order_Req_Type = 1 AND (ORR.State = 1 OR ORR.State = 2 OR ORR.State = 3) ' ;
        quItemOrderRequest.Open ;
    end;

    if(StateOfItemOrderRequest = 3) then
    begin
        quItemOrderRequest.Close;
        quItemOrderRequest.SQL.Text := quItemOrderRequest.SQL.Text + ' WHERE ORR.Order_Req_Type = 1 AND (ORR.State = 2 OR ORR.State = 4 OR ORR.State = 5 OR ORR.State = 6 ) ' ;
        quItemOrderRequest.Open ;
    end;

    Mes.Msg := F_SCROLL ;
    DoScroll(Mes);

end;

procedure TItemOrderRequest.FormActivate(Sender: TObject);
var
    Mes: TMessage ;
begin
    Mes.Msg := FORM_STATE ;
    case StateOfItemOrderRequest Of
    1: Mes.LParam := 5 ;
    2: Mes.LParam := 37 ;
    3: Mes.LParam := 49 ;
    end;
    Application.MainForm.Dispatch(Mes) ;
end;

procedure TItemOrderRequest.FormDeactivate(Sender: TObject);
var
    Mes : TMessage ;
begin
    Mes.Msg := FORM_DEACT ;
    Application.MainForm.Dispatch(Mes) ;
end;

procedure TItemOrderRequest.DoEdit(var mes: TMessage);
begin
    if(Mode = 1) then
    begin
        if(StateOfItemOrderRequest = 1) then
        begin
            if(not quItemOrderRequest.IsEmpty) then
            begin
                if(quItemOrderRequestState.Value <> 1) then
                    DabData.ShowPopupMessage('‘„« ›ﬁÿ „Ã«“ »Â «’·«Õ œ—ŒÊ«”  Â«Ì »« Ê÷⁄Ì   ‰ŸÌ„ ‘œÂ Â” Ìœ')
                else
                begin
                    InItemOrderRequest := TInItemOrderRequest.Create(Application);
                    InItemOrderRequest.State := StateOfItemOrderRequest ;
                    InItemOrderRequest.Creation_Mode := 2 ;
                    InItemOrderRequest.ShowModal ;
                end;
            end;
        end;

        if(StateOfItemOrderRequest = 2) then
        begin
            if(not quItemOrderRequest.IsEmpty) then
            begin
                if(quItemOrderRequestState.Value = 1) OR
                  (quItemOrderRequestState.Value = 2) OR
                  (quItemOrderRequestState.Value = 3) then
                begin
                    InItemOrderRequest := TInItemOrderRequest.Create(Application) ;
                    InItemOrderRequest.State := StateOfItemOrderRequest ;
                    InItemOrderRequest.ShowModal ;
                end
                else
                    DabData.ShowPopupMessage('‘„« „Ã«“ »Â «’·«Õ «Ì‰ œ—ŒÊ«”  ‰„Ì »«‘Ìœ');
            end;
        end;

        if(StateOfItemOrderRequest = 3) then
        begin
            if(not quItemOrderRequest.IsEmpty) and (quItemOrderRequestState.Value <> 6) then
            begin
                InItemOrderRequest := TInItemOrderRequest.Create(Application) ;
                InItemOrderRequest.State := StateOfItemOrderRequest ;
                InItemOrderRequest.ShowModal ; 
            end;
        end;
    end;

    if(Mode = 2) then
    begin
        if(StateOfItemOrderRequest = 1) then
        begin
            if(not quItemOrderRequest.IsEmpty) then
            begin
                if(quItemOrderRequestState.Value = 1) then
                begin
                    if(not quOrdReqItems.IsEmpty) then
                    begin
                        OrdReqItem := TOrdReqItem.Create(Application) ;
                        OrdReqItem.Creation_Mode := 2 ;
                        OrdReqItem.ShowModal ;
                    end;
                end
                else
                    DabData.ShowPopupMessage('‘„« „Ã«“ »Â «’·«Õ «Ì‰ »Œ‘ ‰„Ì »«‘Ìœ');
            end;
        end;
    end;
end;

procedure TItemOrderRequest.DoDelete(var mes: TMessage);
begin
    if(Mode = 1) then
    begin
        if(StateOfItemOrderRequest = 1) then
        begin
            if(quItemOrderRequestState.Value <> 1) then
                DabData.ShowPopupMessage('‘„« ›ﬁÿ „Ã«“ »Â Õ–› œ—ŒÊ«”  Â«Ì »« Ê÷⁄Ì   ‰ŸÌ„ ‘œÂ Â” Ìœ')
            else
            begin
                Verify := TVerify.Create(Application) ;
                if( Verify.ShowModal = mrOK) then
                begin
                    quDelete.Parameters[0].Value := quItemOrderRequestOrder_Req_No.Value ;
                    DabData.ADOC.BeginTrans ;
                    try
                        quDelete.ExecSQL ;
                        DabData.ADOC.CommitTrans ;
                    except
                        DabData.ADOC.RollbackTrans ;
                    end;
                    quItemOrderRequest.Close ;
                    quItemOrderRequest.Open ;
                end;
            end;
        end;
    end;

    if(Mode = 2) then
    begin
        if(StateOfItemOrderRequest = 1) then
        begin
            if(not quOrdReqItems.IsEmpty) then
            begin
                if(quItemOrderRequestState.Value = 1) then
                begin
                    Verify := TVerify.Create(Application) ;
                    if( Verify.ShowModal = mrOK) then
                    begin
                        quDelItem.Parameters[0].Value := quOrdReqItemsOrder_Req_No.Value ;
                        quDelItem.Parameters[1].Value := quOrdReqItemsItem_Code.Value ;
                        DabData.ADOC.BeginTrans ;
                        try
                            quDelItem.ExecSQL ;
                            DabData.ADOC.CommitTrans ;
                        except
                            DabData.ADOC.RollbackTrans ;
                        end;
                        quOrdReqItems.Close ;
                        quOrdReqItems.Open ;
                    end;
                end
                else
                    DabData.ShowPopupMessage('‘„« „Ã«“ »Â Õ–› «Ì‰ ﬂ«·« ‰„Ì »«‘Ìœ');
            end;
        end;
    end;
end;

procedure TItemOrderRequest.DoScroll(var mes: TMessage);
begin
    quOrdReqItems.Close ;
    quOrdReqItems.Parameters[0].Value := quItemOrderRequestOrder_Req_No.Value ;
    quOrdReqItems.Open ;
end;

procedure TItemOrderRequest.dbgOrderRequestEnter(Sender: TObject);
begin
    dbgOrderRequest.Color := clactivegrid ;
    Mode := 1 ;
end;

procedure TItemOrderRequest.dbgOrderRequestExit(Sender: TObject);
begin
    dbgOrderRequest.Color := cldeactivegrid ;
    Mode := 0 ;
end;

procedure TItemOrderRequest.dbgOrderedRequestItemExit(Sender: TObject);
begin
    dbgOrderedRequestItem.Color := cldeactivegrid ;
    Mode := 0 ;
end;

procedure TItemOrderRequest.dbgOrderedRequestItemEnter(Sender: TObject);
begin
    dbgOrderedRequestItem.Color := clactivegrid ;
    Mode := 2;
end;

procedure TItemOrderRequest.dbgOrderedRequestItemDblClick(Sender: TObject);
begin
    if(not quOrdReqItems.IsEmpty) AND
      (quOrdReqItems.Active) then
    begin
        ItemRequestList := TItemRequestList.Create(Application);
        ItemRequestList.Order_Req_No := quOrdReqItemsOrder_Req_No.Value ;
        ItemRequestList.Item_Code := quOrdReqItemsItem_Code.Value ;
        ItemRequestList.ShowModal ;

    end;
end;

procedure TItemOrderRequest.quItemOrderRequestAfterScroll(
  DataSet: TDataSet);
begin
    quOrdReqItems.Close ;
    quOrdReqItems.Parameters[0].Value := quItemOrderRequestOrder_Req_No.Value ;
    quOrdReqItems.Open ;
end;

procedure TItemOrderRequest.DoPrint(var mes :TMessage);
begin
  if MessageDlg('›—„ œ—ŒÊ«”  ﬂ«·«', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     {quOrdReqItems.Close;
     quOrdReqItems.Open;         }
     ppReportPDate.Text:= Dabdata.disp_date;
     edOrgan.Caption:=OrganizName;
     lbDate.Caption:=Dabdata.disp_date;
//     ppDBPipeline1.DataSource:= dsBillItems;
     ppReport2.Print;
  end
  else
   inherited;

end;
procedure TItemOrderRequest.ppVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=IntToStr(quOrdReqItems.RecNo);
end;

end.
