
unit fmGoodsRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs , Define,
  ExtCtrls, Grids, DBGrids, Db, StdCtrls, RSqlEdit, ADODB, SetForm, Mask,
  DBCtrls,RadForms, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, ppModule, daDatMod,
  ppStrtch, ppRichTx, ppMemo;

type
  TGoodsRec = class(TRadForm)
    dbgGoodsRec: TDBGrid;
    Panel1: TPanel;
    dbgRecItem: TDBGrid;
    dsGoodsRec: TDataSource;
    dsRecItem: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    quDelete: TADOQuery;
    quUpdateOrderRequest: TADOQuery;
    quDelRecItem: TADOQuery;
    edTotalPrice: TRSqlEdit;
    quRecItem: TADOQuery;
    quRecItemrec_no: TIntegerField;
    quRecItemcreator: TStringField;
    quRecItemdate: TStringField;
    quRecItemdeliver: TStringField;
    quRecItemddate: TStringField;
    quRecItemconfirmer: TStringField;
    quRecItemcdate: TStringField;
    quRecItemorder_no: TStringField;
    quRecItemdoc_no: TStringField;
    quRecItemorg: TStringField;
    quRecItemclass_code: TSmallintField;
    quRecItemGetType: TSmallintField;
    quRecItemOrder_Location: TStringField;
    quRecItemOrg_Code: TIntegerField;
    quRecItemF_Code: TStringField;
    quRecItemF_Date: TStringField;
    quRecItemrec_no_1: TIntegerField;
    quRecItemitem_code: TStringField;
    quRecItembuy_price: TFloatField;
    quRecItemex_price: TFloatField;
    quRecItemamount: TIntegerField;
    quRecItemitem_code_1: TStringField;
    quRecItemitem_name: TStringField;
    quRecItemclass_code_1: TSmallintField;
    quRecItemitem_desc: TStringField;
    quRecItemitem_unit: TSmallintField;
    quRecItemItem_Inventory: TIntegerField;
    quRecItemOrder_Point: TSmallintField;
    quRecItemInventory_Limit: TSmallintField;
    quRecItemclass_desc: TStringField;
    quRecItemclass_name: TStringField;
    quRecItemClass_Type: TSmallintField;
    quRecItemCode: TSmallintField;
    quRecItemUnit_Item_Desc: TStringField;
    quRecItemTypeName: TStringField;
    quRecItemppc_code: TStringField;
    quRecItempc_code: TStringField;
    quRecItemps_code: TStringField;
    ppDBPipeline1: TppDBPipeline;
    DataSource1: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine17: TppLine;
    ppDBText6: TppDBText;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppLine8: TppLine;
    ppVariable1: TppVariable;
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
    ppLabel15: TppLabel;
    ppDBText2: TppDBText;
    quRecItemsum: TFloatField;
    quRecItemPk_Item: TIntegerField;
    quRecItemPK_DetailGroups: TSmallintField;
    quRecItemPK_MasterGroups: TSmallintField;
    quRecItemPosition_Code: TStringField;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    quRecItemNotes: TStringField;
    ppSignAcount: TppLabel;
    ppNameAcount: TppLabel;
    quRecItemNotes_1: TStringField;
    ppDBMemo1: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgGoodsRecEnter(Sender: TObject);
    procedure dbgGoodsRecExit(Sender: TObject);
    procedure dbgRecItemEnter(Sender: TObject);
    procedure dbgRecItemExit(Sender: TObject);
    procedure dbgGoodsRecDblClick(Sender: TObject);
    procedure ppVariable1Reset(Sender: TObject; var Value: Variant);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    Mode : SmallInt ;
  public
    { Public declarations }
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
    procedure DoDelete(var Mes : TMessage);message F_DEL ;
    procedure DoScroll(var Mes : TMessage);message F_SCROLL ;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
    function  DeleteMaster(RecNo:Integer):Boolean;
  end;

var
  GoodsRec: TGoodsRec;
implementation
uses
    DabDmdle , fmInGoodsRec , fmVerify  , fmInRecItem, fmMgdet, fmMfrm,
  UCommon
  ;

{$R *.DFM}

