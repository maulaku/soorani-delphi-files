unit fmincons;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ExtCtrls, Db, ADODB, Define, DBCtrls,
  SmoothShow,RadForms, ppDB,  ppBands, ppCtrls, ppVar, ppPrnabl,Variants,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDBPipe ;

type
  Tincons = class(TRadForm)
    dsincon: TDataSource;
    qudelete: TADOQuery;
    dbgdetail: TDBGrid;
    ppReport1: TppReport;
    dsSpecStr: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    quIncon: TADOQuery;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppRepDate: TppLabel;
    ppLabel8: TppLabel;
    ppLabel13: TppLabel;
    ppLabel2: TppLabel;
    ppLine58: TppLine;
    ppLName: TppLabel;
    ppLabel60: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLine18: TppLine;
    ppLabel18: TppLabel;
    ppLine25: TppLine;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine12: TppLine;
    ppLabel27: TppLabel;
    ppLabel36: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel37: TppLabel;
    ppLine43: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppLine2: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLine32: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLine33: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine8: TppLine;
    ppLine36: TppLine;
    ppLine42: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine3: TppLine;
    ppDBText4: TppDBText;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine49: TppLine;
    ppDBText15: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine52: TppLine;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    quInconmaker_country: TStringField;
    quInconmaker_unit: TStringField;
    quInconweight: TIntegerField;
    quIncondimension: TStringField;
    quInconcolor: TStringField;
    quInconmodel: TStringField;
    quInconserial: TStringField;
    quInconampere: TStringField;
    quInconspecification: TStringField;
    quInconGoods_codeTmp: TStringField;
    quInconStateAsset: TStringField;
    quIncongoods_code: TStringField;
    quInconreceipt_no: TIntegerField;
    quInconlabel: TIntegerField;
    quInconAssetBPrice: TFloatField;
    quInconAssetEPrice: TFloatField;
    quInconAssetType: TStringField;
    quInconItem_Code: TStringField;
    quInconMaster_Name: TStringField;
    quInconDetail_Name: TStringField;
    quInconItem_Name: TStringField;
    quInconPosition_code: TStringField;
    quInconInventory_Limit: TSmallintField;
    quInconOrder_Point: TSmallintField;
    quInconItem_Inventory: TIntegerField;
    quInconitem_desc: TStringField;
    quInconclass_code: TSmallintField;
    quInconclass_desc: TStringField;
    quInconclass_name: TStringField;
    quInconClass_Type: TSmallintField;
    quInconppc_code: TStringField;
    quInconpc_code: TStringField;
    quInconps_code: TStringField;
    quInconUnit_Item: TStringField;
    quInconClass_TypeStr: TStringField;
    quInconExpr1: TSmallintField;
    quInconExpr2: TSmallintField;
    quInconReceipt_date: TStringField;
    quInconGoods_code_1: TLargeintField;
    quInconReason: TStringField;
    quInconLicense: TStringField;
    quInconSendPrice: TLargeintField;
    quInconReceiver: TStringField;
    quInconTypeDoc: TStringField;
    quInconLicense_no: TIntegerField;
    quInconLicense_Date: TStringField;
    quInconDescrip: TStringField;
    ppOrgan1: TppLabel;
    ppOrgan2: TppLabel;
    ppOrgan3: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure Delete();

    { Private declarations }

  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    procedure DoPrint(var mes :TMessage);message F_PRINT;
  public
    { Public declarations }
  end;

var
  incons: Tincons;
  var I:integer;

implementation
uses DabDmdle, fmElam, fminconsdet, UCommon;
{$R *.DFM}


procedure Tincons.DoNew(var mes :TMessage);
begin
  inconsdet := Tinconsdet.Create(Application);
  inconsdet.height:=354;
  inconsdet.btok.enabled:=false;
  inconsdet.mde:=1;
  DabData.quMalClass.close;
  DabData.quMalClass.Parameters[0].Value := Inconsum_Code ;
  DabData.quMalClass.Parameters[1].Value := NULL;
  DabData.quMalClass.Parameters[2].Value := NULL;
  DabData.quMalClass.Parameters[3].Value := NULL;
  DabData.quMalClass.open;
  dbgdetail .Color:= clDeactiveGridColor;
  SetFormColor(inconsdet);
  inconsdet.ShowModal  ;
  dbgdetail .Color:= clActiveGridColor ;
  quIncon.Close;
  quIncon.Open;
