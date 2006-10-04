
unit fmInNewBills;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SetForm, RSqlButton, StdCtrls, RSQLComboBox, DBCtrls, RSqllookup,
  RSqlEdit, ExtCtrls, Db, ADODB ,RadForms,Variants;

type
  TInNewBills = class(TRadForm)
    quGenCode: TADOQuery;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    pnBotton: TPanel;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    quFillBillItems: TADOQuery;
    edMove: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DblUserSend: TRSqlDbLookup;
    dblOrgSend: TRSqlDbLookup;
    dblUnitSend: TRSqlDbLookup;
    GBConfirm: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    rbConfirm: TRadioButton;
    rbRefuse: TRadioButton;
    edConfirmer: TRSqlEdit;
    edConfirmDate: TRSqlEdit;
    GBCreate2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edReason: TRSqlEdit;
    edCreator: TRSqlEdit;
    edCreateDate: TRSqlEdit;
    GBCreate1: TGroupBox;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    btnItemReq: TButton;
    dblOrg: TRSqlDbLookup;
    dblUnit: TRSqlDbLookup;
    lkpReciever: TRSqlDbLookup;
    pnTop: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    edBillNo: TRSqlEdit;
    cbBillType: TRSqlComboBox;
    Label13: TLabel;
    dblLocUser: TRSqlDbLookup;
    Label12: TLabel;
    dblLocSend: TRSqlDbLookup;
    quCheckKey: TADOQuery;
    quCheckKeyBill_no: TIntegerField;
    quInsert2Bill: TADOQuery;
    DBlRecNo: TRSqlDbLookup;
    quItemReq: TADOQuery;
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
    quItemReqReqType: TStringField;
    quItemReqGoods_Code: TStringField;
    quItemReqLoc_Code: TSmallintField;
    dsItemReq: TDataSource;
    quReqItem: TADOQuery;
    quReqItemReq_Amount: TIntegerField;
    quReqItemConf_Amount: TIntegerField;
    quReqItemRecieve_Amount: TIntegerField;
    quReqItemr_state: TSmallintField;
    quReqItemitem_type: TSmallintField;
    quReqItemReq_type: TSmallintField;
    quReqItemReq_number: TStringField;
    quReqItemitem_name: TStringField;
    quReqItemRState: TStringField;
    quReqItemReq_No: TIntegerField;
    quItemExsit: TADOQuery;
    quItemExsitCount: TIntegerField;
    quReqItemItem_Code: TStringField;
    quIn2BillItems: TADOQuery;
    quReqItemclass_type: TSmallintField;
    quGenCodeCOLUMN1: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnItemReqClick(Sender: TObject);
    procedure dblOrgClick(Sender: TObject);
    procedure cbBillTypeChange(Sender: TObject);
    procedure dblUnitClick(Sender: TObject);
  private
  function CheckUniqBillNo:boolean;
    { Private declarations }
  public
    { Public declarations }
    InConfirmState : Boolean ;
    InInsertMode : Boolean ;
  end;

var
  InNewBills: TInNewBills;
  Bill_no_Changed:Boolean;

implementation
uses
    DabDmdle , fmBillItemReq, fmSelAvailableGoods, fmNewBills ;

{$R *.DFM}

procedure TInNewBills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TInNewBills.btnCancelClick(Sender: TObject);
begin
    Close ;
    ModalResult:=mrCancel;
end;

procedure TInNewBills.btnOKClick(Sender: TObject);
var
    bmPlace : TBookmark ;
    i:Integer;
    exp : Exception;
