unit fmMfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmRadMfrm, MDIWallp, Menus, DB, ADODB, AppEvnts, ImgList,
  ExtCtrls, ComCtrls, fcStatusBar, StdCtrls, Buttons, antMovablePanel,
  ToolWin,IniFiles, XPMenu, RXShell;

type
  TMFrm = class(TRadMFrm)
    XpMenu: TXPMenu;
    MainMenu1: TMainMenu;
    N9: TMenuItem;
    N27: TMenuItem;
    N11: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N40: TMenuItem;
    N15: TMenuItem;
    N2: TMenuItem;
    N7: TMenuItem;
    N47: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N63: TMenuItem;
    N65: TMenuItem;
    N45: TMenuItem;
    N69: TMenuItem;
    N73: TMenuItem;
    N71: TMenuItem;
    N104: TMenuItem;
    N75: TMenuItem;
    N106: TMenuItem;
    N108: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N114: TMenuItem;
    N116: TMenuItem;
    N118: TMenuItem;
    N120: TMenuItem;
    N122: TMenuItem;
    N124: TMenuItem;
    N126: TMenuItem;
    N128: TMenuItem;
    N130: TMenuItem;
    N132: TMenuItem;
    N134: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    N135: TMenuItem;
    N28: TMenuItem;
    N38: TMenuItem;
    N111: TMenuItem;
    N113: TMenuItem;
    N115: TMenuItem;
    N117: TMenuItem;
    N119: TMenuItem;
    N121: TMenuItem;
    N123: TMenuItem;
    N125: TMenuItem;
    N127: TMenuItem;
    N129: TMenuItem;
    N20: TMenuItem;
    N105: TMenuItem;
    N21: TMenuItem;
    N109: TMenuItem;
    N22: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N24: TMenuItem;
    N139: TMenuItem;
    N3: TMenuItem;
    N201: TMenuItem;
    N33: TMenuItem;
    N140: TMenuItem;
    N202: TMenuItem;
    N72: TMenuItem;
    N74: TMenuItem;
    N203: TMenuItem;
    N46: TMenuItem;
    N112: TMenuItem;
    N204: TMenuItem;
    N50: TMenuItem;
    N62: TMenuItem;
    N64: TMenuItem;
    N210: TMenuItem;
    N54: TMenuItem;
    N142: TMenuItem;
    N147: TMenuItem;
    N215: TMenuItem;
    N56: TMenuItem;
    N146: TMenuItem;
    N148: TMenuItem;
    N213: TMenuItem;
    N55: TMenuItem;
    N144: TMenuItem;
    N51: TMenuItem;
    N107: TMenuItem;
    N110: TMenuItem;
    N5: TMenuItem;
    N58: TMenuItem;
    N6: TMenuItem;
    N39: TMenuItem;
    N44: TMenuItem;
    N59: TMenuItem;
    N77: TMenuItem;
    N41: TMenuItem;
    N52: TMenuItem;
    N66: TMenuItem;
    N32: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N48: TMenuItem;
    N76: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N141: TMenuItem;
    N49: TMenuItem;
    N143: TMenuItem;
    N154: TMenuItem;
    N155: TMenuItem;
    N156: TMenuItem;
    procedure N145Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N108Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N106Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N140Click(Sender: TObject);
    procedure N142Click(Sender: TObject);
    procedure N144Click(Sender: TObject);
    procedure N146Click(Sender: TObject);
    procedure N147Click(Sender: TObject);
    procedure N148Click(Sender: TObject);
    procedure N116Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure N120Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N132Click(Sender: TObject);
    procedure N134Click(Sender: TObject);
    procedure N136Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N66Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure N109Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N117Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure N125Click(Sender: TObject);
    procedure N127Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure N107Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N133Click(Sender: TObject);
    procedure N137Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N135Click(Sender: TObject);
    procedure N139Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N149Click(Sender: TObject);
    procedure N150Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure N154Click(Sender: TObject);
    procedure N155Click(Sender: TObject);
    procedure N156Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MFrm: TMFrm;

implementation

