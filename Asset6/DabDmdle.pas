
unit DabDmdle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,DBTables, Db, ImgList,define, ADODB,inifiles,FARD,
  MSNPopUp;
type
  TDabData = class(TDataModule)
    ADOC: TADOConnection;
    quant: TADOQuery;
    qutrans: TADOQuery;
    qumachin: TADOQuery;
    quBook: TADOQuery;
    qustamp: TADOQuery;
    qumuseum: TADOQuery;
    quincon: TADOQuery;
    quanimal: TADOQuery;
    qufilm: TADOQuery;
    qumedical: TADOQuery;
    qulens: TADOQuery;
    qutextile: TADOQuery;
    qutaxidermy: TADOQuery;
    qumoveable: TADOQuery;
    qunonmgood: TADOQuery;
    qugoods_rec: TADOQuery;
    qurec_det: TADOQuery;
    dsEmp: TDataSource;
    dsOrgUnit: TDataSource;
    dsClass: TDataSource;
    dsItem: TDataSource;
    quOrgUnit: TADOQuery;
    quCostCenter: TADOQuery;
    dsCostCenter: TDataSource;
    quOrgUnitUt_Org_Code: TSmallintField;
    quOrgUnitUt_Code: TSmallintField;
    quOrgUnitUt_Name: TStringField;
    quOrgUnitUt_Mast_Code: TSmallintField;
    dsDeployLoc: TDataSource;
    dsMoveable: TDataSource;
    dsnonmgood: TDataSource;
    quUpdateMovGood: TADOQuery;
    dsMalClass: TDataSource;
    quMalClass: TADOQuery;
    quantAnt_Hprd: TStringField;
    quantAnt_dloc: TStringField;
    quantAnt_ddate: TStringField;
    quantAnt_weight: TStringField;
    quantAnt_color: TStringField;
    quantAnt_dim: TStringField;
    quantAnt_mark: TStringField;
    quantAnt_Pdate: TStringField;
    quantAnt_desc: TStringField;
    qumuseumMts_type: TSmallintField;
    qumuseumMts_loc: TStringField;
    qumuseumMts_style: TStringField;
    qumuseumMts_rag: TStringField;
    qumuseumMts_mat: TStringField;
    qumuseumMts_woof: TStringField;
    qumuseumMts_fuzz: TStringField;
    qumuseumMts_plane: TStringField;
    qumuseumMts_bcolor: TStringField;
    qumuseumMts_color: TStringField;
    qumuseumMts_len: TStringField;
    qumuseumMts_with: TStringField;
    qumuseumMts_area: TStringField;
    qumuseumMts_date: TStringField;
    qumuseumMts_frame: TStringField;
    qumuseumMts_old: TStringField;
    qumuseumMts_degree: TStringField;
    qumuseumMts_pdate: TStringField;
    qumuseumtypecase: TStringField;
    qustampSts_Type: TSmallintField;
    qustampSts_price: TFloatField;
    qustampSts_len: TSmallintField;
    qustampSts_wit: TSmallintField;
    qustampSts_isue: TStringField;
    qustampSts_design: TStringField;
    qustampSts_date: TStringField;
    qustampSts_qul: TSmallintField;
    qustampSts_ptype: TStringField;
    qustampSts_perf: TSmallintField;
    qustampSts_back: TSmallintField;
    qustampSts_face: TSmallintField;
    qustampSts_desc: TStringField;
    qustampqulcase: TStringField;
    qustamppercase: TStringField;
    qustampbackcase: TStringField;
    qustampfacecase: TStringField;
    qustamptypecase: TStringField;
    qutransTra_type: TSmallintField;
    qutransTra_mcou: TStringField;
    qutransTra_mfac: TStringField;
    qutransTra_eno: TStringField;
    qutransTra_cno: TStringField;
    qutransTra_pno: TStringField;
    qutransTra_color: TStringField;
    qutransTra_mod: TStringField;
    qutransTra_cap: TStringField;
    qutransTra_mdate: TStringField;
    qutransTra_desc: TStringField;
    qutranstypecase: TStringField;
    qumedicalmaker_country: TStringField;
    qumedicalmaker_factory: TStringField;
    qumedicalfactory_no: TStringField;
    qumedicalmodel: TStringField;
    qumedicalserial: TStringField;
    qumedicalspecification: TStringField;
    qumachinmaker_country: TStringField;
    qumachinmaker_factory: TStringField;
    qumachinfactory_no: TStringField;
    qumachinengine_no: TStringField;
    qumachinmodel: TStringField;
    qumachincapacity: TStringField;
    qumachinserial: TStringField;
    qumachinmake_date: TStringField;
    qumachinspecification: TStringField;
    quBookbos_name: TStringField;
    quBookbos_aut: TStringField;
    quBookbos_date: TStringField;
    quBookbos_trans: TStringField;
    quBookbos_publ: TStringField;
    quBookbos_num: TIntegerField;
    quBookbos_dim: TStringField;
    quBookbos_ptype: TStringField;
    quBookbos_ctype: TSmallintField;
    quBookbos_chtype: TSmallintField;
    quBookbos_cname: TStringField;
    quBookbos_desc: TStringField;
    quBookctypecase: TStringField;
    quBookchtypecase: TStringField;
    qutextiletexture_type: TSmallintField;
    qutextiletexture_loc: TStringField;
    qutextilemark: TStringField;
    qutextiletexture_date: TStringField;
    qutextilelength: TStringField;
    qutextilewidth: TStringField;
    qutextileback_color: TStringField;
    qutextileborder_color: TStringField;
    qutextilespecification: TStringField;
    qutextilemap: TStringField;
    qutextiletypecase: TStringField;
    qulensfactory_name: TStringField;
    qulensfactory_no: TStringField;
    qulensmodel: TStringField;
    qulenslens_power: TStringField;
    qulensserial: TStringField;
    qulensmake_date: TStringField;
    qulensspecification: TStringField;
    qutaxidermytype: TStringField;
    qutaxidermyskeleton: TStringField;
    qutaxidermyexternal_case: TStringField;
    qutaxidermyfossil: TStringField;
    qutaxidermycollect_loc: TStringField;
    qutaxidermyspecification: TStringField;
    qufilmsubject: TStringField;
    qufilmtype: TSmallintField;
    qufilmgood_size: TStringField;
    qufilmsize_unit: TSmallintField;
    qufilmmeasure_unit: TSmallintField;
    qufilmspecification: TStringField;
    qufilmtypecase: TStringField;
    qufilmsizecase: TStringField;
    qufilmmecase: TStringField;
    quanimalsex: TSmallintField;
    quanimalorigin: TStringField;
    quanimalspecial_mark: TStringField;
    quanimalcolor: TStringField;
    quanimalheight: TSmallintField;
    quanimalage: TSmallintField;
    quanimalspecification: TStringField;
    quanimalsexcase: TStringField;
    quinconmaker_country: TStringField;
    quinconmaker_unit: TStringField;
    quinconweight: TIntegerField;
    quincondimension: TStringField;
    quinconcolor: TStringField;
    quinconmodel: TStringField;
    quinconserial: TStringField;
    quinconampere: TStringField;
    quinconspecification: TStringField;
    quMalClassitem_code: TStringField;
    quMalClassreceipt_no: TIntegerField;
    quMalClasslabel: TIntegerField;
    quMalClassBprice: TFloatField;
    quMalClassEprice: TFloatField;
    quMalClassType: TSmallintField;
    quMalClassState: TSmallintField;
    quMalClassitem_name: TStringField;
    quMalClassGoodS_CodeStr: TStringField;
    quMalClassclass_code: TSmallintField;
    quMalClassclass_desc: TStringField;
    quMalClassclass_name: TStringField;
    quMalClassClass_Type: TSmallintField;
    quMalClassctype: TStringField;
    quMalClassStateName: TStringField;
    qunonmgoodplaque_no: TStringField;
    qunonmgoodreg_no: TIntegerField;
    qunonmgoodreg_date: TStringField;
    qunonmgoodloc_code: TStringField;
    qunonmgoodground_area: TIntegerField;
    qunonmgoodbuilding_area: TIntegerField;
    qunonmgoodbounds: TStringField;
    qunonmgoodaddress: TStringField;
    qunonmgoodlength: TIntegerField;
    qunonmgoodwidth: TIntegerField;
    qunonmgoodfacility: TStringField;
    qunonmgoodappendix: TStringField;
    qunonmgoodexpert_price: TFloatField;
    qunonmgoodbuy_price: TFloatField;
    qunonmgoodprice_unit: TSmallintField;
    qunonmgoodarea_unit: TSmallintField;
    qunonmgoodlength_unit: TSmallintField;
    qunonmgoodwidth_unit: TSmallintField;
    qunonmgoodowner_doc: TSmallintField;
    qunonmgooditem_code: TStringField;
    qunonmgoodstate: TSmallintField;
    qunonmgooddoc_no: TStringField;
    qunonmgooddoc_date: TStringField;
    qunonmgoodReciever: TStringField;
    qunonmgoodFile_No: TStringField;
    qunonmgooddoc_Type: TSmallintField;
    qunonmgoodReg_Loc: TStringField;
    qunonmgoodOffice_No: TIntegerField;
    qunonmgoodPrint_No: TLargeintField;
    qunonmgoodReg_Plaque: TStringField;
    qunonmgoodDoc_Desc: TStringField;
    qunonmgoodOwner_Org: TStringField;
    qunonmgoodUser_Org: TStringField;
    qunonmgoodExt_Reciver: TStringField;
    qunonmgoodExit_Date: TStringField;
    qunonmgoodDesc: TStringField;
    qunonmgooditem_name: TStringField;
    qunonmgoodPlaque_NoStr: TStringField;
    qunonmgoodCounty_Name: TStringField;
    qunonmgoodClass_Name: TStringField;
    qunonmgoodcowner: TStringField;
    qunonmgoodStateName: TStringField;
    qumoveableitem_code: TStringField;
    qumoveablereceipt_no: TIntegerField;
    qumoveablelabel: TIntegerField;
    qumoveableBprice: TFloatField;
    qumoveableEprice: TFloatField;
    qumoveableType: TSmallintField;
    qumoveableState: TSmallintField;
    qumoveableitem_name: TStringField;
    qumoveableGoodS_CodeStr: TStringField;
    qumoveablectype: TStringField;
    qumoveableStateName: TStringField;
    quCostCenterUt_Org_Code: TIntegerField;
    quCostCenterUt_Code: TSmallintField;
    quCostCenterUt_Name: TStringField;
    quCostCenterUt_Mast_Code: TSmallintField;
    MSNPopUp1: TMSNPopUp;
    quMgdetRecNo: TADOQuery;
    quMgdetRecNorec_no: TIntegerField;
    quUnit: TADOQuery;
    quUnitCode: TSmallintField;
    quUnitUnit_Item_Desc: TStringField;
    dsUnit: TDataSource;
    qurec_detrec_no: TIntegerField;
    qurec_detitem_code: TStringField;
    qurec_detbuy_price: TFloatField;
    qurec_detex_price: TFloatField;
    qurec_detamount: TIntegerField;
    qurec_detitem_name: TStringField;
    qurec_detItem_Unit: TSmallintField;
    qurec_detCode: TSmallintField;
    qurec_detUnit_Item_Desc: TStringField;
    qurec_detTotal: TFloatField;
    quItemKar: TADOQuery;
    quProductItem: TADOQuery;
    quItem_Req: TADOQuery;
    quItem_ReqReq_no: TIntegerField;
    quItem_ReqCreator: TStringField;
    quItem_ReqCreate_Date: TStringField;
    quItem_ReqOrg_Code: TSmallintField;
    quItem_ReqOrg_Unit_Code: TSmallintField;
    quItem_ReqConfirmer: TStringField;
    quItem_ReqConfirm_date: TStringField;
    quItem_ReqVerifier: TStringField;
    quItem_ReqVerify_date: TStringField;
    quItem_ReqState: TSmallintField;
    quItem_ReqReq_Type: TSmallintField;
    quItem_ReqOrg_Name: TStringField;
    quItem_ReqUt_Name: TStringField;
    quReq_Item: TADOQuery;
    quReq_ItemReq_No: TIntegerField;
    quReq_ItemItem_Code: TStringField;
    quReq_ItemReq_Amount: TIntegerField;
    quReq_ItemConf_Amount: TIntegerField;
    quReq_ItemRecieve_Amount: TIntegerField;
    quReq_Itemr_state: TSmallintField;
    quReq_Itemitem_type: TSmallintField;
    quReq_ItemReq_type: TSmallintField;
    quReq_ItemReq_number: TStringField;
    quReq_Itemitem_name: TStringField;
    quItem_ReqConf: TADOQuery;
    quItem_ReqConfCreator: TStringField;
    quItem_ReqConfCreate_Date: TStringField;
    quItem_ReqConfOrg_Code: TSmallintField;
    quItem_ReqConfOrg_Unit_Code: TSmallintField;
    quItem_ReqConfConfirmer: TStringField;
    quItem_ReqConfConfirm_date: TStringField;
    quItem_ReqConfVerifier: TStringField;
    quItem_ReqConfVerify_date: TStringField;
    quItem_ReqConfState: TSmallintField;
    quItem_ReqConfReq_Type: TSmallintField;
    quItem_ReqConfOrg_Name: TStringField;
    quItem_ReqConfUt_Name: TStringField;
    quItem_ReqConfReq_no: TIntegerField;
    quItem_ReqVer: TADOQuery;
    quItem_ReqVerReq_no: TIntegerField;
    quItem_ReqVerCreator: TStringField;
    quItem_ReqVerOrg_Code: TSmallintField;
    quItem_ReqVerOrg_Unit_Code: TSmallintField;
    quItem_ReqVerConfirmer: TStringField;
    quItem_ReqVerConfirm_date: TStringField;
    quItem_ReqVerVerifier: TStringField;
    quItem_ReqVerVerify_date: TStringField;
    quItem_ReqVerState: TSmallintField;
    quItem_ReqVerReq_Type: TSmallintField;
    quItem_ReqVerOrg_Name: TStringField;
    quItem_ReqVerUt_Name: TStringField;
    quItem_ReqVerCreate_Date: TStringField;
    quBillKar: TADOQuery;
    qubillKarBill_No: TIntegerField;
    quBillKarBill_type: TSmallintField;
    quBillKarcreator: TStringField;
    quBillKarconfirmer: TStringField;
    quBillKarconfirm_date: TStringField;
    quBillKarconf_teller: TStringField;
    quBillKarconf_date: TStringField;
    quBillKaritem_req_no: TIntegerField;
    quBillKarreceiver: TStringField;
    quBillKardelivery_man: TStringField;
    quBillKarOrg_Code: TIntegerField;
    quBillKarUnit_code: TSmallintField;
    quBillKarrec_Org_code: TIntegerField;
    quBillKarrec_Unit_code: TSmallintField;
    quBillKarState: TSmallintField;
    quBillKarReason: TStringField;
    quBillKarItems: TADOQuery;
    quBillKarItemsBill_Type: TSmallintField;
    quBillKarItemsBill_No: TIntegerField;
    quBillKarItemsItem_Code: TStringField;
    quBillKarItemsItem_Amount_Number: TIntegerField;
    quBillKarItemsItem_Name: TStringField;
    quBillKarItemsItem_Unit: TSmallintField;
    quBillKarItemsUnit_Item_Desc: TStringField;
    quBillKarcreate_date: TStringField;
    quUseTrans: TADOQuery;
    quUseTransUse_Tr_No: TStringField;
    quUseTransDesc: TStringField;
    quUseTransCreator: TStringField;
    quUseTransCreate_Date: TStringField;
    quUseTransConfirmer: TStringField;
    quUseTransConfirm_Date: TStringField;
    quUseTransState: TSmallintField;
    quUseTransClass_Code: TSmallintField;
    quUseTransOrder_No: TStringField;
    quUseTransOrder_Type: TSmallintField;
    quUseTransclass_name: TStringField;
    quDetUseTrans: TADOQuery;
    quDetUseTransRow: TSmallintField;
    quDetUseTransItem_code: TStringField;
    quDetUseTransItem_Cast: TIntegerField;
    quDetUseTransItem_Amount: TSmallintField;
    quDetUseTransUse_Tr_No: TStringField;
    quDetUseTransitem_name: TStringField;
    quDetUseTransitem_unit: TSmallintField;
    quDetUseTransUnit_Item_Desc: TStringField;
    qubtnOrderNo: TADOQuery;
    qubtnOrderNoOrder_Req_Type: TSmallintField;
    qubtnOrderNoOrder_Req_No: TStringField;
    qubtnOrderNoState: TSmallintField;
    qubtnOrderNoCreator: TStringField;
    qubtnOrderNoCreate_Date: TStringField;
    qubtnOrderNoConfirmer: TStringField;
    qubtnOrderNoConfirm_Date: TStringField;
    qubtnOrderNoCredit_Suplier: TStringField;
    qubtnOrderNoCS_Date: TStringField;
    qubtnOrderNoService_Desc: TStringField;
    qubtnOrderNoItem_Type: TSmallintField;
    qubtnOrderNoItem_Class: TSmallintField;
    qubtnOrderNoRequest_Refuse_Reason: TStringField;
    qubtnOrderNoService_Type_No: TSmallintField;
    qubtnOrderNoEstimate_Price: TFloatField;
    qubtnOrderNoDeal_Kind: TSmallintField;
    qubtnOrderNoInquiry_Date_Rec: TStringField;
    qubtnOrderNoDealKind: TStringField;
    qubtnOrderNoItemType: TStringField;
    qubtnOrderNoclass_name: TStringField;
    quGoodsRec: TADOQuery;
    quGoodsReccreator: TStringField;
    quGoodsRecdate: TStringField;
    quGoodsRecdeliver: TStringField;
    quGoodsRecddate: TStringField;
    quGoodsRecconfirmer: TStringField;
    quGoodsReccdate: TStringField;
    quGoodsRecorder_no: TStringField;
    quGoodsRecdoc_no: TStringField;
    quGoodsRecorg: TStringField;
    quGoodsRecGetType: TSmallintField;
    quGoodsRecOrder_Location: TStringField;
    quGoodsRecOrg_Code: TIntegerField;
    quGoodsRecOrg_Name: TStringField;
    quGoodsRecF_Code: TStringField;
    quGoodsRecF_Date: TStringField;
    quGoodsRecrec_no: TIntegerField;
    quGoodsRecOrderNo: TADOQuery;
    quGoodsRecOrderNoOrder_Req_Type: TSmallintField;
    quGoodsRecOrderNoOrder_Req_No: TStringField;
    quGoodsRecOrderNoState: TSmallintField;
    quGoodsRecOrderNoCreator: TStringField;
    quGoodsRecOrderNoCreate_Date: TStringField;
    quGoodsRecOrderNoConfirmer: TStringField;
    quGoodsRecOrderNoConfirm_Date: TStringField;
    quGoodsRecOrderNoCredit_Suplier: TStringField;
    quGoodsRecOrderNoCS_Date: TStringField;
    quGoodsRecOrderNoService_Desc: TStringField;
    quGoodsRecOrderNoItem_Type: TSmallintField;
    quGoodsRecOrderNoItem_Class: TSmallintField;
    quGoodsRecOrderNoRequest_Refuse_Reason: TStringField;
    quGoodsRecOrderNoService_Type_No: TSmallintField;
    quGoodsRecOrderNoEstimate_Price: TFloatField;
    quGoodsRecOrderNoDeal_Kind: TSmallintField;
    quGoodsRecOrderNoInquiry_Date_Rec: TStringField;
    quGoodsRecOrderNoclass_name: TStringField;
    quGoodsRecOrderNoDealKind: TStringField;
    quGoodsRecOrderNoItemType: TStringField;
    quRec_Item: TADOQuery;
    quRec_Itemrec_no: TIntegerField;
    quRec_Itemitem_code: TStringField;
    quRec_Itembuy_price: TFloatField;
    quRec_Itemex_price: TFloatField;
    quRec_Itemamount: TIntegerField;
    quRec_ItemItem_name: TStringField;
    quRec_Itemitem_unit: TSmallintField;
    quRec_ItemUnit_Item_Desc: TStringField;
    quBillItems: TADOQuery;
    quBillItemsBill_Type: TSmallintField;
    quBillItemsBill_No: TIntegerField;
    quBillItemsItem_Code: TStringField;
    quBillItemsItem_Amount_Number: TIntegerField;
    quBillItemsItem_Name: TStringField;
    quBillItemsItem_Unit: TSmallintField;
    quBillItemsUnit_Item_Desc: TStringField;
    qugoods: TADOQuery;
    qugoodsradif: TIntegerField;
    qugoodsType: TStringField;
    quDetKar: TADOQuery;
    quDetRadif: TIntegerField;
    quDetKaritem_code: TStringField;
    quDetKaritem_name: TStringField;
    quDetKarclass_code: TSmallintField;
    quDetKaritem_desc: TStringField;
    quDetKaritem_unit: TSmallintField;
    quDetKarItem_Inventory: TIntegerField;
    quDetKarOrder_Point: TSmallintField;
    quDetKarInventory_Limit: TSmallintField;
    quDetKarCode: TSmallintField;
    quDetKarUnit_Item_Desc: TStringField;
    quItemKarCode: TSmallintField;
    quItemKarUnit_Item_Desc: TStringField;
    quItemKarrow: TStringField;
    qugoodsclass_code: TSmallintField;
    qugoodsclass_desc: TStringField;
    qugoodsclass_name: TStringField;
    qugoodsClass_Type: TSmallintField;
    qugoodsppc_code: TStringField;
    qugoodspc_code: TStringField;
    qugoodsps_code: TStringField;
    qugoodspc_desc: TStringField;
    qugoodsps_desc: TStringField;
    qugoodsppc_desc: TStringField;
    FontDialog1: TFontDialog;
    quUpdateNonMovGood: TADOQuery;
    quDeployLoc: TADOQuery;
    quDeployLocloc_code: TSmallintField;
    quDeployLocloc_desc: TStringField;
    quDeployLocemp_no: TStringField;
    quDeployLocunit_code: TSmallintField;
    quDeployLocorg_code: TSmallintField;
    quDeployLocdescr: TStringField;
    quDeployLocFLName: TStringField;
    quitem: TADOQuery;
    quitemitem_code: TStringField;
    quitemitem_name: TStringField;
    quitemclass_code: TSmallintField;
    quitemitem_desc: TStringField;
    quitemitem_unit: TSmallintField;
    quitemItem_Inventory: TIntegerField;
    quitemOrder_Point: TSmallintField;
    quitemInventory_Limit: TSmallintField;
    quitemclass_code_1: TSmallintField;
    quitemclass_desc: TStringField;
    quitemclass_name: TStringField;
    quitemClass_Type: TSmallintField;
    quitemppc_code: TStringField;
    quitempc_code: TStringField;
    quitemps_code: TStringField;
    quaccessf: TADOQuery;
    quaccessfEmp_NO: TStringField;
    quaccessfMCode: TIntegerField;
    quaccessfextag: TSmallintField;
    quaccessfnewtag: TSmallintField;
    quaccessfedittag: TSmallintField;
    quaccessfdeltag: TSmallintField;
    quaccessfprinttag: TSmallintField;
    quaccessfsrchtag: TSmallintField;
    quaccessfprevtag: TSmallintField;
    quaccessfnexttag: TSmallintField;
    quaccessfruntag: TSmallintField;
    quaccessflisttag: TSmallintField;
    quaccessfmnum: TStringField;
    quMgdetRecNoclass_code: TSmallintField;
    quMgdetRecNoGetType: TSmallintField;
    quMgdetRecNoOrg: TStringField;
    quMgdetRecNoOrg_Code: TIntegerField;
    qulensgoods_code: TStringField;
    quincongoods_code: TStringField;
    quanimalGoods_code: TStringField;
    qumoveablegoods_code: TStringField;
    quItem_ReqGoods_Code: TStringField;
    qumachingoods_code: TStringField;
    qutaxidermygoods_code: TStringField;
    qufilmgoods_code: TStringField;
    quItem_ReqConfGoods_Code: TStringField;
    quItem_ReqVerGoods_Code: TStringField;
    qutextilegoods_code: TStringField;
    quInsertLog: TADOQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    LargeintField1: TLargeintField;
    quInsertUser: TADOQuery;
    SmallintField2: TSmallintField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    LargeintField2: TLargeintField;
    quDetailGroups: TADOQuery;
    quMasterGroups: TADOQuery;
    dsDetailGroups: TDataSource;
    dcCat: TDataSource;
    quMasterGroupsPk_MasterGroup: TSmallintField;
    quMasterGroupsClass_Code: TSmallintField;
    quMasterGroupsDesc: TStringField;
    quDetailGroupsPK_DetailGroup: TSmallintField;
    quDetailGroupsPK_MasterGroup: TSmallintField;
    quDetailGroupsClass_Code: TSmallintField;
    quDetailGroupsDesc: TStringField;
    quDetKarPk_Item: TIntegerField;
    quDetKarPK_DetailGroups: TSmallintField;
    quDetKarPK_MasterGroups: TSmallintField;
    quDetKarPosition_Code: TStringField;
    quMalClassgoods_code: TStringField;
    quMalClassppc_code: TStringField;
    quMalClasspc_code: TStringField;
    quMalClassps_code: TStringField;
    qutransTra_gcode: TStringField;
    quantAnt_gcode: TStringField;
    quJustItem: TADOQuery;
    dsJustItem: TDataSource;
    quOrg: TADOQuery;
    quOrgOrg_Code: TIntegerField;
    quOrgOrg_Name: TStringField;
    quOrgOrg_Addr: TStringField;
    quOrgOrg_Mast_Code: TIntegerField;
    dsOrg: TDataSource;
    quGoodsUser: TADOQuery;
    quGoodsUseruserName: TStringField;
    quGoodsUserUt_Name: TStringField;
    quGoodsUserDescr: TStringField;
    quGoodsUserOrg_Code: TIntegerField;
    quGoodsUserUnit_Code: TSmallintField;
    quGoodsUserCost_Code: TSmallintField;
    quGoodsUserLoc_Code: TSmallintField;
    quGoodsUserUser_emp_no: TStringField;
    quGoodsUserGet_Date: TStringField;
    quGoodsUserDescr_1: TStringField;
    quCat: TADOQuery;
    quCatId: TIntegerField;
    quCatCatStr: TStringField;
    dsMasterGroups: TDataSource;
    qumuseumMts_gcode: TStringField;
    qustampSts_gcode: TStringField;
    quItem_ReqLoc_Code: TSmallintField;
    quGetValues: TADOQuery;
    quGetValuesloc_code: TSmallintField;
    quGetValuesloc_desc: TStringField;
    quGetValuesemp_no: TStringField;
    quGetValuesunit_code: TSmallintField;
    quGetValuesorg_code: TIntegerField;
    quGetValuesdescr: TStringField;
    quGetValuesUt_Mast_Code: TSmallintField;
    quBillKarLoc_code: TSmallintField;
    quBillKarrec_Loc_code: TSmallintField;
    quBookbos_gcode: TStringField;
    qumedicalgoods_code: TStringField;
    qugoods_recrec_no: TIntegerField;
    qugoods_reccreator: TStringField;
    qugoods_recdate: TStringField;
    qugoods_recdeliver: TStringField;
    qugoods_recddate: TStringField;
    qugoods_recconfirmer: TStringField;
    qugoods_reccdate: TStringField;
    qugoods_recorder_no: TStringField;
    qugoods_recdoc_no: TStringField;
    qugoods_recorg: TStringField;
    qugoods_recGetType: TSmallintField;
    qugoods_recOrder_Location: TStringField;
    qugoods_recOrg_Code: TIntegerField;
    qugoods_recF_Code: TStringField;
    qugoods_recF_Date: TStringField;
    qugoods_recBFLName: TStringField;
    quItem_ReqStateDesc: TStringField;
    quItem_ReqVerLoc_Code: TSmallintField;
    quItem_ReqVerStateDesc: TStringField;
    quItem_ReqConfLoc_Code: TSmallintField;
    quItem_ReqConfStateDesc: TStringField;
    quGoodsRecGet_Type: TStringField;
    quBillKarBilltype: TStringField;
    quBillKarST: TStringField;
    quUseTransST: TStringField;
    qugoodsClassType: TStringField;
    quReq_ItemStateName: TStringField;
    quReq_ItemnItem: TStringField;
    quRec_Itemexprice: TFloatField;
    quItem_ReqReq_TypeName: TStringField;
    quItem_ReqConfReq_TypeName: TStringField;
    quItem_ReqVerReq_TypeName: TStringField;
    quClass: TADOQuery;
    quClassclass_code: TSmallintField;
    quClassclass_desc: TStringField;
    quClassclass_name: TStringField;
    quEmp: TADOQuery;
    quEmpemp_no: TStringField;
    quEmpname: TStringField;
    quEmpfamily: TStringField;
    quEmpfather_name: TStringField;
    quEmpbirth_certificate_no: TStringField;
    quEmpbirth_date: TStringField;
    quEmpsex: TSmallintField;
    quEmpnationality_code: TSmallintField;
    quEmpbirth_loc_code: TStringField;
    quEmpcer_loc_code: TStringField;
    quEmpnational_card_no: TStringField;
    quEmpis_married: TSmallintField;
    quEmpnum_of_child: TSmallintField;
    quEmpreligion: TSmallintField;
    quEmphealth_state: TStringField;
    quEmpsoldiery: TSmallintField;
    quEmpedu_degree: TIntegerField;
    quEmpimmunity_reason: TStringField;
    quEmplast_school_name: TStringField;
    quEmplast_school_loc_code: TStringField;
    quEmplast_diploma_date: TStringField;
    quEmpwriting: TStringField;
    quEmpemp_type: TSmallintField;
    quEmporg_code: TIntegerField;
    quEmpunit_code: TSmallintField;
    quEmpisargary_state: TSmallintField;
    quEmpemployed_emp_law: TSmallintField;
    quEmpemp_state: TSmallintField;
    quEmpcomment: TStringField;
    quEmpemp_photo: TBlobField;
    quEmpdiploma_name: TStringField;
    quEmppost_no: TIntegerField;
    quEmpjob_lev: TSmallintField;
    quEmpIn_First: TFloatField;
    quEmpemp_code: TStringField;
    quEmpwork_org_code: TIntegerField;
    quEmpFLName: TStringField;
    quRec_ItemNotes: TStringField;
    qugoods_recNotes: TStringField;
    quGoodsRecNotes: TStringField;
    quJustItemPk_Item: TIntegerField;
    quJustItemitem_name: TStringField;
    quJustItemclass_code: TSmallintField;
    quJustItemitem_desc: TStringField;
    quJustItemitem_unit: TSmallintField;
    quJustItemItem_Inventory: TIntegerField;
    quJustItemOrder_Point: TSmallintField;
    quJustItemInventory_Limit: TSmallintField;
    quJustItemPK_DetailGroups: TSmallintField;
    quJustItemPK_MasterGroups: TSmallintField;
    quJustItemPosition_Code: TStringField;
    quJustItemItem_Code: TStringField;
    quJustItemclass_code_1: TSmallintField;
    quJustItemclass_desc: TStringField;
    quJustItemclass_name: TStringField;
    quJustItemClass_Type: TSmallintField;
    quJustItemppc_code: TStringField;
    quJustItempc_code: TStringField;
    quJustItemps_code: TStringField;
    quDetUseTransTotal: TFloatField;
    procedure DabDataCreate(Sender: TObject);
    procedure quDAB1AfterScroll(DataSet: TDataSet);
    procedure quLnoteAfterScroll(DataSet: TDataSet);
    procedure DabDataDestroy(Sender: TObject);
    procedure quTrnIntLet1AfterScroll(DataSet: TDataSet);
    procedure quGetIntLetAfterScroll(DataSet: TDataSet);
    procedure quGetIntErAfterScroll(DataSet: TDataSet);
    procedure quDabAfterScroll(DataSet: TDataSet);
    procedure quTrnIntLetAfterScroll(DataSet: TDataSet);
    procedure quLnoteIntAfterScroll(DataSet: TDataSet);
    procedure quGetErjaAfterScroll(DataSet: TDataSet);
    procedure quGetLetOwnAfterScroll(DataSet: TDataSet);
    procedure quPersnAfterScroll(DataSet: TDataSet);
    procedure quGroupAfterScroll(DataSet: TDataSet);
    procedure qudocAfterScroll(DataSet: TDataSet);
    procedure qubillAfterScroll(DataSet: TDataSet);
    procedure qumovementAfterScroll(DataSet: TDataSet);
    procedure qudocsendAfterScroll(DataSet: TDataSet);
    procedure qugoodsAfterScroll(DataSet: TDataSet);
    procedure qugoods_recAfterScroll(DataSet: TDataSet);
    procedure quMbillAfterScroll(DataSet: TDataSet);
    procedure qurec_detPriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
