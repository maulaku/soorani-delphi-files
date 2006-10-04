unit fmdesc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, 
  SetForm, RSqllookup, RSqlButton, RSqlMaskEdit, RSqlEdit, RadForms ;


type
  Tdesc = class(TRadForm)
    Panel1: TPanel;
    edprd:TRSqlEdit;
    edcolor:TRSqlEdit;
    edweight:TRSqlEdit;
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
    edddate:TRSqlMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edPdate:TRSqlMaskEdit;
    eddim:TRSqlEdit;
    edmark:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    quupdate: TADOQuery;
    btMal:TRSqlButton;
    btGoodUp:TRSqlButton;
    lbGoodUp: TLabel;
    edGood:TRSqlEdit;
    dsgood: TDataSource;
    dblgood: TRSqlDbLookup;
    dblGoodUp: TRSqlDbLookup;
    Label6: TLabel;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure btMalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGoodUpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
      mde       :integer;
  end;

var
  desc: Tdesc;

implementation

uses DabDmdle, fmShowMal, UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}


procedure Tdesc.btokClick(Sender: TObject);
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
         quInsert.Parameters[0].Value := DabData.quMalClassgoods_code.AsString;
         quInsert.Parameters[1].Value := edprd.text;
         quInsert.Parameters[2].Value := edloc.text;
         quInsert.Parameters[3].Value := edddate.text;
         quInsert.Parameters[4].Value := edweight.text;
         quInsert.Parameters[5].Value := edcolor.text;
         quInsert.Parameters[6].Value := eddim.text;
         quInsert.Parameters[7].Value := edmark.text;
         quInsert.Parameters[8].Value := edPdate.text;
         quInsert.Parameters[9].Value := eddesc.text;
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
       DabData.quant.Close;
       DabData.quant.Open;
       DabData.quant.Locate('Ant_gcode',TempStr,[locaseinsensitive]);

  end; //case1
  2: begin //1
       bk := DabData.quant.GetBookmark;
       quUpdate.Parameters[0].Value:= edprd.text;
       quUpdate.Parameters[1].Value:= edloc.text;
       quUpdate.Parameters[2].Value:= edddate.text;
       quUpdate.Parameters[3].Value:= edweight.text;
       quUpdate.Parameters[4].Value:= edcolor.text;
       quUpdate.Parameters[5].Value:= eddim.text;
       quUpdate.Parameters[6].Value:= edmark.text;
       quUpdate.Parameters[7].Value:= edPdate.text;
       quUpdate.Parameters[8].Value:= eddesc.text;
       quUpdate.Parameters[9].Value:= DabData.quantAnt_gcode.AsString;
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
       DabData.quant.Close;
       DabData.quant.Open;
       DabData.quant.GotoBookmark(bk);
       DabData.quant.FreeBookmark(bk);
       end; //2
 end;//case
   desc.Close;
end;

procedure Tdesc.btcaClick(Sender: TObject);
begin
   desc.Close;
end;



procedure Tdesc.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tdesc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  desc := nil;
  Action := caFree;
end;

procedure Tdesc.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tdesc.FormShow(Sender: TObject);
begin
   if(mde=1) then
     FormInitializer1.SearchFocusables:=false
   else
     FormInitializer1.SearchFocusables:=true;
   FormInitializer1.Execute;
end;

procedure Tdesc.FormActivate(Sender: TObject);
begin
   if(mde=1) then
     FormInitializer1.SearchFocusables:=false
   else
     FormInitializer1.SearchFocusables:=true;
   FormInitializer1.Execute;
end;

end.
