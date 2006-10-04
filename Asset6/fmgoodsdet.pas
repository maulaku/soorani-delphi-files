unit fmgoodsdet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, ADODB, Mask, RSqlEdit, RSQLComboBox,
  RSqlButton, RSqllookup, SetForm, SmoothShow,RadForms, Buttons,
  RSqlMaskEdit,Variants;

type
  Tgoodsdet = class(TRadForm)
    Panel1: TPanel;
    Panel3: TPanel;
    panel2: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
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
    ADOQuery2: TADOQuery;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    SmallintField2: TSmallintField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    Label2: TLabel;
    Label3: TLabel;
    quInsertdet: TADOQuery;
    quUpdatedet: TADOQuery;
    Label4: TLabel;
    edLimit: TRSqlEdit;
    Label10: TLabel;
    edCode: TRSqlEdit;
    edname: TRSqlEdit;
    ediCode: TRSqlEdit;
    edclass: TRSqlEdit;
    btok: TRSqlButton;
    btcancel: TRSqlButton;
    dblUnit: TRSqlDbLookup;
    dsunit: TDataSource;
    dblPreChapter: TRSqlDbLookup;
    dsassign: TDataSource;
    dblPreSubChapter: TRSqlDbLookup;
    dblPrePartChapter: TRSqlDbLookup;
    Label11: TLabel;
    Label12: TLabel;
    quscha: TADOQuery;
    dsscha: TDataSource;
    quschaSBA_assign: TStringField;
    quschaSBA_Date: TStringField;
    edInventory: TRSqlEdit;
    edPoint: TRSqlEdit;
    QuPreChapter: TADOQuery;
    QuPreSubChapter: TADOQuery;
    QuPrePartChapter: TADOQuery;
    dsPreChapter: TDataSource;
    dsPreSubChapter: TDataSource;
    dsPrePartChapter: TDataSource;
    QuPreChapterPC_Desc: TStringField;
    eddesc: TRSqlEdit;
    Label13: TLabel;
    Label14: TLabel;
    quGetMax: TADOQuery;
    quGetMaxmax: TSmallintField;
    edItemDesc: TRSqlEdit;
    QuPreChapterPC_Code: TStringField;
    QuPreSubChapterPS_Code: TStringField;
    QuPreSubChapterPS_Desc: TStringField;
    QuPreSubChapterPC_Code: TStringField;
    QuPrePartChapterPPC_Code: TStringField;
    QuPrePartChapterPPC_Desc: TStringField;
    QuPrePartChapterPS_Code: TStringField;
    dblDetail: TRSqlDbLookup;
    dblMaster: TRSqlDbLookup;
    spGetItem_code: TADOStoredProc;
    sbMaster: TSpeedButton;
    sbDetail: TSpeedButton;
    Label15: TLabel;
    edPos: TRSqlMaskEdit;
    cbClassType: TRSqlDbLookup;
    procedure btokClick(Sender: TObject);
    procedure btcaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// procedure cbClassTypeKeyPress(Sender: TObject; var Key: Char);
    procedure dblPreChapterClick(Sender: TObject);
    procedure btcancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dblPreSubChapterClick(Sender: TObject);
    procedure dblMasterClick(Sender: TObject);
    procedure dblDetailClick(Sender: TObject);
    procedure sbMasterClick(Sender: TObject);
    procedure sbDetailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      ParentDetail: String;
      mde       :integer;
      CodClass : integer;
      com:string;
      CodItem  : string[8];
      function CheckNoDuplicategoods(tempStr : string):Boolean;
    function PassPreConditiongoods: Boolean;
    function CheckNoDuplicatedet(tempStr : string):Boolean;
    function PassPreConditiondet: Boolean;
  end;

var
  goodsdet: Tgoodsdet;
  cod  : integer;
  TempStr1,TempStr2:String;
implementation

uses DabDmdle, UCommon, fmMfrm, fmMasterGroups, fmDetailGroups;

{$R *.DFM}
procedure Tgoodsdet.btokClick(Sender: TObject);
var
  mark:TBookmark;