begin
    if Not(InConfirmState) then
    begin
        if(InInsertMode) then
        begin
            if Not(CheckUniqBillNo) then
            begin
              DabData.ShowPopupMessage('ßÏ ÍæÇáå ÊßÑÇÑí ãí ÈÇÔÏ');
              exit;
            end;
            NewBills.dsBill.Close ;
            NewBills.dsBill.Open ;
            NewBills.dsBill.Last ;

            quInsert2Bill.Parameters.ParamByName('Bill_no'      ).Value:=edBillNo.Text;
            quInsert2Bill.Parameters.ParamByName('Bill_type'    ).Value:=cbBillType.ItemIndex;
            if InConfirmState then
            begin
              quInsert2Bill.Parameters.ParamByName('confirmer'    ).Value:=DabData.emp_no;
              quInsert2Bill.Parameters.ParamByName('confirm_date' ).Value:=edConfirmDate.Value;
            end
            else
            begin
              quInsert2Bill.Parameters.ParamByName('creator'      ).Value:=DabData.emp_no;
              quInsert2Bill.Parameters.ParamByName('create_date'  ).Value:=edCreateDate.Value;
            end;
            quInsert2Bill.Parameters.ParamByName('conf_teller'  ).Value:='';
            quInsert2Bill.Parameters.ParamByName('conf_date'    ).Value:='';
            quInsert2Bill.Parameters.ParamByName('item_req_no'  ).Value:=DBlRecNo.KeyValue;
            quInsert2Bill.Parameters.ParamByName('receiver'     ).Value:=lkpReciever.KeyValue;
            quInsert2Bill.Parameters.ParamByName('delivery_man' ).Value:=DblUserSend.KeyValue;
            quInsert2Bill.Parameters.ParamByName('Org_Code'     ).Value:=dblOrg.KeyValue;
            quInsert2Bill.Parameters.ParamByName('Unit_code'    ).Value:=dblUnit.KeyValue;
            quInsert2Bill.Parameters.ParamByName('Loc_code'     ).Value:=dblLocUser.KeyValue;
            quInsert2Bill.Parameters.ParamByName('rec_Org_code' ).Value:=dblOrgSend.KeyValue;
            quInsert2Bill.Parameters.ParamByName('rec_Unit_code').Value:=dblUnitSend.KeyValue;
            quInsert2Bill.Parameters.ParamByName('rec_loc_code' ).Value:=dblLocSend.KeyValue;
            quInsert2Bill.Parameters.ParamByName('State'        ).Value:='1';
            quInsert2Bill.Parameters.ParamByName('Reason'       ).Value:=edReason.Text;
            try
              DabData.ADOC.BeginTrans;
              quInsert2Bill.ExecSQL;
              quReqItem.Close;
              quReqItem.Parameters[0].Value:=DBlRecNo.KeyValue;
              quReqItem.Open;
              while Not(quReqItem.Eof) Do
              begin
                if Not((quReqItemClass_type.Value = 1) or (quReqItemClass_type.Value = 0)) then  //  ßÇáÇåÇí ÛíÑ ãÕÑİí
                begin
                   SelAvailableGoods:=TSelAvailableGoods.Create(Self);
                   SelAvailableGoods.Bill_Type:=cbBillType.ItemIndex ;
                   SelAvailableGoods.edBillNo.Text:=edBillNo.Text;
                   SelAvailableGoods.edItemCode.Text:=quReqItemItem_Code.AsString;
                   SelAvailableGoods.edName.Text:=quReqItemitem_name.AsString;
                   SelAvailableGoods.edCount.Text:=quReqItemConf_Amount.AsString;
                   SelAvailableGoods.Bill_Type:=cbBillType.ItemIndex;
                   if SelAvailableGoods.ShowModal=mrCancel then
                   begin
                     DabData.ADOC.RollbackTrans;
                     Exit;
                   end
                   else
                   begin
                    { quReqItem.Edit;
                     if quReqItemRecieve_Amount.Value=StrToInt(SelAvailableGoods.edCount.Text) then
                         quReqItemr_state.Value:=3
                     else
                         quReqItemr_state.Value:=2;
                     quReqItemRecieve_Amount.Value:=StrToInt(SelAvailableGoods.edCount.Text);
                     quReqItem.Post;  }
                   end;
                   SelAvailableGoods.Free;
                   SelAvailableGoods:=nil;
                end
                else
                begin  // ßÇáÇåÇí ãÕÑİí
                 quIn2BillItems.Parameters.ParamByName('Bill_No').Value:=edBillNo.Text;
                 quIn2BillItems.Parameters.ParamByName('Bill_Type').Value:=cbBillType.ItemIndex;
                 quIn2BillItems.Parameters.ParamByName('Item_Code').Value:=quReqItemItem_Code.Value;
                 quIn2BillItems.Parameters.ParamByName('Item_Amount_Number').Value:=quReqItemRecieve_Amount.Value;
                 try
                  quIn2BillItems.ExecSQL;
                 except
                   DabData.ShowPopupMessage('ßÇáÇí ÊÍæíáí ÈÇ ãÔßá ãæÇÌå ÔÏ:'+quReqItemitem_name.Value);
                 end;
                     quReqItem.Edit;
                     quReqItemr_state.Value:=3;
                     quReqItem.Post;
                end;
                quReqItem.Next;
              end;
              quItemReq.Edit;
              quItemReqState.Value:=4;
              quItemReq.Post;
              DabData.ADOC.CommitTrans;
            except
              DabData.ADOC.RollbackTrans;
              ShowMeMessage('ÇÔßÇá ÏÑ ËÈÊ');
            end;
            NewBills.dsBill.Close ;
            NewBills.dsBill.Open ;
            NewBills.dsBill.Locate('Bill_No',edBillNo.Text,[lopartialkey])

        end
        else
        begin
            bmPlace := NewBills.dsBill.GetBookmark ;
            quUpdate.Parameters[0].Value :=lkpReciever.KeyValue ;
            quUpdate.Parameters[1].Value :=dblOrg.KeyValue;
            quUpdate.Parameters[2].Value :=dblUnit.KeyValue;
            quUpdate.Parameters[3].Value :=dblLocUser.KeyValue;
            quUpdate.Parameters[4].Value :=dblOrgSend.KeyValue;
            quUpdate.Parameters[5].Value :=dblUnitSend.KeyValue;
            quUpdate.Parameters[6].Value :=dblLocSend.KeyValue;
            quUpdate.Parameters[7].Value := DblUserSend.KeyValue;
            quUpdate.Parameters[8].Value := TRIM(edReason.text);
            quUpdate.Parameters[9].Value := NewBills.dsBillBill_no.Value ;
            quUpdate.Parameters[10].Value := NewBills.dsBillBill_type.Value ;
            DabData.ADOC.BeginTrans ;
            try
                quUpdate.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
        end;
    end
    else
    begin
    end;
    Close ;
    ModalResult:=mrOk;
