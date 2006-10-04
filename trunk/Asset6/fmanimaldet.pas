 unit fmanimaldet;
                   
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define,
  SetForm, RSqllookup, RSqlButton, RSQLComboBox, RSqlEdit,RadForms ;


type
  Tanimaldet = class(TRadForm)
    Panel1: TPanel;
    edcolor:TRSqlEdit;
    edmark:TRSqlEdit;
    panel2: TPanel;
    btok:TRSqlButton;
    btca:TRSqlButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edheight:TRSqlEdit;
    edage:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Label11: TLabel;
    eddesc:TRSqlEdit;
    edorg:TRSqlEdit;
    Label12: TLabel;
    cbsex:TRSqlComboBox;
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
  animaldet: Tanimaldet;

implementation

uses DabDmdle, fmShowMal, UCommon, UFmShMsg, UUserMsg;

{$R *.DFM}


procedure Tanimaldet.btokClick(Sender: TObject);
var bk:TBookmark;
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
         bk:= DabData.quincon .GetBookmark;       
         quInsert.Parameters[0].Value:= DabData.quMalClassgoods_code.AsString;
         quInsert.Parameters[1].Value:= cbsex.ItemIndex;
         quInsert.Parameters[2].Value:= edorg.text;
         quInsert.Parameters[3].Value:= edmark.text;
         quInsert.Parameters[4].Value:= edcolor.text;
         quInsert.Parameters[5].Value:= edheight.text;
         quInsert.Parameters[6].Value:= edage.text;
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
       DabData.quanimal.Close;
       DabData.quanimal.Open;
       DabData.quanimal.Locate('Goods_Code',TempStr,[locaseinsensitive]);

  end; //case1
  2: begin //1
       bk:=DabData.quanimal.GetBookmark;
       quUpdate.Parameters[0].Value:= cbsex.ItemIndex;
       quUpdate.Parameters[1].Value:= edorg.text;
       quUpdate.Parameters[2].Value:= edmark.text;
       quUpdate.Parameters[3].Value:= edcolor.text;
       quUpdate.Parameters[4].Value:= edheight.text;
       quUpdate.Parameters[5].Value:= edage.text;
       quUpdate.Parameters[6].Value:= eddesc.text;
       quUpdate.Parameters[7].Value:= DabData.quanimalGoods_code.AsString ;
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
       DabData.quanimal.Close;
       DabData.quanimal.Open;
       DabData.quanimal .GotoBookmark(bk);
       DabData.quanimal .FreeBookmark(bk);

   end; //2
 end;//case
   animaldet.Close;
end;

procedure Tanimaldet.btcaClick(Sender: TObject);
begin
   animaldet.Close;
end;

procedure Tanimaldet.Button1Click(Sender: TObject);
begin
   ShowMal  := TShowMal.create(Application);
   SetFormColor(ShowMal);
   ShowMal.ShowModal();
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tanimaldet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree ;
end;

procedure Tanimaldet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   SetFormColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tanimaldet.FormActivate(Sender: TObject);
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
