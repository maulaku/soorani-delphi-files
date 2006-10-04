unit fmInUseTrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RSqlButton, DBCtrls, RSqllookup, RSqlEdit, Db, ADODB,
  SetForm  ,RadForms,Variants;

type
  TInUseTrans = class(TRadForm)
    panInput: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    edUseTrNo: TRSqlEdit;
    edState: TRSqlEdit;
    edDesc: TRSqlEdit;
    lkpGoodsClass: TRSqlDbLookup;
    edOrderNo: TRSqlEdit;
    edCreator: TRSqlEdit;
    edCreateDate: TRSqlEdit;
    btnOrderNo: TButton;
    Action: TRSqlButton;
    Cancel: TRSqlButton;
    gbConfirm: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edConfirmer: TRSqlEdit;
    edConfDate: TRSqlEdit;
    rbConfirm: TRadioButton;
    rbRefuse: TRadioButton;
    quGoodsClass: TADOQuery;
    dsGoodsClass: TDataSource;
    quGenCode: TADOQuery;
    quGenCodeUse_Tr_No: TStringField;
    quInsert: TADOQuery;
    quFillDetUseTrans: TADOQuery;
    quUsers: TADOQuery;
    quUsersFullName: TStringField;
    quUpdate: TADOQuery;
    quConfirmUseTrans: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ActionClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure lkpGoodsClassClick(Sender: TObject);
    procedure btnOrderNoClick(Sender: TObject);
  private
    { Private declarations }
    GenCode : String ;
  public
    { Public declarations }
    State : SmallInt ;
    Creation_Mode : SmallInt ;
  end;

var
  InUseTrans: TInUseTrans;

implementation
uses
    DabDmdle , fmTransOrderNo;

{$R *.DFM}

procedure TInUseTrans.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TInUseTrans.FormShow(Sender: TObject);
begin
    if(State = 1) then
    begin
        gbConfirm.Visible := FALSE ;
        panInput.Height := panInput.Height - gbConfirm.Height ;
        Height := Height - gbConfirm.Height ;

        if(Creation_Mode = 1) then
        begin
            quGenCode.Close ;
            quGenCode.Open ;

            if(quGenCode.IsEmpty) then
                GenCode := Copy(Dabdata.disp_date , 1 , 2 ) + '0001'
            else
            begin
                quGenCode.Last ;
                GenCode := IntToStr( StrToInt(Copy(Dabdata.disp_date , 1 , 2 ) + Copy(quGenCodeUse_Tr_No.Value , 3, 4)) + 1) ;
            end;
            edUseTrNo.Text := GenCode ;
            FormInitializer1.FieldMode := fmInsert ;
            FormInitializer1.Execute ;
            edOrderNo.Enabled := FALSE ;
            edCreateDate.Text := Dabdata.disp_date ;
            edCreator.Text := DabData.FName + ' ' +DabData.Lname ;
            edState.Text := ' ‰ŸÌ„' ;
            quGoodsClass.Close ;
            quGoodsClass.Open ;
            lkpGoodsClass.KeyValue := NULL ;
            btnOrderNo.Enabled := FALSE ;
        end;
        if(Creation_Mode = 2) then
        begin
            edUseTrNo.Text := DabData.quUseTransUse_Tr_No.AsString ;
            edState.Text := ' ‰ŸÌ„' ;
            edDesc.Text := DabData.quUseTransDesc.AsString ;
            quGoodsClass.Close ;
            quGoodsClass.Open ;
            lkpGoodsClass.KeyValue := DabData.quUseTransClass_Code.Value ;
            DabData.qubtnOrderNo.Close ;
            DabData.qubtnOrderNo.Parameters[0].Value := DabData.quUseTransClass_Code.Value ;
            DabData.qubtnOrderNo.Open ;

            edOrderNo.Text := DabData.quUseTransOrder_No.AsString ;
            edCreateDate.Text := DabData.quUseTransCreate_Date.AsString ;
            quUsers.Close ;
            quUsers.Parameters[0].value := DabData.quUseTransCreator.Value ;
            quUsers.Open ;
            edCreator.text := quUsersFullName.AsString ;
            FormInitializer1.FieldMode := fmEdit ;
            FormInitializer1.Execute ;
            edOrderNo.Enabled := FALSE ;
        end;
    end;

    if(State = 2) then
    begin
        edUseTrNo.Text := DabData.quUseTransUse_Tr_No.AsString ;
        edState.Text := ' ‰ŸÌ„' ;
        edDesc.Text := DabData.quUseTransDesc.AsString ;
        quGoodsClass.Close ;
        quGoodsClass.Open ;
        lkpGoodsClass.KeyValue := DabData.quUseTransClass_Code.Value ;
        DabData.qubtnOrderNo.Close ;
        DabData.qubtnOrderNo.Parameters[0].Value := DabData.quUseTransClass_Code.Value ;
        DabData.qubtnOrderNo.Open ;

        edOrderNo.Text := DabData.quUseTransOrder_No.AsString ;
        edCreateDate.Text := DabData.quUseTransCreate_Date.AsString ;
        quUsers.Close ;
        quUsers.Parameters[0].value := DabData.quUseTransCreator.Value ;
        quUsers.Open ;
        edCreator.text := quUsersFullName.AsString ;

        rbConfirm.Checked := TRUE ;
        edConfDate.Text := Dabdata.disp_date ;
        edConfirmer.Text := DabData.FName+ ' ' + DabData.Lname ;
        edDesc.FieldType := ftDisplay ;
        edOrderNo.FieldType := ftDisplay ;
        btnOrderNo.Enabled := FALSE ;
        lkpGoodsClass.FieldType := ftDisplay ;
        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;
    end;