end;

procedure Tincons.DoEdit(var mes :TMessage);
begin
  if (quincon.RecordCount<> 0 )then
  begin
    inconsdet := Tinconsdet.Create(Application);
    inconsdet.height:=354;
    inconsdet.mde:=2;
    inconsdet.edcountry.text:=quinconMaker_country.Asstring;
    inconsdet.edunit.text:=quinconMaker_unit.AsString;
    inconsdet.edweight.text:=quinconWeight.AsString;
    inconsdet.eddim.text:=quincondimension.AsString;
    inconsdet.edcolor.text:=quinconColor.AsString;
    inconsdet.edmodel.text:=quinconModel.AsString;
    inconsdet.edserial.text:=quinconSerial.AsString;
    inconsdet.edamper.text:=quinconAmpere.AsString;
    inconsdet.eddesc.text:=quinconSpecification.AsString;
    inconsdet.dblgood.KeyValue :=  quincongoods_code .AsString ;
    inconsdet.dblgood.Color := clDeactiveFieldColor;
    inconsdet.panel3.Enabled :=false;
    inconsdet.btok.enabled:=true;
    DabData.quMalClass.close;
    DabData.quMalClass.Parameters[0].Value := Inconsum_Code ;
    DabData.quMalClass.Parameters[1].Value := quincongoods_code.AsString ;
    DabData.quMalClass.Parameters[2].Value := NULL;
    DabData.quMalClass.Parameters[3].Value := NULL;
    DabData.quMalClass.open;
    dbgdetail .Color:= clDeactiveGridColor;

    inconsdet.dblgoodUp.Visible  := False;
    inconsdet.btGoodUp.Visible   := False;
    inconsdet.lbGoodUp.Visible   := False;
    inconsdet.lbctg.Caption      :=':ﬂœ „«·';
    inconsdet.dblgood.Visible    := False;
    inconsdet.Button1.Visible      := False;
    inconsdet.edGood.Text        := quincongoods_code.AsString ;
    setformColor(inconsdet);
    inconsdet.ShowModal  ;
    dbgdetail .Color:= clActiveGridColor ;
  end;
end;

procedure Tincons.DoDelete(var mes :TMessage);
begin
  if ( quincon.RecordCount >=1 )and( quincon.RecNo >= 1 ) then
  begin
    if Elam=nil then
      Elam:=TElam.Create(self);
    Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
    Elam.showmodal;
    if Elam.bbOk.modalResult=mrOk then
    begin
      delete();
    end;
  end;
end;

(*** This procedure Delete a chosen row***)
procedure Tincons.delete();
begin
  DabData.ADOC.BeginTrans;
  try
  begin
    quDelete.parameters[0].value:=quinconGoods_code.asstring;
    quDelete.ExecSql;
    quincon.close;
    quincon.Open;
    DabData.ADOC.CommitTrans;
  end;
  except
    DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
    DabData.ADOC.RollbackTrans;
  end;
end;

procedure Tincons.FormActivate(Sender: TObject);
 var mes:Tmessage;
begin
  mes.Msg:=FORM_STATE;
  mes.Lparam:=103;
  Application.MainForm.Dispatch(mes);
  left := 0;
  top  := 0;
end;


procedure Tincons.FormShow(Sender: TObject);
begin
   ActiveDataSet:=quIncon;
   quincon.close;
   quincon.open;
   dbgdetail.Color := clActiveGridColor;
end;


procedure Tincons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  incons:=nil;
  Action:=caFree;
end;

procedure Tincons.FormDeactivate(Sender: TObject);
var
  mes : TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);

end;


procedure Tincons.DoPrint(var mes: TMessage);
begin
     i := 1;
     ppRepDate.caption    := DabData.Disp_Date;
     ppLName .caption := caption;
     ppOrgan1.Caption:=OrganizName;
     ppOrgan2.Caption:=OrganizName;
     ppOrgan3.Caption:=OrganizName;
     ppReport1.Print;
end;

end.