procedure TGoodsRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FormDeactivate(nil) ;
    Action := caFree ;
end;

procedure TGoodsRec.FormActivate(Sender: TObject);
var
    Mes : TMessage ;
begin
    Mes.Msg := FORM_STATE ;
    Mes.LParam := 39 ;
    Application.MainForm.Dispatch(Mes) ;
end;

procedure TGoodsRec.FormDeactivate(Sender: TObject);
var
    Mes : TMessage ;
begin
    Mes.Msg := FORM_DEACT ;
    Application.MainForm.Dispatch(Mes) ;

end;

procedure TGoodsRec.FormShow(Sender: TObject);
var
    Mes : TMessage ;
begin
    Mes.Msg := F_SCROLL ;
    Left := 0 ;
    Top :=  0 ;
    DabData.quGoodsRec.Close ;
    DabData.quGoodsRec.Open ;
    DoScroll(Mes) ;

    FormInitializer1.Execute ;
end;

procedure TGoodsRec.DoDelete(var Mes: TMessage);
begin
    if(Mode = 1) then
    begin
        if(not DabData.quGoodsRec.IsEmpty) then
        begin
            if(DabData.quGoodsRecGetType.Value <> 3) then
            begin
               DeleteMaster(DabData.quGoodsRecrec_no.Value);
            end
            else
               if DabData.quRec_Item.RecordCount=0 then
                   DeleteMaster(DabData.quGoodsRecrec_no.Value)
               else
                   DabData.ShowPopupMessage('«» œ« ﬂ«·«Â«Ì ¬‰ —« Õ–› ﬂ‰Ìœ');
        end;
    end;

    if(Mode = 2) then
    begin
        if(not DabData.quGoodsRec.IsEmpty) and
          (not DabData.quRec_Item.IsEmpty) then
        begin
//            if(DabData.quGoodsRecGetType.Value <> 3) then
//            begin
                Verify := TVerify.Create(Application) ;
                if(Verify.ShowModal = mrOK) then
                begin
                    quDelRecItem.Parameters[0].Value := DabData.quRec_Itemrec_no.Value ;
                    quDelRecItem.Parameters[1].Value := DabData.quRec_Itemitem_code.Value ;
                    DabData.ADOC.BeginTrans ;
                    try
                        quDelRecItem.ExecSQL ;
                        DabData.ADOC.CommitTrans ;
                    except
                        DabData.ADOC.RollbackTrans ;
                    end;
                    DabData.quRec_Item.Close ;
                    DabData.quRec_Item.Open ;
                end;
                Verify.Free;
                Verify:=nil;
//            end;
        end;
    end;
end;

procedure TGoodsRec.DoEdit(var Mes: TMessage);
begin
    if(Mode = 1) then
    begin
        if(not DabData.quGoodsRec.IsEmpty) then
        begin
            InGoodsRec := TInGoodsRec.Create(Application) ;
            InGoodsRec.edRec_No.FieldType:=ftDisplay;
            InGoodsRec.Creation_Mode := 2;
            InGoodsRec.ShowModal ;
            InGoodsRec.Free;
            InGoodsRec:=nil;
        end;
    end;

    if(Mode = 2) then
    begin
        if(not DabData.quRec_Item.IsEmpty) then
        begin
            InRecItem := TInRecItem.Create(Application) ;
            InRecItem.Creation_Mode := 2 ;
            InRecItem.ShowModal ;
            InRecItem.Free;
            InRecItem:=nil;
        end;
    end;
end;

