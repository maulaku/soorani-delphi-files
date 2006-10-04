unit fmtrdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, SmoothShow,
  SetForm, RSqllookup, RSqlButton, RSQLComboBox, RSqlMaskEdit, RSqlEdit,
  RadForms ;

type
  Ttrdet = class(TRadForm)
    Panel1: TPanel;
    edcno:TRSqlEdit;
    edeno:TRSqlEdit;
    edcountry:TRSqlEdit;
    edcap:TRSqlEdit;
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
    edpno:TRSqlEdit;
    edcolor:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Label10: TLabel;
    Label11: TLabel;
    edmdate:TRSqlMaskEdit;
    eddesc:TRSqlEdit;
    edmod:TRSqlEdit;
    cbType:TRSqlComboBox;
    edfactory:TRSqlEdit;
    Label12: TLabel;
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
  trdet: Ttrdet;

implementation

uses DabDmdle, fmShowMal, UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}


procedure Ttrdet.btokClick(Sender: TObject);
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
         quInsert.Parameters[2].Value:= edcountry.text;
         quInsert.Parameters[3].Value:= edfactory.text;
         quInsert.Parameters[4].Value:= edeno.text;
         quInsert.Parameters[5].Value:= edcno.text;
         quInsert.Parameters[6].Value:= edpno.text;
         quInsert.Parameters[7].Value:= edcolor.text;
         quInsert.Parameters[8].Value:= edmod.text;
         quInsert.Parameters[9].Value:= edcap.text;
         quInsert.Parameters[10].Value:=edmdate.text;
         quInsert.Parameters[11].Value:=eddesc.text;
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
       DabData.qutrans.Close;
       DabData.qutrans.Open;
       DabData.qutrans.Locate('tra_gcode',TempStr,[locaseinsensitive]);

  end; //case1
  2: begin //1
       bk:=DabData.qutrans.GetBookmark;
       quUpdate.Parameters[0].Value:= cbType.ItemIndex;
       quUpdate.Parameters[1].Value:= edcountry.text;
       quUpdate.Parameters[2].Value:= edfactory.text;
       quUpdate.Parameters[3].Value:= edeno.text;
       quUpdate.Parameters[4].Value:= edcno.text;
       quUpdate.Parameters[5].Value:= edpno.text;
       quUpdate.Parameters[6].Value:= edcolor.text;
       quUpdate.Parameters[7].Value:= edmod.text;
       quUpdate.Parameters[8].Value:= edcap.text;
       quUpdate.Parameters[9].Value:= edmdate.text;
       quUpdate.Parameters[10].Value:= eddesc.text;
       quUpdate.Parameters[11].Value:= DabData.qutransTra_gcode.AsString;
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
       DabData.qutrans.Close;
       DabData.qutrans.Open;
       DabData.qutrans.GotoBookmark(bk);
       DabData.qutrans.FreeBookmark(bk);
       end; //2
 end;//case
   trdet.Close;
end;

procedure Ttrdet.btcaClick(Sender: TObject);
begin
   trdet.Close;
end;


procedure Ttrdet.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;


procedure Ttrdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  trdet := nil;
  Action := caFree;
end;
procedure Ttrdet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   setformColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Ttrdet.FormActivate(Sender: TObject);
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