end;

procedure TInUseTrans.ActionClick(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
    if(state = 1) then
    begin
        if(Creation_Mode = 1) then
        begin
            quInsert.Parameters[0].Value := edUseTrNo.Text ;
            quInsert.Parameters[1].Value := edDesc.Text ;
            quInsert.Parameters[2].Value := DabData.emp_no ;
            quInsert.Parameters[3].Value := Dabdata.disp_date ;
            quInsert.Parameters[6].Value := 1 ;
            quInsert.Parameters[7].Value := lkpGoodsClass.KeyValue ;
            quInsert.Parameters[8].Value := edOrderNo.Text ;
            quInsert.Parameters[9].Value := 1 ;
            DabData.ADOC.BeginTrans ;
            try
                quInsert.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            DabData.quUseTrans.Close ;
            DabData.quUseTrans.Open ;
            DabData.quUseTrans.Last ;

            quFillDetUseTrans.Parameters[0].Value := edOrderNo.Text ;
            quFillDetUseTrans.Parameters[1].Value := edUseTrNo.Text ;
            DabData.ADOC.BeginTrans ;
            try
                quFillDetUseTrans.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;

            DabData.quDetUseTrans.Close ;
            DabData.quDetUseTrans.Parameters[0].Value := edUseTrNo.Text ;
            DabData.quDetUseTrans.Open ;

        end;
        if(Creation_Mode = 2) then
        begin
            bmPlace := DabData.quUseTrans.GetBookmark ;
            quUpdate.Parameters[0].value := edDesc.text ;
            quUpdate.Parameters[1].value := lkpGoodsClass.KeyValue ;
            quUpdate.Parameters[2].value := edOrderno.text ;
            quUpdate.Parameters[3].value := Dabdata.quUseTransUse_Tr_No.value ;
            DabData.ADOC.BeginTrans ;
            try
                quUpdate.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            Dabdata.quUseTrans.Close ;
            Dabdata.quUseTrans.open ;
            DabData.quUseTrans.GotoBookmark(bmPlace);
            Dabdata.quUseTrans.FreeBookmark(bmPlace);

            quFillDetUseTrans.Parameters[0].Value := edOrderNo.Text ;
            quFillDetUseTrans.Parameters[1].Value := edUseTrNo.Text ;
            DabData.ADOC.BeginTrans ;
            try
                quFillDetUseTrans.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;

            DabData.quDetUseTrans.Close ;
            DabData.quDetUseTrans.Parameters[0].Value := edUseTrNo.Text ;
            DabData.quDetUseTrans.Open ;
        end;
    end;

    if(State = 2) then
    begin
        quUpdate.SQL.text := 'UPDATE Use_Trans SET Confirmer = :p1 , Confirm_Date = :p2 , State = :p3 WHERE Use_Tr_No = :p4' ;
        bmPlace := DabData.quUseTrans.GetBookmark ;
        quUpdate.Parameters[0].Value := DabData.emp_no ;
        quUpdate.Parameters[1].Value := Dabdata.disp_date ;
        if(rbConfirm.Checked) then
            quUpdate.Parameters[2].Value := 2
        else
            quUpdate.Parameters[2].Value := 3 ;
        quUpdate.Parameters[3].Value := DabData.quUseTransUse_Tr_No.Value ;
        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        Dabdata.quUseTrans.Close ;
        Dabdata.quUseTrans.open ;
        DabData.quUseTrans.GotoBookmark(bmPlace);
        Dabdata.quUseTrans.FreeBookmark(bmPlace);

        if(rbConfirm.Checked) then
        begin
            quConfirmUseTrans.Parameters[0].Value := edOrderNo.Text ;
            DabData.ADOC.BeginTrans ;
            try
                quConfirmUseTrans.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
        end;
    end;
    Close ;
end;

procedure TInUseTrans.CancelClick(Sender: TObject);
begin
    Close ;
end;

procedure TInUseTrans.lkpGoodsClassClick(Sender: TObject);
begin
    DabData.qubtnOrderNo.Close ;
    if(lkpGoodsClass.Text <> '') then
    begin
        btnOrderNo.Enabled := TRUE ;
        edOrderNo.Text := '' ;
        DabData.qubtnOrderNo.Parameters[0].Value := lkpGoodsClass.KeyValue ;
        DabData.qubtnOrderNo.Open ;        
    end;
end;

procedure TInUseTrans.btnOrderNoClick(Sender: TObject);
var
    Option : TLocateOptions ;
begin
    if(edOrderNo.Text <> '') then
    begin
        DabData.qubtnOrderNo.Locate('Order_Req_No',edOrderNo.Text,option);
    end;
    TransOrderNo := TTransOrderNo.Create(Application);
    TransOrderNo.ShowModal ;
    if (TransOrderNo.Result) then
    begin
        edOrderNo.Text := DabData.qubtnOrderNoOrder_Req_No.AsString ;
    end;
    TransOrderNo.Free ;
end;

end.
