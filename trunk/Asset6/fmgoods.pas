unit fmgoods;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, ExtCtrls, Grids, DBGrids,define, ADODB, DBCtrls , Comobj,
  SmoothShow,Setform,RadForms,Variants;

type
  Tgoods = class(TRadForm)
    dsgoods: TDataSource;
    dsdet: TDataSource;
    quDelete: TADOQuery;
    qudeletedet: TADOQuery;
    quCascadeDelete: TADOQuery;
    grItem: TDBGrid;
    QuPreChapter: TADOQuery;
    dsPreChapter: TDataSource;
    grClass: TDBGrid;
    quGenItemCode: TADOQuery;
    Panel1: TPanel;
    erSearch: TRadioGroup;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grClassEnter(Sender: TObject);
    procedure grItemEnter(Sender: TObject);
    procedure grClassExit(Sender: TObject);
    procedure grItemExit(Sender: TObject);
    procedure grItemKeyPress(Sender: TObject; var Key: Char);
    procedure erSearchClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure grItemDblClick(Sender: TObject);
  private
    { Private declarations }

{   procedure SetGridColor(i: integer);}
  public
    { Public declarations }
     NewKey,EditKey,DelKey : Boolean;
     SearchStr:String;
  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure DoDelete(var mes :TMessage);message F_DEL;
    procedure DoScrol(var mes :TMessage);message F_SCROLL;
  end;

var
  goods: Tgoods;

  ActiveGrid : integer;
  Str1,Str2  : string;

implementation

uses DabDmdle, fmElam, fmgoodsdet, UCommon, UUserMsg, UFmShMsg, fmVerify,
  fmMfrm, fmMgdet, fmInGoodsRec;

{$R *.DFM}



procedure Tgoods.DoNew(var mes :TMessage);
 begin
   MFrm.RunForm(Tgoodsdet,nil,goodsdet);
   goodsdet := Tgoodsdet(MFrm.Child(Tgoodsdet));
   if ( ActiveGrid = 1) then
   begin
     goodsdet.Panel1.visible:=true;
     goodsdet.panel2.visible:=true;
     goodsdet.mde:=1;
   //  goodsdet.edcode.text := '*';
     goodsdet.edname.text := '';
     goodsdet.edCode.FieldType:=ftDisplay;
     goodsdet.cbClassType.FieldType:=ftRequired;
     goodsdet.edname.FieldType:=ftRequired;
     goodsdet.eddesc.FieldType:=ftNonRequired;
     goodsdet.dblPreChapter.FieldType:=ftNonRequired;
     goodsdet.dblPreSubChapter.FieldType:=ftNonRequired;
     goodsdet.dblPrePartChapter.FieldType:=ftNonRequired;
     goodsdet.ediCode.FieldType:=ftNonRequired;
     goodsdet.edclass.FieldType:=ftNonRequired;
     goodsdet.edItemDesc.FieldType:=ftNonRequired;
     goodsdet.dblUnit.FieldType:=ftNonRequired;
     goodsdet.edLimit.FieldType:=ftNonRequired;
     goodsdet.edInventory.FieldType:=ftNonRequired;
     goodsdet.edPoint.FieldType:=ftNonRequired;
     goodsdet.FormInitializer1.Execute;
     goodsdet.Height:=229;
     goodsdet.Caption:='                                          ⁄—Ì› ÿ»ﬁÂ';
     //DabData.qugoodsKar.Last;
   end;
   if ( ActiveGrid = 2) then
   begin
     DabData.quItemKar.close;
     DabData.quItemKar.Open;
     goodsdet.panel3.Visible := true;
     goodsdet.panel2.visible := true;
     if(DabData.quDetKar.RecordCount>0) then
        goodsdet.ediCode.Text:=DabData.qugoodsclass_code.AsString+DabData.quDetKaritem_code.Value
     else
        goodsdet.ediCode.Text:=DabData.qugoodsclass_code.AsString;
     goodsdet.edclass.text:= '';
     goodsdet.edInventory.Text:='0';
     goodsdet.edpoint.Text:='';
     goodsdet.edLimit.Text:='';
     goodsdet.edItemDesc.Text:='';
     goodsdet.edCode.FieldType:=ftNonRequired;
     goodsdet.cbClassType.FieldType:=ftNonRequired;
     goodsdet.edname.FieldType:=ftNonRequired;
     goodsdet.eddesc.FieldType:=ftNonRequired;
     goodsdet.dblPreChapter.FieldType:=ftNonRequired;
     goodsdet.dblPreSubChapter.FieldType:=ftNonRequired;
     goodsdet.dblPrePartChapter.FieldType:=ftNonRequired;
     goodsdet.ediCode.FieldType:=ftDisplay;
     goodsdet.edclass.FieldType:=ftRequired;
     goodsdet.edItemDesc.FieldType:=ftNonRequired;
     goodsdet.dblUnit.FieldType:=ftRequired;
     goodsdet.edLimit.FieldType:=ftNonRequired;
     goodsdet.edInventory.FieldType:=ftRequired;
     goodsdet.edPoint.FieldType:=ftNonRequired;
 //   goodsdet.FormInitializer1.FieldMode:=fminsert;
     goodsdet.FormInitializer1.Execute;
     goodsdet.mde:=3;
     goodsdet.Caption:='                                           ⁄—Ì› ﬂ«·«';
     goodsdet.Height:=211;
     goodsdet.panel3.top:=0;
     if DabData.quDetKar.RecordCount>0 then
     begin
       goodsdet.dblMaster.KeyValue:=DabData.quDetKarPK_MasterGroups.Value;
       goodsdet.dblMasterClick(nil);
       goodsdet.dblDetail.KeyValue:=DabData.quDetKarPK_DetailGroups.Value;
       goodsdet.dblDetailClick(nil);
       goodsdet.dblUnit.KeyValue:=24;
     end;
   end;
{  GoodsDet.close;}
end;


