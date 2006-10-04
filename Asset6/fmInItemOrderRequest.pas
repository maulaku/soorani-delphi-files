unit fmInItemOrderRequest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, RSqlButton, RSqlMemo, RSqlEdit, DBCtrls, RSqllookup,
  RSQLComboBox, ExtCtrls, SetForm , Variants;

type
  TInItemOrderRequest = class(TForm)
    panInput: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CreateGB: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbItemType: TRSqlComboBox;
    lkpItemClass: TRSqlDbLookup;
    edCreator: TRSqlEdit;
    edCreateDate: TRSqlEdit;
    edChapter: TRSqlEdit;
    edSubChapter: TRSqlEdit;
    edPartChapter: TRSqlEdit;
    Confirm: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    lbREqRefReason: TLabel;
    rbConfirm: TRadioButton;
    rbRefuse: TRadioButton;
    edConfirmer: TRSqlEdit;
    edConfirmDate: TRSqlEdit;
    Credit: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    rbCredConfirm: TRadioButton;
    rbCredRefuse: TRadioButton;
    edCreditSuplier: TRSqlEdit;
    edCSDate: TRSqlEdit;
    edOrderReqNo: TRSqlEdit;
    edState: TRSqlEdit;
    Panel2: TPanel;
    Action: TRSqlButton;
    Cancel: TRSqlButton;
    quInsert: TADOQuery;
    quGenCode: TADOQuery;
    Main_FormInitializer: TFormInitializer;
    quItemClass: TADOQuery;
    dsItemClass: TDataSource;
    quGenCodeOrder_Req_No: TStringField;
    quEMP: TADOQuery;
    quEMPname: TStringField;
    quEMPfamily: TStringField;
    quUpdate: TADOQuery;
    Label9: TLabel;
    Label15: TLabel;
    edTotalPrice: TRSqlEdit;
    cbDealKind: TRSqlComboBox;
    quTotalPrice: TADOQuery;
    quTotalPricePrice_Estimate_Number: TFloatField;
    mmReqRefReason: TMemo;
    quFillItemRequestList: TADOQuery;
    quFillOrderedRequestItem: TADOQuery;
    quItemClassclass_code: TSmallintField;
    quItemClassclass_desc: TStringField;
    quItemClassclass_name: TStringField;
    quItemClassClass_Type: TSmallintField;
    quItemClassppc_code: TStringField;
    quItemClasspc_code: TStringField;
    quItemClassps_code: TStringField;
    quItemClassPC_Desc: TStringField;
    quItemClassPS_Desc: TStringField;
    quItemClassPPC_Desc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lkpItemClassClick(Sender: TObject);
    procedure ActionClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure rbConfirmClick(Sender: TObject);
    procedure rbRefuseClick(Sender: TObject);
    procedure cbItemTypeClick(Sender: TObject);
  private
    { Private declarations }
    GenCode : String ;
  public
    { Public declarations }
    State : SmallInt ;
    Creation_Mode : SmallInt ;

    Function FormatStr(var MainStr : String ; var MainChar : char ; var Len : Integer ; var Left : Boolean ) : String ;
  end;

var
  InItemOrderRequest: TInItemOrderRequest;

implementation

uses DabDmdle, fmItemOrderRequest;

{$R *.DFM}

procedure TInItemOrderRequest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TInItemOrderRequest.FormShow(Sender: TObject);
var
    TotalPrice : Variant ;
    i : Integer ;
begin
    Left := 124 ;
    Top := 70 ;
    if(State = 1) then  // Create
    begin
        if(Creation_Mode = 1) then  //New
        begin
            edCreator.Text := DabData.Fname + ' ' + DabData.Lname ;
            edCreateDate.Text := Dabdata.disp_date ;
