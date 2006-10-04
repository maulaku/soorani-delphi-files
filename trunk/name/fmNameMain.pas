unit fmNameMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, RXDBCtrl, ActnList, rxdbfilter, ExtCtrls,
  StdCtrls, rxdbindex, rxdbprgrss, RXSplit, RxLookup,RadForms,define, fcButton,
  fcImgBtn, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtons, ppPrnabl, ppClass, ppCtrls, ppDB, ppDBPipe, ppBands, ppCache,
  ppComm, ppRelatv, ppProd, ppReport;

type
  TNameMain = class(TRadForm)
    RxDBGrid1: TRxDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    RxSplitter1: TRxSplitter;
    ADODataSet1: TADODataSet;
    ADODataSet1TABLE_QUALIFIER: TWideStringField;
    ADODataSet1TABLE_OWNER: TWideStringField;
    ADODataSet1TABLE_NAME: TWideStringField;
    ADODataSet1TABLE_TYPE: TStringField;
    ADODataSet1REMARKS: TStringField;
    DataSource2: TDataSource;
    dsoNames: TADODataSet;
    dsoNamesv01: TStringField;
    dsoNamesv01_cnt: TStringField;
    dsoNamesv02: TStringField;
    dsoNamesv02_cnt: TStringField;
    dsoNamesv03: TStringField;
    dsoNamesv03_cnt: TStringField;
    dsoNamesv04: TIntegerField;
    dsoNamesv05: TBCDField;
    dsoNamesv06: TIntegerField;
    dsoNamesv07: TIntegerField;
    dsoNamesv08: TIntegerField;
    dsoNamesv09: TStringField;
    dsoNamesv09_cnt: TStringField;
    dsoNamesv10_cnt: TStringField;
    dsoNamesv10: TStringField;
    dsoNamesv11: TIntegerField;
    dsoNamesv12: TIntegerField;
    dsoNamesv13: TIntegerField;
    dsoNamesv14: TStringField;
    dsoNamesv14_cnt: TStringField;
    dsoNamesv15: TStringField;
    dsoNamesv15_cnt: TStringField;
    dsoNamestype: TStringField;
    Label1: TLabel;
    cxButton1: TcxButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBPipeline1: TppDBPipeline;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine2: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel20: TppLabel;
    ppDBText4: TppDBText;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine6: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine7: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText1: TppDBText;
    ppDBText7: TppDBText;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ADOTable1CalcFields(DataSet: TDataSet);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  protected
    procedure DoNew(var Mes : TMessage);message F_NEW ;
    procedure DoEdit(var Mes : TMessage);message F_EDIT ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NameMain: TNameMain;

implementation

uses DabDmdle, fmInNameMain;



{$R *.dfm}

procedure TNameMain.RxDBLookupCombo1Change(Sender: TObject);
begin
  dsoNames.Close;
  dsoNames.CommandText := 'select * from ' + RxDBLookupCombo1.Text;
  dsoNames.Open;
end;

procedure TNameMain.ADOTable1CalcFields(DataSet: TDataSet);
begin
 case dsoNamesv08.Value  of
   1 :  dsoNamestype.Value := 'ÊÕœ  »« Åœ— ';
   2 :  dsoNamestype.Value := 'ÊÕœ  »« »—«œ— ';
   3 :  dsoNamestype.Value := '«Ã«“Â «“ œ«—‰œÂ Õﬁ  ﬁœ„';
   4 :  dsoNamestype.Value := '»‰œ 13-8';
   5 :  dsoNamestype.Value := '«‰ Œ«» ¬“«œ  Â—«‰ ';
   6 :  dsoNamestype.Value := '¬‰ Œ«» ¬“«œ ‘Â—” «‰ ';
   7 :  dsoNamestype.Value := 'œ—ŒÊ«”   €ÌÌ— ‰«„  ';
   8 :  dsoNamestype.Value := 'Õ–› Å”Ê‰œ  ';
   9 :  dsoNamestype.Value := '„ﬂ« »«  œÌê— ';
   10 :  dsoNamestype.Value := 'ÊÕœ  »« 10 ';
   11 :  dsoNamestype.Value := 'ÊÕœ  »« 1 ';
   12 :  dsoNamestype.Value := 'ÊÕœ  »« 12 ';
   13 :  dsoNamestype.Value := 'ÊÕœ  »« 13 ';
   14 :  dsoNamestype.Value := 'ÊÕœ  »« 14 ';
   15 :  dsoNamestype.Value := 'ÊÕœ  »« 15 ';
 end
end;

procedure TNameMain.RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
  var
  x :TColumn;
begin
 try
  if RxDBGrid1.Columns[ACol].FieldName = 'type' then
  begin
   dsoNames.Close;
   dsoNames.CommandText := 'select * from ' + RxDBLookupCombo1.Text + ' order by  v08';
   dsoNames.Open;
  end
  else
  begin
    dsoNames.Close;
    dsoNames.CommandText := 'select * from ' + RxDBLookupCombo1.Text + ' order by  ' +RxDBGrid1.Columns[ACol].FieldName;
    dsoNames.Open;
  end;
  except
  begin
    dsoNames.Close;
    dsoNames.CommandText := 'select * from ' + RxDBLookupCombo1.Text ;
    dsoNames.Open;
  end
  end;


end;

procedure TNameMain.DoEdit(var Mes: TMessage);
begin
 Inherited;
 InNameMain:=TInNameMain.create(Self);
 InNameMain.ShowModal;
  InNameMain.Refresh;
 dsoNames.Close;
 dsoNames.Open;
end;

procedure TNameMain.DoNew(var Mes: TMessage);
begin
 Inherited;
 InNameMain:=TInNameMain.create(Self);
 InNameMain.ShowModal;
  InNameMain.Refresh;
 dsoNames.Close;
 dsoNames.Open;
end;

procedure TNameMain.cxButton1Click(Sender: TObject);
begin
  inherited;
    ppReport1.Print;
end;

end.
