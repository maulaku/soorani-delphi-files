�
 TACTIVEUSER 0-  TPF0TActiveUser
ActiveUserLeftTop� HorzScrollBar.VisibleVertScrollBar.Visible
AutoScrollBiDiModebdRightToLeftBorderIconsbiSystemMenu CaptionA   كاربران فعال استفاده كننده از اموالClientHeight� ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 	FormStyle
fsMDIChildOldCreateOrderParentBiDiModePositionpoScreenCenterVisible	OnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TDBGridDBGrid1Left Top Width�Height� AlignalClient
DataSourcedsActiveUserTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold ColumnsExpanded	FieldNameFLNameTitle.Caption   نام كاربرWidthvVisible	 Expanded	FieldNamehostnameTitle.Caption   نام سيستمWidth^Visible	 Expanded	FieldNametimeTitle.Caption    زمان اجراي برنامهWidthxVisible	 Expanded	FieldNamestatusTitle.Caption%   اجراي برنامه در حالتWidth� Visible	 Expanded	FieldNamecmdTitle.Caption%   اخرين دستور اجرا شدهVisible	 Expanded	FieldNameDBNameTitle.Caption   نام پايگاه دادهWidth\Visible	 Expanded	FieldNameprogram_nameVisible	    TPanelPanel1Left Top� Width�Height"AlignalBottomTabOrder TSpeedButtonSpeedButton1Left� Top	Width`HeightCaption   دوباره چك كنOnClickTimer1Timer  TSpeedButtonSpeedButton2LeftTop	WidthbHeightCaption   D:HOnClickSpeedButton2Click  TSpeedButtonSpeedButton3Left� Top	Width`HeightCaption   حذف كاربرOnClickSpeedButton3Click  TSpeedButtonSpeedButton4LeftiTop	Width`HeightCaption   فرستادن پيامOnClickSpeedButton4Click  	TRSqlEdit	edMessageLeft�Top	Width� HeightFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder 	FieldType
ftRequired   TDataSourcedsActiveUserDataSetquActiveUserLeft� Topi  	TADOQueryquActiveUser
ConnectionDabData.ADOC
CursorTypectStatic
Parameters SQL.Stringsselect	  FLName=  Case Ps.SPID4       when @@SPID then E.Name+' '+E.Family+'(شما)' U       else Isnull(E.Name+' '+E.Family,'هنوز وارد سيستم نشده  است' )  end,
  Ps.spid,  hostname,    dbo.GetPDate(login_time)+'  '+ /  cast(DatePart(hh,login_time) as char(2))+':'+/  cast(DatePart(mi,login_time) as char(2))+':'+3  cast(DatePart(ss,login_time) as char(2)) as time,  status=case status8       when  'sleeping' then 'بدون انجام عملي';       when 'running' then 'در حال اجراي دستور'<       when 'runnable' then 'در حال اجراي دستور'    else status  end ,  cmd=case cmd D       when  'AWAITING COMMAND' then 'منتظر اجراي دستور'2       when 'SELECT' then 'گرفتن اطلاعات'0       when 'INSERT' then 'ورود اطلاعات'2       when 'UPDATE' then 'تغيير اطلاعات'    else cmd  end,
  DBName ,  program_namefrom master.dbo.sysprocesses Ps#  left outer join Tbl_AmvalUsers Au    on Ps.spid=Au.spid  left outer join emp E    on Au.emp_no=E.emp_nowhere    program_name='Amval' or   program_name='AmarPerson' or   program_name='Khadamat' or   program_name='Name' 
 Left� Toph TWideStringFieldquActiveUserhostname	FieldNamehostname	FixedChar	Size�   TStringFieldquActiveUsertime	FieldNametimeReadOnly	Size  TWideStringFieldquActiveUserstatus	FieldNamestatus	FixedChar	Size  TWideStringFieldquActiveUsercmd	FieldNamecmd	FixedChar	Size  TSmallintFieldquActiveUserspid	FieldNamespid  TStringFieldquActiveUserFLName	FieldNameFLNameReadOnly	SizeG  TWideStringFieldquActiveUserDBName	FieldNameDBName	FixedChar	Size�   TWideStringFieldquActiveUserprogram_name	FieldNameprogram_name	FixedChar	Size�    TTimerTimer1OnTimerTimer1TimerLeftPTop  	TADOQueryquKill
ConnectionDabData.ADOC
CursorTypectStatic
Parameters Left Top�  TWideStringFieldWideStringField1	FieldNamehostname	FixedChar	Size�   TStringFieldStringField1	FieldNametimeReadOnly	Size  TWideStringFieldWideStringField2	FieldNamestatus	FixedChar	Size  TWideStringFieldWideStringField3	FieldNamecmd	FixedChar	Size   	TADOQueryquSendMessage
ConnectionDabData.ADOC
CursorTypectStatic
ParametersNameMessage
Attributes
paNullable DataTypeftStringNumericScale� 	Precision� Size� Value  NameSpid
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.Strings*update Tbl_AmvalUsers set Message=:Messagewhere spid=:Spid Left(Top�  TWideStringFieldWideStringField4	FieldNamehostname	FixedChar	Size�   TStringFieldStringField2	FieldNametimeReadOnly	Size  TWideStringFieldWideStringField5	FieldNamestatus	FixedChar	Size  TWideStringFieldWideStringField6	FieldNamecmd	FixedChar	Size    