//    procedure InGridKeyPress(Key: Char);
    procedure quItem_ReqConfAfterScroll(DataSet: TDataSet);
    procedure quItem_ReqAfterScroll(DataSet: TDataSet);
    procedure quItem_ReqVerAfterScroll(DataSet: TDataSet);
    procedure quGoodsRecAfterScroll(DataSet: TDataSet);
    procedure quUseTransAfterScroll(DataSet: TDataSet);
    procedure qugoodsradifGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure quDetRadifGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
{    procedure qugoodsAfterScroll(DataSet: TDataSet);}
    procedure quReq_ItemAfterOpen(DataSet: TDataSet);
    procedure ADOCBeforeDisconnect(Sender: TObject);
    procedure ADOCInfoMessage(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOCAfterConnect(Sender: TObject);


//******************************************************************************
  private
    { Private declarations }
  public
     SysVersion : integer;
     IsInXpMode,IsInDebug : Boolean;
     FName,Lname  :String[20];
     emp_no : String ;
     LetPic   :Timage;
     AppPath  :string;
     SerVerName :string;
     DataBaseN  :string;
     SalVar,MahVar     :integer;
     function  DelSpace(tempStr: string): String;
     function  checkkey(key : char) : char;
     procedure SetDataBase(Dbn,SrvN:string);
     procedure ShowPopupMessage(Msg:String);
     procedure ShowPopupMessageSmall(Msg:String);
     procedure ShowPopupMessageSelectView(Msg:String);
     procedure SendLog2DB;
     function  checkDate(str : string):boolean;
     function  UpdateMovGoods   ( GoodCode : String      ; Stat : integer): Boolean;
     function  UpdateNonMovGoods( Plaque_NoCode : String ; Stat : integer): Boolean;
     function  CheckTime( MyTime : String): boolean ;
     function  disp_date:String;

    { Public declarations }
  end;


var
  OrganizCode : string;
  OrganizName : string;
  MasterOrganizName : string;
  DabData : TDabData;
  fDate : TFar_date;
implementation

uses fmGsnFrm,  UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}


