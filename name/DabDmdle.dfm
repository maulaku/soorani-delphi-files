�
 TDABDATA 0�  TPF0TDabDataDabDataOldCreateOrderOnCreateDabDataCreate	OnDestroyDabDataDestroyHeight� Width~ TADOConnectionADOCConnectionStringqProvider=SQLOLEDB.1;Password="";Persist Security Info=True;User ID=sa;Initial Catalog=name1;Data Source=localhostLoginPromptModecmReadWriteProvider
SQLOLEDB.1AfterConnectADOCAfterConnectLeftTop  	TADOQuery	quaccessf
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringSize
Value  Namep1DataType	ftIntegerSizeValue   SQL.Strings*Select  access.*,mnum  from  AccEss,menues�Where  emp_no=:p0 and access.mcode in (select menues.mcode from menues,access where menues.Syscode=:p1 and menues.mcode=access.mcode) and menues.mcode=access.mcode Left\Top TStringFieldquaccessfEmp_NO	FieldNameEmp_NO	FixedChar	Size
  TIntegerFieldquaccessfMCode	FieldNameMCode  TSmallintFieldquaccessfextag	FieldNameextag  TSmallintFieldquaccessfnewtag	FieldNamenewtag  TSmallintFieldquaccessfedittag	FieldNameedittag  TSmallintFieldquaccessfdeltag	FieldNamedeltag  TSmallintFieldquaccessfprinttag	FieldNameprinttag  TSmallintFieldquaccessfsrchtag	FieldNamesrchtag  TSmallintFieldquaccessfprevtag	FieldNameprevtag  TSmallintFieldquaccessfnexttag	FieldNamenexttag  TSmallintFieldquaccessfruntag	FieldNameruntag  TSmallintFieldquaccessflisttag	FieldNamelisttag  TStringFieldquaccessfmnum	FieldNamemnumSize
   	TMSNPopUp	MSNPopUp1TexttextURLhttp://www.url.com/IconLeftIconTopWidth� HeightyGradientColor1��� GradientColor2clWhiteScrollSpeed	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style HoverFont.CharsetDEFAULT_CHARSETHoverFont.ColorclBlueHoverFont.Height�HoverFont.NameMS Sans SerifHoverFont.StylefsUnderline Title   اشكال در TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OptionsmsnCascadePopupsmsnAllowScroll 
TextCursor	crDefault
PopupMargePopupStartXPopupStartYDefaultMonitor
dmMainFormLeftTopA  	TADOQueryquInsertUser
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringNumericScale� 	Precision� Size
Value   SQL.Strings.insert into Tbl_AmvalUsers(Emp_no) values(:p0) Left� Top	 TSmallintFieldSmallintField2	FieldNametexture_type  TStringFieldStringField11	FieldNametexture_loc  TStringFieldStringField12	FieldNamemarkSize  TStringFieldStringField13	FieldNametexture_date	FixedChar	Size  TStringFieldStringField14	FieldNamelengthSize
  TStringFieldStringField15	FieldNamewidthSize
  TStringFieldStringField16	FieldName
back_colorSize
  TStringFieldStringField17	FieldNameborder_colorSize
  TStringFieldStringField18	FieldNamespecificationSize2  TStringFieldStringField19	FieldNamemapSize  TStringFieldStringField20	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField2	FieldName
goods_code   	TADOQueryquInsertLog
ConnectionADOC
CursorTypectStatic
ParametersNameempDataTypeftStringNumericScale� 	Precision� Size
Value  NameLog
AttributespaLong DataTypeftStringNumericScale� 	Precision� Size���ValueFile Not Found  SQL.Strings3insert into Tbl_Log(Emp_no,[Log]) values(:emp,:Log) Left]TopB TSmallintFieldSmallintField1	FieldNametexture_type  TStringFieldStringField1	FieldNametexture_loc  TStringFieldStringField2	FieldNamemarkSize  TStringFieldStringField3	FieldNametexture_date	FixedChar	Size  TStringFieldStringField4	FieldNamelengthSize
  TStringFieldStringField5	FieldNamewidthSize
  TStringFieldStringField6	FieldName
back_colorSize
  TStringFieldStringField7	FieldNameborder_colorSize
  TStringFieldStringField8	FieldNamespecificationSize2  TStringFieldStringField9	FieldNamemapSize  TStringFieldStringField10	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField1	FieldName
goods_code   TADOStoredProcspEmp
ConnectionADOC
CursorTypectStaticProcedureNameGetFLNames;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name	@Org_code
Attributes
paNullable DataType	ftInteger	Precision
Value  Name
@Post_code
Attributes
paNullable DataType	ftInteger	Precision
Value  Name
@Unit_code
Attributes
paNullable DataType
ftSmallint	PrecisionValue  Name@FirstFamiliy
Attributes
paNullable DataType	ftBooleanValue	  Left Top TStringFieldspEmpEmp_no	FieldNameEmp_no	FixedChar	Size
  TStringFieldspEmpFlName	FieldNameFlNameReadOnly	SizeG   TDataSourcedsEmpDataSetspEmpLeft Top  TADODataSetdsOrgSearch
ConnectionADOC
CursorTypectStaticCommandTextNselect Org_Code, Org_Name from Organization where Org_Code = DBO.GetOrgCode() 
Parameters Left� TopH TIntegerFielddsOrgSearchOrg_Code	FieldNameOrg_Code  TStringFielddsOrgSearchOrg_Name	FieldNameOrg_NameSizeP   TADODataSetdaParameters
ConnectionADOC
CursorTypectStaticCommandText
parametersCommandTypecmdTable
Parameters LeftTopP TIntegerFielddaParametersPk_Key	FieldNamePk_Key  TStringFielddaParametersvertion	FieldNamevertion	FixedChar	Size
  TSmallintFielddaParametersCurrentYear	FieldNameCurrentYear  TSmallintFielddaParametersMasterGroupLen	FieldNameMasterGroupLen  TSmallintFielddaParametersDetailGroupLen	FieldNameDetailGroupLen  TSmallintFielddaParametersItemLen	FieldNameItemLen  TSmallintFielddaParametersOrganizCode	FieldNameOrganizCode  TStringFielddaParametersMasterOrgName	FieldNameMasterOrgNameSize�   TStringFielddaParametersDetailOrgName	FieldNameDetailOrgNameSize�    TDataSourcedsOrgDataSetquOrgLeft(Top�   	TADOQueryquOrg
ConnectionADOC
CursorTypectStatic
ParametersNameOrgCodeDataType	ftIntegerNumericScale	PrecisionSize	Value   SQL.StringsDeclare @OrgCode intSet @OrgCode=:OrgCode SELECT * FROM Organizationwhere /  (Org_Code=@OrgCode or IsNull(@OrgCode,-1)=-1) LeftPTop�  TIntegerFieldquOrgOrg_Code	FieldNameOrg_Code  TStringFieldquOrgOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquOrgOrg_Addr	FieldNameOrg_Addr	FixedChar	Size  TIntegerFieldquOrgOrg_Mast_Code	FieldNameOrg_Mast_Code   TFontDialogFontDialog1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style LeftHTop�    