�
 TRADDABDATA 0|  TPF0TRadDabData
RadDabDataOldCreateOrderOnCreateDabDataCreate	OnDestroyDabDataDestroyLeft4Top� Height�WidthT TADOConnectionADOCCommandTimeoutxConnectionStringaProvider=SQLOLEDB.1;Persist Security Info=True;User ID=sa;Initial Catalog=hrs;Data Source=icebergConnectionTimeoutCursorLocationclUseServerKeepConnectionLoginPromptModecmReadWriteProvider
SQLOLEDB.1AfterConnectADOCAfterConnectBeforeDisconnectADOCBeforeDisconnectOnInfoMessageADOCInfoMessageLeftTop  	TMSNPopUp	MSNPopUp1TexttextURL IconLeftIconTopWidth� HeightyGradientColor1��� GradientColor2clWhiteScrollSpeedFont.CharsetARABIC_CHARSET
Font.ColorclRedFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold HoverFont.CharsetDEFAULT_CHARSETHoverFont.ColorclBlueHoverFont.Height�HoverFont.NameMS Sans SerifHoverFont.StylefsUnderline Title   'EH'DTitleFont.CharsetARABIC_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold OptionsmsnCascadePopupsmsnBackgroundTilemsnAllowScroll 
TextCursor	crDefault
PopupMargePopupStartXPopupStartYDefaultMonitordmActiveFormLeft0TopE  TFontDialogFontDialog1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMs Sans Serif
Font.StylefsBold MinFontSize MaxFontSize Left0Top�  	TADOQueryquInsertUser
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringNumericScale� 	Precision� Size
Value   SQL.Strings.insert into Tbl_AmvalUsers(Emp_no) values(:p0) Left0Top�  TSmallintFieldSmallintField2	FieldNametexture_type  TStringFieldStringField11	FieldNametexture_loc  TStringFieldStringField12	FieldNamemarkSize  TStringFieldStringField13	FieldNametexture_date	FixedChar	Size  TStringFieldStringField14	FieldNamelengthSize
  TStringFieldStringField15	FieldNamewidthSize
  TStringFieldStringField16	FieldName
back_colorSize
  TStringFieldStringField17	FieldNameborder_colorSize
  TStringFieldStringField18	FieldNamespecificationSize2  TStringFieldStringField19	FieldNamemapSize  TStringFieldStringField20	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField2	FieldName
goods_code   TDataSourcedcCatLeft`Top(  	TADOQueryquOrg
ConnectionADOC
CursorTypectStatic
ParametersNameOrgCodeDataType	ftIntegerNumericScale	PrecisionSize	Value   SQL.StringsDeclare @OrgCode intSet @OrgCode=:OrgCode SELECT * FROM Organizationwhere /  (Org_Code=@OrgCode or IsNull(@OrgCode,-1)=-1) Left0TopZ TIntegerFieldquOrgOrg_Code	FieldNameOrg_Code  TStringFieldquOrgOrg_Name	FieldNameOrg_NameSizeP  TStringFieldquOrgOrg_Addr	FieldNameOrg_Addr	FixedChar	Size  TIntegerFieldquOrgOrg_Mast_Code	FieldNameOrg_Mast_Code   TDataSourcedsOrgDataSetquOrgLeft`Topx  	TADOQuery	quaccessf
ConnectionADOC
CursorTypectStatic
ParametersNamep0DataTypeftStringSize
Value  Namep1DataType	ftIntegerSizeValue   SQL.Strings*Select  access.*,mnum  from  AccEss,menues�Where  emp_no=:p0 and access.mcode in (select menues.mcode from menues,access where menues.Syscode=:p1 and menues.mcode=access.mcode) and menues.mcode=access.mcode Left0Top  TStringFieldquaccessfEmp_NO	FieldNameEmp_NO	FixedChar	Size
  TIntegerFieldquaccessfMCode	FieldNameMCode  TSmallintFieldquaccessfextag	FieldNameextag  TSmallintFieldquaccessfnewtag	FieldNamenewtag  TSmallintFieldquaccessfedittag	FieldNameedittag  TSmallintFieldquaccessfdeltag	FieldNamedeltag  TSmallintFieldquaccessfprinttag	FieldNameprinttag  TSmallintFieldquaccessfsrchtag	FieldNamesrchtag  TSmallintFieldquaccessfprevtag	FieldNameprevtag  TSmallintFieldquaccessfnexttag	FieldNamenexttag  TSmallintFieldquaccessfruntag	FieldNameruntag  TSmallintFieldquaccessflisttag	FieldNamelisttag  TStringFieldquaccessfmnum	FieldNamemnumSize
   	TADOQueryquInsertLog
ConnectionADOC
CursorTypectStatic
ParametersNameempDataTypeftStringNumericScale� 	Precision� Size
Value  NameLog
AttributespaLong DataTypeftFixedCharNumericScale� 	Precision� Size���?Value   SQL.Strings3insert into Tbl_Log(Emp_no,[Log]) values(:emp,:Log) Left0Top�  TSmallintFieldSmallintField1	FieldNametexture_type  TStringFieldStringField1	FieldNametexture_loc  TStringFieldStringField2	FieldNamemarkSize  TStringFieldStringField3	FieldNametexture_date	FixedChar	Size  TStringFieldStringField4	FieldNamelengthSize
  TStringFieldStringField5	FieldNamewidthSize
  TStringFieldStringField6	FieldName
back_colorSize
  TStringFieldStringField7	FieldNameborder_colorSize
  TStringFieldStringField8	FieldNamespecificationSize2  TStringFieldStringField9	FieldNamemapSize  TStringFieldStringField10	FieldNametypecaseReadOnly	Size  TLargeintFieldLargeintField1	FieldName
goods_code   	TADOQueryquCat
ConnectionADOC
CursorTypectStatic
ParametersNamep0
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size� Value  Namep1
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size� Value   SQL.Strings(Select Id,[Desc] as CatStr from Tbl_Cat 'where Upper(tbl)=:p0 and Upper(Col)=:p1 Left0Top
 TIntegerFieldquCatId	FieldNameId  TStringFieldquCatCatStr	FieldNameCatStrSized    