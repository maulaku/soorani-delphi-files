unit fmBills;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs , Define,
  ExtCtrls, Grids, DBGrids, Db, ADODB , RadForms, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, StdCtrls, Mask, DBCtrls, Buttons, ppStrtch, ppSubRpt,
  RSqlButton,SetForm;

type
  TBills = class(TRadForm)
    dbgBill: TDBGrid;
    Panel1: TPanel;
    dbgBillItems: TDBGrid;
    dsBillKar: TDataSource;
    dsBillItems: TDataSource;
    quDelete: TADOQuery;
    quFillBillItems: TADOQuery;
    quDetail: TADOQuery;
    SmallintField1: TSmallintField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    StringField6: TStringField;
    IntegerField4: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    spDetailBillStor: TADOStoredProc;
    pnUser: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DataSource1: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel12: TppLabel;
    lbDate: TppLabel;
    ppImage1: TppImage;
    ppLabel16: TppLabel;
    edOrgan: TppLabel;
    ppLabel17: TppLabel;
    ppLabel14: TppLabel;
    ppDBText2: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine17: TppLine;
    ppLine1: TppLine;
    ppDBText7: TppDBText;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppVariable1: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppLabel13: TppLabel;
    ppLabel5: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppDBText6: TppDBText;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    spDetailBillStorItem_Name: TStringField;
    spDetailBillStorUnit_Item_Desc: TStringField;
    spDetailBillStorLabel: TIntegerField;
    spDetailBillStorGoods_codeStr: TStringField;
    spDetailBillStorItem_Code: TStringField;
    spDetailBillStorGoods_code: TStringField;
    spDetailBillStorAmount: TIntegerField;
    spDetailBillStoruserReceiverName: TStringField;
    spDetailBillStoruserName: TStringField;
    spDetailBillStorUt_Name: TStringField;
    spDetailBillStorDescr: TStringField;
    spDetailBillStorOrg_Code: TIntegerField;
    spDetailBillStorUnit_Code: TSmallintField;
    spDetailBillStorLoc_Code: TSmallintField;
    spDetailBillStorLoc_Code_1: TSmallintField;
    spDetailBillStorUser_emp_no: TStringField;
    spDetailBillStorGet_Date: TStringField;
    spDetailBillStorDescr_1: TStringField;
    spDetailBillStorLoc_Code_2: TSmallintField;
    spDetailBillStorLoc_Desc: TStringField;
    spDetailBillStorUseLoc: TStringField;
    paButton: TPanel;
    btReject: TRSqlButton;
    btOK: TRSqlButton;
    spInsertUpdateBill: TADOStoredProc;
    spDetailBillStorMgNote: TStringField;
    ppDBText8: TppDBText;
    spDetailBillStorBill_no: TIntegerField;
    Bill_No: TppField;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgBillEnter(Sender: TObject);
    procedure dbgBillExit(Sender: TObject);
    procedure dbgBillItemsEnter(Sender: TObject);
    procedure dbgBillItemsExit(Sender: TObject);
    procedure spDetailBillStorAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure btOKClick(Sender: TObject);
    procedure tmpEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Mode : SmallInt ;
    RedifCount:SmallInt;
  public
    procedure Refresh;
    { Public declarations }
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
    procedure DoRun(var mes :TMessage);message RUN_CMD;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    procedure DoScroll(var Mes : TMessage);message F_SCROLL ;
  end;

var
  Bills: TBills;
  StateOfBills : SmallInt ;

implementation
uses
    DabDmdle , fmVerify , fmInBills, fmMfrm, fmSetBillUserName, UCommon;

{$R *.DFM}

procedure TBills.FormActivate(Sender: TObject);
var
    mes : TMessage ;
begin
    mes.Msg := FORM_STATE ;
    mes.LParam := 77 ;
    Application.MainForm.Dispatch(mes);
end;

procedure TBills.FormDeactivate(Sender: TObject);
var
    mes : TMessage ;
begin
    mes.Msg := FORM_DEACT ;
    Application.MainForm.Dispatch(mes);
end;

procedure TBills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  action := cafree ;
end;

procedure TBills.FormShow(Sender: TObject);
var
    Mes : TMessage ;
begin
    Top := 0 ;
    Left := 0 ;
    DabData.quBillKar.Close ;
    DabData.quBillKar.Parameters[0].Value:=StateOfBills;
    DabData.quBillKar.Open ;
    Mes.Msg := F_SCROLL ;
    DoScroll(Mes) ;
end;

