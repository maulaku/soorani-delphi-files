
unit fmInBills;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SetForm, RSqlButton, StdCtrls, RSQLComboBox, DBCtrls, RSqllookup,
  RSqlEdit, ExtCtrls, Db, ADODB , RadForms,Variants;

type
  TInBills = class(TRadForm)
    quGenCode: TADOQuery;
    quGenCodeBill_no: TIntegerField;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    spInsertUpdateBill: TADOStoredProc;
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
    edItemReqNo: TRSqlEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnItemReqClick(Sender: TObject);
    procedure dblOrgClick(Sender: TObject);
    procedure cbBillTypeChange(Sender: TObject);
    procedure dblUnitClick(Sender: TObject);
    procedure edBillNoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    State : SmallInt ;
    Creation_Mode : SmallInt ;
  end;

var
  InBills: TInBills;
  Bill_no_Changed:Boolean;

implementation
uses
    DabDmdle , fmBillItemReq ;

{$R *.DFM}

procedure TInBills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TInBills.btnCancelClick(Sender: TObject);
begin
    Close ;
end;

procedure TInBills.btnOKClick(Sender: TObject);
var
    bmPlace : TBookmark ;
    exp : Exception;
begin
    if(State = 1) then
    begin
        if(Creation_Mode = 1) then
        begin
            if Bill_no_Changed then
              spInsertUpdateBill.Parameters[1].Value:=edBillNo.Text
            else
              spInsertUpdateBill.Parameters[1].Value:=Null;
            spInsertUpdateBill.Parameters[2].Value:=cbBillType.ItemIndex ;
            if(edItemReqNo.Text <> '') then
               spInsertUpdateBill.Parameters[3].Value:=StrToInt(edItemReqNo.Text);
            spInsertUpdateBill.Parameters[4].Value:=lkpReciever.KeyValue ;
            spInsertUpdateBill.Parameters[5].Value:=1;
            spInsertUpdateBill.Parameters[6].Value:=edReason.Text ;
            spInsertUpdateBill.Parameters[8].Value:=dblOrg.KeyValue;
            spInsertUpdateBill.Parameters[9].Value:=dblUnit.KeyValue;
            spInsertUpdateBill.Parameters[10].Value:=dblLocUser.KeyValue;
            DabData.ADOC.BeginTrans ;
            try
                spInsertUpdateBill.ExecProc ;
                if spInsertUpdateBill.Parameters[0].Value=-3 then
                Begin
                   DabData.ShowPopupMessageSmall('œ— «‰»«— ﬂ«·«Ì ﬁ«»·  ÕÊÌ· „ÊÃÊœ ‰„Ì »«‘œ');
                   DabData.ADOC.RollbackTrans ;
                   Exit;
                end
                else if spInsertUpdateBill.Parameters[0].Value=-4 then
                begin
                   DabData.ShowPopupMessageSmall(' „ﬁœ«—  ÕÊÌ· ›⁄·Ì ﬂÊçﬂ — «“ „ÊÃÊœÌ «‰»«—- ÕÊÌ· ‰«ﬁ’');
                   DabData.ADOC.RollbackTrans ;
                   Exit;
                end
                else if spInsertUpdateBill.Parameters[0].Value=-5 then
                begin
                   DabData.ShowPopupMessageSmall('  Ê÷⁄Ì  ﬂ«·«Ì œ—ŒÊ«” Ì :  ÕÊÌ· ‰«ﬁ’');
                   DabData.ADOC.RollbackTrans ;
                   Exit;
                end;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
                DabData.ShowPopupMessage('«ÿ·«⁄«  À»  ‰ê—œÌœ');
                DabData.ShowPopupMessageSmall(DabData.ADOC.Errors[0].Description);
            end;
            DabData.quBillKar.Close ;
            DabData.quBillKar.Open ;
            DabData.quBillKar.Last ;

            DabData.quBillKarItems.Close ;
            DabData.quBillKarItems.Parameters[0].Value := DabData.quBillKarBill_type.Value ;
            DabData.quBillKarItems.Parameters[1].Value := DabData.quBillKarBill_no.Value ;
            DabData.quBillKarItems.Open ;
        end;

        if(Creation_Mode = 2) then
        begin
            bmPlace := DabData.quBillKar.GetBookmark ;
            quUpdate.Parameters[0].Value :=lkpReciever.KeyValue ;
            quUpdate.Parameters[1].Value :=dblOrg.KeyValue;
            quUpdate.Parameters[2].Value :=dblUnit.KeyValue;
            quUpdate.Parameters[3].Value :=dblLocUser.KeyValue;
            quUpdate.Parameters[4].Value :=dblOrgSend.KeyValue;
            quUpdate.Parameters[5].Value :=dblUnitSend.KeyValue;
            quUpdate.Parameters[6].Value :=dblLocSend.KeyValue;
            quUpdate.Parameters[7].Value := DblUserSend.KeyValue;
            quUpdate.Parameters[8].Value := TRIM(edReason.text);
            quUpdate.Parameters[9].Value := DabData.quBillKarBill_no.Value ;
            quUpdate.Parameters[10].Value := DabData.quBillKarBill_type.Value ;
            DabData.ADOC.BeginTrans ;
            try
                quUpdate.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            DabData.quBillKar.Close ;
            DabData.quBillKar.Open ;
            DabData.quBillKar.GotoBookmark(bmPlace);
            DabData.quBillKar.FreeBookmark(bmPlace);
        end;
    end;

    if(State = 2) then
    begin
        bmPlace := DabData.quBillKar.GetBookmark ;
        spInsertUpdateBill.Parameters[1].Value:=DabData.quBillKarBill_no.Value ;
        spInsertUpdateBill.Parameters[2].Value:=DabData.quBillKarBill_type.Value ;
        if(rbConfirm.Checked) then
            spInsertUpdateBill.Parameters[5].Value := 2
        else
            spInsertUpdateBill.Parameters[5].Value := 3 ;
        DabData.ADOC.BeginTrans ;
        try
            spInsertUpdateBill.ExecProc ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        DabData.quBillKar.Close ;
        DabData.quBillKar.Open ;
        DabData.quBillKar.GotoBookmark(bmPlace);
        DabData.quBillKar.FreeBookmark(bmPlace);
        DabData.quBillKarItems.Close ;
        DabData.quBillKarItems.Parameters[0].Value := DabData.quBillKarBill_type.Value ;
        DabData.quBillKarItems.Parameters[1].Value := DabData.quBillKarBill_no.Value ;
        DabData.quBillKarItems.Open ;
    end;
    Close ;
