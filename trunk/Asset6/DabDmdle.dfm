�
 TDABDATA 0 TPF0TDabDataDabDataOldCreateOrderOnCreateDabDataCreate	OnDestroyDabDataDestroyHeight�Width� TADOConnectionADOCCommandTimeoutxConnectionStringeProvider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=hrs;Data Source=automationConnectionTimeoutCursorLocationclUseServerKeepConnectionLoginPromptModecmReadWriteProvider
SQLOLEDB.1AfterConnectADOCAfterConnectBeforeDisconnectADOCBeforeDisconnectOnInfoMessageADOCInfoMessageLeftTop  	TADOQueryquant
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings	Select * From antiqueorder by ant_gCode Left�Top0 TStringFieldquantAnt_Hprd	FieldNameAnt_Hprd  TStringFieldquantAnt_dloc	FieldNameAnt_dlocSize2  TStringFieldquantAnt_ddate	FieldName	Ant_ddate	FixedChar	Size  TStringFieldquantAnt_weight	FieldName
Ant_weightSize  TStringFieldquantAnt_color	FieldName	Ant_colorSize
  TStringFieldquantAnt_dim	FieldNameAnt_dim  TStringFieldquantAnt_mark	FieldNameAnt_markSize  TStringFieldquantAnt_Pdate	FieldName	Ant_Pdate	FixedChar	Size  TStringFieldquantAnt_desc	FieldNameAnt_descSize2  TStringFieldquantAnt_gcode	FieldName	Ant_gcode	FixedChar	Size   	TADOQueryqutrans
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings	Select *,O    typecase=case Tra_type when 0 then 'سواري' when 1 then 'كاميون'end  from Transport  LeftPTop�  TSmallintFieldqutransTra_type	FieldNameTra_type  TStringFieldqutransTra_mcou	FieldNameTra_mcouSize  TStringFieldqutransTra_mfac	FieldNameTra_mfacSize  TStringFieldqutransTra_eno	FieldNameTra_eno	FixedChar	Size
  TStringFieldqutransTra_cno	FieldNameTra_cno	FixedChar	Size
  TStringFieldqutransTra_pno	FieldNameTra_pno	FixedChar	Size  TStringFieldqutransTra_color	FieldName	Tra_colorSize
  TStringFieldqutransTra_mod	FieldNameTra_mod	FixedChar	Size  TStringFieldqutransTra_cap	FieldNameTra_cap  TStringFieldqutransTra_mdate	FieldName	Tra_mdate	FixedChar	Size  TStringFieldqutransTra_desc	FieldNameTra_descSize2  TStringFieldqutranstypecase	FieldNametypecaseReadOnly	Size  TStringFieldqutransTra_gcode	FieldName	Tra_gcode	FixedChar	Size   	TADOQueryqumachin
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings	Select * from machinery_spec  LeftTop�  TStringFieldqumachinmaker_country	FieldNamemaker_countrySize  TStringFieldqumachinmaker_factory	FieldNamemaker_factorySize  TStringFieldqumachinfactory_no	FieldName
factory_noSize  TStringFieldqumachinengine_no	FieldName	engine_no  TStringFieldqumachinmodel	FieldNamemodelSize  TStringFieldqumachincapacity	FieldNamecapacity  TStringFieldqumachinserial	FieldNameserial  TStringFieldqumachinmake_date	FieldName	make_date	FixedChar	Size  TStringFieldqumachinspecification	FieldNamespecificationSize2  TStringFieldqumachingoods_code	FieldName
goods_code	FixedChar	Size   	TADOQueryquBook
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings^   Select *, ctypecase=case bos_ctype when 0 then 'زركوب' when 1 then 'گالينگور'end,�    chtypecase=case bos_chtype when 0 then 'نستعليق' when 1 then 'شكسته'when 2 then 'شكسته نستعليق'when 3 then 'كوفي'end from book_spec  Left�Top TStringFieldquBookbos_name	FieldNamebos_nameSize2  TStringFieldquBookbos_aut	FieldNamebos_autSize  TStringFieldquBookbos_date	FieldNamebos_date	FixedChar	Size  TStringFieldquBookbos_trans	FieldName	bos_transSize  TStringFieldquBookbos_publ	FieldNamebos_publSize(  TIntegerFieldquBookbos_num	FieldNamebos_num  TStringFieldquBookbos_dim	FieldNamebos_dim  TStringFieldquBookbos_ptype	FieldName	bos_ptypeSize  TSmallintFieldquBookbos_ctype	FieldName	bos_ctype  TSmallintFieldquBookbos_chtype	FieldName
bos_chtype  TStringFieldquBookbos_cname	FieldName	bos_cname  TStringFieldquBookbos_desc	FieldNamebos_descSize2  TStringFieldquBookctypecase	FieldName	ctypecaseReadOnly	Size  TStringFieldquBookchtypecase	FieldName
chtypecaseReadOnly	Size  TStringFieldquBookbos_gcode	FieldName	bos_gcode	FixedChar	Size   	TADOQueryqustamp
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsT   Select *, qulcase=case Sts_qul when 0 then 'سالم' when 1 then 'ناسالم'end,I   percase=case Sts_perf when 0 then 'دارد' when 1 then 'ندارد'end,U    backcase=case Sts_back when 0 then 'چسب دار' when 1 then 'بدون چسب'end,T    facecase=case Sts_face when 0 then 'ممهور' when 1 then 'غير ممهور'end,�    typecase=case Sts_type when 0 then 'يادگاري' when 1 then 'موزه اي'when 2 then ' نفيس' when 3 then 'داراي ارزشهاي خاص 'end from stamp_spec Left Toph TSmallintFieldqustampSts_Type	FieldNameSts_Type  TFloatFieldqustampSts_price	FieldName	Sts_price  TSmallintFieldqustampSts_len	FieldNameSts_len  TSmallintFieldqustampSts_wit	FieldNameSts_wit  TStringFieldqustampSts_isue	FieldNameSts_isueSize  TStringFieldqustampSts_design	FieldName
Sts_design  TStringFieldqustampSts_date	FieldNameSts_date	FixedChar	Size  TSmallintFieldqustampSts_qul	FieldNameSts_qul  TStringFieldqustampSts_ptype	FieldName	Sts_ptypeSize  TSmallintFieldqustampSts_perf	FieldNameSts_perf  TSmallintFieldqustampSts_back	FieldNameSts_back  TSmallintFieldqustampSts_face	FieldNameSts_face  TStringFieldqustampSts_desc	FieldNameSts_descSize2  TStringFieldqustampqulcase	FieldNamequlcaseReadOnly	Size  TStringFieldqustamppercase	FieldNamepercaseReadOnly	Size  TStringFieldqustampbackcase	FieldNamebackcaseReadOnly	Size  TStringFieldqustampfacecase	FieldNamefacecaseReadOnly	Size	  TStringFieldqustamptypecase	FieldNametypecaseReadOnly	Size  TStringFieldqustampSts_gcode	FieldName	Sts_gcode	FixedChar	Size   	TADOQueryqumuseum
ConnectionADOC
CursorTypectStatic
Parameters SQL.Stringsk   Select * , typecase=case mts_type when 0 then 'موزه اي' when 1 then 'نفيس'end from Museum_textice   LeftPTop TSmallintFieldqumuseumMts_type	FieldNameMts_type  TStringFieldqumuseumMts_loc	FieldNameMts_loc  TStringFieldqumuseumMts_style	FieldName	Mts_style  TStringFieldqumuseumMts_rag	FieldNameMts_rag  TStringFieldqumuseumMts_mat	FieldNameMts_matSize  TStringFieldqumuseumMts_woof	FieldNameMts_woofSize  TStringFieldqumuseumMts_fuzz	FieldNameMts_fuzzSize  TStringFieldqumuseumMts_plane	FieldName	Mts_planeSize  TStringFieldqumuseumMts_bcolor	FieldName
Mts_bcolorSize
  TStringFieldqumuseumMts_color	FieldName	Mts_colorSize
  TStringFieldqumuseumMts_len	FieldNameMts_lenSize
  TStringFieldqumuseumMts_with	FieldNameMts_withSize
  TStringFieldqumuseumMts_area	FieldNameMts_areaSize
  TStringFieldqumuseumMts_date	FieldNameMts_date	FixedChar	Size  TStringFieldqumuseumMts_frame	FieldName	Mts_frameSize  TStringFieldqumuseumMts_old	FieldNameMts_old  TStringFieldqumuseumMts_degree	FieldName
Mts_degreeSize  TStringFieldqumuseumMts_pdate	FieldName	Mts_pdate	FixedChar	Size  TStringFieldqumuseumtypecase	FieldNametypecaseReadOnly	Size  TStringFieldqumuseumMts_gcode	FieldName	Mts_gcode	FixedChar	Size   	TADOQueryquincon
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings!Select * from inconsumption_goods LeftTop TStringFieldquinconmaker_country	FieldNamemaker_country  TStringFieldquinconmaker_unit	FieldName
maker_unitSize  TIntegerFieldquinconweight	FieldNameweight  TStringFieldquincondimension	FieldName	dimension  TStringFieldquinconcolor	FieldNamecolorSize
  TStringFieldquinconmodel	FieldNamemodelSize  TStringFieldquinconserial	FieldNameserial  TStringFieldquinconampere	FieldNameampereSize  TStringFieldquinconspecification	FieldNamespecificationSize2  TStringFieldquincongoods_code	FieldName
goods_code	FixedChar	Size   	TADOQueryquanimal
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings1   Select *, sexcase=case sex when 0 then 'ماده'&   when 1 then 'نر'end from Animal_spec  LeftTopp TSmallintFieldquanimalsex	FieldNamesex  TStringFieldquanimalorigin	FieldNameorigin  TStringFieldquanimalspecial_mark	FieldNamespecial_markSize  TStringFieldquanimalcolor	FieldNamecolorSize
  TSmallintFieldquanimalheight	FieldNameheight  TSmallintFieldquanimalage	FieldNameage  TStringFieldquanimalspecification	FieldNamespecificationSize2  TStringFieldquanimalsexcase	FieldNamesexcaseReadOnly	Size  TStringFieldquanimalgoods_code	FieldName
Goods_code	FixedChar	Size   	TADOQueryqufilm
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings  Select *, typecase=case type when 0 then 'نوار فيلم' when 1 then 'ديسكت'end, sizecase=case size_unit when 0 then 'ساعت' when 1 then 'دقيقه'when 2 then 'مگا بايت'end, mecase=case measure_unit when 0 then 'زمان' when 1 then 'ظرفيت'end from diskette_film_spec LeftPTop�  TStringFieldqufilmsubject	FieldNamesubjectSize  TSmallintField
qufilmtype	FieldNametype  TStringFieldqufilmgood_size	FieldName	good_sizeSize
  TSmallintFieldqufilmsize_unit	FieldName	size_unit  TSmallintFieldqufilmmeasure_unit	FieldNamemeasure_unit  TStringFieldqufilmspecification	FieldNamespecificationSize2  TStringFieldqufilmtypecase	FieldNametypecaseReadOnly	Size	  TStringFieldqufilmsizecase	FieldNamesizecaseReadOnly	Size  TStringFieldqufilmmecase	FieldNamemecaseReadOnly	Size  TStringFieldqufilmgoods_code	FieldName
goods_code	FixedChar	Size   	TADOQuery	qumedical
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings	Select * "from laboratory_medical_thing_spec Left� Top@ TStringFieldqumedicalmaker_country	FieldNamemaker_countrySize  TStringFieldqumedicalmaker_factory	FieldNamemaker_factorySize  TStringFieldqumedicalfactory_no	FieldName
factory_noSize  TStringFieldqumedicalmodel	FieldNamemodelSize  TStringFieldqumedicalserial	FieldNameserial  TStringFieldqumedicalspecification	FieldNamespecificationSize2  TStringFieldqumedicalgoods_code	FieldName
goods_code	FixedChar	Size   	TADOQueryqulens
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsSelect * from lens_glass_spec LefthTop TStringFieldqulensfactory_name	FieldNamefactory_nameSize  TStringFieldqulensfactory_no	FieldName
factory_noSize  TStringFieldqulensmodel	FieldNamemodelSize  TStringFieldqulenslens_power	FieldName
lens_powerSize  TStringFieldqulensserial	FieldNameserial  TStringFieldqulensmake_date	FieldName	make_date	FixedChar	Size  TStringFieldqulensspecification	FieldNamespecificationSize2  TStringFieldqulensgoods_code	FieldName
goods_code	FixedChar	Size   	TADOQuery	qutextile
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsZ   Select *, typecase=case texture_type when 0 then 'دستي' when 1 then 'ماشيني'end  from machine_manual_textile_spec  Left�Top�  TSmallintFieldqutextiletexture_type	FieldNametexture_type  TStringFieldqutextiletexture_loc	FieldNametexture_loc  TStringFieldqutextilemark	FieldNamemarkSize  TStringFieldqutextiletexture_date	FieldNametexture_date	FixedChar	Size  TStringFieldqutextilelength	FieldNamelengthSize
  TStringFieldqutextilewidth	FieldNamewidthSize
  TStringFieldqutextileback_color	FieldName
back_colorSize
  TStringFieldqutextileborder_color	FieldNameborder_colorSize
  TStringFieldqutextilespecification	FieldNamespecificationSize2  TStringFieldqutextilemap	FieldNamemapSize  TStringFieldqutextiletypecase	FieldNametypecaseReadOnly	Size  TStringFieldqutextilegoods_code	FieldName
goods_code	FixedChar	Size   	TADOQueryqutaxidermy
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsSelect * from texidermy_spec Left Top�  TStringFieldqutaxidermytype	FieldNametypeSize  TStringFieldqutaxidermyskeleton	FieldNameskeletonSize  TStringFieldqutaxidermyexternal_case	FieldNameexternal_caseSize  TStringFieldqutaxidermyfossil	FieldNamefossilSize  TStringFieldqutaxidermycollect_loc	FieldNamecollect_locSize  TStringFieldqutaxidermyspecification	FieldNamespecificationSize2  TStringFieldqutaxidermygoods_code	FieldName
goods_code	FixedChar	Size   	TADOQuery
qumoveable
ConnectionADOC
CursorTypectStatic
ParametersNameP0
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  NameP1
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  NameP2
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  NameP3
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue  NameP4
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue  NameP5
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue  NameP6
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  NameP7
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  Namep8
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size
Value   SQL.Stringsexec sp_moveable @State1=:p0,                 @State2=:p1,                 @State3=:p2,!                 @goods_Code=:p3,                  @Item_Name=:p4,                 @Org_Code=:p5,                  @Unit_Code=:p6,                 @Loc_Code=:p7,                 @Label=:p8 LefthToph TStringFieldqumoveableitem_code	FieldName	item_code	FixedChar	Size
  TIntegerFieldqumoveablereceipt_no	FieldName
receipt_no  TIntegerFieldqumoveablelabel	FieldNamelabel  TFloatFieldqumoveableBprice	FieldNameBprice  TFloatFieldqumoveableEprice	FieldNameEprice  TSmallintFieldqumoveableType	FieldNameType  TSmallintFieldqumoveableState	FieldNameState  TStringFieldqumoveableitem_name	FieldName	item_nameSize  TStringFieldqumoveableGoodS_CodeStr	FieldNameGoodS_CodeStrReadOnly		FixedChar	Size
  TStringFieldqumoveablectype	FieldNamectypeReadOnly	Size	  TStringFieldqumoveableStateName	FieldName	StateNameReadOnly	Size  TStringFieldqumoveablegoods_code	FieldName
goods_code	FixedChar	Size   	TADOQuery
qunonmgood
ConnectionADOC
CursorTypectStatic
ParametersNamep0
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep1
AttributespaSigned DataType
ftLargeint	PrecisionSizeValue  Namep2
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep3DataTypeftStringNumericScale� 	Precision� Size
Value  Namep4DataTypeftStringNumericScale� 	Precision� SizeValue   SQL.StringsXSelect   A. *,C.item_name, A.Plaque_No as Plaque_NoStr,County.County_Name,Cl.Class_Name,cowner = case A.owner_doc      when 0 then 'دارد'      when 1 then 'ندارد' end      ,      case A.State(          when 0 then 'ثــبت شـده'.          when 1 then 'درحال استفاده'1          when 2 then 'واگذار شده موقت'0          when 3 then 'واگذارشده دائم'.          when 4 then 'بـدون استفاده')          when 5 then 'از بين رفته'&          when 6 then 'تصـرف شده'*          when 7 then 'فروخته شـده'(          when 8 then 'حــذف شـده'    end as StateName4from nonmovable_goods A,County,item C,Goods_Class Clwhere      ('            A.item_code   = C.item_code(      and   C.class_code = Cl.class_code      and   Cl.class_Type = 17      and   ( state = :p0 or state = :p1 or state=:p2 )A      and   cast(Left (A.Loc_code,3)as int) = county.Country_CodeH      and   cast(SubString(A.Loc_code,4,2)as int) = county.Province_CodeF      and   cast(SubString(A.Loc_code,6,3)as int) = county.County_Code 
         ) or      ('            A.item_code   = C.item_code(      and   C.class_code = Cl.class_code      and   Cl.class_Type = 1      and   Plaque_No = :p3A      and   cast(Left (A.Loc_code,3)as int) = county.Country_CodeH      and   cast(SubString(A.Loc_code,4,2)as int) = county.Province_CodeF      and   cast(SubString(A.Loc_code,6,3)as int) = county.County_Code     ) or      ('            A.item_code   = C.item_code(      and   C.class_code = Cl.class_code      and   Cl.class_Type = 1       and   C.item_name like :p4A      and   cast(Left (A.Loc_code,3)as int) = county.Country_CodeH      and   cast(SubString(A.Loc_code,4,2)as int) = county.Province_CodeF      and   cast(SubString(A.Loc_code,6,3)as int) = county.County_Code     ) Left`Top�  TStringFieldqunonmgoodplaque_no	FieldName	plaque_no	FixedChar	Size
  TIntegerFieldqunonmgoodreg_no	FieldNamereg_no  TStringFieldqunonmgoodreg_date	FieldNamereg_date	FixedChar	Size  TStringFieldqunonmgoodloc_code	FieldNameloc_code	FixedChar	Size  TIntegerFieldqunonmgoodground_area	FieldNameground_area  TIntegerFieldqunonmgoodbuilding_area	FieldNamebuilding_area  TStringFieldqunonmgoodbounds	FieldNameboundsSize2  TStringFieldqunonmgoodaddress	FieldNameaddressSize2  TIntegerFieldqunonmgoodlength	FieldNamelength  TIntegerFieldqunonmgoodwidth	FieldNamewidth  TStringFieldqunonmgoodfacility	FieldNamefacilitySize2  TStringFieldqunonmgoodappendix	FieldNameappendixSize2  TFloatFieldqunonmgoodexpert_price	FieldNameexpert_price  TFloatFieldqunonmgoodbuy_price	FieldName	buy_price  TSmallintFieldqunonmgoodprice_unit	FieldName
price_unit  TSmallintFieldqunonmgoodarea_unit	FieldName	area_unit  TSmallintFieldqunonmgoodlength_unit	FieldNamelength_unit  TSmallintFieldqunonmgoodwidth_unit	FieldName
width_unit  TSmallintFieldqunonmgoodowner_doc	FieldName	owner_doc  TStringFieldqunonmgooditem_code	FieldName	item_code	FixedChar	Size
  TSmallintFieldqunonmgoodstate	FieldNamestate  TStringFieldqunonmgooddoc_no	FieldNamedoc_noSize  TStringFieldqunonmgooddoc_date	FieldNamedoc_date	FixedChar	Size  TStringFieldqunonmgoodReciever	FieldNameReciever	FixedChar	Size
  TStringFieldqunonmgoodFile_No	FieldNameFile_No	FixedChar	Size
  TSmallintFieldqunonmgooddoc_Type	FieldNamedoc_Type  TStringFieldqunonmgoodReg_Loc	FieldNameReg_LocSize  TIntegerFieldqunonmgoodOffice_No	FieldName	Office_No  TLargeintFieldqunonmgoodPrint_No	FieldNamePrint_No  TStringFieldqunonmgoodReg_Plaque	FieldName
Reg_PlaqueSize  TStringFieldqunonmgoodDoc_Desc	FieldNameDoc_DescSize�   TStringFieldqunonmgoodOwner_Org	FieldName	Owner_OrgSized  TStringFieldqunonmgoodUser_Org	FieldNameUser_OrgSized  TStringFieldqunonmgoodExt_Reciver	FieldNameExt_ReciverSize2  TStringFieldqunonmgoodExit_Date	FieldName	Exit_Date	FixedChar	Size  TStringFieldqunonmgoodDesc	FieldNameDescSize�   TStringFieldqunonmgooditem_name	FieldName	item_nameSize  TStringFieldqunonmgoodPlaque_NoStr	FieldNamePlaque_NoStr	FixedChar	Size
  TStringFieldqunonmgoodCounty_Name	FieldNameCounty_NameSize(  TStringFieldqunonmgoodClass_Name	FieldName
Class_NameSize2  TStringFieldqunonmgoodcowner	FieldNamecownerReadOnly	Size  TStringFieldqunonmgoodStateName	FieldName	StateNameReadOnly	Size   	TADOQueryqugoods_rec
ConnectionADOC
CursorTypectStaticAfterScrollqugoods_recAfterScroll
Parameters SQL.Strings*Select A.*,B.name+'  '+B.Family as BFLNamefrom goods_rec A,emp Bwhere A.creator=B.emp_no Left� Top0 TIntegerFieldqugoods_recrec_no	FieldNamerec_no  TStringFieldqugoods_reccreator	FieldNamecreator	FixedChar	Size
  TStringFieldqugoods_recdate	FieldNamedate	FixedChar	Size  TStringFieldqugoods_recdeliver	FieldNamedeliver	FixedChar	Size
  TStringFieldqugoods_recddate	FieldNameddate	FixedChar	Size  TStringFieldqugoods_recconfirmer	FieldName	confirmer	FixedChar	Size
  TStringFieldqugoods_reccdate	FieldNamecdate	FixedChar	Size  TStringFieldqugoods_recorder_no	FieldNameorder_no	FixedChar	Size  TStringFieldqugoods_recdoc_no	FieldNamedoc_noSize  TStringFieldqugoods_recorg	FieldNameorgSize2  TSmallintFieldqugoods_recGetType	FieldNameGetType  TStringFieldqugoods_recOrder_Location	FieldNameOrder_LocationSize(  TIntegerFieldqugoods_recOrg_Code	FieldNameOrg_Code  TStringFieldqugoods_recF_Code	FieldNameF_CodeSize  TStringFieldqugoods_recF_Date	FieldNameF_Date	FixedChar	Size  TStringFieldqugoods_recBFLName	FieldNameBFLNameReadOnly	SizeH  TStringFieldqugoods_recNotes	FieldNameNotesSize�    	TADOQuery	qurec_det
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsNselect A.*,B.item_name ,B.Item_Unit,Unit_Item.*, A.buy_price*A.Amount As Total3from rec_item A,item B Left Outer Join Unit_Item onB.Item_unit=Unit_Item.codewhere rec_no=:p1and a.item_code=B.item_code LeftPTopx TIntegerFieldqurec_detrec_no	FieldNamerec_no  TStringFieldqurec_detitem_code	FieldName	item_code	FixedChar	Size
  TFloatFieldqurec_detbuy_price	FieldName	buy_price  TFloatFieldqurec_detex_price	FieldNameex_price  TIntegerFieldqurec_detamount	FieldNameamount  TStringFieldqurec_detitem_name	FieldName	item_nameSize  TSmallintFieldqurec_detItem_Unit	FieldName	Item_Unit  TSmallintFieldqurec_detCode	FieldNameCode  TStringFieldqurec_detUnit_Item_Desc	FieldNameUnit_Item_Desc  TFloatFieldqurec_detTotal	FieldNameTotalReadOnly	   TDataSourcedsEmpDataSetquEmpLeftPTopP  TDataSource	dsOrgUnitDataSet	quOrgUnitLefthTop@  TDataSourcedsClassDataSetquClassLeft�Top8  TDataSourcedsItemDataSetquitemLeft�Top`  	TADOQuery	quOrgUnit
ConnectionADOC
CursorTypectStatic
ParametersNamep0
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSelect *From      Org_UnitWhere  Ut_Org_Code =:p0
and  UT_Code inF(Select Ut_Mast_Code From  Org_Unit where IsNull(Ut_Mast_Code,'')!='')Order by  Ut_Name LeftTop@ TSmallintFieldquOrgUnitUt_Org_Code	FieldNameUt_Org_Code  TSmallintFieldquOrgUnitUt_Code	FieldNameUt_Code  TStringFieldquOrgUnitUt_Name	FieldNameUt_NameSizeP  TSmallintFieldquOrgUnitUt_Mast_Code	FieldNameUt_Mast_Code   	TADOQueryquCostCenter
ConnectionADOC
CursorTypectStatic
ParametersName	UtOrgCodeDataType	ftIntegerSizeValue�  Name
UtMastCodeDataType
ftSmallintSizeValue�   SQL.StringsDeclare @UtOrgCode intDeclare @UtMastCode smallintSet @UtOrgCode=:UtOrgCodeSet @UtMastCode=:UtMastCodeSelect Cost_Code.*From   Org_Unit Cost_CodeHWhere (Cost_Code.Ut_Org_Code =@UtOrgCode  or   Isnull(@UtOrgCode,-1)=-1)Nand    ((Cost_Code.Ut_Mast_Code = @UtMastCode  or   Isnull(@UtMastCode,-1)=-1),          or  Cost_Code.Ut_Code=@UtMastCode) Order by  Cost_Code.Ut_Name LefthTop�  TIntegerFieldquCostCenterUt_Org_Code	FieldNameUt_Org_Code  TSmallintFieldquCostCenterUt_Code	FieldNameUt_Code  TStringFieldquCostCenterUt_Name	FieldNameUt_NameSizeP  TSmallintFieldquCostCenterUt_Mast_Code	FieldNameUt_Mast_Code   TDataSourcedsCostCenterDataSetquCostCenterLeft� Top�   TDataSourcedsDeployLocDataSetquDeployLocLeft Top�   TDataSource
dsMoveableDataSet
qumoveableLeft� Toph  TDataSource
dsnonmgoodDataSet
qunonmgoodLeftXTopp  	TADOQueryquUpdateMovGood
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned DataType
ftLargeint	PrecisionSizeValue   Prepared	SQL.StringsUpdate Moveable_GoodsSet    state =:p1where     Goods_Code  =:p2  Left�TopH  TDataSource
dsMalClassDataSet
quMalClassLeftXTop0  	TADOQuery
quMalClass
ConnectionADOC
CursorTypectStatic
ParametersNamep0
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  Namep1
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size
Value  Namep2
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue  Namep3
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue   SQL.Stringsexec  spshowmalclass 2@ClassCode =:p0, @GoodCode= :p1 , @SearchKey =:p2,@ClassCodeSearch =:p3 LeftTop0 TStringFieldquMalClassitem_code	FieldName	item_code	FixedChar	Size
  TIntegerFieldquMalClassreceipt_no	FieldName
receipt_no  TIntegerFieldquMalClasslabel	FieldNamelabel  TFloatFieldquMalClassBprice	FieldNameBprice  TFloatFieldquMalClassEprice	FieldNameEprice  TSmallintFieldquMalClassType	FieldNameType  TSmallintFieldquMalClassState	FieldNameState  TStringFieldquMalClassitem_name	FieldName	item_nameSize  TStringFieldquMalClassGoodS_CodeStrDisplayWidth	FieldNameGoodS_CodeStrReadOnly		FixedChar	Size  TSmallintFieldquMalClassclass_code	FieldName
class_code  TStringFieldquMalClassclass_desc	FieldName
class_descSized  TStringFieldquMalClassclass_name	FieldName
class_nameSize2  TSmallintFieldquMalClassClass_Type	FieldName
Class_Type  TStringFieldquMalClassctype	FieldNamectypeReadOnly	Size	  TStringFieldquMalClassStateName	FieldName	StateNameReadOnly	Size  TStringFieldquMalClassgoods_code	FieldName
goods_code	FixedChar	Size  TStringFieldquMalClassppc_code	FieldNameppc_code	FixedChar	Size  TStringFieldquMalClasspc_code	FieldNamepc_code	FixedChar	Size  TStringFieldquMalClassps_code	FieldNameps_code	FixedChar	Size   	TMSNPopUp	MSNPopUp1TexttextURL IconLeftIconTopWidth� HeightyGradientColor1��� GradientColor2clWhiteScrollSpeedFont.CharsetARABIC_CHARSET
Font.ColorclRedFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold HoverFont.CharsetDEFAULT_CHARSETHoverFont.ColorclBlueHoverFont.Height�HoverFont.NameMS Sans SerifHoverFont.StylefsUnderline Title   'EH'DTitleFont.CharsetARABIC_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OptionsmsnCascadePopupsmsnAllowScroll 
TextCursor	crDefault
PopupMargePopupStartXPopupStartYDefaultMonitordmActiveFormLeft�Top`  	TADOQueryquMgdetRecNo
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsBSelect  DISTINCT Ri.rec_no,I.class_code,GetType,Org,Org_Code from $  rec_Item Ri left outer join Item I  On Ri.Item_Code=i.Item_code   left outer join goods_rec Gr  on Ri.rec_no=Gr.rec_no Left Top  TIntegerFieldquMgdetRecNorec_no	FieldNamerec_no  TSmallintFieldquMgdetRecNoclass_code	FieldName
class_code  TSmallintFieldquMgdetRecNoGetType	FieldNameGetType  TStringFieldquMgdetRecNoOrg	FieldNameOrgSize2  TIntegerFieldquMgdetRecNoOrg_Code	FieldNameOrg_Code   	TADOQueryquUnit
ConnectionADOC
CursorTypectStatic
Parameters SQL.Stringsselect * from unit_item LeftTop�  TSmallintField
quUnitCode	FieldNameCode  TStringFieldquUnitUnit_Item_Desc	FieldNameUnit_Item_Desc   TDataSourcedsUnitDataSetquUnitLeftXTop   	TADOQuery	quItemKar
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsSelect * from Unit_Item Left� Top TSmallintFieldquItemKarCode	FieldNameCode  TStringFieldquItemKarUnit_Item_Desc	FieldNameUnit_Item_Desc  TStringFieldquItemKarrow	FieldKindfkCalculated	FieldNamerow
Calculated	   	TADOQueryquProductItem
ConnectionADOC
CursorTypectStatic
Parameters SQL.Stringsselect * from item LeftPTop   	TADOQuery
quItem_Req
ConnectionADOC
CursorTypectStaticAfterScrollquItem_ReqAfterScroll
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Strings>SELECT Item_Request.* , Organization.Org_Name,Org_Unit.Ut_Name;  ,dbo.GetCatName(state,'ITEM_REQUEST','STATE') StateDesc  D  ,dbo.GetCatName(Req_Type,'ITEM_REQUEST','Req_Type') Req_TypeName  FROM item_request LEFT OUTER JOIN <Organization  ON Item_Request.Org_Code=Organization.Org_CodeLEFT OUTER JOIN gOrg_Unit  ON Organization.Org_Code=Org_Unit.Ut_Org_Code AND Org_Unit.Ut_Code=Item_Request.Org_Unit_Codewhere state=:p1" order by item_request.req_no desc Left�Topp TIntegerFieldquItem_ReqReq_no	FieldNameReq_no  TStringFieldquItem_ReqCreator	FieldNameCreator	FixedChar	Size
  TStringFieldquItem_ReqCreate_Date	FieldNameCreate_Date	FixedChar	Size  TSmallintFieldquItem_ReqOrg_Code	FieldNameOrg_Code  TSmallintFieldquItem_ReqOrg_Unit_Code	FieldNameOrg_Unit_Code  TStringFieldquItem_ReqConfirmer	FieldName	Confirmer	FixedChar	Size  TStringFieldquItem_ReqConfirm_date	FieldNameConfirm_date	FixedChar	Size  TStringFieldquItem_ReqVerifier	FieldNameVerifier	FixedChar	Size
  TStringFieldquItem_ReqVerify_date	FieldNameVerify_date	FixedChar	Size  TSmallintFieldquItem_ReqState	FieldNameState  TSmallintFieldquItem_ReqReq_Type	FieldNameReq_Type  TStringFieldquItem_ReqOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquItem_ReqUt_Name	FieldNameUt_NameSizeP  TStringFieldquItem_Reqgoods_code	FieldName
Goods_Code	FixedChar	Size  TSmallintFieldquItem_ReqLoc_Code	FieldNameLoc_Code  TStringFieldquItem_ReqStateDesc	FieldName	StateDescReadOnly	Sized  TStringFieldquItem_ReqReq_TypeName	FieldNameReq_TypeNameReadOnly	Sized   	TADOQuery
quReq_Item
ConnectionADOC
CursorTypectStatic	AfterOpenquReq_ItemAfterOpen
ParametersNamep1
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.Strings'select Requested_Item.*,Item.item_name B  ,dbo.GetCatName(r_State,'requested_item','r_State') as StateName@ ,dbo.GetCatName(Item_Type,'Goods_Class','Class_Type') as nItem
 -from requested_item  LEFT OUTER JOIN Item  on'Requested_Item.Item_code=Item.Item_codewhere Requested_Item.req_No=:p1  LeftToph TIntegerFieldquReq_ItemReq_No	FieldNameReq_No  TStringFieldquReq_ItemItem_Code	FieldName	Item_Code	FixedChar	Size
  TIntegerFieldquReq_ItemReq_Amount	FieldName
Req_Amount  TIntegerFieldquReq_ItemConf_Amount	FieldNameConf_Amount  TIntegerFieldquReq_ItemRecieve_Amount	FieldNameRecieve_Amount  TSmallintFieldquReq_Itemr_state	FieldNamer_state  TSmallintFieldquReq_Itemitem_type	FieldName	item_type  TSmallintFieldquReq_ItemReq_type	FieldNameReq_type  TStringFieldquReq_ItemReq_number	FieldName
Req_number	FixedChar	Size  TStringFieldquReq_Itemitem_name	FieldName	item_nameSize  TStringFieldquReq_ItemStateName	FieldName	StateNameReadOnly	Sized  TStringFieldquReq_ItemnItem	FieldNamenItemReadOnly	Sized   	TADOQueryquItem_ReqConf
ConnectionADOC
CursorTypectStaticAfterScrollquItem_ReqConfAfterScroll
Parameters SQL.Strings>SELECT Item_Request.* , Organization.Org_Name,Org_Unit.Ut_Name9  ,dbo.GetCatName(state,'ITEM_REQUEST','STATE') StateDescB  ,dbo.GetCatName(Req_Type,'ITEM_REQUEST','Req_Type') Req_TypeNameFROM item_requestLEFT OUTER JOIN<Organization  ON Item_Request.Org_Code=Organization.Org_CodeLEFT OUTER JOINgOrg_Unit  ON Organization.Org_Code=Org_Unit.Ut_Org_Code AND Org_Unit.Ut_Code=Item_Request.Org_Unit_Code+where ((state=0) or (state=1) or (state=2)) and   Req_no in(" Select Req_no from Requested_Item group by Req_no Having Count(Req_no)>0 Union4  Select Req_no From Item_Request where  req_type=2
  ) !order by item_request.req_no desc LeftPTop�  TStringFieldquItem_ReqConfCreator	FieldNameCreator	FixedChar	Size
  TStringFieldquItem_ReqConfCreate_Date	FieldNameCreate_Date	FixedChar	Size  TSmallintFieldquItem_ReqConfOrg_Code	FieldNameOrg_Code  TSmallintFieldquItem_ReqConfOrg_Unit_Code	FieldNameOrg_Unit_Code  TStringFieldquItem_ReqConfConfirmer	FieldName	Confirmer	FixedChar	Size  TStringFieldquItem_ReqConfConfirm_date	FieldNameConfirm_date	FixedChar	Size  TStringFieldquItem_ReqConfVerifier	FieldNameVerifier	FixedChar	Size
  TStringFieldquItem_ReqConfVerify_date	FieldNameVerify_date	FixedChar	Size  TSmallintFieldquItem_ReqConfState	FieldNameState  TSmallintFieldquItem_ReqConfReq_Type	FieldNameReq_Type  TStringFieldquItem_ReqConfOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquItem_ReqConfUt_Name	FieldNameUt_NameSizeP  TIntegerFieldquItem_ReqConfReq_no	FieldNameReq_no  TStringFieldquItem_ReqConfgoods_code	FieldName
Goods_Code	FixedChar	Size  TSmallintFieldquItem_ReqConfLoc_Code	FieldNameLoc_Code  TStringFieldquItem_ReqConfStateDesc	FieldName	StateDescReadOnly	Sized  TStringFieldquItem_ReqConfReq_TypeName	FieldNameReq_TypeNameReadOnly	Sized   	TADOQueryquItem_ReqVer
ConnectionADOC
CursorTypectStaticAfterScrollquItem_ReqVerAfterScroll
Parameters SQL.Strings@SELECT Item_Request.* , Organization.Org_Name,Org_Unit.Ut_Name  ;  ,dbo.GetCatName(state,'ITEM_REQUEST','STATE') StateDesc  D  ,dbo.GetCatName(Req_Type,'ITEM_REQUEST','Req_Type') Req_TypeName  FROM item_request LEFT OUTER JOIN <Organization  ON Item_Request.Org_Code=Organization.Org_CodeLEFT OUTER JOIN gOrg_Unit  ON Organization.Org_Code=Org_Unit.Ut_Org_Code AND Org_Unit.Ut_Code=Item_Request.Org_Unit_Codewhere ((state=1) or (state=3)) and    Req_no in (# Select Req_no from Requested_Item  group by Req_no Having Count(Req_no)>0 Union5  Select Req_no From Item_Request where  req_type=2 ) !order by item_request.req_no desc Left� Top TIntegerFieldquItem_ReqVerReq_no	FieldNameReq_no  TStringFieldquItem_ReqVerCreator	FieldNameCreator	FixedChar	Size
  TSmallintFieldquItem_ReqVerOrg_Code	FieldNameOrg_Code  TSmallintFieldquItem_ReqVerOrg_Unit_Code	FieldNameOrg_Unit_Code  TStringFieldquItem_ReqVerConfirmer	FieldName	Confirmer	FixedChar	Size  TStringFieldquItem_ReqVerConfirm_date	FieldNameConfirm_date	FixedChar	Size  TStringFieldquItem_ReqVerVerifier	FieldNameVerifier	FixedChar	Size
  TStringFieldquItem_ReqVerVerify_date	FieldNameVerify_date	FixedChar	Size  TSmallintFieldquItem_ReqVerState	FieldNameState  TSmallintFieldquItem_ReqVerReq_Type	FieldNameReq_Type  TStringFieldquItem_ReqVerOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquItem_ReqVerUt_Name	FieldNameUt_NameSizeP  TStringFieldquItem_ReqVerCreate_Date	FieldNameCreate_Date	FixedChar	Size  TStringFieldquItem_ReqVergoods_code	FieldName
Goods_Code	FixedChar	Size  TSmallintFieldquItem_ReqVerLoc_Code	FieldNameLoc_Code  TStringFieldquItem_ReqVerStateDesc	FieldName	StateDescReadOnly	Sized  TStringFieldquItem_ReqVerReq_TypeName	FieldNameReq_TypeNameReadOnly	Sized   	TADOQuery	quBillKar
ConnectionADOC
CursorTypectStaticAfterScrollqubillAfterScroll
ParametersNamep0
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.StringsSELECT *: ,dbo.GetCatName(Bill_type,'Bill','Bill_type') as Billtype, ,dbo.GetCatName(State,'Bill','State') as ST
 FROM Bill where 
   State=1   or #   ((State=2 or State=3) and 2=:p0) Left`Top@ TIntegerFieldqubillKarBill_No	FieldNameBill_no  TSmallintFieldquBillKarBill_type	FieldName	Bill_type  TStringFieldquBillKarcreator	FieldNamecreator	FixedChar	Size
  TStringFieldquBillKarconfirmer	FieldName	confirmer	FixedChar	Size
  TStringFieldquBillKarconfirm_date	FieldNameconfirm_date	FixedChar	Size  TStringFieldquBillKarconf_teller	FieldNameconf_teller	FixedChar	Size
  TStringFieldquBillKarconf_date	FieldName	conf_date	FixedChar	Size  TIntegerFieldquBillKaritem_req_no	FieldNameitem_req_no  TStringFieldquBillKarreceiver	FieldNamereceiver	FixedChar	Size
  TStringFieldquBillKardelivery_man	FieldNamedelivery_man	FixedChar	Size
  TIntegerFieldquBillKarOrg_Code	FieldNameOrg_Code  TSmallintFieldquBillKarUnit_code	FieldName	Unit_code  TIntegerFieldquBillKarrec_Org_code	FieldNamerec_Org_code  TSmallintFieldquBillKarrec_Unit_code	FieldNamerec_Unit_code  TSmallintFieldquBillKarState	FieldNameState  TStringFieldquBillKarReason	FieldNameReasonSized  TStringFieldquBillKarcreate_date	FieldNamecreate_date	FixedChar	Size  TSmallintFieldquBillKarLoc_code	FieldNameLoc_code  TSmallintFieldquBillKarrec_Loc_code	FieldNamerec_Loc_code  TStringFieldquBillKarBilltype	FieldNameBilltypeReadOnly	Sized  TStringFieldquBillKarST	FieldNameSTReadOnly	Sized   	TADOQueryquBillKarItems
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.Strings&SELECT ITS.* , UI.Unit_Item_Desc FROM >(SELECT BI.* , IT.Item_Name , IT.Item_Unit  FROM Bill_Items BILEFT OUTER JOIN Item IT ON "BI.Item_Code = IT.Item_Code ) ITS  LEFT OUTER JOIN Unit_Item UI ON ITS.Item_Unit = UI.Code WHERE ITS.Bill_Type = :p1 AND ITS.Bill_No = :p2  Left�Top�  TSmallintFieldquBillKarItemsBill_Type	FieldName	Bill_Type  TIntegerFieldquBillKarItemsBill_No	FieldNameBill_No  TStringFieldquBillKarItemsItem_Code	FieldName	Item_Code	FixedChar	Size
  TIntegerField quBillKarItemsItem_Amount_Number	FieldNameItem_Amount_Number  TStringFieldquBillKarItemsItem_Name	FieldName	Item_NameSize  TSmallintFieldquBillKarItemsItem_Unit	FieldName	Item_Unit  TStringFieldquBillKarItemsUnit_Item_Desc	FieldNameUnit_Item_Desc   	TADOQuery
quUseTrans
ConnectionADOC
CursorTypectStaticAfterScrollquUseTransAfterScroll
Parameters SQL.StringsSELECT UT.* , GC.class_name2  ,dbo.GetCatName(State,'Use_Trans','State') as ST  FROM Use_Trans UT"LEFT OUTER JOIN Goods_Class GC ON UT.Class_Code = GC.Class_Code  LeftTop  TStringFieldquUseTransUse_Tr_No	FieldName	Use_Tr_No	FixedChar	Size  TStringFieldquUseTransDesc	FieldNameDescSized  TStringFieldquUseTransCreator	FieldNameCreator	FixedChar	Size
  TStringFieldquUseTransCreate_Date	FieldNameCreate_Date	FixedChar	Size  TStringFieldquUseTransConfirmer	FieldName	Confirmer	FixedChar	Size
  TStringFieldquUseTransConfirm_Date	FieldNameConfirm_Date	FixedChar	Size  TSmallintFieldquUseTransState	FieldNameState  TSmallintFieldquUseTransClass_Code	FieldName
Class_Code  TStringFieldquUseTransOrder_No	FieldNameOrder_No	FixedChar	Size  TSmallintFieldquUseTransOrder_Type	FieldName
Order_Type  TStringFieldquUseTransclass_name	FieldName
class_nameSize2  TStringFieldquUseTransST	FieldNameSTReadOnly	Sized   	TADOQueryquDetUseTrans
ConnectionADOC
CursorTypectStatic
ParametersNamep1
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� SizeValue   SQL.Strings"SELECT DIT.* , UI.Unit_Item_Desc ,/ Item_Cast*cast(Item_Amount  as float) as TotalFROM C(SELECT DUT.* , IT.item_name , IT.item_unit FROM Det_Use_Trans  DUTLEFT OUTER JOIN Item IT ON "DUT.Item_Code = IT.item_code ) DIT LEFT OUTER JOIN Unit_Item UI ON DIT.item_unit = UI.CodeWHERE DIT.Use_Tr_No = :p1 Left�Top TSmallintFieldquDetUseTransRow	FieldNameRow  TStringFieldquDetUseTransItem_code	FieldName	Item_code	FixedChar	Size
  TIntegerFieldquDetUseTransItem_Cast	FieldName	Item_Cast  TSmallintFieldquDetUseTransItem_Amount	FieldNameItem_Amount  TStringFieldquDetUseTransUse_Tr_No	FieldName	Use_Tr_No	FixedChar	Size  TStringFieldquDetUseTransitem_name	FieldName	item_nameSize  TSmallintFieldquDetUseTransitem_unit	FieldName	item_unit  TStringFieldquDetUseTransUnit_Item_Desc	FieldNameUnit_Item_Desc  TFloatFieldquDetUseTransTotal	FieldNameTotalReadOnly	   	TADOQueryqubtnOrderNo
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue   SQL.Strings4SELECT ORR.* , GC.class_name  FROM Order_Request ORR"LEFT OUTER JOIN Goods_Class GC ON ORR.Item_Class = GC.Class_Code WHERE ORR.Order_Req_Type = 1 AND ORR.State = 4 AND ORR.Item_Class = :p1 AND #IsNull(ORR.Inquiry_Date_Rec,'')<>'' LeftTop  TSmallintFieldqubtnOrderNoOrder_Req_Type	FieldNameOrder_Req_Type  TStringFieldqubtnOrderNoOrder_Req_No	FieldNameOrder_Req_No	FixedChar	Size  TSmallintFieldqubtnOrderNoState	FieldNameState  TStringFieldqubtnOrderNoCreator	FieldNameCreator	FixedChar	Size
  TStringFieldqubtnOrderNoCreate_Date	FieldNameCreate_Date	FixedChar	Size  TStringFieldqubtnOrderNoConfirmer	FieldName	Confirmer	FixedChar	Size
  TStringFieldqubtnOrderNoConfirm_Date	FieldNameConfirm_Date	FixedChar	Size  TStringFieldqubtnOrderNoCredit_Suplier	FieldNameCredit_Suplier	FixedChar	Size
  TStringFieldqubtnOrderNoCS_Date	FieldNameCS_Date	FixedChar	Size  TStringFieldqubtnOrderNoService_Desc	FieldNameService_DescSized  TSmallintFieldqubtnOrderNoItem_Type	FieldName	Item_Type  TSmallintFieldqubtnOrderNoItem_Class	FieldName
Item_Class  TStringField!qubtnOrderNoRequest_Refuse_Reason	FieldNameRequest_Refuse_ReasonSize�   TSmallintFieldqubtnOrderNoService_Type_No	FieldNameService_Type_No  TFloatFieldqubtnOrderNoEstimate_Price	FieldNameEstimate_Price  TSmallintFieldqubtnOrderNoDeal_Kind	FieldName	Deal_Kind  TStringFieldqubtnOrderNoInquiry_Date_Rec	FieldNameInquiry_Date_Rec	FixedChar	Size  TStringFieldqubtnOrderNoDealKind	FieldKindfkCalculated	FieldNameDealKind
Calculated	  TStringFieldqubtnOrderNoItemType	FieldKindfkCalculated	FieldNameItemTypeSize
Calculated	  TStringFieldqubtnOrderNoclass_name	FieldName
class_nameSize2   	TADOQuery
quGoodsRec
ConnectionADOC
CursorTypectStaticAfterScrollquGoodsRecAfterScroll
Parameters SQL.StringsSELECT GR.* , Org.Org_Name;  ,dbo.GetCatName(GetType,'Goods_Rec','GetType') Get_Type   FROM Goods_Rec GR#LEFT OUTER JOIN Organization Org ONGR.Org_Code = Org.Org_Code order by rec_no desc Left�Top TStringFieldquGoodsReccreator	FieldNamecreator	FixedChar	Size
  TStringFieldquGoodsRecdate	FieldNamedate	FixedChar	Size  TStringFieldquGoodsRecdeliver	FieldNamedeliver	FixedChar	Size
  TStringFieldquGoodsRecddate	FieldNameddate	FixedChar	Size  TStringFieldquGoodsRecconfirmer	FieldName	confirmer	FixedChar	Size
  TStringFieldquGoodsReccdate	FieldNamecdate	FixedChar	Size  TStringFieldquGoodsRecorder_no	FieldNameorder_no	FixedChar	Size  TStringFieldquGoodsRecdoc_no	FieldNamedoc_noSize  TStringFieldquGoodsRecorg	FieldNameorgSize2  TSmallintFieldquGoodsRecGetType	FieldNameGetType  TStringFieldquGoodsRecOrder_Location	FieldNameOrder_LocationSize(  TIntegerFieldquGoodsRecOrg_Code	FieldNameOrg_Code  TStringFieldquGoodsRecOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquGoodsRecF_Code	FieldNameF_CodeSize  TStringFieldquGoodsRecF_Date	FieldNameF_Date	FixedChar	Size  TIntegerFieldquGoodsRecrec_no	FieldNamerec_no  TStringFieldquGoodsRecGet_Type	FieldNameGet_TypeReadOnly	Sized  TStringFieldquGoodsRecNotes	FieldNameNotesSize�    	TADOQueryquGoodsRecOrderNo
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings4SELECT ORR.* , GC.class_name  FROM Order_Request ORR"LEFT OUTER JOIN Goods_Class GC ON ORR.Item_Class = GC.class_code 9WHERE ORR.State = 4 AND ORR.Inquiry_Date_Rec IS NOT NULL AND ORR.Order_Req_Type = 1  LeftTop TSmallintFieldquGoodsRecOrderNoOrder_Req_Type	FieldNameOrder_Req_Type  TStringFieldquGoodsRecOrderNoOrder_Req_No	FieldNameOrder_Req_No	FixedChar	Size  TSmallintFieldquGoodsRecOrderNoState	FieldNameState  TStringFieldquGoodsRecOrderNoCreator	FieldNameCreator	FixedChar	Size
  TStringFieldquGoodsRecOrderNoCreate_Date	FieldNameCreate_Date	FixedChar	Size  TStringFieldquGoodsRecOrderNoConfirmer	FieldName	Confirmer	FixedChar	Size
  TStringFieldquGoodsRecOrderNoConfirm_Date	FieldNameConfirm_Date	FixedChar	Size  TStringFieldquGoodsRecOrderNoCredit_Suplier	FieldNameCredit_Suplier	FixedChar	Size
  TStringFieldquGoodsRecOrderNoCS_Date	FieldNameCS_Date	FixedChar	Size  TStringFieldquGoodsRecOrderNoService_Desc	FieldNameService_DescSized  TSmallintFieldquGoodsRecOrderNoItem_Type	FieldName	Item_Type  TSmallintFieldquGoodsRecOrderNoItem_Class	FieldName
Item_Class  TStringField&quGoodsRecOrderNoRequest_Refuse_Reason	FieldNameRequest_Refuse_ReasonSize�   TSmallintField quGoodsRecOrderNoService_Type_No	FieldNameService_Type_No  TFloatFieldquGoodsRecOrderNoEstimate_Price	FieldNameEstimate_Price  TSmallintFieldquGoodsRecOrderNoDeal_Kind	FieldName	Deal_Kind  TStringField!quGoodsRecOrderNoInquiry_Date_Rec	FieldNameInquiry_Date_Rec	FixedChar	Size  TStringFieldquGoodsRecOrderNoclass_name	FieldName
class_nameSize2  TStringFieldquGoodsRecOrderNoDealKind	FieldKindfkCalculated	FieldNameDealKind
Calculated	  TStringFieldquGoodsRecOrderNoItemType	FieldKindfkCalculated	FieldNameItemType
Calculated	   	TADOQuery
quRec_Item
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.Strings!SELECT ITS.* , UI.Unit_Item_Desc,  buy_price*amount as expriceFROM +(SELECT RI.* , IT.Item_name , IT.item_unit  FROM Rec_Item RILEFT OUTER JOIN Item IT ON !RI.Item_code = IT.Item_Code ) ITS LEFT OUTER JOIN Unit_Item UI ON ITS.item_unit = UI.CodeWHERE ITS.Rec_No = :p1  Left�Top�  TIntegerFieldquRec_Itemrec_no	FieldNamerec_no  TStringFieldquRec_Itemitem_code	FieldName	item_code	FixedChar	Size
  TFloatFieldquRec_Itembuy_price	FieldName	buy_price  TFloatFieldquRec_Itemex_price	FieldNameex_price  TIntegerFieldquRec_Itemamount	FieldNameamount  TStringFieldquRec_ItemItem_name	FieldName	Item_nameSize  TSmallintFieldquRec_Itemitem_unit	FieldName	item_unit  TStringFieldquRec_ItemUnit_Item_Desc	FieldNameUnit_Item_Desc  TFloatFieldquRec_Itemexprice	FieldNameexpriceReadOnly	  TStringFieldquRec_ItemNotes	FieldNameNotesSize�    	TADOQueryquBillItems
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned
paNullable DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.Strings&SELECT ITS.* , UI.Unit_Item_Desc FROM >(SELECT BI.* , IT.Item_Name , IT.Item_Unit  FROM Bill_Items BILEFT OUTER JOIN Item IT ON "BI.Item_Code = IT.Item_Code ) ITS  LEFT OUTER JOIN Unit_Item UI ON ITS.Item_Unit = UI.Code WHERE ITS.Bill_Type = :p1 AND ITS.Bill_No = :p2  Left�Top�  TSmallintFieldquBillItemsBill_Type	FieldName	Bill_Type  TIntegerFieldquBillItemsBill_No	FieldNameBill_No  TStringFieldquBillItemsItem_Code	FieldName	Item_Code	FixedChar	Size
  TIntegerFieldquBillItemsItem_Amount_Number	FieldNameItem_Amount_Number  TStringFieldquBillItemsItem_Name	FieldName	Item_NameSize  TSmallintFieldquBillItemsItem_Unit	FieldName	Item_Unit  TStringFieldquBillItemsUnit_Item_Desc	FieldNameUnit_Item_Desc   	TADOQueryqugoods
ConnectionADOC
CursorTypectStaticAfterScrollqugoodsAfterScroll
ParametersNamep0DataType
ftSmallint	PrecisionSizeValue   SQL.Strings2Declare @Class_type smallint ,@Class_TypeNULL bitSet @Class_Type=:p0Set @class_TypeNull=0if isNull(@Class_Type,-1)=-1   Set @class_TypeNull=1Zselect Goods_Class.*,pre_chapter.pc_desc,pre_subchapter.ps_desc,pre_part_chapter.ppc_desc D ,dbo.GetCatName(Class_Type,'Goods_Class','Class_Type') as ClassTypefrom Goods_Class   left outer join pre_chapter -  on goods_class.pc_code =Pre_chapter.pc_code!  left outer join pre_subchapter 1  on goods_class.ps_code =pre_subchapter.ps_code "  left outer join pre_part_chapter5  on goods_class.ppc_code =pre_part_chapter.ppc_code  where %  (Goods_class.Class_type=@Class_Type  or   @Class_TypeNull=1) Left Top0 TIntegerFieldqugoodsradif	FieldKindfkCalculated	FieldNameradif	OnGetTextqugoodsradifGetText
Calculated	  TStringFieldqugoodsType	FieldKindfkCalculated	FieldNameTypeSize(
Calculated	  TSmallintFieldqugoodsclass_code	FieldName
class_code  TStringFieldqugoodsclass_desc	FieldName
class_descSized  TStringFieldqugoodsclass_name	FieldName
class_nameSize2  TSmallintFieldqugoodsClass_Type	FieldName
Class_Type  TStringFieldqugoodsppc_code	FieldNameppc_code	FixedChar	Size  TStringFieldqugoodspc_code	FieldNamepc_code	FixedChar	Size  TStringFieldqugoodsps_code	FieldNameps_code	FixedChar	Size  TStringFieldqugoodspc_desc	FieldNamepc_descSizeF  TStringFieldqugoodsps_desc	FieldNameps_descSizeF  TStringFieldqugoodsppc_desc	FieldNameppc_descSizeF  TStringFieldqugoodsClassType	FieldName	ClassTypeReadOnly	Sized   	TADOQueryquDetKar
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Stringsselect * from Item left outer join unit_item on item.item_Unit=unit_item.code where class_code=:p1order by Item_code Left�Top�  TIntegerField
quDetRadif	FieldKindfkCalculated	FieldNameRadif	OnGetTextquDetRadifGetText
Calculated	  TStringFieldquDetKaritem_codeDisplayWidth
	FieldName	item_code	FixedChar	Size
  TStringFieldquDetKaritem_name	FieldName	item_nameSize  TSmallintFieldquDetKarclass_code	FieldName
class_code  TStringFieldquDetKaritem_desc	FieldName	item_descSized  TSmallintFieldquDetKaritem_unit	FieldName	item_unit  TIntegerFieldquDetKarItem_Inventory	FieldNameItem_Inventory  TSmallintFieldquDetKarOrder_Point	FieldNameOrder_Point  TSmallintFieldquDetKarInventory_Limit	FieldNameInventory_Limit  TSmallintFieldquDetKarCode	FieldNameCode  TStringFieldquDetKarUnit_Item_Desc	FieldNameUnit_Item_Desc  TIntegerFieldquDetKarPk_Item	FieldNamePk_Item  TSmallintFieldquDetKarPK_DetailGroups	FieldNamePK_DetailGroups  TSmallintFieldquDetKarPK_MasterGroups	FieldNamePK_MasterGroups  TStringFieldquDetKarPosition_Code	FieldNamePosition_Code	FixedChar	Size
   TFontDialogFontDialog1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMs Sans Serif
Font.StylefsBold LeftTop`  	TADOQueryquUpdateNonMovGood
ConnectionADOC
ParametersNamep0
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep1
AttributespaSigned DataType
ftLargeint	PrecisionSizeValue   Prepared	SQL.StringsUpdate  NonMovable_GoodsSet    State = :p0where    Plaque_No  =:p1  Left� Top�   	TADOQueryquDeployLoc
ConnectionADOC
CursorTypectStatic
ParametersNamep0
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Strings,Select   D.*,E.Name+'  '+ E.Family as FLName"From     Deploy_Location  D,Emp  EWhere    D.Org_Code  =:p0   and         D.Unit_code =:p1   and$         D.Emp_No = E.Emp_No        Order by loc_Code   Left� Top�  TSmallintFieldquDeployLocloc_code	FieldNameloc_code  TStringFieldquDeployLocloc_desc	FieldNameloc_descSize2  TStringFieldquDeployLocemp_no	FieldNameemp_no	FixedChar	Size
  TSmallintFieldquDeployLocunit_code	FieldName	unit_code  TSmallintFieldquDeployLocorg_code	FieldNameorg_code  TStringFieldquDeployLocdescr	FieldNamedescrSized  TStringFieldquDeployLocFLName	FieldNameFLNameReadOnly	SizeH   	TADOQueryquitem
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings&Select  DISTINCT Item.* ,Goods_Class.*from Item,Goods_classwhere 4       Item.class_Code = Goods_class.Class_Code  and&       Goods_Class.Class_Type = 1  and!       Goods_Class.Class_Code>=13 LeftPToph TStringFieldquitemitem_code	FieldName	item_code	FixedChar	Size
  TStringFieldquitemitem_name	FieldName	item_nameSize  TSmallintFieldquitemclass_code	FieldName
class_code  TStringFieldquitemitem_desc	FieldName	item_descSized  TSmallintFieldquitemitem_unit	FieldName	item_unit  TIntegerFieldquitemItem_Inventory	FieldNameItem_Inventory  TSmallintFieldquitemOrder_Point	FieldNameOrder_Point  TSmallintFieldquitemInventory_Limit	FieldNameInventory_Limit  TSmallintFieldquitemclass_code_1	FieldNameclass_code_1  TStringFieldquitemclass_desc	FieldName
class_descSized  TStringFieldquitemclass_name	FieldName
class_nameSize2  TSmallintFieldquitemClass_Type	FieldName
Class_Type  TStringFieldquitemppc_code	FieldNameppc_code	FixedChar	Size  TStringFieldquitempc_code	FieldNamepc_code	FixedChar	Size  TStringFieldquitemps_code	FieldNameps_code	FixedChar	Size   	TADOQuery	quaccessf
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringSize
Value  Namep1DataType	ftIntegerSizeValue   SQL.Strings*Select  access.*,mnum  from  AccEss,menues�Where  emp_no=:p0 and access.mcode in (select menues.mcode from menues,access where menues.Syscode=:p1 and menues.mcode=access.mcode) and menues.mcode=access.mcode Left`TopP TStringFieldquaccessfEmp_NO	FieldNameEmp_NO	FixedChar	Size
  TIntegerFieldquaccessfMCode	FieldNameMCode  TSmallintFieldquaccessfextag	FieldNameextag  TSmallintFieldquaccessfnewtag	FieldNamenewtag  TSmallintFieldquaccessfedittag	FieldNameedittag  TSmallintFieldquaccessfdeltag	FieldNamedeltag  TSmallintFieldquaccessfprinttag	FieldNameprinttag  TSmallintFieldquaccessfsrchtag	FieldNamesrchtag  TSmallintFieldquaccessfprevtag	FieldNameprevtag  TSmallintFieldquaccessfnexttag	FieldNamenexttag  TSmallintFieldquaccessfruntag	FieldNameruntag  TSmallintFieldquaccessflisttag	FieldNamelisttag  TStringFieldquaccessfmnum	FieldNamemnumSize
   	TADOQueryquInsertLog
ConnectionADOC
CursorTypectStatic
ParametersNameempDataTypeftStringNumericScale� 	Precision� Size
Value  NameLog
AttributespaLong DataTypeftFixedCharNumericScale� 	Precision� Size���?Value   SQL.Strings3insert into Tbl_Log(Emp_no,[Log]) values(:emp,:Log) Left`Top TSmallintFieldSmallintField1	FieldNametexture_type  TStringFieldStringField1	FieldNametexture_loc  TStringFieldStringField2	FieldNamemarkSize  TStringFieldStringField3	FieldNametexture_date	FixedChar	Size  TStringFieldStringField4	FieldNamelengthSize
  TStringFieldStringField5	FieldNamewidthSize
  TStringFieldStringField6	FieldName
back_colorSize
  TStringFieldStringField7	FieldNameborder_colorSize
  TStringFieldStringField8	FieldNamespecificationSize2  TStringFieldStringField9	FieldNamemapSize  TStringFieldStringField10	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField1	FieldName
goods_code   	TADOQueryquInsertUser
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringNumericScale� 	Precision� Size
Value   SQL.Strings.insert into Tbl_AmvalUsers(Emp_no) values(:p0) LeftTop0 TSmallintFieldSmallintField2	FieldNametexture_type  TStringFieldStringField11	FieldNametexture_loc  TStringFieldStringField12	FieldNamemarkSize  TStringFieldStringField13	FieldNametexture_date	FixedChar	Size  TStringFieldStringField14	FieldNamelengthSize
  TStringFieldStringField15	FieldNamewidthSize
  TStringFieldStringField16	FieldName
back_colorSize
  TStringFieldStringField17	FieldNameborder_colorSize
  TStringFieldStringField18	FieldNamespecificationSize2  TStringFieldStringField19	FieldNamemapSize  TStringFieldStringField20	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField2	FieldName
goods_code   	TADOQueryquDetailGroups
ConnectionADOC
CursorTypectStatic
ParametersName
Class_CodeDataType
ftSmallintSizeValue  NameMasterDataType
ftSmallintSizeValue   SQL.Stringsdeclare @class_code smallintdeclare @Master smallintSet @class_code=:Class_CodeSet @Master=:Masterdeclare @class_codeNull bitdeclare @MasterNull bitSet @class_codeNull=0Set @MasterNull=0if  isnull(@class_code,'')=''  Set @class_codeNull=1if  isnull(@Master,'')=''  Set @MasterNull=1Select * from Tbl_DetailGroupswhere0   (Class_Code=@Class_Code or @Class_CodeNull=1)  and,   (PK_MasterGroup=@Master or @MasterNull=1) LeftTop�  TSmallintFieldquDetailGroupsPK_DetailGroup	FieldNamePK_DetailGroupReadOnly	  TSmallintFieldquDetailGroupsPK_MasterGroup	FieldNamePK_MasterGroup  TSmallintFieldquDetailGroupsClass_Code	FieldName
Class_Code  TStringFieldquDetailGroupsDesc	FieldNameDescSize�    	TADOQueryquMasterGroups
ConnectionADOC
CursorTypectStatic
ParametersName
Class_CodeDataType
ftSmallintSizeValue   SQL.Stringsdeclare @class_code smallintSet @class_code=:Class_Codedeclare @class_codeNull bitSet @class_codeNull=0if  isnull(@class_code,'')=''  Set @class_codeNull=1Select * from Tbl_MasterGroupswhere0   (Class_Code=@Class_Code or @Class_CodeNull=1)  LeftTop�  TSmallintFieldquMasterGroupsPk_MasterGroup	FieldNamePk_MasterGroup  TSmallintFieldquMasterGroupsClass_Code	FieldName
Class_Code  TStringFieldquMasterGroupsDesc	FieldNameDescSize�    TDataSourcedsDetailGroupsDataSetquDetailGroupsLeft`Top�   TDataSourcedcCatDataSetquCatLeft�Top`  	TADOQuery
quJustItem
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataType
ftSmallint	PrecisionSizeValue   SQL.StringsDeclare @class_code smallint Set @Class_code=:p0 Select *from item I left outer join goods_class Gc on I.class_code=Gc.Class_Codewhere :   (I.Class_code=@Class_code or isnull(@Class_code,-1)=-1)order by Item_Name       Left� TopX TIntegerFieldquJustItemPk_Item	FieldNamePk_Item  TStringFieldquJustItemitem_name	FieldName	item_nameSize  TSmallintFieldquJustItemclass_code	FieldName
class_code  TStringFieldquJustItemitem_desc	FieldName	item_descSized  TSmallintFieldquJustItemitem_unit	FieldName	item_unit  TIntegerFieldquJustItemItem_Inventory	FieldNameItem_Inventory  TSmallintFieldquJustItemOrder_Point	FieldNameOrder_Point  TSmallintFieldquJustItemInventory_Limit	FieldNameInventory_Limit  TSmallintFieldquJustItemPK_DetailGroups	FieldNamePK_DetailGroups  TSmallintFieldquJustItemPK_MasterGroups	FieldNamePK_MasterGroups  TStringFieldquJustItemPosition_Code	FieldNamePosition_Code	FixedChar	Size
  TStringFieldquJustItemItem_Code	FieldName	Item_Code	FixedChar	Size
  TSmallintFieldquJustItemclass_code_1	FieldNameclass_code_1  TStringFieldquJustItemclass_desc	FieldName
class_descSized  TStringFieldquJustItemclass_name	FieldName
class_nameSize2  TSmallintFieldquJustItemClass_Type	FieldName
Class_Type  TStringFieldquJustItemppc_code	FieldNameppc_code	FixedChar	Size  TStringFieldquJustItempc_code	FieldNamepc_code	FixedChar	Size  TStringFieldquJustItemps_code	FieldNameps_code	FixedChar	Size   TDataSource
dsJustItemDataSet
quJustItemLeftXTopX  	TADOQueryquOrg
ConnectionADOC
CursorTypectStatic
ParametersNameOrgCodeDataType	ftIntegerNumericScale	PrecisionSize	Value   SQL.StringsDeclare @OrgCode intSet @OrgCode=:OrgCode SELECT * FROM Organizationwhere /  (Org_Code=@OrgCode or IsNull(@OrgCode,-1)=-1) Left Top` TIntegerFieldquOrgOrg_Code	FieldNameOrg_Code  TStringFieldquOrgOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquOrgOrg_Addr	FieldNameOrg_Addr	FixedChar	Size  TIntegerFieldquOrgOrg_Mast_Code	FieldNameOrg_Mast_Code   TDataSourcedsOrgDataSetquOrgLeft� Top`  	TADOQueryquGoodsUser
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringNumericScale� 	Precision� SizeValue  Namep1DataType	ftInteger	Precision	SizeValue  Namep2DataType
ftSmallint	Precision	SizeValue   SQL.StringsDeclare @Goods_Code char(12)Declare @Bill_No intDeclare @Bill_Type smallintSet @Goods_Code=:p0Set @Bill_No=:p1Set @Bill_Type=:p2BSelect Name+' '+Family as userName,Ou.Ut_Name,Dl.Descr,Gu.Org_Code8   ,Gu.Unit_Code,Gu.Cost_Code,Gu.Loc_Code,Gu.User_emp_no   ,Gu.Get_Date,Gu.Descr from goods_user Gu left outer join emp on User_Emp_no=emp_no left outer join org_unit Ou? on Gu.Cost_code=Ou.Ut_code and Ou.Ut_org_code=dbo.GetOrgCode()# left outer join Deploy_location Dl on Gu.Org_code=Dl.Org_code and Gu.Cost_code=Dl.Unit_code and Gu.Loc_code=Dl.Loc_codewhere   goods_code=@Goods_Codeand.  (Bill_No=@Bill_No or IsNull(@Bill_No,-1)=-1)and4  (Bill_Type=@Bill_Type or IsNull(@Bill_Type,-1)=-1)   LeftTopX TStringFieldquGoodsUseruserName	FieldNameuserNameReadOnly	SizeG  TStringFieldquGoodsUserUt_Name	FieldNameUt_NameSizeP  TStringFieldquGoodsUserDescr	FieldNameDescrSized  TIntegerFieldquGoodsUserOrg_Code	FieldNameOrg_Code  TSmallintFieldquGoodsUserUnit_Code	FieldName	Unit_Code  TSmallintFieldquGoodsUserCost_Code	FieldName	Cost_Code  TSmallintFieldquGoodsUserLoc_Code	FieldNameLoc_Code  TStringFieldquGoodsUserUser_emp_no	FieldNameUser_emp_no	FixedChar	Size
  TStringFieldquGoodsUserGet_Date	FieldNameGet_Date	FixedChar	Size  TStringFieldquGoodsUserDescr_1	FieldNameDescr_1Size�    	TADOQueryquCat
ConnectionADOC
CursorTypectStatic
ParametersNamep0
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size� Value  Namep1
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size� Value   SQL.Strings(Select Id,[Desc] as CatStr from Tbl_Cat 'where Upper(tbl)=:p0 and Upper(Col)=:p1 Left�Top8 TIntegerFieldquCatId	FieldNameId  TStringFieldquCatCatStr	FieldNameCatStrSized   TDataSourcedsMasterGroupsDataSetquMasterGroupsLeftTop@  	TADOQueryquGetValuesAutoCalcFields
ConnectionADOCCursorLocationclUseServer
CursorType	ctDynamic
ParametersNamep0DataTypeftStringNumericScale� 	Precision� Size
Value   SQL.StringsSelect  * from Deploy_Location left outer join Org_Unit On Unit_code=Ut_Code
! and Ut_Org_code=dbo.GetOrgCode() and Org_code=dbo.GetOrgCode()where   Emp_no=:p0 Left`Top TSmallintFieldquGetValuesloc_code	FieldNameloc_code  TStringFieldquGetValuesloc_desc	FieldNameloc_descSize2  TStringFieldquGetValuesemp_no	FieldNameemp_no	FixedChar	Size
  TSmallintFieldquGetValuesunit_code	FieldName	unit_code  TIntegerFieldquGetValuesorg_code	FieldNameorg_code  TStringFieldquGetValuesdescr	FieldNamedescrSized  TSmallintFieldquGetValuesUt_Mast_Code	FieldNameUt_Mast_Code   	TADOQueryquClass
ConnectionADOC
ParametersName
Class_TypeDataType	ftIntegerNumericScale		PrecisionSizeValue   SQL.Strings Declare @Class_Type smallint  Set @Class_Type=:Class_TypeSelect *from goods_classwhere    (   Class_Type=@Class_Type  or    IsNull(@Class_Type,-1)=-1  )order by class_code LeftPTop@ TSmallintFieldquClassclass_code	FieldName
class_code  TStringFieldquClassclass_desc	FieldName
class_descSized  TStringFieldquClassclass_name	FieldName
class_nameSize2   	TADOQueryquEmp
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings$Select *, Family+'  '+Name as FLNamefrom emporder by FLName  Left Top@ TStringFieldquEmpemp_no	FieldNameemp_no	FixedChar	Size
  TStringField	quEmpname	FieldNamenameSize  TStringFieldquEmpfamily	FieldNamefamilySize(  TStringFieldquEmpfather_name	FieldNamefather_nameSize  TStringFieldquEmpbirth_certificate_no	FieldNamebirth_certificate_noSize  TStringFieldquEmpbirth_date	FieldName
birth_date	FixedChar	Size  TSmallintFieldquEmpsex	FieldNamesex  TSmallintFieldquEmpnationality_code	FieldNamenationality_code  TStringFieldquEmpbirth_loc_code	FieldNamebirth_loc_code	FixedChar	Size  TStringFieldquEmpcer_loc_code	FieldNamecer_loc_code	FixedChar	Size  TStringFieldquEmpnational_card_no	FieldNamenational_card_no	FixedChar	Size
  TSmallintFieldquEmpis_married	FieldName
is_married  TSmallintFieldquEmpnum_of_child	FieldNamenum_of_child  TSmallintFieldquEmpreligion	FieldNamereligion  TStringFieldquEmphealth_state	FieldNamehealth_stateSize�   TSmallintFieldquEmpsoldiery	FieldNamesoldiery  TIntegerFieldquEmpedu_degree	FieldName
edu_degree  TStringFieldquEmpimmunity_reason	FieldNameimmunity_reasonSize�   TStringFieldquEmplast_school_name	FieldNamelast_school_nameSize(  TStringFieldquEmplast_school_loc_code	FieldNamelast_school_loc_code	FixedChar	Size  TStringFieldquEmplast_diploma_date	FieldNamelast_diploma_date	FixedChar	Size  TStringFieldquEmpwriting	FieldNamewritingSize�  TSmallintFieldquEmpemp_type	FieldNameemp_type  TIntegerFieldquEmporg_code	FieldNameorg_code  TSmallintFieldquEmpunit_code	FieldName	unit_code  TSmallintFieldquEmpisargary_state	FieldNameisargary_state  TSmallintFieldquEmpemployed_emp_law	FieldNameemployed_emp_law  TSmallintFieldquEmpemp_state	FieldName	emp_state  TStringFieldquEmpcomment	FieldNamecommentSize,  
TBlobFieldquEmpemp_photo	FieldName	emp_photo  TStringFieldquEmpdiploma_name	FieldNamediploma_nameSize2  TIntegerFieldquEmppost_no	FieldNamepost_no  TSmallintFieldquEmpjob_lev	FieldNamejob_lev  TFloatFieldquEmpIn_First	FieldNameIn_First  TStringFieldquEmpemp_code	FieldNameemp_code	FixedChar	  TIntegerFieldquEmpwork_org_code	FieldNamework_org_code  TStringFieldquEmpFLName	FieldNameFLNameReadOnly	SizeH    