//            quItemClass.Close ;
//            quItemClass.Open ;

            quGenCode.Close ;
            quGenCode.Open ;

            if(quGenCode.IsEmpty) then
                GenCode := Copy(Dabdata.disp_date , 1 , 2 ) + '000001'
            else
            begin
                quGenCode.Last ;
                GenCode := IntToStr( StrToInt(Copy(Dabdata.disp_date , 1 , 2 ) + Copy(quGenCodeOrder_Req_No.Value , 3, 6)) + 1) ;

            end;
            edOrderReqNo.Text := GenCode;

            Main_FormInitializer.FieldMode := fmInsert ;
        end;
        if(Creation_Mode = 2) then  //Edit
        begin
            edOrderReqNo.Text := ItemOrderRequest.quItemOrderRequestOrder_Req_No.AsString ;

            quEMP.Close ;
            quEMP.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestCreator.Value ;
            quEMP.Open ;
            edCreator.Text := quEmpname.Value + ' ' + quEMPfamily.Value ;

            edCreateDate.Text := ItemOrderRequest.quItemOrderRequestCreate_Date.AsString ;

            cbItemType.ItemIndex := ItemOrderRequest.quItemOrderRequestItem_Type.Value - 1 ;

            quItemClass.Close ;
            quItemClass.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestItem_Type.Value - 1 ;
            quItemClass.Open ;
            lkpItemClass.KeyValue := ItemOrderRequest.quItemOrderRequestItem_Class.Value ;
            lkpItemClassClick(Self);

            Main_FormInitializer.FieldMode := fmEdit ;
        end;
        edState.Text := ' ‰ŸÌ„' ;
        Confirm.Visible := FALSE ;
        Credit.Visible := FALSE ;
        panInput.Height := 215 ;
        Height := Height - 215 ;
    end;

    if(State = 2) then  //Confirm
    begin
        edState.Text := ' «ÌÌœ' ;
        Credit.Visible := FALSE ;
        panInput.Height := panInput.Height - Credit.Height ;
        Height := Height - Credit.Height ;
        cbItemType.FieldType := ftDisplay ;
        cbItemType.Enabled := FALSE ;
        lkpItemClass.FieldType := ftDisplay ;

        edOrderReqNo.Text := ItemOrderRequest.quItemOrderRequestOrder_Req_No.AsString ;

        quEMP.Close ;
        quEMP.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestCreator.Value ;
        quEMP.Open ;
        edCreator.Text := quEmpname.Value + ' ' + quEMPfamily.Value ;

        edCreateDate.Text := ItemOrderRequest.quItemOrderRequestCreate_Date.AsString ;

        cbItemType.ItemIndex := ItemOrderRequest.quItemOrderRequestItem_Type.Value - 1 ;

        quItemClass.Close ;
        quItemClass.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestItem_Type.Value - 1 ;
        quItemClass.Open ;
        lkpItemClass.KeyValue := ItemOrderRequest.quItemOrderRequestItem_Class.Value ;
        lkpItemClassClick(Self);

        quTotalPrice.Close ;
        quTotalPrice.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;
        quTotalPrice.Open ;
        TotalPrice := 0 ;
        if(not quTotalPrice.IsEmpty) then
        begin
            quTotalPrice.First ;
            for i := 1 to quTotalPrice.RecordCount do
            begin
                TotalPrice := TotalPrice + quTotalPricePrice_Estimate_Number.Value ;
                quTotalPrice.Next ;
            end;
        end;

        edTotalPrice.Text := FloatToStr(TotalPrice) ;

        if(ItemOrderRequest.quItemOrderRequestConfirmer.IsNull) then
            edConfirmer.Text := DabData.FName + ' ' + DabData.Lname
        else
        begin
            quEMP.Close ;
            quEMP.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestConfirmer.Value ;
            quEMP.Open ;

            edConfirmer.Text := quEmpName.AsString + ' ' + quEMPFamily.AsString ;
        end;
        if(ItemOrderRequest.quItemOrderRequestConfirm_Date.IsNull) then
            edConfirmDate.Text := Dabdata.disp_date
        else
            edConfirmDate.Text := ItemOrderRequest.quItemOrderRequestConfirm_Date.AsString ;

        if(not ItemOrderRequest.quItemOrderRequestDeal_Kind.IsNull) then
            cbDealKind.ItemIndex := ItemOrderRequest.quItemOrderRequestDeal_Kind.Value -1 ;

        if(ItemOrderRequest.quItemOrderRequestState.Value = 1) then
        begin
            rbConfirm.Checked := TRUE ;
            lbREqRefReason.Enabled := FALSE ;
            mmReqRefReason.Enabled := FALSE ;
        end
        else
        begin
            if(ItemOrderRequest.quItemOrderRequestState.Value = 2) then
            begin
                rbConfirm.Checked := TRUE ;
                lbREqRefReason.Enabled := FALSE ;
                mmReqRefReason.Enabled := FALSE ;
            end
            else
            begin
                rbRefuse.Checked := TRUE ;
                mmReqRefReason.Text := TRIM(ItemOrderRequest.quItemOrderRequestRequest_Refuse_Reason.AsString) ;
            end;
        end;
    end;

    if(State = 3) then
    begin
        edState.Text := ' «„Ì‰ «⁄ »«—' ;
        cbItemType.FieldType := ftDisplay ;
        cbItemType.Enabled := FALSE ;
        lkpItemClass.FieldType := ftDisplay ;

        edOrderReqNo.Text := ItemOrderRequest.quItemOrderRequestOrder_Req_No.AsString ;

        quEMP.Close ;
        quEMP.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestCreator.Value ;
        quEMP.Open ;
        edCreator.Text := quEmpname.Value + ' ' + quEMPfamily.Value ;

        edCreateDate.Text := ItemOrderRequest.quItemOrderRequestCreate_Date.AsString ;

        cbItemType.ItemIndex := ItemOrderRequest.quItemOrderRequestItem_Type.Value - 1 ;

        quItemClass.Close ;
        quItemClass.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestItem_Type.Value - 1 ;
        quItemClass.Open ;
        lkpItemClass.KeyValue := ItemOrderRequest.quItemOrderRequestItem_Class.Value ;
        lkpItemClassClick(Self);

        quTotalPrice.Close ;
        quTotalPrice.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;
        quTotalPrice.Open ;
        TotalPrice := 0 ;
        if(not quTotalPrice.IsEmpty) then
        begin
            quTotalPrice.First ;
            for i := 1 to quTotalPrice.RecordCount do
            begin
                TotalPrice := TotalPrice + quTotalPricePrice_Estimate_Number.Value ;
                quTotalPrice.Next ;
            end;
        end;
        edTotalPrice.Text := FloatToStr(TotalPrice) ;

        rbConfirm.Checked := TRUE ;
        lbREqRefReason.Enabled := FALSE ;
        mmReqRefReason.Enabled := FALSE ;

        quEMP.Close ;
        quEMP.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestConfirmer.Value ;
        quEMP.Open ;

        edConfirmer.Text := quEmpName.AsString + ' ' + quEMPFamily.AsString ;
        edConfirmDate.Text := ItemOrderRequest.quItemOrderRequestConfirm_Date.AsString ;
        cbDealKind.ItemIndex := ItemOrderRequest.quItemOrderRequestDeal_Kind.Value -1 ;
        cbDealKind.FieldType := ftDisplay ;
        cbDealKind.Enabled := FALSE ;
        rbConfirm.Enabled := FALSE ;
        rbRefuse.Enabled := FALSE ;

        if(ItemOrderRequest.quItemOrderRequestCredit_Suplier.IsNull) then
        begin
            edCreditSuplier.Text := DabData.FName + ' ' + DabData.Lname ;
        end
        else
        begin
            quEMP.Close ;
            quEMP.Parameters[0].Value := ItemOrderRequest.quItemOrderRequestCredit_Suplier.Value ;
            quEMP.Open ;

            edCreditSuplier.Text := quEMPName.AsString + ' ' + quEMPfamily.AsString ;
        end;

        if(ItemOrderRequest.quItemOrderRequestCS_Date.IsNull) then
            edCSDate.Text := Dabdata.disp_date
        else
            edCSDate.Text := ItemOrderRequest.quItemOrderRequestCS_Date.AsString ;

        if(ItemOrderRequest.quItemOrderRequestState.Value = 2) then
            rbCredConfirm.Checked := TRUE
        else
            if(ItemOrderRequest.quItemOrderRequestState.Value = 4) then
                rbCredConfirm.Checked := TRUE
            else
                rbCredRefuse.Checked := TRUE ;
    end;
    Main_FormInitializer.Execute ;