procedure TBills.DoDelete(var Mes: TMessage);
begin
    if(Mode = 1) then
    begin
        if(StateOfBills = 1) then
        begin
            if(not DabData.quBillKar.IsEmpty) then
            begin
                Verify := TVerify.Create(Application) ;
                if(Verify.ShowModal = mrOK) then
                begin
                    quDelete.Parameters[0].Value := DabData.quBillKarBill_no.Value ;
                    quDelete.Parameters[1].Value := DabData.quBillKarBill_type.Value ;

                    if(not DabData.quBillKaritem_req_no.IsNull) then
                    begin
                        quFillBillItems.Parameters[0].Value := DabData.quBillKaritem_req_no.Value ;
                        quFillBillItems.Parameters[1].Value := DabData.quBillKarBill_no.Value ;
                        quFillBillItems.Parameters[2].Value := DabData.quBillKarBill_type.Value ;
                        quFillBillItems.Parameters[3].Value := 4 ;
                        DabData.ADOC.BeginTrans ;
                        try
                            quFillBillItems.ExecSQL ;
                            DabData.ADOC.CommitTrans ;
                        except
                            DabData.ADOC.RollbackTrans ;
                        end;
                    end;
                    DabData.ADOC.BeginTrans ;
                    try
                        quDelete.ExecSQL ;
                        DabData.ADOC.CommitTrans ;
                    except
                        DabData.ADOC.RollbackTrans ;
                    end;
                    DabData.quBillKar.Close ;
                    DabData.quBillKar.Open ;
                end;
            end;
        end
        else
            DabData.ShowPopupMessage('œ— «Ì‰ »Œ‘ «Ã«“Â Õ–› ‰œ«—Ìœ');
    end;
end;

procedure TBills.DoEdit(var Mes: TMessage);
var
  tmpForm:TRadForm;
  tmpEdit:TEdit;
begin
  if dbgBillItems.Focused then
  begin
   if Not(spDetailBillStorGoods_code.IsNull) then
   begin
     tmpForm:=TRadForm.Create(Self);
     tmpForm.Width:=150;
     tmpForm.Height:=90;
     tmpForm.Position:=poOwnerFormCenter ;
     with TLabel.Create(tmpForm) do
     begin
        top:=0;
        Left:=5;
        Caption:='‘„«—Â »—ç”» ';
        Parent:=tmpForm;
     end;
     tmpEdit:=TEdit.Create(tmpForm);
     tmpEdit.Top:=20;
     tmpEdit.Left:=5;
     tmpEdit.Parent:=tmpForm;
     tmpEdit.Text:=spDetailBillStorLabel.AsString;
     tmpEdit.OnKeyDown:=tmpEditKeyDown;
     tmpForm.ShowModal;
   end;
  end;

    if(Mode = 1) then
    begin
        if(StateOfBills = 1) then
        begin
            if(not DabData.quBillKar.IsEmpty) then
            begin
                InBills := TInBills.Create(Application);
                InBills.edBillNo.FieldType:=ftDisplay;
                InBills.State := 1 ;
                InBills.Creation_Mode := 2 ;
                InBills.ShowModal ;
            end;
        end;

        if(StateOfBills = 2) then
        begin
            if(not DabData.quBillKar.IsEmpty) then
            begin
                if(DabData.quBillKarState.Value  = 1) then
                begin
                    InBills := TInBills.Create(Application);
                    InBills.State := 2 ;
                    InBills.ShowModal ;
                end
                else
                    DabData.ShowPopupMessage('«Ì‰ ÕÊ«·Â  ⁄ÌÌ‰ Ê÷⁄Ì  ‘œÂ «” ');
            end;
        end;
    end;

end;

procedure TBills.DoNew(var Mes: TMessage);
begin
    if(StateOfBills = 1) then
    begin
        if(Mode = 1) then
        begin
            InBills := TInBills.Create(Application);
            InBills.State := 1 ;
            InBills.Creation_Mode := 1 ;
            InBills.ShowModal ;
        end;
    end;

end;

procedure TBills.DoScroll(var Mes: TMessage);
begin
    spDetailBillStor.Close;
    spDetailBillStor.Parameters[1].Value := DabData.quBillKarBill_no.Value ;
//    spDetailBillStor.Parameters[2].Value:=DabData.quBillKarBill_type.Value ;
    spDetailBillStor.Open;
    if ((DabData.quBillKarState.Value = 1) and (StateOfBills = 2 )) then
      paButton.Visible:=True
    else
      paButton.Visible:=False;
    if spDetailBillStorGoods_code.IsNull then
      pnUser.Visible:=False
    else
      pnUser.Visible:=True;