function TDabData.checkkey(key : char) : char;
 begin
  if (ord(key) < 48) or (ord(key) > 57) then
   if(ord(key) <> 8) then
       key := #0;
    checkkey := key;
 end;




function TDabData.checkDate(str : string):boolean;
var
  y, m, d : string[5];
begin
   y := str[1] + str[2];
   m := str[4] + str[5];
   d := str[7] + str[8];
 if (length(str) <> 8) then
   checkDate := false
 else if ( y = '00' ) or (m = '00') or (d = '00') then
   CheckDate := false
 else if(ord(str[1]) < 48) or (ord(str[1]) > 57) then
   checkDate := false
 else if(ord(str[2]) < 48) or (ord(str[2]) > 57) then
   checkDate := false
 else if(ord(str[4]) < 48) or (ord(str[4]) > 57) then
   checkDate := false
 else if(ord(str[5]) < 48) or (ord(str[5]) > 57) then
   checkDate := false
 else if(ord(str[7]) < 48) or (ord(str[7]) > 57) then
   checkDate := false
 else if(ord(str[8]) < 48) or (ord(str[8]) > 57) then
   checkDate := false
 else
   checkDate := true;
end;


procedure TDabData.DabDataCreate(Sender: TObject);
var GenDataFile,GenFile    :TiniFile;
    label 12;
