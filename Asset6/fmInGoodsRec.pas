unit fmInGoodsRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RSqlButton, ExtCtrls, DBCtrls, RSqllookup, Mask, RSqlMaskEdit,
  RSQLComboBox, RSqlEdit, Db, ADODB , SetForm , fmGoodsRecOrderNo,RadForms,
  Buttons ,Variants, ComCtrls, RSqlMemo;

type
  TInGoodsRec = class(TRadForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TRSqlButton;
    btnCancel: TRSqlButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbOrder_No: TLabel;
    lbFCode: TLabel;
    lbFDate: TLabel;
    lbOrg: TLabel;
    lbMadrak: TLabel;
    edRec_No: TRSqlEdit;
    cbGetType: TRSqlComboBox;
    edOrder_No: TRSqlEdit;
    btnOrder_No: TButton;
    edFCode: TRSqlEdit;
    meFDate: TRSqlMaskEdit;
    edDoc_No: TRSqlEdit;
    edCreator: TRSqlEdit;
    edCreateDate: TRSqlEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    quOrg: TADOQuery;
    dsOrg: TDataSource;
    quGenCode: TADOQuery;
    quGenCoderec_no: TIntegerField;
    quInsert: TADOQuery;
    edOrder_Location: TRSqlEdit;
    lbLocation: TLabel;
    quUser: TADOQuery;
    quUsername: TStringField;
    quUserfamily: TStringField;
    quUpdate: TADOQuery;
    quFillRecItems: TADOQuery;
    quUpdateOrderRequest: TADOQuery;
    lkpOrg: TRSqlDbLookup;
    quCheckKey: TADOQuery;
    quCheckKeyrec_no: TIntegerField;
    reNotes: TRSqlMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbGetTypeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOrder_NoClick(Sender: TObject);
    function  CheckRecNoUniq:Boolean;
    procedure edRec_NoChange(Sender: TObject);
  private
    { Private declarations }
    procedure DoGetType3(var Enable : Boolean) ;
  public
    { Public declarations }
    Creation_Mode : SmallInt ;
  end;

var
  InGoodsRec: TInGoodsRec;
  Rec_no_Changed:Boolean;
implementation
uses
    DabDmdle, fmMfrm, fmgoods ;

{$R *.DFM}

procedure TInGoodsRec.DoGetType3(var Enable : Boolean);
begin
    lbOrder_No.Enabled := Enable ;
    lbFCode.Enabled := Enable ;
    lbFDate.Enabled := Enable ;
    edFCode.Enabled := Enable ;
    meFDate.Enabled := Enable ;
    btnOrder_No.Enabled := Enable ;
    lbLocation.Enabled := Enable ;
    edOrder_Location.Enabled := Enable ;

    lbOrg.Enabled := NOT Enable ;
    lkpOrg.Enabled := NOT Enable ;
    lbMadrak.Enabled := NOT Enable ;
    edDoc_no.Enabled := NOT Enable ;


    if(Enable) then
    begin
        lkpOrg.KeyValue := NULL ;
    end
    else
    begin
        edOrder_No.Text := '' ;
        edFCode.Text := '' ;
        meFDate.Text := '  /  /  ' ;
        edOrder_Location.Text := '' ;
    end;

end;

procedure TInGoodsRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree ;
end;

procedure TInGoodsRec.btnOKClick(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
    if(Creation_Mode = 1) then
    begin
        if Not(CheckRecNoUniq) then
        begin
          DabData.ShowPopupMessage('‘„«—Â ﬁ»÷  ﬂ—«Ì');
          exit;
        end;
//        quInsert.Parameters[0].Value := StrToInt(TRIM(edRec_No.Text)) ;
        quInsert.Parameters[0].Value := DabData.emp_no ;
        quInsert.Parameters[1].Value := DabData.disp_date ;
        quInsert.Parameters[6].Value := TRIM(edOrder_No.Text);
        quInsert.Parameters[7].Value := TRIM(edDoc_No.Text);
        quInsert.Parameters[9].Value := cbGetType.ItemIndex + 1 ;
        quInsert.Parameters[10].Value := TRIM(edOrder_Location.Text);
        quInsert.Parameters[11].Value := lkpOrg.KeyValue;
        quInsert.Parameters[12].Value := edFCode.Text ;
        if(meFdate.Text <> '  /  /  ') then
            quInsert.Parameters[13].Value := meFDate.Text ;
        if Rec_no_Changed then
          quInsert.Parameters[14].Value:=edRec_No.Text;
        quInsert.Parameters[15].Value:=reNotes.Text;



        DabData.ADOC.BeginTrans ;
        try
            quInsert.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
          on e: Exception  do
          begin
            raise e;
            DabData.ADOC.RollbackTrans ;
          end;
        end;
        DabData.quGoodsRec.Close ;
        DabData.quGoodsRec.Open ;
        DabData.quGoodsRec.Locate('rec_no',edRec_No.Text,[lopartialkey]) ;
        
        if(cbGetType.ItemIndex = 2) and (edOrder_No.Text <> '') then
        begin
            quFillRecItems.Parameters[0].Value := edOrder_No.Text ;
            quFillRecItems.Parameters[1].Value := StrToInt(TRIM(edRec_No.Text)) ;

            quUpdateOrderRequest.Parameters[0].Value := 6 ;
            quUpdateOrderRequest.Parameters[1].Value := edOrder_No.Text ;

            DabData.ADOC.BeginTrans ;
            try
                quFillRecItems.ExecSQL ;
                quUpdateOrderRequest.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
            DabData.quRec_Item.Close ;
            DabData.quRec_Item.Parameters[0].Value := DabData.quGoodsRecrec_no.Value ;
            DabData.quRec_Item.Open ;
        end;
    end;
    if(Creation_Mode = 2) then
    begin
        bmPlace := DabData.quGoodsRec.GetBookmark ;
        quUpdate.Parameters[0].Value := edOrder_no.Text ;
        quUpdate.Parameters[1].Value := edDoc_no.Text ;
        quUpdate.Parameters[2].Value := cbGetType.ItemIndex + 1;
        quUpdate.Parameters[3].Value := TRIM(edOrder_Location.Text) ;
        quUpdate.Parameters[4].Value := lkpOrg.KeyValue ;
        quUpdate.Parameters[5].Value := edFCode.Text ;
        if(meFdate.Text <> '  /  /  ') then
            quUpdate.Parameters[6].Value := meFDate.Text ;
        quUpdate.Parameters[7].Value := reNotes.Text ;
        quUpdate.Parameters[8].Value := DabData.quGoodsRecrec_no.Value ;

        if(not DabData.quGoodsRecorder_no.IsNull) and (edOrder_No.Text = '') then
        begin
            quUpdateOrderRequest.Parameters[0].Value := 4 ;
            quUpdateOrderRequest.Parameters[1].Value := DabData.quGoodsRecorder_no.Value ;
            DabData.ADOC.BeginTrans ;
            try
                quUpdateOrderRequest.ExecSQL ;
                DabData.ADOC.CommitTrans ;
            except
                DabData.ADOC.RollbackTrans ;
            end;
        end;

        DabData.ADOC.BeginTrans ;
        try
            quUpdate.ExecSQL ;
            DabData.ADOC.CommitTrans ;
        except
            DabData.ADOC.RollbackTrans ;
        end;
        DabData.quGoodsRec.Close ;
        DabData.quGoodsRec.Open ;
        DabData.quGoodsRec.GotoBookmark(bmPlace);
        DabData.quGoodsRec.FreeBookmark(bmPlace);
    end;
    Close ;
end;

procedure TInGoodsRec.btnCancelClick(Sender: TObject);
begin
    Close ;
end;

procedure TInGoodsRec.cbGetTypeChange(Sender: TObject);
var
    Enable : Boolean ;
begin
    if(cbGetType.ItemIndex = 2) then
        Enable := TRUE
    else
        Enable := FALSE ;

    DoGetType3(Enable);        
end;

procedure TInGoodsRec.FormShow(Sender: TObject);
var
    Enable : Boolean ;
begin
    Rec_no_Changed:=False;
    quOrg.Close ;
    quOrg.Open ;
    if(Creation_Mode = 1) then
    begin
        edCreator.Text := DabData.FName + ' ' + DabData.Lname ;
        edCreateDate.Text := DabData.disp_date ;
        quGenCode.Close ;
        quGenCode.Open ;
        if(quGenCode.IsEmpty) then
            edRec_No.Text := '1'
        else
        begin
            quGenCode.Last ;
            edRec_No.Text := IntToStr(quGenCodeRec_No.Value + 1) ;
        end;

        FormInitializer1.FieldMode := fmInsert ;
        FormInitializer1.Execute ;
        cbGetType.ItemIndex := 2 ;
        Enable := TRUE ;
        DoGetType3(Enable);
    end;
    if(Creation_Mode = 2) then
    begin
        quOrg.Close ;
        quOrg.Open ;

        cbGetType.ItemIndex := DabData.quGoodsRecGetType.Value - 1 ;
        if(DabData.quGoodsRecGetType.Value = 3) then
            Enable := TRUE
        else
            Enable := FALSE ;
        DoGetType3(Enable) ;

        quUser.Close ;
        quUser.Parameters[0].Value := DabData.quGoodsReccreator.Value ;
        quUser.Open ;
        edCreator.Text := quUserName.Value + ' ' + quUserfamily.Value ;

        edCreateDate.Text := DabData.quGoodsRecdate.Value ;
        edRec_No.Text := DabData.quGoodsRecrec_no.AsString ;

        edOrder_No.Text := DabData.quGoodsRecorder_no.AsString ;
        edFCode.Text := DabData.quGoodsRecF_Code.AsString ;
        if(not DabData.quGoodsRecF_Date.IsNull) then
            meFDate.Text := DabData.quGoodsRecF_Date.AsString ;
        edDoc_No.Text := DabData.quGoodsRecdoc_no.AsString ;
        reNotes.Text := DabData.quGoodsRecNotes.Text;
        lkpOrg.KeyValue := DabData.quGoodsRecOrg_Code.Value ;
        edOrder_Location.Text := DabData.quGoodsRecOrder_Location.AsString ;

        FormInitializer1.FieldMode := fmEdit ;
        FormInitializer1.Execute ;

        if(DabData.quGoodsRecGetType.Value = 3) then
        begin
            lkpOrg.Enabled := FALSE ;
            lbOrg.Enabled := FALSE ;
            cbGetType.Enabled := FALSE ;
            btnOrder_No.Enabled := FALSE ;
        end;
    end;


end;

procedure TInGoodsRec.btnOrder_NoClick(Sender: TObject);
begin
    DabData.quGoodsRecOrderNo.Close ;
    DabData.quGoodsRecOrderNo.Open ;    
    GoodsRecOrderNo := TGoodsRecOrderNo.Create(Application) ;
    GoodsRecOrderNo.ShowModal ;
    if(GoodsRecOrderNo.Result) then
    begin
        edOrder_No.Text := DabData.quGoodsRecOrderNoOrder_Req_No.AsString ;
        btnOK.Enabled := TRUE ;
    end;
    GoodsRecOrderNo.Free ;
end;


function TInGoodsRec.CheckRecNoUniq:Boolean;
begin
  inherited;
  if edRec_No.FieldType=ftDisplay then
  begin
    Result:=True;
    exit;
  end;
  quCheckKey.Close;
  quCheckKey.Parameters[0].Value:=edRec_No.Text;
  quCheckKey.Open;
  if quCheckKey.RecordCount>0 then
  begin
    Result:=False;
  end
  else
    Result:=True;
end;

procedure TInGoodsRec.edRec_NoChange(Sender: TObject);
begin
  inherited;
  Rec_no_Changed:=True;
end;

end.
