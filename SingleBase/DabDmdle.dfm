�
 TDABDATA 0L  TPF0TDabDataDabDataOldCreateOrderOnCreateDabDataCreate	OnDestroyDabDataDestroyHeight�Width  TDataSourcedsqUsersDataSetquUsersLeftPToph  TADOConnectionADOCCommandTimeout<ConnectionTimeoutLoginPromptModecmReadWriteProvider
SQLOLEDB.1LeftTop8  	TADOQueryquUsers
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringshSelect users2.*,emp.emp_photo,rtrim(ltrim(name)) as name,ltrim(rtrim(family)) as family  from Users2,Emp6Where Emp.Emp_no=Users2.Emp_No and Users2.syscode=:p1 Order by emp.emp_no Left� Top` TStringFieldquUsersEmp_No	FieldNameEmp_No	FixedChar	Size
  TStringFieldquUsersSTar	FieldNameSTar	FixedChar	Size  TStringFieldquUsersETar	FieldNameETar	FixedChar	Size  TStringFieldquUsersPwrd	FieldNamePwrd	FixedChar	Size  TSmallintField	quUsersFm	FieldNameFm  TSmallintFieldquUsersPTag	FieldNamePTag  TIntegerFieldquUsersSysCode	FieldNameSysCode  
TBlobFieldquUsersemp_photo	FieldName	emp_photo  TStringFieldquUsersname	FieldNamenameReadOnly	Size  TStringFieldquUsersfamily	FieldNamefamilyReadOnly	Size(   	TADOQuery	quaccessf
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringSize
Value  Namep1DataType	ftIntegerSizeValue   SQL.Strings*Select  access.*,mnum  from  Access,menues�Where  emp_no=:p0 and access.mcode in (select menues.mcode from menues,access where menues.Syscode=:p1 and menues.mcode=access.mcode) and menues.mcode=access.mcode Left� Top�  TStringFieldquaccessfEmp_NO	FieldNameEmp_NO	FixedChar	Size
  TIntegerFieldquaccessfMCode	FieldNameMCode  TSmallintFieldquaccessfextag	FieldNameextag  TSmallintFieldquaccessfnewtag	FieldNamenewtag  TSmallintFieldquaccessfedittag	FieldNameedittag  TSmallintFieldquaccessfdeltag	FieldNamedeltag  TSmallintFieldquaccessfprinttag	FieldNameprinttag  TSmallintFieldquaccessfsrchtag	FieldNamesrchtag  TSmallintFieldquaccessfprevtag	FieldNameprevtag  TSmallintFieldquaccessfnexttag	FieldNamenexttag  TSmallintFieldquaccessfruntag	FieldNameruntag  TSmallintFieldquaccessflisttag	FieldNamelisttag  TStringFieldquaccessfmnum	FieldNamemnumSize
   	TADOQueryqulocal
ConnectionADOC
Parameters SQL.StringsSelect A.*,B.org_name,formstate = case(    when state = 1 then 'تنظيم شده'(    when state = 2 then 'نهايي شده'  end "  from Local_var A ,Organization Bwhere A.org_code=B.org_code Left(Top TIntegerFieldqulocalorg_code	FieldNameorg_code  TFloatFieldqulocalmar_per	FieldNamemar_per  TFloatFieldqulocalchild_per	FieldName	child_per  TSmallintFieldqulocalchild_ac	FieldNamechild_ac  TSmallintFieldqulocals_boy_age	FieldName	s_boy_age  TSmallintFieldqulocaln_boy_age	FieldName	n_boy_age  TStringFieldqulocalDoc_no	FieldNameDoc_no	FixedChar	Size  TStringFieldqulocalusr_date	FieldNameusr_date	FixedChar	Size  TStringField
qulocalusr	FieldNameusr	FixedChar	Size
  TFloatFieldqulocalM_per	FieldNameM_per  TSmallintFieldqulocalstate	FieldNamestate  TStringFieldqulocalorg_name	FieldNameorg_nameSizeP  TStringFieldqulocalformstate	FieldName	formstateReadOnly	Size	  TFloatFieldqulocalNM_L_sal	FieldNameNM_L_sal  TFloatFieldqulocalM_l_sal	FieldNameM_l_sal  TFloatFieldqulocalloc_per	FieldNameloc_per  TSmallintFieldqulocalu_evl	FieldNameu_evl  TSmallintFieldqulocall_evl	FieldNamel_evl   	TADOQuery	quCountry
ConnectionADOC
CursorTypectStaticAfterScrollquCountryAfterScroll
Parameters SQL.Stringsselect * from Countryorder by Country_code Left(Top�  TStringFieldquCountrydegree	FieldNamedegree	FixedChar	Size
  TStringFieldquCountryBad_Weather_Degree	FieldNameBad_Weather_Degree	FixedChar	Size
  TSmallintFieldquCountryCountry_codeDisplayLabel   4@E@'1G	FieldNameCountry_code  TStringFieldquCountryCountry_nameDisplayLabel   نـــام كـشـور	FieldNameCountry_nameSize(   	TADOQuery
quprovince
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings<select province.*,country.Country_name from province,country1where  Country.Country_code=province.Country_code Left�Top? TSmallintFieldquprovincecountry_codeDisplayLabel   كد كشور	FieldNamecountry_code  TSmallintFieldquprovinceprovince_codeDisplayLabel   4@E@'1G	FieldNameprovince_code  TStringFieldquprovinceprovince_nameDisplayLabel   نـــــام اسـتـان	FieldNameprovince_nameSize(  TStringFieldquprovinceCountry_nameDisplayLabel   نــام كشور	FieldNameCountry_nameSize(   	TADOQueryquprovince1
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   Prepared	SQL.Stringsselect * from Provincewhere country_code=:p1 Left�Top TSmallintFieldquprovince1country_code	FieldNamecountry_code  TSmallintFieldquprovince1province_code	FieldNameprovince_code  TStringFieldquprovince1province_name	FieldNameprovince_nameSize(   	TADOQuery	qucounty1
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   Prepared	SQL.Stringsselect * from countywherecountry_code = :p1 and province_code = :p2 Left�Topu TSmallintFieldqucounty1country_code	FieldNamecountry_code  TSmallintFieldqucounty1province_code	FieldNameprovince_code  TSmallintFieldqucounty1county_code	FieldNamecounty_code  TStringFieldqucounty1county_name	FieldNamecounty_nameSize(  TSmallintFieldqucounty1M_pay	FieldNameM_pay  TSmallintFieldqucounty1grade	FieldNamegrade  TSmallintFieldqucounty1grp	FieldNamegrp  TFloatFieldqucounty1j_pay	FieldNamej_pay   	TADOQuery
qusection1
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep3
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Stringsselect * from sectionwherecountry_code = :p1 andprovince_code = :p2 andcounty_code = :p3 Left(Topu TSmallintFieldqusection1country_code	FieldNamecountry_code  TSmallintFieldqusection1province_code	FieldNameprovince_code  TSmallintFieldqusection1county_code	FieldNamecounty_code  TSmallintFieldqusection1section_code	FieldNamesection_code  TStringFieldqusection1section_name	FieldNamesection_nameSize(  TSmallintFieldqusection1grade	FieldNamegrade  TSmallintFieldqusection1grp	FieldNamegrp  TSmallintFieldqusection1m_pay	FieldNamem_pay  TFloatFieldqusection1j_pay	FieldNamej_pay   	TADOQuery
quvillage1
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep3
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep4
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   Prepared	SQL.Stringsselect * from villagewherecountry_code = :p1 and province_code = :p2 and county_code = :p3 and section_code = :p4 Left�Top�  TSmallintFieldquvillage1country_code	FieldNamecountry_code  TSmallintFieldquvillage1province_code	FieldNameprovince_code  TSmallintFieldquvillage1county_code	FieldNamecounty_code  TSmallintFieldquvillage1section_code	FieldNamesection_code  TSmallintFieldquvillage1village_code	FieldNamevillage_code  TStringFieldquvillage1village_name	FieldNamevillage_nameSize(  TSmallintFieldquvillage1m_pay	FieldNamem_pay  TSmallintFieldquvillage1grade	FieldNamegrade  TSmallintFieldquvillage1grp	FieldNamegrp  TFloatFieldquvillage1j_pay	FieldNamej_pay   	TADOQueryquemp
ConnectionADOC
CursorTypectStaticAfterScrollquempAfterScroll
Parameters SQL.Strings(select *,field.field_name,degree.descr ,isarstate = case4   when isargary_state = 1 then 'ايثارگر است'6   when isargary_state = 2 then 'ايثارگر نيست'end,empstate = case#   when emp_state = 1 then  'شاغل'7   when emp_state = 2 then 'مأمور با حفظ پست';   when emp_state = 3 then 'مأمور بدون حفظ پست'1   when emp_state = 4 then 'انتقال يافته'0   when emp_state = 5 then 'در حال تعليق'2   when emp_state = 6 then 'آماده به خدمت';   when emp_state = 7 then 'در حال انفصال موقت'/   when emp_state = 8 then 'انفصال دائم'&   when emp_state = 9 then 'مستعفي''   when emp_state = 10 then 'اخراجي',   when emp_state = 11 then 'باز نشسته'/   when emp_state = 12 then 'باز خريد شد'%   when emp_state = 13 then 'متوفي'7   when emp_state = 14 then 'مرخصي بدون حقوق'5   when emp_state = 15 then 'بركنار از خدمت'B   when emp_state = 16 then 'بركنار از خدمت آموزشي'end,emptype = case*   when emp_type = 1 then 'رسمي قطعي'0   when emp_type = 2 then 'رسمي آزمايشي')   when emp_type = 3 then 'قراردادي'(   when emp_type = 4 then 'طرح خدمت'%   when emp_type = 5 then 'پيماني'&   when emp_type = 6 then 'كار روز'end,soldsatate = case,   when soldiery = 1 then 'انجام داده'+   when soldiery = 2 then  'معاف موقت'+   when soldiery = 3 then  'معاف دائم'4   when soldiery = 4 then  'معاف خريد خدمت'5   when soldiery = 5 then  'بي نياز از خدمت'end,cast(emp_no  as int) as numvfrom Emp left outer join field on field.field_no=emp.diploma_name left outer join degree on emp.edu_degree=degree.codeorder by family Left(Top? TStringFieldquempemp_no	FieldNameemp_no	FixedChar	Size
  TStringField	quempname	FieldNamenameSize  TStringFieldquempfamily	FieldNamefamilySize(  TStringFieldquempfather_name	FieldNamefather_nameSize  TStringFieldquempbirth_certificate_no	FieldNamebirth_certificate_noSize  TStringFieldquempbirth_date	FieldName
birth_date	FixedChar	Size  TSmallintFieldquempsex	FieldNamesex  TSmallintFieldquempnationality_code	FieldNamenationality_code  TStringFieldquempbirth_loc_code	FieldNamebirth_loc_code	FixedChar	Size  TStringFieldquempcer_loc_code	FieldNamecer_loc_code	FixedChar	Size  TStringFieldquempnational_card_no	FieldNamenational_card_no	FixedChar	Size
  TSmallintFieldquempis_married	FieldName
is_married  TSmallintFieldquempnum_of_child	FieldNamenum_of_child  TSmallintFieldquempreligion	FieldNamereligion  TStringFieldquemphealth_state	FieldNamehealth_stateSize�   TSmallintFieldquempsoldiery	FieldNamesoldiery  TIntegerFieldquempedu_degree	FieldName
edu_degree  TStringFieldquempimmunity_reason	FieldNameimmunity_reasonSize�   TStringFieldquemplast_school_name	FieldNamelast_school_nameSize(  TStringFieldquemplast_school_loc_code	FieldNamelast_school_loc_code	FixedChar	Size  TStringFieldquemplast_diploma_date	FieldNamelast_diploma_date	FixedChar	Size  TStringFieldquempwriting	FieldNamewritingSize�  TSmallintFieldquempemp_type	FieldNameemp_type  TIntegerFieldquemporg_code	FieldNameorg_code  TSmallintFieldquempunit_code	FieldName	unit_code  TSmallintFieldquempisargary_state	FieldNameisargary_state  TSmallintFieldquempemployed_emp_law	FieldNameemployed_emp_law  TSmallintFieldquempemp_state	FieldName	emp_state  TStringFieldquempcomment	FieldNamecommentSize,  
TBlobFieldquempemp_photo	FieldName	emp_photo  TStringFieldquempdiploma_name	FieldNamediploma_nameSize2  TIntegerFieldquemppost_no	FieldNamepost_no  TSmallintFieldquempjob_lev	FieldNamejob_lev  TFloatFieldquempIn_First	FieldNameIn_First  TStringFieldquempemp_code	FieldNameemp_code	FixedChar	  TSmallintFieldquempfield_no	FieldNamefield_no  TStringFieldquempfield_name	FieldName
field_nameSize2  TIntegerField	quempCode	FieldNameCode  TStringField
quempDescr	FieldNameDescrSize2  TStringFieldquempfield_name_1	FieldNamefield_name_1Size2  TStringFieldquempdescr_1	FieldNamedescr_1Size2  TStringFieldquempisarstate	FieldName	isarstateReadOnly	Size  TStringFieldquempempstate	FieldNameempstateReadOnly	Size  TStringFieldquempemptype	FieldNameemptypeReadOnly	Size  TStringFieldquempsoldsatate	FieldName
soldsatateReadOnly	Size  TIntegerFieldquempnum	FieldNamenumReadOnly	   	TADOQueryquOrg
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsVselect O1.*,O2.Org_Name Mast_Name from Organization O1 left outer join Organization O2on O1.Org_Mast_Code=O2.Org_Codeorder by O1.Org_Code Left�Topu TSmallintFieldquOrgRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TIntegerFieldquOrgOrg_Code	FieldNameOrg_Code  TStringFieldquOrgOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquOrgOrg_Addr	FieldNameOrg_Addr	FixedChar	Size  TIntegerFieldquOrgOrg_Mast_Code	FieldNameOrg_Mast_Code  TStringFieldquOrgMast_Name	FieldName	Mast_NameSizeP   	TADOQueryquUnit
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsMselect O1.*,O2.Ut_Name Mast_Name from Org_Unit O1 left outer join Org_Unit O2?on O1.Ut_Mast_Code=O2.Ut_Code and O1.Ut_Org_Code=O2.Ut_Org_Codewhere O1.Ut_Org_Code=:p1order by O1.Ut_Code Left�Top? TSmallintFieldquUnitRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TIntegerFieldquUnitUt_Org_Code	FieldNameUt_Org_Code  TSmallintFieldquUnitUt_Code	FieldNameUt_Code  TStringFieldquUnitUt_Name	FieldNameUt_NameSizeP  TSmallintFieldquUnitUt_Mast_Code	FieldNameUt_Mast_Code  TStringFieldquUnitMast_Name	FieldName	Mast_NameSizeP   	TADOQueryquPost
ConnectionADOC
CursorTypectStatic
ParametersNamep1
AttributespaSigned DataType	ftInteger	Precision
SizeValue  Namep2
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Strings#select P1.*,P2.Post_Name Mast_Name,Type=Case P1.Post_Type   when 0 then 'دائم'   when 1 then 'موقت'end,State=Case P1.Post_State   when 1 then 'آزاد'   when 2 then 'اشغال شده'end$from Post P1 left outer join Post P2?on P1.Pt_Mast_Code=P2.Pt_Code and P1.Pt_Org_Code=P2.Pt_Org_Code.where P1.Pt_Org_Code=:p1 and P1.Pt_Ut_Code=:p2order by P1.Pt_Code Left�Top TSmallintFieldquPostRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TIntegerFieldquPostPt_Org_Code	FieldNamePt_Org_Code  TSmallintFieldquPostPt_Ut_code	FieldName
Pt_Ut_code  TIntegerFieldquPostPt_Code	FieldNamePt_Code  TSmallintFieldquPostPt_Category_Code	FieldNamePt_Category_Code  TSmallintFieldquPostPt_Sub_Code	FieldNamePt_Sub_Code  TSmallintFieldquPostPt_Job_Code	FieldNamePt_Job_Code  TStringFieldquPostpost_name	FieldName	post_nameSize<  TSmallintFieldquPostpost_type	FieldName	post_type  TSmallintFieldquPostpost_state	FieldName
post_state  TStringFieldquPostpost_code	FieldName	post_code	FixedChar	Size  TIntegerFieldquPostPt_Mast_Code	FieldNamePt_Mast_Code  TStringFieldquPostMast_Name	FieldName	Mast_NameSize<  TStringField
quPostType	FieldNameTypeReadOnly	Size  TStringFieldquPostState	FieldNameStateReadOnly	Size	   	TADOQueryquCat
ConnectionADOC
Parameters SQL.Strings(select * from Category order by Ctg_Code Left�Top�  TSmallintFieldquCatRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TSmallintFieldquCatctg_code	FieldNamectg_code  TStringFieldquCatctg_name	FieldNamectg_nameSizeP   	TADOQueryquSubCat
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Stringsselect * from Sub_Category where Ctg_Code=:p1order by Sub_Ctg_Code Left�Top	 TSmallintFieldquSubCatRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TSmallintFieldquSubCatsub_ctg_code	FieldNamesub_ctg_code  TStringFieldquSubCatsub_ctg_name	FieldNamesub_ctg_nameSizeP  TSmallintFieldquSubCatctg_code	FieldNamectg_code   	TADOQueryquJob
ConnectionADOC
ParametersNamep1
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue  Namep2
AttributespaSigned DataType
ftSmallint	PrecisionSizeValue   SQL.Stringsselect * from Job'where Ctg_Code=:p1 and Sub_Ctg_Code=:p2order by Job_Code Left�TopA TSmallintFieldquJobRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TSmallintFieldquJobctg_code	FieldNamectg_code  TSmallintFieldquJobsub_ctg_code	FieldNamesub_ctg_code  TSmallintFieldquJobjob_code	FieldNamejob_code  TStringFieldquJobjob_name	FieldNamejob_nameSize2   	TADOQueryquCourse
ConnectionADOC
CursorTypectStatic
Parameters SQL.Strings%select * from Field order by field_no Left�Topx TSmallintFieldquCourseRowNumber	FieldKindfkCalculated	FieldName	RowNumber
Calculated	  TSmallintFieldquCoursefield_no	FieldNamefield_no  TStringFieldquCoursefield_name	FieldName
field_nameSize2   	TADOQueryqudegree
ConnectionADOC
CursorTypectStatic
Parameters SQL.StringsSelect * from DegreeORDER BY Code Left�Top�  TIntegerFieldqudegreeCode	FieldNameCode  TStringFieldqudegreeDescr	FieldNameDescrSize2  TIntegerFieldqudegreeRow	FieldKindfkCalculated	FieldNameRow
Calculated	   TFontDialogFontDialog1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style Left�Top   	TADOQueryquInsertUser
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringNumericScale� 	Precision� Size
Value   SQL.Strings.insert into Tbl_AmvalUsers(Emp_no) values(:p0) Left� Top	 TSmallintFieldSmallintField2	FieldNametexture_type  TStringFieldStringField11	FieldNametexture_loc  TStringFieldStringField12	FieldNamemarkSize  TStringFieldStringField13	FieldNametexture_date	FixedChar	Size  TStringFieldStringField14	FieldNamelengthSize
  TStringFieldStringField15	FieldNamewidthSize
  TStringFieldStringField16	FieldName
back_colorSize
  TStringFieldStringField17	FieldNameborder_colorSize
  TStringFieldStringField18	FieldNamespecificationSize2  TStringFieldStringField19	FieldNamemapSize  TStringFieldStringField20	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField2	FieldName
goods_code   	TMSNPopUp	MSNPopUp1TexttextURLhttp://www.url.com/IconLeftIconTopWidth� HeightyGradientColor1��� GradientColor2clWhiteScrollSpeed	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style HoverFont.CharsetDEFAULT_CHARSETHoverFont.ColorclBlueHoverFont.Height�HoverFont.NameTahomaHoverFont.StylefsUnderline TitletitleTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold OptionsmsnAutoOpenURLmsnCascadePopupsmsnAllowScrollmsnAllowHyperlink 
TextCursor	crDefault
PopupMargePopupStartXPopupStartYDefaultMonitor	dmDesktopLeft� Top�    