begin
  ADOC.Connected:=False;
  ADOC.ConnectionString:='';
12:
  AppPath:=ActivePath;
  GenFile:=TiniFile.Create(fullIniPath);
  SalVar:=strtoint(GenFile.ReadString('Sal','CurrentSal',copy(disp_date,1,2)));
  MahVar:=GenFile.Readinteger('Mah','CurrentMah',0);
  GenFile.Free;
  GenDataFile:=TiniFile.Create(fullIniPath);
  SerVerName:=GenDataFile.ReadString('Connection','SERVER','');
  DataBaseN:=GenDataFile.ReadString('Connection','db','');
  OrganizCode:=GenDataFile.ReadString('Organization','AmvOrg','1');
  MasterOrganizName:=GenDataFile.ReadString('Organization','MasterOrganizName','æÒÇÑÊ ßÔæÑ');
  GenDataFile.Free;
  SetDataBase(DataBaseN,SerVerName);
  if ADOC.ConnectionString='' then
  begin
   AddLog('ConnectionString is Null');
   Exit;
  end;
  ADOC.Connected:=True;
  ADOC.KeepConnection:=True;
  LetPic:=Timage.Create(self);
  quOrg.Close;
  quOrg.Parameters[0].Value:=StrToInt(OrganizCode);
  quOrg.Open;
  OrganizName:=quOrgOrg_Name.Value;
