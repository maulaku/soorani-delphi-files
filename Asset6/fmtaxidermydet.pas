unit fmtaxidermydet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow, SetForm,
  RSqllookup, RSqlButton, RSqlEdit, RadForms;

type
  Ttaxidermydet = class(TRadForm)
    Panel1: TPanel;
    edtype:TRSqlEdit;
    edloc:TRSqlEdit;
    edfossil:TRSqlEdit;
    edskeleton:TRSqlEdit;
    eddesc:TRSqlEdit;
    panel2: TPanel;
    btok:TRSqlButton;
    btca:TRSqlButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    Label9: TLabel;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    edcase:TRSqlEdit;
    Button1:TRSqlButton;
    btGoodUp:TRSqlButton;
    dblGoodUp:TRSqlDbLookup;
    lbGoodUp: TLabel;
    edGood:TRSqlEdit;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btGoodUpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      mde       :integer;
  end;

var
  taxidermydet: Ttaxidermydet;

implementation

uses DabDmdle, fmdesc, fmShowMal, UCommon, UFmShMsg, UUserMsg;

{$R *.DFM}

procedure Ttaxidermydet.btokClick(Sender: TObject);
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
         quInsert.Parameters[1].Value:= edtype.text;
         quInsert.Parameters[2].Value:= edskeleton.text;
         quInsert.Parameters[3].Value:= edcase.text;
         quInsert.Parameters[4].Value:= edfossil.text;
         quInsert.Parameters[5].Value:= edloc.text;
         quInsert.Parameters[6].Value:= eddesc.text;
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
       DabData.qutaxidermy.Close;
       DabData.qutaxidermy.Open;
       DabData.qutaxidermy.Locate('Goods_Code',TempStr,[locaseinsensitive]);

  end; //case1
  2: begin //1
       bk:=DabData.qutaxidermy.GetBookmark;
       quUpdate.Parameters[0].Value:= edtype.text;
       quUpdate.Parameters[1].Value:= edskeleton.text;
       quUpdate.Parameters[2].Value:= edcase.text;
       quUpdate.Parameters[3].Value:= edfossil.text;
       quUpdate.Parameters[4].Value:= edloc.text;
       quUpdate.Parameters[5].Value:= eddesc.text;
       quUpdate.Parameters[6].Value:= DabData.qutaxidermygoods_code.AsString ;
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
       DabData.qutaxidermy.Close;
       DabData.qutaxidermy.Open;
       DabData.qutaxidermy.GotoBookmark(bk);
       DabData.qutaxidermy.FreeBookmark(bk);
       end; //2
 end;//case
   taxidermydet.Close;
end;

procedure Ttaxidermydet.btcaClick(Sender: TObject);
begin
   taxidermydet.Close;
end;


procedure Ttaxidermydet.Button1Click(Sender: TObject);
begin
   ShowMal  := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal();
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;


procedure Ttaxidermydet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(showmal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Ttaxidermydet.FormActivate(Sender: TObject);
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