procedure Tgoods.DoEdit(var mes :TMessage);
begin                  //4
   if( ActiveGrid = 1) then
   begin            //3
   begin           //2
     if (DabData.quGoods.RecordCount<>0 )then
     begin   //1
       goodsdet := Tgoodsdet.Create(Application);
       goodsdet.Panel1.visible := true;
       goodsdet.Panel2.visible := true;
       goodsdet.edCode.FieldType:=ftDisplay;
       goodsdet.cbClassType.FieldType:=ftRequired;
       goodsdet.edname.FieldType:=ftRequired;
       goodsdet.eddesc.FieldType:=ftNonRequired;
       goodsdet.dblPreChapter.FieldType:=ftNonRequired;
       goodsdet.dblPreSubChapter.FieldType:=ftNonRequired;
       goodsdet.dblPrePartChapter.FieldType:=ftNonRequired;
       goodsdet.ediCode.FieldType:=ftNonRequired;
       goodsdet.edclass.FieldType:=ftNonRequired;
       goodsdet.edItemDesc.FieldType:=ftNonRequired;
       goodsdet.dblUnit.FieldType:=ftNonRequired;
       goodsdet.edLimit.FieldType:=ftNonRequired;
       goodsdet.edInventory.FieldType:=ftNonRequired;
       goodsdet.edPoint.FieldType:=ftNonRequired;
       goodsdet.edcode.text := DabData.quGoodsclass_code.DisplayText;
       goodsdet.edname.text := DabData.quGoodsclass_name.AsString;
       goodsdet.eddesc.text:=DabData.quGoodsClass_Desc.asstring;
       goodsdet.cbClassType.KeyValue := DabData.quGoodsClass_Type.AsInteger;
       if(DabData.quGoodspc_code.Value<>'') then
         goodsdet.dblPreChapter.KeyValue:=DabData.quGoodspc_code.AsInteger
       else
         goodsdet.dblPreChapter.KeyValue:=NULL;
       if(DabData.quGoodspc_code.Value<>'') then
           goodsdet.qupresubchapter.Parameters[0].Value:=DabData.quGoodspc_code.Value;
       goodsdet.qupresubchapter.open;
       goodsdet.dblPreSubChapter.KeyValue:=goodsdet.qupresubchapterps_code.Value;
       goodsdet.quprepartchapter.Parameters[0].Value:=DabData.quGoodspc_code.Value;
       goodsdet.quprepartchapter.Parameters[1].Value:=DabData.quGoodsps_code.Value;
       goodsdet.quprepartchapter.open;
       goodsdet.dblprepartchapter.KeyValue:=goodsdet.quprepartchapterppc_code.Value;
       goodsdet.Height  := 243;
       goodsdet.mde     := 2;
       goodsdet.Caption:='                                        ⁄—Ì› ÿ»ﬁÂ';
       goodsdet.FormInitializer1.Execute;
       goodsdet.Show;
     end;       //1
   end;        //2
   end;               //3

   if (  ActiveGrid = 2)then

     begin     //5
       DabData.quItemKar.Close;
       DabData.quItemKar.open;
       goodsdet := Tgoodsdet.Create(Application);
       goodsdet.Panel3.visible:=true;
       goodsdet.Panel2.visible:=true;
       goodsdet.dblMaster.FieldType:=ftDisplay;
       goodsdet.dblDetail.FieldType:=ftDisplay;
       goodsdet.edCode.FieldType:=ftNonRequired;
       goodsdet.cbClassType.FieldType:=ftNonRequired;
       goodsdet.edname.FieldType:=ftNonRequired;
       goodsdet.eddesc.FieldType:=ftNonRequired;
       goodsdet.dblPreChapter.FieldType:=ftNonRequired;
       goodsdet.dblPreSubChapter.FieldType:=ftNonRequired;
       goodsdet.dblPrePartChapter.FieldType:=ftNonRequired;
       goodsdet.ediCode.FieldType:=ftDisplay;
       goodsdet.edclass.FieldType:=ftRequired;
       goodsdet.edItemDesc.FieldType:=ftNonRequired;
       goodsdet.dblUnit.FieldType:=ftRequired;
       goodsdet.edLimit.FieldType:=ftNonRequired;
       goodsdet.edInventory.FieldType:=ftRequired;
       goodsdet.edPoint.FieldType:=ftNonRequired;
       goodsdet.edicode.text:=DabData.quDetKarItem_Code.AsString;
       goodsdet.sbMaster.Enabled:=False;
       goodsdet.sbDetail.Enabled:=False;
       goodsdet.dblMaster.KeyValue:=StrToInt(Copy(goodsdet.edicode.text,3,2));
       goodsdet.dblMasterClick(nil);
       goodsdet.dblDetail.KeyValue:=StrToInt(Copy(goodsdet.edicode.text,5,2));
       goodsdet.edclass.text:=DabData.quDetKarItem_Name.AsString;
       goodsdet.dblUnit.KeyValue:=DabData.quDetKarItem_unit.AsInteger;
       if Not(DabData.quDetKarOrder_point.IsNull) then
        goodsdet.edpoint.text:=inttostr(DabData.quDetKarOrder_point.asinteger);
       if Not(DabData.quDetKarItem_Inventory.IsNull) then
        goodsdet.edinventory.text:=inttostr(DabData.quDetKarItem_Inventory.asinteger);
       if Not(DabData.quDetKarInventory_Limit.IsNull) then
        goodsdet.edLimit.Text:=inttostr(DabData.quDetKarInventory_Limit.AsInteger);
       goodsdet.edItemDesc.Text:=DabData.quDetKaritem_desc.AsString;
       goodsdet.edPos.Text:=DabData.quDetKarPosition_Code.AsString;
       goodsdet.ediCode.Enabled:=false;
       goodsdet.FormInitializer1.Execute;
       goodsdet.Caption:='                                         ⁄—Ì› ﬂ«·«';