end;

procedure TDabData.quDAB1AfterScroll(DataSet: TDataSet);
var  mes :TMessage;
begin
  mes.Msg:=NEXT_LET;
  Application.MainForm.Dispatch(mes);
end;

procedure TDabData.quLnoteAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
   mes.Msg:=CHN_FILES;
   mes.LParam:=CHN_SAD;
   Application.MainForm.dispatch(mes);
end;
procedure TDabData.DabDataDestroy(Sender: TObject);
begin
   LetPic.free;
end;

procedure TDabData.quTrnIntLet1AfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN;
  Application.MainForm.dispatch(mes);
end;

procedure TDabData.quGetIntLetAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN1;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quGetIntErAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN2;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.SetDataBase(Dbn,SrvN:string);
var ss,ss1,ss2  :string;
begin
  if((Dbn='') or (SrvN='')) then
  begin
    AddLog('Server Name or database name Is Null ');
    Exit;
  end;
  ADoc.Connected:=false;
  ss:='Provider=SQLOLEDB.1;password=ladyofrings;Persist Security Info=true;User ID=sima2;';
//  ss:='Provider=SQLOLEDB.1;Persist Security Info=false;User ID=sa;';
  ss1:='Initial Catalog='+DbN+';';
  ss2:='Data Source='+SrVN;
  ss:=ss+ss1+ss2;
  ADoc.ConnectionString:=ss;
