unit fminconsdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow,
  SetForm, RSqllookup, RSqlButton, RSqlEdit,RadForms ;

type
  Tinconsdet = class(TRadForm)
    Panel1: TPanel;
    edcolor:TRSqlEdit;
    eddim:TRSqlEdit;
    edunit:TRSqlEdit;
    panel2: TPanel;
    btok:TRSqlButton;
    btca:TRSqlButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edmodel:TRSqlEdit;
    edserial:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Label11: TLabel;
    eddesc:TRSqlEdit;
    edamper:TRSqlEdit;
    edweight:TRSqlEdit;
    Label12: TLabel;
    edcountry:TRSqlEdit;
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
  inconsdet: Tinconsdet;

implementation

uses DabDmdle, fmShowMal, UCommon, UFmShMsg, UUserMsg;

{$R *.DFM}

procedure Tinconsdet.btokClick(Sender: TObject);
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
         quInsert.Parameters[0].Value:= DabData.quMalClassgoods_code.AsString;
         quInsert.Parameters[1].Value:= edcountry.text;
         quInsert.Parameters[2].Value:= edunit.text;
         quInsert.Parameters[3].Value:= edweight.text;
         quInsert.Parameters[4].Value:= eddim.text;
         quInsert.Parameters[5].Value:= edcolor.text;
         quInsert.Parameters[6].Value:= edmodel.text;
         quInsert.Parameters[7].Value:= edserial.text;
         quInsert.Parameters[8].Value:= edamper.text;
         quInsert.Parameters[9].Value:= eddesc.text;
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
       DabData.quincon.Close;
       DabData.quincon.Open;
       DabData.quincon.Locate('Goods_Code',TempStr,[locaseinsensitive]);

 end; //case1
  2: begin //1
       bk:= DabData.quincon .GetBookmark;
       quUpdate.Parameters[0].Value:= edcountry.text;
       quUpdate.Parameters[1].Value:= edunit.text;
       quUpdate.Parameters[2].Value:= edweight.text;
       quUpdate.Parameters[3].Value:= eddim.text;
       quUpdate.Parameters[4].Value:= edcolor.text;
       quUpdate.Parameters[5].Value:= edmodel.text;
       quUpdate.Parameters[6].Value:= edserial.text;
       quUpdate.Parameters[7].Value:= edamper.text;
       quUpdate.Parameters[8].Value:= eddesc.text;
       quUpdate.Parameters[9].Value:= edGood.Text ;
       DabData.ADOC.BeginTrans;
       Try
       begin //2
         quUpdate.ExecSQL;
         if quUpdate.RowsAffected>0 then
            DabData.ShowPopupMessage('⁄„·Ì«  »« „Ê›ﬁÌ  «‰Ã«„ ê—› ')
         else
            DabData.ShowPopupMessage('ÂÌç ⁄„·Ì «‰Ã«„ ê—› ');
         DabData.ADOC.CommitTrans;
       end;
       except
         DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
         DabData.ADOC.RollbackTrans;
       end;//try
       mde:=0;
       DabData.quincon.Close;
       DabData.quincon.Open;
       DabData.quincon .GotoBookmark(bk);
       DabData.quincon.FreeBookmark(bk);
       end; //2
 end;//case
   inconsdet.Close;
end;

procedure Tinconsdet.btcaClick(Sender: TObject);
begin
   inconsdet.Close;
end;

procedure Tinconsdet.Button1Click(Sender: TObject);
begin
   ShowMal  := TShowMal.create(Application);
   ShowMal.ShowModal();
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tinconsdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure Tinconsdet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tinconsdet.FormActivate(Sender: TObject);
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