//       goodsdet.Height:=189;
       goodsdet.Height:=211;
       goodsdet.panel3.top:=0;
       goodsdet.panel2.top:=220;
       goodsdet.mde:=4;
       goodsdet.Show;

    end;     //5

 end;    //4

 procedure Tgoods.DoDelete(var mes :TMessage);
 var
 temp:integer;
 begin
 if (ActiveGrid=1) and( DabData.quGoodsClass_Code.AsInteger>=14)and(DabData.quGoodsClass_Code.AsInteger<=1)then
  begin
  Dabdata.ShowPopupMessage('Õ–› «Ì‰ ÿ»ﬁ«  „Ã«“ ‰Ì” ');
  Exit;
  end;
 verify:=Tverify.Create(application);
 verify.lbRemark.Caption:='Å«ﬂ ﬂ—œ‰ «Ì‰ «ÿ·«⁄«   „«„'+#10#13+
                          ' «ÿ·«⁄«  „—»Êÿ »Â «Ì‰ ﬂ«·«'+#10#13+
                          ' —« ‰Ì“ «“ »Ì‰ ŒÊ«Âœ »—œ';
 if verify.ShowModal=mrok then
  begin

   if (ActiveGrid=1) and ( DabData.quGoods.RecordCount<>0) then
     begin
      quDelete.Parameters[0].Value:=DabData.quGoodsClass_Code.AsInteger;
       temp:=DabData.quGoodsClass_Code.AsInteger;

      DabData.ADOC.BeginTrans;
      try
      quDelete.ExecSQL;
      DabData.ADOC.CommitTrans;
      DabData.quGoods.close;
      DabData.quGoods.Open;
      except
      Dabdata.ShowPopupMessage('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      DabData.ADOC.RollbackTrans;
      end;
      if (DabData.quDetKar.RecordCount<>0 ) then
      begin
      quCascadeDelete.Parameters[0].Value:=temp;
      Dabdata.ADOC.BeginTrans;
      try
      quCascadeDelete.ExecSQL;
      DabData.ADOC.CommitTrans;
      DabData.quDetKar.close;
      DabData.quDetKar.Open;
      except
      Dabdata.ShowPopupMessage('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      DabData.ADOC.RollbackTrans;
      end;
      end;
     end
    else
    if (ActiveGrid=2) and ( DabData.quDetKar.RecordCount<>0) then
     begin
      qudeletedet.Parameters[0].Value:=DabData.quDetKarItem_Code.AsString;
      DabData.ADOC.BeginTrans;
      try
      qudeletedet.ExecSQL;
      DabData.ADOC.CommitTrans;
      DabData.quDetKar.Close;
      DabData.quDetKar.Open;
      except
       Dabdata.ShowPopupMessage('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
       DabData.ADOC.RollbackTrans;
      end;
     end;
  end;
 end;


  procedure Tgoods.DoScrol(var mes :TMessage);
  begin
    DabData.quDetKar.Close;
    DabData.quDetKar.Parameters[0].Value:=DabData.quGoodsClass_code.asinteger;
    DabData.quDetKar.open;
  end;
 procedure Tgoods.FormActivate(Sender: TObject);
 var mes:TMessage;
 begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=11;
   Application.MainForm.Dispatch(mes);
   top := 0;
   left := 0;
    end;

 procedure Tgoods.FormDeactivate(Sender: TObject);
 var mes:TMessage;
 begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
 end;

procedure Tgoods.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      FormDeactivate(nil);
      goods:=nil;
     Action:=caFree;
end;


procedure Tgoods.FormShow(Sender: TObject);
begin
  DabData.quGoods.close;
  DabData.quGoods.open;
  DabData.quDetKar.Close;
  DabData.quDetKar.Parameters[0].Value:=DabData.quGoodsClass_Code.asinteger;
  DabData.quDetKar.open;
  ActiveGrid := 1;
  grClass.SetFocus;
end;

procedure Tgoods.grClassEnter(Sender: TObject);
begin
 grClass.Color:=ClActiveGrid;
 grItem.Color:=CldeActiveGrid;
 ActiveGrid:=1;
end;

procedure Tgoods.grItemEnter(Sender: TObject);
begin
 grItem.Color:=ClActiveGrid;
 grClass.Color:=CldeActiveGrid;
 ActiveGrid:=2;
end;

{procedure Tgoods.SetGridColor(i: integer);
begin
   case ActiveGrid of
   1 : begin
          grClass.Color    := clActiveGridColor;
          grItem.Color     := clDeactiveGridColor;
       end;
   2 : begin
          grClass.Color    := clDeactiveGridColor;
          grItem.Color     := clActiveGridColor;
       end;
    end; // case
end;}

procedure Tgoods.grClassExit(Sender: TObject);
begin
grClass.Color:=CLdeActiveGrid;
grItem.Color:=CLActiveGrid;
end;

procedure Tgoods.grItemExit(Sender: TObject);
begin
grClass.Color:=clActiveGrid;
grItem.Color:=cldeActiveGrid;
end;

procedure Tgoods.grItemKeyPress(Sender: TObject; var Key: Char);
begin
  Timer1.Enabled:=true;
  SearchStr:=SearchStr+Key;
  if Key=#27 then
    SearchStr:='';
  if SearchStr<>'' then
     if erSearch.ItemIndex=1 then
        DabData.quDetKar.Locate('item_name',SearchStr,[loPartialKey])
     else
        DabData.quDetKar.Locate('item_code',SearchStr,[loPartialKey]);
end;

procedure Tgoods.erSearchClick(Sender: TObject);
begin
  SearchStr:='';
end;

procedure Tgoods.Timer1Timer(Sender: TObject);
begin
  inherited;
   SearchStr:='';
   Timer1.Enabled:=false;
end;

procedure Tgoods.grItemDblClick(Sender: TObject);
begin
  inherited;
    if(MFrm.ChkChild(TMgdet)) then
    begin
      Mgdet.edclass.KeyValue:=DabData.qugoodsclass_code.AsInteger;
      mgdet.edclassClick(Sender);
      mgdet.dblitem.KeyValue:=DabData.quDetKaritem_code.Value;
      Close;
    end;
end;

end.