end;
//*****************************************************************************
procedure TDabData.quDabAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=NEXT_LET;
  Application.MainForm.Dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quTrnIntLetAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quLnoteIntAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
   mes.Msg:=CHN_FILES;
   mes.LParam:=CHN_INT;
   Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quGetErjaAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN2;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quGetLetOwnAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CRD_VRD;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quPersnAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
     mes.Msg:=SCROLL;
     mes.Lparam:=SCROLL_HOKM;
     Application.MainForm.Dispatch(mes);
end;
//*****************************************************************************
procedure TDabData.quGroupAfterScroll(DataSet: TDataSet);
begin
{  if quGroup.recordcount>0 then
    begin
      quCategory.close;
      quCategory.params[0].asinteger:=quGroupGrpCode.asinteger;
      quCategory.open;
    end;}
end;
//*****************************************************************************
procedure TDabData.qudocAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TDabData.qubillAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TDabData.qumovementAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TDabData.qudocsendAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TDabData.qugoodsAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TDabData.qugoods_recAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TDabData.quMbillAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
function TDabData.UpdateMovGoods(GoodCode : String ; Stat : integer):Boolean;
begin
   quUpdateMovGood.Close;
   try
      ADOC.BeginTrans;

      quUpdateMovGood.parameters[0].value := Stat;
      quUpdateMovGood.parameters[1].value := GoodCode;

      quUpdateMovGood.Prepared := True;
      quUpdateMovGood.ExecSql;

      ADOC.CommitTrans;
   except
      ADOC.RollbackTrans;
   end;

   if (quUpdateMovGood.RowsAffected <>1 )
       then  UpdateMovGoods := False
       else  UpdateMovGoods := True;