begin
  case mde of
  1: begin
    //   CodClass:=quGetMaxmax.AsInteger;
       if not PassPreConditiongoods then
       begin
       edname.SetFocus;
       exit;
       end;
     //  if (DabData.qugoodsKar.RecordCount = 0)
     //     then  CodClass := 1;
       quinsert.parameters[0].value := StrtoInt(edCode.text);
       quinsert.parameters[1].value :=eddesc.Text;
       quinsert.parameters[2].value := edname.text;
       quinsert.parameters[3].value := cbClassType.KeyValue;
       quinsert.parameters[4].value :=dblprechapter.KeyValue;
       quinsert.parameters[5].value :=dblpresubchapter.KeyValue;
       quinsert.parameters[6].value :=dblprepartchapter.KeyValue;
       DabData.ADOC.BeginTrans;
       try
       begin
         quinsert.ExecSql;
         DabData.quGoods.close;
         DabData.quGoods.Open;
         DabData.quGoods.Last;
         mde:=0;
         DabData.ADOC.CommitTrans;
       end;
       except
         DabData.ShowPopupMessage ('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
         DabData.ADOC.RollbackTrans;
       end; //exception..
       panel1.visible := false;
  end;      //end 1
  2: begin
       com:=inttostr(DabData.quGoodsClass_Code.AsInteger);
     {  if not passpreconditiongoods then
       begin
       edname.SetFocus;
       exit;
       end; }
       if ( DabData.quGoods.RecordCount <> 0 ) then
       begin
         mark:= DabData.quGoods.GetBookmark;
         quUpdate.parameters[0].value := eddesc.text;
         quUpdate.parameters[1].value := edname.text;
         quUpdate.parameters[2].value :=cbClassType.KeyValue;
         quUpdate.parameters[3].value :=dblprechapter.KeyValue;
         quUpdate.Parameters[4].Value:=dblpresubchapter.KeyValue;
         quUpdate.Parameters[5].Value:=dblprepartchapter.KeyValue;
         quUpdate.Parameters[6].Value:=strtoint(edCode.Text);
         DabData.ADOC.BeginTrans;
         try
         begin
           quUpdate.ExecSql;
           DabData.ADOC.CommitTrans;
           mde:=0;
           DabData.quGoods.close;
           DabData.quGoods.Open;
           DabData.quGoods.GotoBookmark(mark);
           DabData.quGoods.FreeBookmark(mark);
         end;
         except
           DabData.ShowPopupMessage('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
           DabData.ADOC.RollbackTrans;
         end;
       end;  //if..
       mde:=0;
     end; //2
  3: begin
  //    com:=DabData.quDetKarItem_Code.AsString;
      if not PassPreConditiondet then
      begin
      edclass.SetFocus;
      exit;
      end;
      DabData.quDetKar.GetBookmark;
      Dabdata.quItemKar.close;
      DabData.quproductItem.close;
      Dabdata.quproductItem.open;
      Dabdata.quItemKar.open;
       { if (DabData.quproductItem.RecordCount >0) then
         begin
         quGetMaxDet.Close;
         quGetMaxDet.Open;
         cod:=quGetMaxDetmax.AsInteger;
         cod:=cod+1;
         end
        else
         cod:=1;
        if(DabData.quDetKar.RecordCount>0) then
         Cod:=Cod+1
        else
         begin
          TempStr1:=InttoStr(DabData.quGoodsclass_code.AsInteger);
          Cod:=StrtoInt(TempStr1+'000000');
         end;    }
        quInsertdet.Parameters[0].Value:= edclass.text;
        quInsertdet.Parameters[1].Value:=DabData.quGoodsclass_code.asinteger;
        quInsertdet.Parameters[2].Value:=edItemDesc.Text;
        quInsertdet.Parameters[3].Value:=dblUnit.keyvalue;
        quInsertdet.Parameters[4].Value:=edinventory.text;
        if (edPoint.text<>'') then
         quInsertdet.Parameters[5].value:=edpoint.text;
        if (edLimit.Text<>'') then
         quInsertdet.Parameters[6].value:=edlimit.text;
        DabData.ADOC.BeginTrans;
        quInsertdet.Parameters[7].Value:=dblMaster.KeyValue;
        quInsertdet.Parameters[8].Value:=dblDetail.KeyValue;
        quInsertdet.Parameters[9].Value:=edPos.Text;
        Try
        begin//1
           quInsertdet.ExecSQL;
           DabData.ADOC.CommitTrans;
        end; //1
        except
           DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
           DabData.ADOC.RollbackTrans;
        end;//try
        mde:=0;
        DabData.quDetKar.Close;
        DabData.quDetKar.Open;
        DabData.quDetKar.last;
        DabData.quDetKar.Locate('item_code',ediCode.Text,[loPartialKey])
      end; //end3
  4: begin
       com:=edCode.Text;
       mark := DabData.quDetKar.GetBookmark;
      { if not passpreconditiondet then
       begin
       edclass.SetFocus;
       exit;
       end; }
       quUpdatedet.Parameters[0].Value := edclass.text;
       quUpdatedet.Parameters[1].Value :=DabData.quGoodsclass_code.asinteger;
       quUpdatedet.Parameters[2].Value :=edItemdesc.text;
       quUpdatedet.Parameters[3].Value :=dblUnit.KeyValue;
       quUpdatedet.Parameters[4].Value :=edinventory.text;
       if (edPoint.Text<>'') then
        quUpdatedet.Parameters[5].Value :=edpoint.text;
       if (edLimit.Text<>'') then
        quUpdatedet.Parameters[6].Value := edlimit.text;
       quUpdatedet.Parameters[7].Value :=edPos.Text;
       quUpdatedet.Parameters[8].Value :=DabData.quDetKaritem_code.Value;
       DabData.ADOC.BeginTrans;
       Try
       begin
         quUpdatedet.ExecSQL;
         DabData.ADOC.CommitTrans;
       end;
       except
         DabData.ShowPopupMessage('.·ÿ›«" œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
         DabData.ADOC.RollbackTrans;
       end;
       mde:=0;
       DabData.quDetKar.Close;
       DabData.quDetKar.Open;
       DabData.quDetKar.GotoBookmark(mark);
       DabData.quDetKar.FreeBookmark(mark);
 end;
 end;
   goodsdet.Close;
end;

procedure Tgoodsdet.btcaClick(Sender: TObject);
begin
   goodsdet.Close;
end;
procedure Tgoodsdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //goodsdet := nil;
  Action := caFree;
end;
procedure Tgoodsdet.dblPreChapterClick(Sender: TObject);
begin
dblPreSubChapter.KeyValue:=null;
dblPrePartChapter.KeyValue:=null;
dblPreSubChapter.Enabled:=true;
dblPrePartChapter.Enabled:=true;
quPreSubChapter.close;
quPreSubChapter.Parameters[0].Value:=dblPreChapter.KeyValue;
quPreSubChapter.Open;
end;

procedure Tgoodsdet.btcancelClick(Sender: TObject);
begin
goodsdet.Close;
end;

function Tgoodsdet.CheckNoDuplicategoods(tempStr : string):Boolean;
var  i :integer;
     StText,StTableField :String;
 begin
   if DabData.quGoods.RecordCount = 0 then CheckNoDuplicategoods := True
   else
   begin
      DabData.quGoods.First;
      StText := DabData.DelSpace(tempStr);
      for i:=1 to DabData.quGoods.RecordCount do
      begin
         StTableField := DabData.DelSpace(DabData.quGoodsclass_name.AsString);
         if (StText = StTableField) and ((mde<>2) or (DabData.quDetKarItem_Code.AsString <> com)) then
        begin
            CheckNoDuplicategoods := False;
            exit;
         end;
            DabData.quGoods.Next;
      end;
      CheckNoDuplicategoods := True;
  end;

end;

function Tgoodsdet.PassPreConditiongoods: Boolean;
begin
  DabData.quGoods.DisableControls;
  PassPreConditiongoods := True;
  if not(CheckNoDuplicategoods(edname.text)) then
  begin
   DabData.ShowPopupMessage('!⁄‰Ê«‰  ﬂ—«—Ì «” ');
   PassPreConditiongoods := False;
  end;
  DabData.quGoods.EnableControls;
end;
 function Tgoodsdet.CheckNoDuplicatedet(tempStr : string):Boolean;
var  i :integer;
     StText,StTableField :String;
 begin
   if DabData.quDetKar.RecordCount = 0 then CheckNoDuplicatedet := True
   else
   begin
      DabData.quDetKar.First;
      StText := DabData.DelSpace(tempStr);
      for i:=1 to DabData.quDetKar.RecordCount do
      begin
         StTableField := DabData.DelSpace(DabData.quDetKarItem_Name.AsString);
         if (StText = StTableField)and
          (not(mde=4)or
             not(DabData.quDetKarItem_Code.AsString= com)) then
        begin
           if Copy(DabData.quDetKarItem_Code.AsString,1,6)=Copy(ediCode.Text,1,6) then
           begin
              CheckNoDuplicatedet := False;
              exit;
           end;
         end;
            DabData.quDetKar.Next;
      end;
      CheckNoDuplicatedet := True;
  end;
end;
function Tgoodsdet.PassPreConditiondet: Boolean;
begin
  DabData.quDetKar.DisableControls;
  PassPreConditiondet := True;
  if not(CheckNoDuplicatedet(edclass.text)) then
  begin
   DabData.ShowPopupMessage('!⁄‰Ê«‰  ﬂ—«—Ì «” ');
   PassPreConditiondet := False;
  end;
  DabData.quDetKar.EnableControls;
end;
procedure Tgoodsdet.FormShow(Sender: TObject);
begin
 DabData.quCat.Close;
 DabData.quCat.Parameters[0].Value:='Goods_Class';
 DabData.quCat.Parameters[1].Value:='Class_Type';
 DabData.quCat.Open;
 quGetMax.Close;
 quGetMax.Open;
 quPreChapter.close;
 quPreChapter.open;
 quPreSubChapter.close;
 quPreSubChapter.Parameters[0].Value:=quprechapterpc_code.AsInteger;
 qupresubchapter.open;
 quPrePartChapter.close;
 quPrePartChapter.Parameters[0].value:=qupresubchapterpc_code.AsInteger;
 quPrePartChapter.Parameters[1].Value:=qupresubchapterps_code.AsInteger;
 quPrePartChapter.Open;
 //set Detail
// if(DabData.quDetKar.RecordCount>0) then
//    begin
  DabData.quMasterGroups.Close;
  DabData.quMasterGroups.Parameters[0].Value:=DabData.quGoodsclass_code.AsInteger;
  DabData.quMasterGroups.Open;
//    end
 //set Master
  if (DabData.quGoods.RecordCount = 0) then
     edCode.text:=InttoStr(1)
  else
     edCode.Text:=InttoStr(quGetMaxmax.AsInteger+1);
end;

procedure Tgoodsdet.dblPreSubChapterClick(Sender: TObject);
begin
quPrePartChapter.close;
quPrePartChapter.Parameters[0].Value:=dblPreChapter.KeyValue;
quPrePartChapter.Parameters[1].Value:=dblPreSubChapter.KeyValue;
quPrePartChapter.Open;
end;

procedure Tgoodsdet.dblMasterClick(Sender: TObject);
begin
 DabData.quDetailGroups.Close;
 DabData.quDetailGroups.Parameters[0].Value:=DabData.quGoodsclass_code.AsInteger;
 DabData.quDetailGroups.Parameters[1].Value:=DabData.quMasterGroupsPk_MasterGroup.AsInteger;
 DabData.quDetailGroups.Open;
end;

procedure Tgoodsdet.dblDetailClick(Sender: TObject);
begin
  if mde=3  then
  begin
    spGetItem_code.Parameters[1].Value:=DabData.quDetailGroupsClass_Code.Value;
    spGetItem_code.Parameters[2].Value:=DabData.quDetailGroupsPK_MasterGroup.Value;
    spGetItem_code.Parameters[3].Value:=DabData.quDetailGroupsPK_DetailGroup.Value;
    spGetItem_code.ExecProc;
    ediCode.Text:=VarToStr(spGetItem_code.Parameters[5].Value);
  end;
end;

procedure Tgoodsdet.sbMasterClick(Sender: TObject);
begin
  MFrm.RunForm(TMasterGroups,nil,MasterGroups);
end;

procedure Tgoodsdet.sbDetailClick(Sender: TObject);
begin
  MFrm.RunForm(TDetailGroups,nil,MasterGroups);
end;

end.