uses  fmreListAssetUnreasonable, fmgoods, SciCalc, fmDefineOrg,
  fmGoodsRec, fmreListSmallAsset, fmListAssetRoom, fmreListAssetPresent,
  fmloc, fmreSpcMachin, fmspec, fmmuseum, fmStamp, fmtrasport, fmmedical,
  fmMachin, fmbook, fmtextile, fmlens, fmtaxidermy, fmfilm, fmAnimal,
  fmincons, fmnonmgood, fmBills, fmTrRec, fmVisit, fmSaleCom, fmAccComiss,
  fmExitLic, fmDelGoods, fmreSpcAntiq, fmMuseumSpecRep, fmreStampSpec,
  fmreSpecInco, fmreRide, fmreLab, fmreBooks, fmreTextile, fmreLens,
  fmreTaxidermy, reDiskette, fmreAnimal, fmVisitReq, fmBillmov,
  fmBillMovCfm, fmTrrecCfm, fmSaleComCfm, fmAccComissCfm, fmTrrecApp,
  fmAccComissApp, fmreSrtStamp, fmresrtAntique, fmreSrtMuseum, fmreSrtRide,
  fmSrtLab, fmSrtMachinery, fmSrtBooks, fmSrtTextile, fmSrtLens,
  fmSrtTaxidermy, fmSrtDiskette, fmSrtAnimal, fmSrtincon, fmExitLicCfm,
  fmBillReturn, fmBillReturnCfm, fmreMovState, fmreExitLic,
  fmreListStateAssetUnreasonable, fmItem, fmItemRequest, fmRepItems,
  fmrepItem, fmRepClass, fmTreeItem, fmrepItemRepair, fmrepItemReq,
  fmrepItemRequest, fmrepRecItem, fmrepRec, rpRepBills, rpReportBills,
  fmItemReqConfirm, fmItemReqVerify, DabDmdle, fmTrUse, fmPassChanger,
  fmReSpecAll, fmMoveable, fmRepSrtAll, fmRePropAssetMan, fmLogView,
  fmActiveUser, fmSetting, fmNewBills, fmParameters, fmItemOrderRequest,
  UCommon;

{$R *.dfm}


procedure TMFrm.N25Click(Sender: TObject);
begin
  RunForm(TreListAssetUnreasonable,Sender,reListAssetUnreasonable);
end;
procedure TMFrm.N11Click(Sender: TObject);
begin
  RunForm(TGoods,Sender,Goods);
end;
procedure TMFrm.N17Click(Sender: TObject);
begin
  RunForm(TSciCalcForm,Sender,SciCalcForm);
end;

procedure TMFrm.N15Click(Sender: TObject);
begin
  RunForm(TdefineOrg,Sender,defineOrg);
end;

procedure TMFrm.N39Click(Sender: TObject);
begin
   RunForm(TGoodsRec,Sender,GoodsRec);
end;

procedure TMFrm.N21Click(Sender: TObject);
begin
   RunForm(TreListSmallAsset,Sender,reListSmallAsset);
end;

procedure TMFrm.N20Click(Sender: TObject);
begin
   RunForm(TListAssetRoom,Sender,ListAssetRoom);
end;

procedure TMFrm.N24Click(Sender: TObject);
begin
   RunForm(TreListAssetPresent,Sender,reListAssetPresent);
end;

procedure TMFrm.N43Click(Sender: TObject);
begin
   RunForm(TLoc,Sender,Loc);
end;

procedure TMFrm.N45Click(Sender: TObject);
begin
   RunForm(TreSpcMachin,Sender,reSpcMachin);
end;
procedure TMFrm.N79Click(Sender: TObject);
begin
   RunForm(Tspecific,Sender,specific);
end;

procedure TMFrm.N81Click(Sender: TObject);
begin
   RunForm(Tmuseum,Sender,museum);
end;

procedure TMFrm.N83Click(Sender: TObject);
begin
   RunForm(Tstamp,Sender,stamp);
end;

procedure TMFrm.N85Click(Sender: TObject);
begin
 RunForm(Ttransport,Sender,transport);
end;

procedure TMFrm.N87Click(Sender: TObject);
begin
 RunForm(Tmedical,Sender,medical);
end;

procedure TMFrm.N89Click(Sender: TObject);
begin
 RunForm(Tmachin,Sender,machin);
end;
procedure TMFrm.N91Click(Sender: TObject);
begin
 RunForm(Tbook,Sender,book);
end;

procedure TMFrm.N93Click(Sender: TObject);
begin
 RunForm(Ttextile,Sender,textile);
end;

procedure TMFrm.N95Click(Sender: TObject);
begin
 RunForm(Tlens,Sender,lens);
end;

procedure TMFrm.N97Click(Sender: TObject);
begin
 RunForm(Ttaxidermy,Sender,taxidermy);
end;

procedure TMFrm.N99Click(Sender: TObject);
begin
 RunForm(Tfilm,Sender,film);
end;

procedure TMFrm.N101Click(Sender: TObject);
begin
 RunForm(Tanimal,Sender,animal);
end;

procedure TMFrm.N103Click(Sender: TObject);
begin
 RunForm(Tincons,Sender,incons);