end;
//*****************************************************************************
function TDabData.UpdateNonMovGoods( Plaque_NoCode : String ; Stat : integer):Boolean;
begin
   quUpdateNonMovGood.Close;
   try
      ADOC.BeginTrans;

      quUpdateNonMovGood.parameters[0].value := Stat;
      quUpdateNonMovGood.parameters[1].value := Plaque_NoCode;

      quUpdateNonMovGood.Prepared := True;
      quUpdateNonMovGood.ExecSql;

      ADOC.CommitTrans;
   except
      ADOC.RollbackTrans;
   end;

   if (quUpdateNonMovGood.RowsAffected <>1 )
       then  UpdateNonMovGoods := False
       else  UpdateNonMovGoods := True;
end;
//*****************************************************************************
function TDabData.CheckTime( MyTime : String): boolean ;
var
  Hour , Minut:string;
  checkString :String ;
begin
 Hour :=  copy( MyTime,0,2);
 Minut := copy( MyTime,4,2);
 CheckString := copy(MyTime ,5,1);

 if (Hour < '24')and (Minut <'59')and(CheckString <> ' ') then
    CheckTime := True
 else
    CheckTime := false ;
end;
//*****************************************************************************
procedure TDabData.qurec_detPriceGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if  Sender.DataSet.Fields[2].AsFloat * sender.DataSet.Fields[4].AsFloat <> 0
       then  Text := FloatToStr(Sender.DataSet.Fields[2].AsFloat
                    * sender.DataSet.Fields[4].AsFloat)
       else   Text :=''