procedure TGoodsRec.DoNew(var Mes: TMessage);
begin
    if(Mode = 1) then
    begin
        InGoodsRec := TInGoodsRec.Create(Application) ;
        InGoodsRec.Creation_Mode := 1;
        InGoodsRec.ShowModal ;
        dbgRecItem.SetFocus;
    end;

    if(Mode = 2) then
    begin
        if(not DabData.quGoodsRec.IsEmpty) then
        begin
{            if(DabData.quGoodsRecGetType.Value = 3) then
            begin
                {RecItem_OrdItem :=TRecItem_OrdItem.Create(Application) ;
                RecItem_OrdItem.Order_No := DabData.quGoodsRecorder_no.Value ;
                RecItem_OrdItem.Rec_no := DabData.quGoodsRecrec_no.Value ;
                RecItem_OrdItem.ShowModal ;}
//            end
//            else
            begin
                InRecItem := TInRecItem.Create(Application) ;
                InRecItem.Creation_Mode := 1 ;
                InRecItem.ShowModal ;
            end;
        end;
    end;
end;

procedure TGoodsRec.DoScroll(var Mes: TMessage);
var
    i : Integer ;
    Total : Double ;
begin
    DabData.quRec_Item.Close ;
    DabData.quRec_Item.Parameters[0].Value := DabData.quGoodsRecRec_No.Value ;
    DabData.quRec_Item.Open ;
    if(not DabData.quRec_Item.IsEmpty) then
    begin
        DabData.quRec_Item.First ;
        Total := 0 ;
        for i := 1 to DabData.quRec_Item.RecordCount do
        begin
            Total := Total + DabData.quRec_Itemexprice.Value ;
            DabData.quRec_Item.Next ;
        end;
        DabData.quRec_Item.First ;
        edTotalPrice.Text := FloatToStr(Total);
    end
    else
        edTotalPrice.Text := '' ;

end;

procedure TGoodsRec.dbgGoodsRecEnter(Sender: TObject);
begin
    Mode := 1;
    dbgGoodsRec.Color := clactivegrid ;
end;

procedure TGoodsRec.dbgGoodsRecExit(Sender: TObject);
begin
    Mode := 0 ;
    dbgGoodsRec.Color := cldeactivegrid ;
end;

procedure TGoodsRec.dbgRecItemEnter(Sender: TObject);
begin
    Mode := 2 ;
    dbgRecItem.Color := clactivegrid ;
end;

procedure TGoodsRec.dbgRecItemExit(Sender: TObject);
begin
    Mode := 0 ;
    dbgRecItem.Color := cldeactivegrid ;
end;
procedure TGoodsRec.dbgGoodsRecDblClick(Sender: TObject);
begin
  inherited;
    if(MFrm.ChkChild(TMgdet)) then
       if(DabData.quRec_Item.RecordCount>0) then
       begin
         Mgdet.dblrec.KeyValue:=DabData.quGoodsRecrec_no.AsInteger;
         mgdet.dblrecCloseUp(Sender);
         Close;
       end
       else
         DabData.ShowPopupMessage('‘„« »«Ìœ ‘„«—Â ﬁ»÷Ì —« «‰ Œ«» ﬂ‰Ìœ ﬂÂ œ«—«Ì ﬂ«·« »«‘œ ');

end;

procedure TGoodsRec.DoPrint(var mes: TMessage);
var
 RoundShape:TppShape;
begin
  if ReadFromIniFile('Print','Default','False')='False' then
  begin
   //RoundShape:=CheckPrintPage(ppReport1);
   quRecItem.close;
   quRecItem.Parameters[0].Value:=DabData.quGoodsRecrec_no.Value;
   quRecItem.Open;
   lbDate.Caption:=DabData.disp_date;
   edOrgan.Caption:=OrganizName;
   ppReport1.Print;
   if RoundShape<>nil then
     RoundShape.Free;
  end
  else
    inherited;
end;

procedure TGoodsRec.ppVariable1Reset(Sender: TObject; var Value: Variant);
begin
 value:=0;
end;

procedure TGoodsRec.ppVariable1Calc(Sender: TObject; var Value: Variant);
var
  tmp:Real;
begin
  tmp:=value;
  value:=tmp+1;
end;
function TGoodsRec.DeleteMaster(RecNo:Integer):Boolean;
begin
  Verify := TVerify.Create(Application) ;
  if(Verify.ShowModal = mrOK) then
  begin
    quDelete.Parameters[0].Value := RecNo ;
    DabData.ADOC.BeginTrans ;
    try
      quDelete.ExecSQL ;
      DabData.ADOC.CommitTrans ;
      Result:=True;
    except
      DabData.ADOC.RollbackTrans ;
      Result:=False;
    end;
    DabData.quGoodsRec.Close ;
    DabData.quGoodsRec.Open ;
  end;
end;
end.