end;

procedure TMFrm.N49Click(Sender: TObject);
begin
 RunForm(Tnonmgood,Sender,nonmgood);
end;
procedure TMFrm.N59Click(Sender: TObject);
begin
 StateOfBills := 1 ;
 RunForm(TBills,Sender,Bills);
end;

procedure TMFrm.N54Click(Sender: TObject);
begin
 RunForm(TTrRec,Sender,TrRec);
 TrRec.Left:=0;
 TrRec.Top:=0;
end;

procedure TMFrm.N46Click(Sender: TObject);
begin
 RunForm(TVisit,Sender,Visit);
end;

procedure TMFrm.N55Click(Sender: TObject);
begin
 RunForm(TSaleCom,Sender,SaleCom);
end;

procedure TMFrm.N56Click(Sender: TObject);
begin
 RunForm(TAccidComiss,Sender,AccidComiss);
end;

procedure TMFrm.N50Click(Sender: TObject);
begin
 RunForm(TExitLic,Sender,ExitLic);
end;

procedure TMFrm.N58Click(Sender: TObject);
begin
 RunForm(TDelGoods,Sender,DelGoods);
end;

procedure TMFrm.N47Click(Sender: TObject);
begin
 RunForm(TreSpcAntiq,Sender,reSpcAntiq);
end;

procedure TMFrm.N60Click(Sender: TObject);
begin
 RunForm(TreSpcMuseum,Sender,reSpcMuseum);
end;

procedure TMFrm.N61Click(Sender: TObject);
begin
 RunForm(TreStampSpec,Sender,reStampSpec);
end;

procedure TMFrm.N108Click(Sender: TObject);
begin
 RunForm(TreSpecIncon,Sender,reSpecIncon);
end;

procedure TMFrm.N63Click(Sender: TObject);
begin
 RunForm(TreSpecRide,Sender,reSpecRide);
end;

procedure TMFrm.N65Click(Sender: TObject);
begin
 RunForm(TreSpecLab,Sender,reSpecLab);
end;

procedure TMFrm.N69Click(Sender: TObject);
begin
 RunForm(TreSpecBooks,Sender,reSpecBooks);
end;

procedure TMFrm.N71Click(Sender: TObject);
begin
 RunForm(TreSpecTextile,Sender,reSpecTextile);
end;

procedure TMFrm.N73Click(Sender: TObject);
begin
 RunForm(TreSpecLens,Sender,reSpecLens);
end;

procedure TMFrm.N75Click(Sender: TObject);
begin
 RunForm(TreSpecTaxidermy,Sender,reSpecTaxidermy);
end;

procedure TMFrm.N104Click(Sender: TObject);
begin
 RunForm(TreSpecDiskette,Sender,reSpecDiskette);
end;

procedure TMFrm.N106Click(Sender: TObject);
begin
 RunForm(TreSpecAnimal,Sender,reSpecAnimal);
end;

procedure TMFrm.N112Click(Sender: TObject);
begin
 RunForm(TVisitReq,Sender,VisitReq);
end;


procedure TMFrm.N33Click(Sender: TObject);
begin
 RunForm(TBillmovable,Sender,Billmovable);
end;

procedure TMFrm.N140Click(Sender: TObject);
begin
 RunForm(TBillmovableCfm,Sender,BillmovableCfm);
end;

procedure TMFrm.N142Click(Sender: TObject);
begin
 RunForm(TTrRecCfm,Sender,TrRecCfm);
end;

procedure TMFrm.N144Click(Sender: TObject);
begin
 RunForm(TSaleComCfm,Sender,SaleComCfm);
end;

procedure TMFrm.N146Click(Sender: TObject);
begin
 RunForm(TAccidComissCfm,Sender,AccidComissCfm);
end;

procedure TMFrm.N147Click(Sender: TObject);
begin
 RunForm(TTrRecApp,Sender,TrRecApp);
end;

procedure TMFrm.N148Click(Sender: TObject);
begin
 RunForm(TAccidComissApp,Sender,AccidComissApp);
end;

procedure TMFrm.N116Click(Sender: TObject);
begin
 RunForm(TreSrtStamp,Sender,reSrtStamp);
end;

procedure TMFrm.N68Click(Sender: TObject);
begin
 RunForm(TreSrtantique,Sender,reSrtantique);
end;

procedure TMFrm.N114Click(Sender: TObject);
begin
 RunForm(TreSrtMuseum,Sender,reSrtMuseum);
end;

procedure TMFrm.N118Click(Sender: TObject);
begin
 RunForm(TreSrtRide,Sender,reSrtRide);