end;
//****************************************************************************
procedure TDabData.ShowPopupMessage(Msg: String);
begin
   MSNPopUp1.Text:=Msg;
   MSNPopUp1.ShowPopUp;
end;
procedure TDabData.ShowPopupMessageSmall(Msg: String);
begin
   if(IsInDebug) then
   begin
     MSNPopUp1.Font.Size:=8;
     MSNPopUp1.Font.Style:=[];
     MSNPopUp1.Text:=Msg;
     MSNPopUp1.ShowPopUp;
     MSNPopUp1.Font.Style:=[fsBold];
     MSNPopUp1.Font.Size:=10;
   end;
   AddLog(Msg);
end;

procedure TDabData.ShowPopupMessageSelectView(Msg: String);

begin
   if(IsInDebug) then
   begin
     MSNPopUp1.Width:=500;
     MSNPopUp1.Height:=150;
     MSNPopUp1.Font.Size:=8;
     MSNPopUp1.Font.Style:=[];
     MSNPopUp1.Text:=Msg;
//     MSNPopUp1.Shod

  end;
end;
function TDabData.DelSpace(tempStr: string): String;
var  i,j:integer;
     St :String;
begin
   St:= Trim(tempStr);
   j := Length(St);
   i :=1;
   While i < j do
   begin
     if St[i] =' ' then
     begin
        Delete(St,i,1);
        i:= i-1;
        j:= Length(St);
     end;
     i:= i+1;
   end;
   DelSpace := St;
end;
procedure TDabData.quItem_ReqConfAfterScroll(DataSet: TDataSet);
var
mes:Tmessage;
begin
  mes.msg:=SCROLL;
  mes.Lparam:=0;
  Application.mainform.Dispatch(mes);
end;

procedure TDabData.quItem_ReqAfterScroll(DataSet: TDataSet);
begin
 quReq_Item.close;
 quReq_Item.Parameters[0].value:=quItem_ReqReq_No.asinteger;
 quReq_Item.open;
end;

procedure TDabData.quItem_ReqVerAfterScroll(DataSet: TDataSet);
var
mes:Tmessage;
begin
  mes.msg:=SCROLL;
  mes.Lparam:=0;
  Application.mainform.Dispatch(mes);
end;

procedure TDabData.quGoodsRecAfterScroll(DataSet: TDataSet);
var
    Mes : TMessage ;
begin
    Mes.Msg := F_SCROLL ;
    Application.MainForm.Dispatch(Mes) ;
end;



procedure TDabData.quUseTransAfterScroll(DataSet: TDataSet);
var
    Mes : TMessage ;
begin
    Mes.Msg := F_SCROLL ;
    Application.MainForm.Dispatch(Mes);
end;

procedure TDabData.qugoodsradifGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if  quGoods.IsEmpty  then  Text:=''
   else  Text:=IntToStr(quGoods.recno) ;
end;

procedure TDabData.quDetRadifGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
 if  quDetKar.IsEmpty  then  Text:=''
   else  Text:=IntToStr(quDetKar.recno) ;
end;



procedure TDabData.quReq_ItemAfterOpen(DataSet: TDataSet);
var
mes:Tmessage;
begin
  mes.msg:=OPEN;
  mes.Lparam:=0;
  Application.mainform.Dispatch(mes);
end;
procedure TDabData.SendLog2DB;
var
  fullPath:String;
  tmp:OleVariant;
begin
  if(emp_no='') then exit;

  fullPath:=fullLogPath;
  quInsertLog.Parameters[0].Value:=emp_no;
  if(FileExists(fullPath)) then
  begin
     quInsertLog.Parameters[1].LoadFromFile(fullPath,quInsertLog.Parameters[1].DataType);
  end
  else
   quInsertLog.Parameters[1].value:='File Not exist';
  try
    quInsertLog.Prepared:=True;
    quInsertLog.ExecSQL;
    if(FileExists(fullPath)) then  DeleteFile(fullPath);
  except;
    try
      tmp:='äÔÏ';
      quInsertLog.Parameters[1].ParameterObject.Set_Value(tmp);
      quInsertLog.ExecSQL;
    except
    end;
  end;
end;



procedure TDabData.ADOCBeforeDisconnect(Sender: TObject);
var quDelete:TADOQuery;
begin
  quDelete:=TADOQuery.Create(self);
  quDelete.Connection:=ADOC;
  quDelete.SQL.clear;
  quDelete.SQL.Text:='Delete Tbl_AmvalUsers where spid=@@SPID';
  quDelete.ExecSQL;
  quDelete.Destroy;
end;

procedure TDabData.ADOCInfoMessage(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  ShowPopupMessageSmall(Error.Description);
end;

procedure TDabData.ADOCAfterConnect(Sender: TObject);
begin
  ShowPopupMessageSmall('äÓÎå äÑã ÇÝÒÇÑ ÊãÇÓ ÈÇ ÇíÇå ÏÇÏå ->'+ADOC.Version);
end;
function TDabData.disp_date:String;
begin
 if fDate=nil then fdate:=TFar_date.Create(Application);
 result:=fdate.disp_date(ADOC);
end;

end.