end;

procedure TInBills.FormShow(Sender: TObject);
begin
    DabData.quOrg.Close;
    DabData.quOrg.Open;
    dblOrg.KeyValue:=OrganizCode;
    DabData.quOrgUnit.Close;
    DabData.quOrgUnit.Parameters[0].Value:=OrganizCode;
    DabData.quOrgUnit.Open;
    DabData.quCostCenter.Close;
    DabData.quCostCenter.Parameters[0].Value:=OrganizCode;
//    DabData.quCostCenter.Parameters[1].Value:=DabData.quOrgUnitUt_Code.Value;
    DabData.quCostCenter.Open;

   DabData.quGetValues.Close;
   DabData.quGetValues.Parameters[0].Value:=DabData.emp_no;
   DabData.quGetValues.Open;

    if(State = 1) then
    begin
        GBConfirm.Visible := FALSE ;
        if(Creation_Mode = 1) then
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
            edCreateDate.Text := DabData.disp_date ;
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
                edBillNo.Text := IntToStr(quGenCodeBill_no.Value + 1);
            end;
            Bill_no_Changed:=False;
            cbBillType.ItemIndex := 0 ;

            FormInitializer1.FieldMode := fmInsert ;
            FormInitializer1.Execute ;
            edItemReqNo.Enabled := FALSE ;
            cbBillType.Enabled := FALSE ;
        end;
        if(Creation_Mode = 2) then
        begin
            dblOrg.KeyValue:=DabData.quBillKarOrg_Code.Value;
            dblUnit.KeyValue:=DabData.quBillKarUnit_code.Value;
            dblLocUser.KeyValue:=DabData.quBillKarLoc_code.Value;
            edCreator.text := DabData.Fname+' '+dabdata.LName; ;
            edCreateDate.Text := DabData.quBillKarcreate_date.AsString ;
            edBillNo.Text := DabData.quBillKarBill_no.AsString ;
            cbBillType.ItemIndex := DabData.quBillKarBill_type.Value - 1 ;
            edReason.Text := DabData.quBillKarReason.AsString ;
            DabData.quemp.Close ;
            DabData.quemp.Open ;
            lkpReciever.KeyValue := DabData.quBillKarreceiver.Value ;
            edItemReqNo.Text := DabData.quBillKaritem_req_no.AsString ;

            if(not DabData.quBillKaritem_req_no.IsNull) then
                btnItemReq.Enabled := FALSE ;

            edItemReqNo.FieldType := ftDisplay ;
            cbBillType.ItemIndex:=DabData.quBillKarBill_type.Value;
            cbBillTypeChange(nil);
            FormInitializer1.FieldMode := fmEdit ;
            FormInitializer1.Execute ;
            edItemReqNo.Enabled := FALSE ;
        end;
    end;

    if(State = 2) then
    begin

        edCreator.text := DabData.Fname+' '+dabdata.LName; ;
        edCreateDate.Text := DabData.quBillKarcreate_date.AsString ;
        edBillNo.Text := DabData.quBillKarBill_no.AsString ;
        cbBillType.ItemIndex := DabData.quBillKarBill_type.Value - 1 ;
        edReason.Text := DabData.quBillKarReason.AsString ;
        DabData.quemp.Close ;
        DabData.quemp.Open ;
        lkpReciever.KeyValue := DabData.quBillKarreceiver.Value ;
        edItemReqNo.Text := DabData.quBillKaritem_req_no.AsString ;

        lkpReciever.FieldType := ftDisplay ;
        edReason.FieldType := ftDisplay ;
        btnItemReq.Enabled := FALSE ;

        if(DabData.quBillKarconfirmer.IsNull) then
            edConfirmer.Text := DabData.FName + ' ' + DabData.Lname
        else
        begin

            edConfirmer.Text := DabData.Fname+' '+dabdata.LName;;
        end;

        if(DabData.quBillKarconfirm_date.IsNull) then
            edConfirmDate.Text := Dabdata.disp_date
        else
            edConfirmDate.Text := DabData.quBillKarconfirm_date.AsString ;
        if(DabData.quBillKarState.Value = 1) then
            rbConfirm.Checked := TRUE
        else
            if(DabData.quBillKarState.Value = 2) then
                rbConfirm.Checked := TRUE
            else
                rbRefuse.Checked := TRUE ;

        edItemReqNo.FieldType := ftDisplay ;
        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;
    end;
   cbBillTypeChange(nil);