end;

procedure TBills.dbgBillEnter(Sender: TObject);
begin
    dbgBill.Color := clactivegrid ;
    Mode := 1 ; 
end;

procedure TBills.dbgBillExit(Sender: TObject);
begin
    dbgBill.Color := cldeactivegrid ;
    Mode := 0 ;
end;

procedure TBills.dbgBillItemsEnter(Sender: TObject);
begin
    dbgBillItems.Color := clactivegrid ;
    Mode := 2 ;
end;

procedure TBills.dbgBillItemsExit(Sender: TObject);
begin
    dbgBillItems.Color := cldeactivegrid ;
    Mode := 0 ;
end;

procedure TBills.DoPrint(var mes: TMessage);
begin
 DoRun(mes);
end;

procedure TBills.DoRun(var mes: TMessage);
begin
   edOrgan.Caption:=OrganizName;
   lbDate.Caption:=Dabdata.disp_date;
   ppDBPipeline1.DataSource:= dsBillItems;
   ppReport1.Print;
end;

procedure TBills.spDetailBillStorAfterScroll(DataSet: TDataSet);
begin
  DabData.quGoodsUser.Close;
  DabData.quGoodsUser.Parameters[0].Value:=spDetailBillStorGoods_code.Value;
  DabData.quGoodsUser.Parameters[1].Value:=DabData.qubillKarBill_No.Value;
  DabData.quGoodsUser.Parameters[2].Value:=DabData.quBillKarBill_Type.Value;
  DabData.quGoodsUser.Open;
end;

procedure TBills.SpeedButton1Click(Sender: TObject);
var
  spBook:TBookmark;
begin
 if MFrm.spRadEdit.Enabled then
 begin
   SetBillUserName:=TSetBillUserName.Create(Application);
   SetBillUserName.edBill.Text:=DabData.qubillKarBill_No.AsString;
   SetBillUserName.spUpdateGoodsUser.Parameters[4].Value:=DabData.quBillKarBill_type.AsString;
   SetBillUserName.edGoods.Text:=spDetailBillStorGoods_code.Value;
   SetBillUserName.edItemName.Text:=spDetailBillStorItem_Name.Value;
   SetBillUserName.ShowModal;
   spBook:=spDetailBillStor.GetBookmark;
   spDetailBillStor.Close;
   spDetailBillStor.Open;
   spDetailBillStor.GotoBookmark(spBook);
   spDetailBillStor.FreeBookmark(spBook);
 end
 else
  DabData.ShowPopupMessage('‘„« œ” —”Ì «Ì‰ ﬂ«— —« ‰œ«—Ìœ');
end;

procedure TBills.Refresh;
var
    Mes : TMessage ;
begin
    DabData.quBillKar.Close ;
    DabData.quBillKar.Parameters[0].Value:=StateOfBills;
    DabData.quBillKar.Open ;
    Mes.Msg := F_SCROLL ;
    DoScroll(Mes) ;
end;

procedure TBills.ppVariable1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Inc(RedifCount);
  Text:=IntToStr(RedifCount);
end;

procedure TBills.ppVariable1Reset(Sender: TObject; var Value: Variant);
begin
  inherited;
  RedifCount:=0;
  Value:=RedifCount;
end;

procedure TBills.btOKClick(Sender: TObject);
var
    bmPlace : TBookmark ;
begin
        bmPlace := DabData.quBillKar.GetBookmark ;
        spInsertUpdateBill.Parameters[1].Value:=DabData.quBillKarBill_no.Value ;
        spInsertUpdateBill.Parameters[2].Value:=DabData.quBillKarBill_type.Value ;
        if(TButton(Sender).Caption='—œ') then
            spInsertUpdateBill.Parameters[5].Value := 3
        else
            spInsertUpdateBill.Parameters[5].Value := 2 ;
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
procedure TBills.tmpEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
 UpdateLabel:TADOQuery;
begin
  if Key=13 then
  begin
    UpdateLabel:=TADOQuery.Create(Self);
    UpdateLabel.Connection:=DabData.ADOC;
    UpdateLabel.SQL.Text:='update Moveable_goods Set label='+TEdit(Sender).Text+' where Goods_code= '+spDetailBillStorGoods_codeStr.AsString;
    UpdateLabel.ExecSQL;
    spDetailBillStor.Close;
    spDetailBillStor.Open;
    TForm(TEdit(Sender).Parent).Close;
  end
  else if Key=27 then
    TForm(TEdit(Sender).Parent).Close;
end;

end.