end;

procedure TInItemOrderRequest.lkpItemClassClick(Sender: TObject);
begin
    if(lkpItemClass.Text <> '') then
    begin
        edChapter.Text := quItemClassPC_Desc.AsString ;
        edSubChapter.Text := quItemClassPS_Desc.AsString ;
        edPartChapter.Text := quItemClassPPC_Desc.AsString ;
    end;
end;

procedure TInItemOrderRequest.ActionClick(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
    if(State = 1) then   //Create
    begin
        if(Creation_Mode = 1) then
        begin
            quInsert.Parameters[0].Value := 1 ;
            quInsert.Parameters[1].Value := GenCode;
            quInsert.Parameters[2].Value := 1 ;
            quInsert.Parameters[3].Value := DabData.emp_no ;
            quInsert.Parameters[4].Value := Dabdata.disp_date ;
            quInsert.Parameters[5].Value := cbItemType.ItemIndex + 1 ;
            quInsert.Parameters[6].Value := lkpItemClass.KeyValue ;

            quFillItemRequestList.Parameters[0].Value := GenCode;
            quFillItemRequestList.Parameters[1].Value := lkpItemClass.KeyValue ;

            quFillOrderedRequestItem.Parameters[0].Value := GenCode;


            DabData.ADOC.BeginTrans ;
            try
                quInsert.ExecSQL ;
                quFillItemRequestList.ExecSQL ;
                quFillOrderedRequestItem.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            ItemOrderRequest.quItemOrderRequest.Close ;
            ItemOrderRequest.quItemOrderRequest.Open ;
            ItemOrderRequest.quItemOrderRequest.Last ;
        end;
        if(Creation_Mode = 2) then
        begin
            bmPlace := ItemOrderRequest.quItemOrderRequest.GetBookmark ;
            quUpdate.SQL.Text := 'UPDATE Order_Request SET '+
                                 'Item_Type = :p1,Item_Class = :p2 WHERE ' +
                                 'Order_Req_Type = 1 AND Order_Req_No = :p3 ' ;

            quUpdate.Parameters[0].Value := cbItemType.ItemIndex + 1 ;
            quUpdate.Parameters[1].Value := lkpItemClass.KeyValue ;
            quUpdate.Parameters[2].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;
            DabData.ADOC.BeginTrans ;
            try
                quUpdate.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            ItemOrderRequest.quItemOrderRequest.Close ;
            ItemOrderRequest.quItemOrderRequest.Open ;
            ItemOrderRequest.quItemOrderRequest.GotoBookmark(bmPlace) ;
            ItemOrderRequest.quItemOrderRequest.FreeBookmark(bmPlace);
        end;
    end;
    if(State = 2) then  //Confirm
    begin
        bmPlace := ItemOrderRequest.quItemOrderRequest.GetBookmark ;

        quUpdate.SQL.Text := 'UPDATE Order_Request SET '+
                             'State = :p1 ,Confirmer = :p2 ,Confirm_Date = :p3, ' +
                             'Request_Refuse_Reason = :p4 ,Deal_Kind = :p5 WHERE Order_Req_Type = 1 AND '+
                             'Order_Req_No = :p6' ;
        if(rbConfirm.Checked) then
            quUpdate.Parameters[0].Value := 2
        else
            quUpdate.Parameters[0].Value := 3 ;

        if(ItemOrderRequest.quItemOrderRequestConfirmer.IsNull) then
            quUpdate.Parameters[1].Value := DabData.emp_no
        else
            quUpdate.Parameters[1].Value := ItemOrderRequest.quItemOrderRequestConfirmer.Value ;

        if(ItemOrderRequest.quItemOrderRequestConfirm_Date.IsNull) then
            quUpdate.Parameters[2].Value := Dabdata.disp_date
        else
            quUpdate.Parameters[2].Value := ItemOrderRequest.quItemOrderRequestConfirm_Date.Value ;

        quUpdate.Parameters[3].Value := mmReqRefReason.Text ;
        quUpdate.Parameters[4].Value := cbDealKind.ItemIndex + 1;
        quUpdate.Parameters[5].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        ItemOrderRequest.quItemOrderRequest.Close ;
        ItemOrderRequest.quItemOrderRequest.Open ;
        ItemOrderRequest.quItemOrderRequest.GotoBookmark(bmPlace) ;
        ItemOrderRequest.quItemOrderRequest.FreeBookmark(bmPlace);
    end;

    if(State = 3) then //Credit Suply
    begin
        bmPlace := ItemOrderRequest.quItemOrderRequest.GetBookmark ;
        quUpdate.SQL.Text := 'UPDATE Order_Request SET '+
                             'State = :p1, Credit_Suplier = :p2 , CS_Date = :p3 '+
                             'WHERE Order_Req_Type = 1 AND Order_Req_No = :p4 ' ;
        if(rbCredConfirm.Checked) then
            quUpdate.Parameters[0].Value := 4
        else
            quUpdate.Parameters[0].Value := 5 ;

        if(ItemOrderRequest.quItemOrderRequestCredit_Suplier.IsNull) then
            quUpdate.Parameters[1].Value := Dabdata.emp_no
        else
            quUpdate.Parameters[1].Value := ItemOrderRequest.quItemOrderRequestCredit_Suplier.Value ;

        if(ItemOrderRequest.quItemOrderRequestCS_Date.IsNull) then
            quUpdate.Parameters[2].Value := Dabdata.disp_date
        else
            quUpdate.Parameters[2].Value := ItemOrderRequest.quItemOrderRequestCS_Date.Value ;

        quUpdate.Parameters[3].Value := ItemOrderRequest.quItemOrderRequestOrder_Req_No.Value ;

        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        ItemOrderRequest.quItemOrderRequest.Close ;
        ItemOrderRequest.quItemOrderRequest.Open ;
        ItemOrderRequest.quItemOrderRequest.GotoBookmark(bmPlace) ;
        ItemOrderRequest.quItemOrderRequest.FreeBookmark(bmPlace);
    end;
    Close ;
end;

procedure TInItemOrderRequest.CancelClick(Sender: TObject);
begin
    Close ;
end;

procedure TInItemOrderRequest.rbConfirmClick(Sender: TObject);
begin
    lbREqRefReason.Enabled := FALSE ;
    mmReqRefReason.Text := '' ;
    mmReqRefReason.Enabled := FALSE ;
end;

procedure TInItemOrderRequest.rbRefuseClick(Sender: TObject);
begin
    lbREqRefReason.Enabled := TRUE ;
    mmReqRefReason.Enabled := TRUE  ;
end;

function TInItemOrderRequest.FormatStr(var MainStr: String;
  var MainChar: char; var Len: Integer; var Left: Boolean): String;
var
    i : Integer ;
    Temp: String ;
begin
    Temp := '' ;
    if(Length(MainStr) < Len) then
    begin
        for i:= 1 to Len - Length(MainStr) do
            Temp := Temp + MainChar ;
    end;
    if Left then
        FormatStr := Temp + MainStr
    else
        FormatStr := MainStr + Temp ;
end;

procedure TInItemOrderRequest.cbItemTypeClick(Sender: TObject);
begin
    quItemClass.Close ;
    if(cbItemType.Text <> '') then
    begin
        quItemClass.Parameters[0].Value := cbItemType.ItemIndex ;
        quItemClass.Open ;
        lkpItemClass.KeyValue := NULL ; 
    end;
end;

end.
