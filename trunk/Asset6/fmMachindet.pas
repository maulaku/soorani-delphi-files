unit fmMachindet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow,
  SetForm, RSqllookup, RSqlButton, RSqlMaskEdit, RSqlEdit, RadForms ;


type
  Tmachindet = class(TRadForm)
    Panel1: TPanel;
    edcountry:TRSqlEdit;
    edmodel:TRSqlEdit;
    edenginno:TRSqlEdit;
    edfactory:TRSqlEdit;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edmdate:TRSqlMaskEdit;
    edcapacity:TRSqlEdit;
    edserial:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    edfactno:TRSqlEdit;
    Label10: TLabel;
    btMal:TRSqlButton;
    dblGoodUp:TRSqlDbLookup;
    btGoodUp:TRSqlButton;
    lbGoodUp: TLabel;
    edGood:TRSqlEdit;
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
  machindet: Tmachindet;

implementation

uses DabDmdle, fmShowMal, UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}


procedure Tmachindet.btokClick(Sender: TObject);
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
         quInsert.Parameters[1].Value:= edcountry.text;
         quInsert.Parameters[2].Value:= edfactory.text;
         quInsert.Parameters[3].Value:= edfactno.text;
         quInsert.Parameters[4].Value:= edenginno.text;
         quInsert.Parameters[5].Value:= edmodel.text;
         quInsert.Parameters[6].Value:= edcapacity.text;
         quInsert.Parameters[7].Value:= edserial.text;
         quInsert.Parameters[8].Value:= edmdate.text;
         quInsert.Parameters[9].Value:= eddesc.text;
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
       DabData.qumachin.Close;
       DabData.qumachin.Open;
       DabData.qumachin.Locate('Goods_Code',TempStr,[locaseinsensitive]);

 end; //case1
  2: begin //1
       bk:=DabData.qumachin.GetBookmark;
       quUpdate.Parameters[0].Value:= edcountry.text;
       quUpdate.Parameters[1].Value:= edfactory.text;
       quUpdate.Parameters[2].Value:= edfactno.text;
       quUpdate.Parameters[3].Value:= edenginno.text;
       quUpdate.Parameters[4].Value:= edmodel.text;
       quUpdate.Parameters[5].Value:= edcapacity.text;
       quUpdate.Parameters[6].Value:= edserial.text;
       quUpdate.Parameters[7].Value:= edmdate.text;
       quUpdate.Parameters[8].Value:= eddesc.text;
       quUpdate.Parameters[9].Value:= DabData.qumachinGoods_code.AsString;
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
       DabData.qumachin.Close;
       DabData.qumachin.Open;
       DabData.qumachin.GotoBookmark(bk);
       DabData.qumachin.FreeBookmark(bk);
       end; //2
 end;//case
   machindet.Close;
end;

procedure Tmachindet.btcaClick(Sender: TObject);
begin
   machindet.Close;
end;


procedure Tmachindet.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(showmal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tmachindet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  machindet := nil;
  Action := caFree;

end;

procedure Tmachindet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   ShowMal.ShowModal ;
   setformColor(showmal);
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;


procedure Tmachindet.FormActivate(Sender: TObject);
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