end;

procedure TMFrm.N120Click(Sender: TObject);
begin
 RunForm(TreSrtLab,Sender,reSrtLab);
end;

procedure TMFrm.N122Click(Sender: TObject);
begin
 RunForm(TreSrtMachinery,Sender,reSrtMachinery);
end;

procedure TMFrm.N124Click(Sender: TObject);
begin
 RunForm(TreSrtBooks,Sender,reSrtBooks);
end;

procedure TMFrm.N126Click(Sender: TObject);
begin
 RunForm(TreSrtTextile,Sender,reSrtTextile);
end;

procedure TMFrm.N128Click(Sender: TObject);
begin
 RunForm(TreSrtLens,Sender,reSrtLens);
end;

procedure TMFrm.N130Click(Sender: TObject);
begin
 RunForm(TreSrtTaxidermy,Sender,reSrtTaxidermy);
end;

procedure TMFrm.N132Click(Sender: TObject);
begin
 RunForm(TreSrtDiskette,Sender,reSrtDiskette);
end;

procedure TMFrm.N134Click(Sender: TObject);
begin
 RunForm(TreSrtAnimal,Sender,reSrtAnimal);
end;

procedure TMFrm.N136Click(Sender: TObject);
begin
 RunForm(TreSrtIncon,Sender,reSrtIncon);
end;

procedure TMFrm.N62Click(Sender: TObject);
begin
 RunForm(TExitLicCfm,Sender,ExitLicCfm);
end;


procedure TMFrm.N72Click(Sender: TObject);
begin
 RunForm(TBillReturn,Sender,BillReturn);
end;

procedure TMFrm.N74Click(Sender: TObject);
begin
 RunForm(TBillReturnCfm,Sender,BillReturnCfm);
end;

procedure TMFrm.N105Click(Sender: TObject);
begin
 RunForm(TreMovstate,Sender,reMovstate);
end;

procedure TMFrm.N109Click(Sender: TObject);
begin
 RunForm(Ttaxidermy,Sender,taxidermy);
  if  not chkchild(Treexitlic) then
  begin
    reexitlic := Treexitlic.Create(Application);
    LastMenuCliked:=TMenuItem(Sender).Name; //    setformColor(reexitlic);
    reexitlic.Show ;
  end;
end;
procedure TMFrm.N26Click(Sender: TObject);
begin
 RunForm(TreListStateAssetUnreasonable,Sender,reListStateAssetUnreasonable);
end;
procedure TMFrm.N27Click(Sender: TObject);
begin
 RunForm(TItem,Sender,Item);
end;

procedure TMFrm.N35Click(Sender: TObject);
begin
 RunForm(TItemReq,Sender,ItemReq);
end;

procedure TMFrm.N38Click(Sender: TObject);
begin
 RunForm(TRepItems,Sender,RepItems);
end;

procedure TMFrm.N111Click(Sender: TObject);
begin
 RunForm(TRepItem,Sender,RepItem);
end;

procedure TMFrm.N113Click(Sender: TObject);
begin
 RunForm(TRepClass,Sender,RepClass);
end;

procedure TMFrm.N115Click(Sender: TObject);
begin
 RunForm(TTreeItem,Sender,TreeItem);
end;

procedure TMFrm.N117Click(Sender: TObject);
begin
 RunForm(TrepItemRepair,Sender,repItemRepair);
end;

procedure TMFrm.N119Click(Sender: TObject);
begin
 RunForm(TrepItemReq,Sender,repItemReq);
end;

procedure TMFrm.N121Click(Sender: TObject);
begin
 RunForm(TrepItemRequest,Sender,repItemRequest);
end;

procedure TMFrm.N123Click(Sender: TObject);
begin
 RunForm(TrepRecItem,Sender,repRecItem);
end;

procedure TMFrm.N125Click(Sender: TObject);
begin
 RunForm(TrepRec,Sender,repRec);
end;

procedure TMFrm.N127Click(Sender: TObject);
begin
 RunForm(TRepBills,Sender,RepBills);
end;

procedure TMFrm.N129Click(Sender: TObject);
begin
 RunForm(TReportBills,Sender,ReportBills);
end;


procedure TMFrm.N36Click(Sender: TObject);
begin
 RunForm(TItemReqConfirm,Sender,ItemReqConfirm);
end;

procedure TMFrm.N37Click(Sender: TObject);
begin

 RunForm(TItemReqVerify,Sender,ItemReqVerify);
 ItemReqVerify.Flg:=true;
 Dabdata.quItem_ReqVer.Close;
 Dabdata.quItem_ReqVer.Open;
 Dabdata.quReq_Item.close;
 Dabdata.quReq_Item.Parameters[0].value:=Dabdata.quItem_ReqVerReq_No.asinteger;
 Dabdata.quReq_Item.open;