end;

procedure TInNewBills.FormShow(Sender: TObject);
begin
    DabData.quOrg.Close;
    DabData.quOrg.Open;
    dblOrg.KeyValue:=OrganizCode;
    DabData.quOrgUnit.Close;
    DabData.quOrgUnit.Parameters[0].Value:=OrganizCode;
    DabData.quOrgUnit.Open;
    DabData.quCostCenter.Close;
    DabData.quCostCenter.Parameters[0].Value:=OrganizCode;
    DabData.quCostCenter.Parameters[1].Value:=-1;//DabData.quOrgUnitUt_Code.Value;
    DabData.quCostCenter.Open;

   DabData.quGetValues.Close;
   DabData.quGetValues.Parameters[0].Value:=DabData.emp_no;
   DabData.quGetValues.Open;
   quItemReq.Close;
   quItemReq.Open;
    if Not(InConfirmState) then
    begin
        GBConfirm.Visible := FALSE ;
        if(InInsertMode) then
        begin
           dblOrg.KeyValue:=DabData.quGetValuesorg_code.Value;
           dblUnit.KeyValue:=DabData.quGetValuesunit_code.Value;
           dblLocUser.KeyValue:=DabData.quGetValuesloc_code.Value;
           DabData.quDeployLoc.Close;
           DabData.quDeployLoc.Parameters[0].Value:=dblOrg.KeyValue;
           DabData.quDeployLoc.Parameters[1].Value:=dblUnit.KeyValue;
           DabData.quDeployLoc.Open;
           dblLocUser.KeyValue:=DabData.quGetValuesloc_code.Value;
            edCreator.Text := DabData.FName + ' ' + Dabdata.Lname ;
            edCreateDate.Text := Dabdata.disp_date ;
            DabData.quemp.Close ;
            DabData.quemp.Open ;
            lkpReciever.KeyValue := NULL ;
            quGenCode.Close ;
            quGenCode.Open ;
            if(quGenCode.IsEmpty) then
                edBillNo.Text := '1'
            else
            begin
                quGenCode.Last ;
                edBillNo.Text := IntToStr(quGenCodeCOLUMN1.Value + 1);
            end;
            Bill_no_Changed:=False;
            cbBillType.ItemIndex := 0 ;

            FormInitializer1.FieldMode := fmInsert ;
            FormInitializer1.Execute ;
            DBlRecNo.Enabled := FALSE ;
            cbBillType.Enabled := FALSE ;
        end
        else
        begin
            dblOrg.KeyValue:=NewBills.dsBillOrg_Code.Value;
            dblUnit.KeyValue:=NewBills.dsBillUnit_code.Value;
            dblLocUser.KeyValue:=NewBills.dsBillLoc_code.Value;
            edCreator.text := DabData.Fname+' '+dabdata.LName; ;
            edCreateDate.Text := NewBills.dsBillcreate_date.AsString ;
            edBillNo.Text := NewBills.dsBillBill_no.AsString ;
            cbBillType.ItemIndex := NewBills.dsBillBill_type.Value - 1 ;
            edReason.Text := NewBills.dsBillReason.AsString ;
            DabData.quemp.Close ;
            DabData.quemp.Open ;
            lkpReciever.KeyValue := NewBills.dsBillreceiver.Value ;
            DBlRecNo.KeyValue := NewBills.dsBillitem_req_no.AsString ;

            if(not NewBills.dsBillitem_req_no.IsNull) then
                btnItemReq.Enabled := FALSE ;

            DBlRecNo.FieldType := ftDisplay ;
            cbBillType.ItemIndex:=NewBills.dsBillBill_type.Value;
            cbBillTypeChange(nil);
            FormInitializer1.FieldMode := fmEdit ;
            FormInitializer1.Execute ;
            DBlRecNo.Enabled := FALSE ;
        end;
    end
    else
    begin
        edCreator.text := DabData.Fname+' '+dabdata.LName; ;
        edCreateDate.Text := NewBills.dsBillcreate_date.AsString ;
        edBillNo.Text := NewBills.dsBillBill_no.AsString ;
        cbBillType.ItemIndex := NewBills.dsBillBill_type.Value - 1 ;
        edReason.Text := NewBills.dsBillReason.AsString ;
        DabData.quemp.Close ;
        DabData.quemp.Open ;
        lkpReciever.KeyValue := NewBills.dsBillreceiver.Value ;
        DBlRecNo.KeyValue := NewBills.dsBillitem_req_no.AsString ;

        lkpReciever.FieldType := ftDisplay ;
        edReason.FieldType := ftDisplay ;
        btnItemReq.Enabled := FALSE ;

        if(NewBills.dsBillconfirmer.IsNull) then
            edConfirmer.Text := DabData.FName + ' ' + DabData.Lname
        else
        begin

            edConfirmer.Text := DabData.Fname+' '+dabdata.LName;;
        end;

        if(NewBills.dsBillconfirm_date.IsNull) then
            edConfirmDate.Text := Dabdata.disp_date
        else
            edConfirmDate.Text := NewBills.dsBillconfirm_date.AsString ;
        if(NewBills.dsBillState.Value = 1) then
            rbConfirm.Checked := TRUE
        else
            if(NewBills.dsBillState.Value = 2) then
                rbConfirm.Checked := TRUE
            else
                rbRefuse.Checked := TRUE ;

        DBlRecNo.FieldType := ftDisplay ;
        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;
    end;
   cbBillTypeChange(nil);
