unit fmstampdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow,
  SetForm, RSqllookup, RSqlButton, RSQLComboBox, RSqlMaskEdit, RSqlEdit,
  RadForms ;

type
  Tstampdet = class(TRadForm)
    Panel1: TPanel;
    edissue:TRSqlEdit;
    edwit:TRSqlEdit;
    edprice:TRSqlEdit;
    edPtype:TRSqlEdit;
    panel2: TPanel;
    btok:TRSqlButton;
    btca:TRSqlButton;
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
    eddesign:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Label10: TLabel;
    Label11: TLabel;
    eddate:TRSqlMaskEdit;
    eddesc:TRSqlEdit;
    cbType:TRSqlComboBox;
    edlen:TRSqlEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cbperf:TRSqlComboBox;
    cbback:TRSqlComboBox;
    cbface:TRSqlComboBox;
    cbqul:TRSqlComboBox;
    btMal:TRSqlButton;
    lbGoodUp: TLabel;
    dblGoodUp:TRSqlDbLookup;
    btGoodUp:TRSqlButton;
    edGood:TRSqlEdit;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure eddateExit(Sender: TObject);
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
  stampdet: Tstampdet;

implementation

uses DabDmdle, fmShowMal, UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}

procedure Tstampdet.btokClick(Sender: TObject);
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
           DabData.ShowPopupMessage(Str2);
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
         quInsert.Parameters[2].Value:= edprice.text;
         quInsert.Parameters[3].Value:= edlen.text;
         quInsert.Parameters[4].Value:= edwit.text;
         quInsert.Parameters[5].Value:= edissue.text;
         quInsert.Parameters[6].Value:= eddesign.text;
         quInsert.Parameters[7].Value:= eddate.text;
         quInsert.Parameters[8].Value:= cbqul.ItemIndex;
         quInsert.Parameters[9].Value:= edPtype.text;
         quInsert.Parameters[10].Value:= cbperf.ItemIndex;
         quInsert.Parameters[11].Value:= cbback.ItemIndex;
         quInsert.Parameters[12].Value:= cbface.ItemIndex;
         quInsert.Parameters[13].Value:= eddesc.text;
         DabData.ADOC.BeginTrans;
         Try
         begin//1
           quInsert.ExecSQL;
           DabData.ADOC.CommitTrans;
         end; //1
         except
           DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
           DabData.ADOC.RollbackTrans;
         end;//try
           TempStr := DabData.quMalClassgoods_code.AsString;
           DabData.quMalClass.Next;
           if TempStr = DabData.quMalClassgoods_code.AsString then ExitWhile := True;
       end;
       mde := 0 ;
       DabData.qustamp.Close;
       DabData.qustamp.Open;
       DabData.qustamp.Locate('Sts_gcode',TempStr,[locaseinsensitive]);
  end; //case1
  2: begin //1
       bk:=DabData.qustamp.GetBookmark;
       quUpdate.Parameters[0].Value:= cbType.ItemIndex;
       quUpdate.Parameters[1].Value:= edprice.text;
       quUpdate.Parameters[2].Value:= edlen.text;
       quUpdate.Parameters[3].Value:= edwit.text;
       quUpdate.Parameters[4].Value:= edissue.text;
       quUpdate.Parameters[5].Value:= eddesign.text;
       quUpdate.Parameters[6].Value:= eddate.text;
       quUpdate.Parameters[7].Value:= cbqul.ItemIndex;
       quUpdate.Parameters[8].Value:= edPtype.text;
       quUpdate.Parameters[9].Value:= cbperf.ItemIndex;
       quUpdate.Parameters[10].Value:=cbback.ItemIndex;
       quUpdate.Parameters[11].Value:= cbface.ItemIndex;
       quUpdate.Parameters[12].Value:= eddesc.text;
       quUpdate.Parameters[13].Value:= DabData.qustampSts_gcode.AsString;
       DabData.ADOC.BeginTrans;
       Try
       begin //2
         quUpdate.ExecSQL;
         DabData.ADOC.CommitTrans;
       end;
       except
         DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
         DabData.ADOC.RollbackTrans;
       end;//try
       mde:=0;
       DabData.qustamp.Close;
       DabData.qustamp.Open;
       DabData.qustamp.GotoBookmark(bk);
       DabData.qustamp.FreeBookmark(bk);
       end; //2
 end;//case
   stampdet.Close;
end;

procedure Tstampdet.btcaClick(Sender: TObject);
begin
   stampdet.Close;
end;

procedure Tstampdet.eddateExit(Sender: TObject);
begin
  if ( not DabData.checkDate(eddate.text)) and (eddate.text <> '  /  /  ') then
  begin
       DabData.ShowPopupMessage(' «—ÌŒ Ê—ÊœÌ €Ì— „⁄ »— «” ');
       eddate.setfocus;
       eddate.text := '  /  /  ';
  end;
end;

procedure Tstampdet.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tstampdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  stampdet := nil;
  Action := caFree;
end;

procedure Tstampdet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tstampdet.FormActivate(Sender: TObject);
begin
   if(mde=1) then
   begin
     FormInitializer1.SearchFocusables:=false;
     FormInitializer1.FieldMode:=fmInsert;
   end
   else
   begin
     FormInitializer1.SearchFocusables:=true;
     FormInitializer1.FieldMode:=fmEdit;
   end;
   FormInitializer1.Execute;
end;

end.
