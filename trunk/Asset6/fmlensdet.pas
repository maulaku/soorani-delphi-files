unit fmlensdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow,
  SetForm, RSqllookup, RSqlButton, RSqlMaskEdit, RSqlEdit, RadForms;

type
  Tlensdet = class(TRadForm)
    Panel1: TPanel;
    edname:TRSqlEdit;
    edserial:TRSqlEdit;
    edpower:TRSqlEdit;
    edno:TRSqlEdit;
    eddesc:TRSqlEdit;
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
    eddate:TRSqlMaskEdit;
    Label9: TLabel;
    edmodel:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Button1:TRSqlButton;
    btGoodUp:TRSqlButton;
    dblGoodUp:TRSqlDbLookup;
    lbGoodUp: TLabel;
    edGood:TRSqlEdit;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  lensdet: Tlensdet;

implementation

uses DabDmdle, fmShowMal, UCommon, UFmShMsg, UUserMsg;

{$R *.DFM}

procedure Tlensdet.btokClick(Sender: TObject);
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
         bk:=DabData.qulens.GetBookmark;
         quInsert.Parameters[0].Value:= DabData.quMalClassgoods_code.AsString;
         quInsert.Parameters[1].Value:= edname.text;
         quInsert.Parameters[2].Value:= edno.text;
         quInsert.Parameters[3].Value:= edmodel.text;
         quInsert.Parameters[4].Value:= edpower.text;
         quInsert.Parameters[5].Value:= edserial.text;
         quInsert.Parameters[6].Value:= eddate.text;
         quInsert.Parameters[7].Value:= eddesc.text;
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
       DabData.qulens.Close;
       DabData.qulens.Open;
       DabData.qulens.Locate('Goods_Code',TempStr,[locaseinsensitive]);

  end; //case1
  2: begin //1
       bk:=DabData.qulens.GetBookmark;
       quUpdate.Parameters[0].Value:= edname.text;
       quUpdate.Parameters[1].Value:= edno.text;
       quUpdate.Parameters[2].Value:= edmodel.text;
       quUpdate.Parameters[3].Value:= edpower.text;
       quUpdate.Parameters[4].Value:= edserial.text;
       quUpdate.Parameters[5].Value:= eddate.text;
       quUpdate.Parameters[6].Value:= eddesc.text;
       quUpdate.Parameters[7].Value:= DabData.qulensgoods_code.AsString;
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
       DabData.qulens.Close;
       DabData.qulens.Open;
       DabData.qulens.GotoBookmark(bk);
       DabData.qulens.FreeBookmark(bk);
       end; //2
 end;//case
   lensdet.Close;
end;

procedure Tlensdet.btcaClick(Sender: TObject);
begin
   lensdet.Close;
end;


procedure Tlensdet.Button1Click(Sender: TObject);
begin
   ShowMal  := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal();
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;


procedure Tlensdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree ;

end;
procedure Tlensdet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tlensdet.FormActivate(Sender: TObject);
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