end;

procedure TMFrm.N77Click(Sender: TObject);
begin
 StateOfBills := 2 ;
 RunForm(TBills,Sender,Bills);
end;

procedure TMFrm.N107Click(Sender: TObject);
begin
 StateOfTrUser := 1 ;
 RunForm(TTrUse,Sender,TrUse);
end;

procedure TMFrm.N110Click(Sender: TObject);
begin
 StateOfTrUser := 2 ;
 RunForm(TTrUse,Sender,TrUse);
end;
procedure TMFrm.N133Click(Sender: TObject);
begin
 RunForm(TPassChanger,Sender,PassChanger);
end;

procedure TMFrm.N137Click(Sender: TObject);
begin
 RunForm(TreSpecAll,Sender,reSpecAll);
end;

procedure TMFrm.N76Click(Sender: TObject);
begin
 RunForm(Tmoveable,Sender,moveable);
end;

procedure TMFrm.N135Click(Sender: TObject);
begin
 RunForm(TreSrtAll,Sender,reSrtAll);
end;

procedure TMFrm.N139Click(Sender: TObject);
begin
 RunForm(TrePropAssetMan,Sender,rePropAssetMan);
end;

procedure TMFrm.N29Click(Sender: TObject);
var
    GenDataFile   :TiniFile;
begin
  inherited;
  DabData.FontDialog1.Execute;
  GenDataFile:=TiniFile.Create(fullIniPath);
  GenDataFile.WriteString('Font','Name',DabData.FontDialog1.Font.Name);
  GenDataFile.WriteString('Font','Style',DabData.FontDialog1.Font.Name);
  GenDataFile.WriteInteger('Font','Size',DabData.FontDialog1.Font.Size);
  GenDataFile.Free;
end;
procedure TMFrm.N149Click(Sender: TObject);
begin
  RunForm(TLogView,Sender,LogView);
end;

procedure TMFrm.N150Click(Sender: TObject);
begin
  RunForm(TActiveUser,Sender,ActiveUser);
end;
procedure TMFrm.N34Click(Sender: TObject);
begin
  RunForm(TSetting,Sender,Setting);
end;


procedure TMFrm.N41Click(Sender: TObject);
begin
  inherited;
  if TMenuItem(Sender).Name='N52' then
  RunForm(TNewBills,Sender,NewBills);
end;

procedure TMFrm.N52Click(Sender: TObject);
begin
  inherited;
  InConfirmState:=False;
  RunForm(TNewBills,Sender,NewBills);
  NewBills.Caption:='ÕÊ«·Â Â«Ì  ‰ŸÌ„ ‘œÂ';
end;
procedure TMFrm.N66Click(Sender: TObject);
begin
  InConfirmState:=True;
  RunForm(TNewBills,Sender,NewBills);
  NewBills.Caption:='ÕÊ«·Â Â«Ì  «ÌÌœ ‘œÂ';
end;

procedure TMFrm.N151Click(Sender: TObject);
begin
  inherited;
  RunForm(TParametersFrm,Sender,ParametersFrm);
end;
procedure TMFrm.N145Click(Sender: TObject);
var
 MenuIni:TIniFile;
begin
  inherited;
  MenuIni:=TIniFile.Create(fullCmdPath);
  MenuIni.EraseSection('Menu');
  MenuIni.Free;
//  OptionsPanel.Destroy;
end;
procedure TMFrm.N154Click(Sender: TObject);
begin
  inherited;
  StateOfItemOrderRequest:=1;
  RunForm(TItemOrderRequest,sender,ItemOrderRequest);
end;

procedure TMFrm.N155Click(Sender: TObject);
begin
  inherited;
  StateOfItemOrderRequest:=2;
  RunForm(TItemOrderRequest,sender,ItemOrderRequest);

end;

procedure TMFrm.N156Click(Sender: TObject);
begin
  inherited;
  StateOfItemOrderRequest:=3;
  RunForm(TItemOrderRequest,sender,ItemOrderRequest);
end;

procedure TMFrm.FormShow(Sender: TObject);
var
    IniFile : TIniFile ;
begin
  inherited;
//  IniFile := TIniFile.Create('Amval.ini');
//  clAmval.Active := TRUE ;
//  clAmval.Application := Application ;
//  clAmval.ServerName := IniFile.ReadString('Connection' , 'SERVER' , '') ;
//  clAmval.Open ;
end;

end.