end;

procedure TInNewBills.btnItemReqClick(Sender: TObject);
begin
    BillItemReq := TBillItemReq.Create(Application);
    BillItemReq.ShowModal ;
    if(BillItemReq.Result) then
    begin
        DBlRecNo.KeyValue := IntToStr(BillItemReq.Req_No) ;
        dblOrg.KeyValue:=BillItemReq.quItemReqOrg_Code.Value;
        dblUnit.KeyValue:=BillItemReq.quItemReqOrg_Unit_Code.Value;
        lkpReciever.KeyValue:=BillItemReq.quItemReqCreator.Value;
        dblLocUser.KeyValue:=BillItemReq.quItemReqLoc_Code.Value;

    end;
    BillItemReq.Free ;
    BillItemReq:=nil;
end;

procedure TInNewBills.dblOrgClick(Sender: TObject);
begin
 DabData.quCostCenter.Close;
 DabData.quCostCenter.Parameters[0].Value:=dblOrg.KeyValue;
 DabData.quCostCenter.Open;
end;

procedure TInNewBills.cbBillTypeChange(Sender: TObject);
begin
  inherited;
  Height:=pnTop.Height+GBCreate2.Height+pnBotton.Height;
  case cbBillType.ItemIndex of
   0:
    Begin
     edMove.Visible:=False;
     GBCreate1.Visible:=True;
    end;
   1:
    Begin
     edMove.Visible:=True;
     GBCreate1.Visible:=True;
     Height:=Height+edMove.Height;
    end;
   2:
    Begin
     edMove.Visible:=True;
     GBCreate1.Visible:=False;
     Height:=Height+edMove.Height-GBCreate1.Height;
    end;
  end;
  if InConfirmState then
  begin
    Height:=Height+GBConfirm.Height;
    GBConfirm.Visible:=True;
    GBCreate1.Visible:=False;
    GBCreate2.Visible:=False
  end
  else
  begin
    Height:=Height+GBCreate2.Height+GBCreate1.Height;
    GBConfirm.Visible:=False;
    GBCreate2.Visible:=True;
  end;
  FormInitializer1.Execute;
end;

procedure TInNewBills.dblUnitClick(Sender: TObject);
begin
  inherited;
 DabData.quDeployLoc.Close;
 DabData.quDeployLoc.Parameters[0].Value:=dblOrg.KeyValue;
 DabData.quDeployLoc.Parameters[1].Value:=dblUnit.KeyValue;
 DabData.quDeployLoc.Open;

end;
function TInNewBills.CheckUniqBillNo;
begin
  if edBillNo.FieldType=ftDisplay then
    exit;
  quCheckKey.Close;
  quCheckKey.Parameters[0].Value:=edBillNo.Text;
  quCheckKey.Open;
  if quCheckKey.RecordCount>0 then
  begin
    DabData.ShowPopupMessage('Çíä ÚÏÏ ÊßÑÇÑí ãí ÈÇÔÏ');
    Result:=False ;
    Exit;
    edBillNo.Undo;
  end
  else
    Bill_no_Changed:=True;
    Result:=True;
end;

end.
