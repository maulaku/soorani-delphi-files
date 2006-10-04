unit fmmusdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define,
  SetForm, RSqllookup, RSqlEdit, RSqlButton, RSqlMaskEdit, RadForms,
   RSQLComboBox;

type
  Tmusdet = class(TRadForm)
    Panel1: TPanel;
    edmat:TRSqlEdit;
    edrag:TRSqlEdit;
    edloc:TRSqlEdit;
    panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    quserch: TADOQuery;
    quserchDoc_code: TIntegerField;
    quserchDoc_date: TStringField;
    quserchDoc_type: TSmallintField;
    quserchDoc_del: TStringField;
    quserchDoc_res: TStringField;
    quserchdoc_pas: TStringField;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dblGoodUp:TRSqlDbLookup;
    lbGoodUp: TLabel;
    edbcolo: TRSqlEdit;
    edwoof: TRSqlEdit;
    edfuzz: TRSqlEdit;
    edplane: TRSqlEdit;
    edstyle: TRSqlEdit;
    edlen: TRSqlEdit;
    edarea: TRSqlEdit;
    edframe: TRSqlEdit;
    edold: TRSqlEdit;
    eddegree: TRSqlEdit;
    edwith: TRSqlEdit;
    edcolor: TRSqlEdit;
    edGood: TRSqlEdit;
    btok: TRSqlButton;
    btca: TRSqlButton;
    eddate: TRSqlMaskEdit;
    edpdate: TRSqlMaskEdit;
    btMal: TRSqlButton;
    btGoodUp: TRSqlButton;
    cbType: TRSqlComboBox;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure btMalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGoodUpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      mde       :integer;
  end;

var
  musdet: Tmusdet;

implementation

uses DabDmdle, UCommon, fmShowMal, UUserMsg, UFmShMsg;

{$R *.DFM}

procedure Tmusdet.btokClick(Sender: TObject);
var
  bk:TBookmark;
  TempStr   : string;
  ExitWhile : Boolean;
  Str1,str2 : string;
  
begin
  case mde of
  1: begin
       if dblgoodUp.KeyValue < dblgood.KeyValue then
       begin
           str1 := '';
           Str2 := SM_Not_Valid_domain;
           ShowMessage2(Str2);
           dblgood.SetFocus;
           exit;
       end;
       DabData.quMalClass.Locate('Goods_Code',dblgood.KeyValue,[locaseinsensitive] );
       ExitWhile := False;
       while (DabData.quMalClassgoods_code.AsString <= dblgoodUp.KeyValue)
           and  not (ExitWhile)  do
       begin
         quInsert.Parameters[0].Value:= DabData.quMalClassgoods_code.AsString;
         quInsert.Parameters[1].Value:= cbType.ItemIndex;
         quInsert.Parameters[2].Value:= edloc.text;
         quInsert.Parameters[3].Value:= edstyle.text;
         quInsert.Parameters[4].Value:= edrag.text;
         quInsert.Parameters[5].Value:= edmat.text;
         quInsert.Parameters[6].Value:= edwoof.text;
         quInsert.Parameters[7].Value:= edfuzz.text;
         quInsert.Parameters[8].Value:= edplane.text;
         quInsert.Parameters[9].Value:= edbcolo.text;
         quInsert.Parameters[10].Value:=edcolor.text;
         quInsert.Parameters[11].Value:=edlen.text;
         quInsert.Parameters[12].Value:=edwith.text;
         quInsert.Parameters[13].Value:=edarea.text;
         quInsert.Parameters[14].Value:=eddate.text;
         quInsert.Parameters[15].Value:=edframe.text;
         quInsert.Parameters[16].Value:=edold.text;
         quInsert.Parameters[17].Value:=eddegree.text;
         quInsert.Parameters[18].Value:=edpdate.text;
         DabData.ADOC.BeginTrans;
         Try
         begin//1
           quInsert.ExecSQL;
           DabData.ADOC.CommitTrans;
         end; //1
         except
           DabData.ShowPopupMessage('.áØÝÇ" ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
           DabData.ADOC.RollbackTrans;
         end;//try
           TempStr := DabData.quMalClassgoods_code.AsString;
           DabData.quMalClass.Next;
           if TempStr = DabData.quMalClassgoods_code.AsString then ExitWhile := True;
       end;
       mde := 0 ;
       DabData.qumuseum.Close;
       DabData.qumuseum.Open;
       DabData.qumuseum.Locate('Mts_gcode',TempStr,[locaseinsensitive]);

  end; //case1
  2: begin //1
       bk:=DabData.qumuseum.GetBookmark;
       quUpdate.Parameters[0].Value  := cbType.ItemIndex;
       quUpdate.Parameters[1].Value  := edloc.text;
       quUpdate.Parameters[2].Value  := edstyle.text;
       quUpdate.Parameters[3].Value  := edrag.text;
       quUpdate.Parameters[4].Value  := edmat.text;
       quUpdate.Parameters[5].Value  := edwoof.text;
       quUpdate.Parameters[6].Value  := edfuzz.text;
       quUpdate.Parameters[7].Value  := edplane.text;
       quUpdate.Parameters[8].Value  := edbcolo.text;
       quUpdate.Parameters[9].Value  := edcolor.text;
       quUpdate.Parameters[10].Value := edlen.text;
       quUpdate.Parameters[11].Value := edwith.text;
       quUpdate.Parameters[12].Value := edarea.text;
       quUpdate.Parameters[13].Value := eddate.text;
       quUpdate.Parameters[14].Value := edframe.text;
       quUpdate.Parameters[15].Value := edold.text;
       quUpdate.Parameters[16].Value := eddegree.text;
       quUpdate.Parameters[17].Value := edpdate.text;
       quUpdate.Parameters[18].Value := DabData.qumuseumMts_gcode.AsString;
       DabData.ADOC.BeginTrans;
       Try
       begin //2
         quUpdate.ExecSQL;
         DabData.ADOC.CommitTrans;
       end;
       except
         DabData.ShowPopupMessage('.áØÝÇ" ÏæÈÇÑå ÇãÊÍÇä ßäíÏ');
         DabData.ADOC.RollbackTrans;
       end;//try
       mde:=0;
       DabData.qumuseum.Close;
       DabData.qumuseum.Open;
       DabData.qumuseum.GotoBookmark(bk);
       DabData.qumuseum.FreeBookmark(bk);
       end; //2
 end;//case
   musdet.Close;
end;

procedure Tmusdet.btcaClick(Sender: TObject);
begin
   musdet.Close;
end;


procedure Tmusdet.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(showmal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tmusdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  musdet := nil;
  Action := caFree;
end;

procedure Tmusdet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(showmal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tmusdet.FormActivate(Sender: TObject);
begin
   if(mde=1) then
     FormInitializer1.SearchFocusables:=false
   else
     FormInitializer1.SearchFocusables:=true;
   FormInitializer1.Execute;
end;

end.
