unit fmbookdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask,define, 
  SetForm, RSqllookup, RSqlButton, RSQLComboBox, RSqlMaskEdit, RSqlEdit,
  RadForms ;

type
  Tbookdet = class(TRadForm)
    Panel1: TPanel;
    ednum:TRSqlEdit;
    edtrans:TRSqlEdit;
    edaut:TRSqlEdit;
    edcname:TRSqlEdit;
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
    Label8: TLabel;
    Label9: TLabel;
    eddim:TRSqlEdit;
    edptype:TRSqlEdit;
    quinsert: TADOQuery;
    Panel3: TPanel;
    lbctg: TLabel;
    dblgood:TRSqlDbLookup;
    dsgood: TDataSource;
    quupdate: TADOQuery;
    Label10: TLabel;
    eddate:TRSqlMaskEdit;
    eddesc:TRSqlEdit;
    Label12: TLabel;
    edpubl:TRSqlEdit;
    Label14: TLabel;
    edname:TRSqlEdit;
    cbCtype:TRSqlComboBox;
    cbChtype:TRSqlComboBox;
    btMal:TRSqlButton;
    btGoodUp:TRSqlButton;
    dblGoodUp:TRSqlDbLookup;
    lbGoodUp: TLabel;
    edGood:TRSqlEdit;
    Label7: TLabel;
    Label11: TLabel;
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
  bookdet: Tbookdet;

implementation

uses DabDmdle, fmShowMal, UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}
procedure Tbookdet.btokClick(Sender: TObject);
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
         quInsert.Parameters[0].Value  := DabData.quMalClassgoods_code.AsString;
         quInsert.Parameters[1].Value  := edname.text;
         quInsert.Parameters[2].Value  := edaut.text;
         quInsert.Parameters[3].Value  := eddate.text;
         quInsert.Parameters[4].Value  := edtrans.text;
         quInsert.Parameters[5].Value  := edpubl.text;
         quInsert.Parameters[6].Value  := ednum.text;
         quInsert.Parameters[7].Value  := eddim.text;
         quInsert.Parameters[8].Value  := edptype.text;
         quInsert.Parameters[9].Value  := cbctype.itemindex;
         quInsert.Parameters[10].Value := cbchtype.itemindex;
         quInsert.Parameters[11].Value := edcname.text;
         quInsert.Parameters[12].Value := eddesc.text;
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
       DabData.qubook.Close;
       DabData.qubook.Open;
       DabData.qubook.Locate('bos_gcode',TempStr,[locaseinsensitive]);

 end; //case1
  2: begin //1
       bk:=DabData.qubook.GetBookmark;
       quUpdate.Parameters[0].Value:= edname.text;
       quUpdate.Parameters[1].Value:= edaut.text;
       quUpdate.Parameters[2].Value:= eddate.text;
       quUpdate.Parameters[3].Value:= edtrans.text;
       quUpdate.Parameters[4].Value:= edpubl.text;
       quUpdate.Parameters[5].Value:= ednum.text;
       quUpdate.Parameters[6].Value:= eddim.text;
       quUpdate.Parameters[7].Value:= edptype.text;
       quUpdate.Parameters[8].Value:= cbctype.itemindex;
       quUpdate.Parameters[9].Value:= cbchtype.itemindex;
       quUpdate.Parameters[10].Value:= edcname.text;
       quUpdate.Parameters[11].Value:=eddesc.text;
       quUpdate.Parameters[12].Value:= DabData.qubookBos_gcode.AsString;
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
       DabData.qubook.Close;
       DabData.qubook.Open;
       DabData.qubook.GotoBookmark(bk);
       DabData.qubook.FreeBookmark(bk);
       end; //2
 end;//case
   bookdet.Close;
end;

procedure Tbookdet.btcaClick(Sender: TObject);
begin
   bookdet.Close;
end;


procedure Tbookdet.btMalClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   SetFormColor(ShowMal);
   ShowMal.ShowModal ;
   if ShowMal.ModalResult = Mrok
       then  dblgood.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;


procedure Tbookdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bookdet := nil;
  Action := caFree;
end;
procedure Tbookdet.btGoodUpClick(Sender: TObject);
begin
   ShowMal := TShowMal.create(Application);
   ShowMal.ShowModal ;
   SetFormColor(ShowMal);
   if ShowMal.ModalResult = Mrok
       then  dblgoodUp.KeyValue  := DabData.quMalClassgoods_code.AsString;
   ShowMal.Free;
end;

procedure Tbookdet.FormActivate(Sender: TObject);
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
