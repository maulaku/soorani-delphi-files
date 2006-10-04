unit fmtextiledet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow,
   SetForm, RSqllookup, RSqlButton, RSQLComboBox, RSqlMaskEdit,
  RSqlEdit,RadForms;

type
  Ttextiledet = class(TRadForm)
    Panel1: TPanel;
    edlen:TRSqlEdit;
    edmark:TRSqlEdit;
    edloc:TRSqlEdit;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edwid:TRSqlEdit;
    edbcolor:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    Label11: TLabel;
    edmap:TRSqlEdit;
    edcolor:TRSqlEdit;
    cbtype:TRSqlComboBox;
    quupdate: TADOQuery;
    btMal:TRSqlButton;
    btGoodUp:TRSqlButton;
    dblGoodUp:TRSqlDbLookup;
    lbGoodUp: TLabel;
    edGood:TRSqlEdit;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure btMalClick(Sender: TObject);
    procedure btGoodUpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      mde       :integer;
  end;

var
  textiledet: Ttextiledet;

implementation

uses DabDmdle, fmShowMal, UCommon, UFmShMsg, UUserMsg;

{$R *.DFM}


procedure Ttextiledet.btokClick(Sender: TObject);
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
         quInsert.Parameters[1].Value:= cbtype.ItemIndex;
         quInsert.Parameters[2].Value:= edloc.text;
         quInsert.Parameters[3].Value:= edmark.text;
         quInsert.Parameters[4].Value:= eddate.text;
         quInsert.Parameters[5].Value:= edlen.text;
         quInsert.Parameters[6].Value:= edwid.text;
         quInsert.Parameters[7].Value:= edbcolor.text;
         quInsert.Parameters[8].Value:= edcolor.text;
         quInsert.Parameters[9].Value:= eddesc.text;
         quInsert.Parameters[10].Value:= edmap.text;
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
       DabData.qutextile.Close;
       DabData.qutextile.Open;
       DabData.qutextile.Locate('Goods_Code',TempStr,[locaseinsensitive]);

 end; //case1
  2: begin //1
       bk:=DabData.qutextile.GetBookmark;
       quUpdate.Parameters[0].Value:= cbtype.ItemIndex;
       quUpdate.Parameters[1].Value:= edloc.text;
       quUpdate.Parameters[2].Value:= edmark.text;
       quUpdate.Parameters[3].Value:= eddate.text;
       quUpdate.Parameters[4].Value:= edlen.text;
       quUpdate.Parameters[5].Value:= edwid.text;
       quUpdate.Parameters[6].Value:= edbcolor.text;
       quUpdate.Parameters[7].Value:= edcolor.text;
       quUpdate.Parameters[8].Value:= eddesc.text;
       quUpdate.Parameters[9].Value:= edmap.text;
       quUpdate.Parameters[10].Value:= DabData.qutextilegoods_code.AsString;
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
       DabData.qutextile.Close;
       DabData.qutextile.Open;
       DabData.qutextile.GotoBookmark(bk);
       DabData.qutextile.FreeBookmark(bk);
       end; //2
 end;//case
   textiledet.Close;
end;

procedure Ttextiledet.btcaClick(Sender: TObject);
begin
   textiledet.Close;
end;


procedure Ttextiledet.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;
procedure Ttextiledet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  textiledet := nil;
  Action := caFree;
end;
procedure Ttextiledet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Ttextiledet.FormActivate(Sender: TObject);
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