end;

procedure TInBills.btnItemReqClick(Sender: TObject);
begin
    BillItemReq := TBillItemReq.Create(Application);
    BillItemReq.ShowModal ;
    if(BillItemReq.Result) then
    begin
        edItemReqNo.Text := IntToStr(BillItemReq.Req_No) ;
        spInsertUpdateBill.Parameters[8].Value:=BillItemReq.quItemReqOrg_Code.Value;
        dblOrg.KeyValue:=BillItemReq.quItemReqOrg_Code.Value;
        dblUnit.KeyValue:=BillItemReq.quItemReqOrg_Unit_Code.Value;
        lkpReciever.KeyValue:=BillItemReq.quItemReqCreator.Value;
        dblLocUser.KeyValue:=BillItemReq.quItemReqLoc_Code.Value;

    end;
    BillItemReq.Free ;
end;

procedure TInBills.dblOrgClick(Sender: TObject);
begin
 DabData.quCostCenter.Close;
 DabData.quCostCenter.Parameters[0].Value:=dblOrg.KeyValue;
 DabData.quCostCenter.Open;
end;

procedure TInBills.cbBillTypeChange(Sender: TObject);
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
  if State=0 then
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

procedure TInBills.dblUnitClick(Sender: TObject);
begin
  inherited;
 DabData.quDeployLoc.Close;
 DabData.quDeployLoc.Parameters[0].Value:=dblOrg.KeyValue;
 DabData.quDeployLoc.Parameters[1].Value:=dblUnit.KeyValue;
 DabData.quDeployLoc.Open;

end;

procedure TInBills.edBillNoChange(Sender: TObject);
begin
  inherited;
  if edBillNo.FieldType=ftDisplay then
    exit;
  quCheckKey.Close;
  quCheckKey.Parameters[0].Value:=edBillNo.Text;
  quCheckKey.Open;
  if quCheckKey.RecordCount>0 then
  begin
    DabData.ShowPopupMessage('«Ì‰ ⁄œœ  ﬂ—«—Ì „Ì »«‘œ');
    edBillNo.Undo;
  end
  else
    Bill_no_Changed:=True;
end;

end.
