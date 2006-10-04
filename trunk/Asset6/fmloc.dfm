object Loc: TLoc
  Left = 1
  Top = 83
  Width = 797
  Height = 481
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1578#1593#1585#1610#1601'  '#1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585'  '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagood: TPanel
    Left = 0
    Top = 392
    Width = 789
    Height = 30
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object edcode: TRSqlEdit
      Left = 696
      Top = 3
      Width = 91
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftDisplay
      EditType = etNumeric
    end
    object edloc_desc: TRSqlEdit
      Left = 517
      Top = 3
      Width = 180
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftRequired
    end
    object dblemp: TRSqlDbLookup
      Left = 355
      Top = 3
      Width = 161
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'emp_no'
      ListField = 'FLName'
      ListSource = dsemp
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
    end
    object eddescr: TRSqlEdit
      Left = 8
      Top = 3
      Width = 346
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 100
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      FieldType = ftNonRequired
    end
  end
  object dbgdetail: TDBGrid
    Left = 0
    Top = 43
    Width = 789
    Height = 349
    Align = alClient
    BiDiMode = bdRightToLeft
    DataSource = dsdetail
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Pitch = fpVariable
    TitleFont.Style = [fsBold]
    OnEnter = dbgdetailEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'loc_code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'loc_desc'
        Title.Alignment = taCenter
        Title.Caption = #1588#1585#1581
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FLName'
        Title.Alignment = taCenter
        Title.Caption = #1605#1587#1574#1608#1604' '#1575#1605#1608#1575#1604
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descr'
        Title.Alignment = taCenter
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 344
        Visible = True
      end>
  end
  object pagood2: TPanel
    Left = 0
    Top = 422
    Width = 789
    Height = 34
    Align = alBottom
    TabOrder = 1
    object btok: TRSqlButton
      Left = 24
      Top = 4
      Width = 87
      Height = 26
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btokClick
      ButtonType = btOk
    end
    object btca: TRSqlButton
      Left = 111
      Top = 4
      Width = 85
      Height = 26
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btcaClick
      ButtonType = btCancel
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 43
    Align = alTop
    TabOrder = 3
    object lbctg: TLabel
      Left = 665
      Top = 12
      Width = 125
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': '#1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lbunit: TLabel
      Left = 319
      Top = 13
      Width = 102
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': '#1606#1575#1605' '#1605#1585#1603#1586' '#1607#1586#1610#1606#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object dblctg: TRSqlDbLookup
      Left = 436
      Top = 9
      Width = 222
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = DabData.dsOrgUnit
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnCloseUp = dblctgCloseUp
      FieldType = ftRequired
    end
    object dblunit: TRSqlDbLookup
      Left = 20
      Top = 9
      Width = 293
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = DabData.dsCostCenter
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = dblunitClick
      OnCloseUp = dblunitCloseUp
      OnExit = dblunitExit
      FieldType = ftNonRequired
    end
  end
  object dsdetail: TDataSource
    DataSet = qudetail
    Left = 183
    Top = 87
  end
  object quinloc: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'insert into Deploy_Location '
      '(loc_code, loc_desc, emp_no, unit_code, org_code,descr)'
      'values (:p1, :p2, :p3, :p4, :p5,:p6)')
    Left = 143
    Top = 266
  end
  object quuploc: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Update Deploy_Location'
      'Set'
      '  loc_desc = :p1,'
      '  emp_no = :p2,'
      '  descr=:p3'
      'where'
      '  org_code = :p4 and'
      '  unit_code = :p5 and'
      '  loc_code = :p6'
      '')
    Left = 203
    Top = 266
  end
  object qudelloc: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      ' Delete from  Deploy_Location'
      'where'
      '   loc_code  = :p1 and'
      '   Org_Code  = :p2 and'
      '   Unit_Code = :p3'
      ''
      ' ')
    Left = 263
    Top = 266
  end
  object dsemp: TDataSource
    DataSet = quemp
    Left = 223
    Top = 150
  end
  object quemp: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *,Family+'#39'  '#39'+Name as FLName'
      'from Emp'
      'order by FLName')
    Left = 155
    Top = 150
    object quempemp_no: TStringField
      FieldName = 'emp_no'
      FixedChar = True
      Size = 10
    end
    object quempname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object quempfamily: TStringField
      FieldName = 'family'
      Size = 40
    end
    object quempfather_name: TStringField
      FieldName = 'father_name'
      Size = 30
    end
    object quempbirth_certificate_no: TStringField
      FieldName = 'birth_certificate_no'
      Size = 15
    end
    object quempbirth_date: TStringField
      FieldName = 'birth_date'
      FixedChar = True
      Size = 8
    end
    object quempsex: TSmallintField
      FieldName = 'sex'
    end
    object quempnationality_code: TSmallintField
      FieldName = 'nationality_code'
    end
    object quempbirth_loc_code: TStringField
      FieldName = 'birth_loc_code'
      FixedChar = True
      Size = 14
    end
    object quempcer_loc_code: TStringField
      FieldName = 'cer_loc_code'
      FixedChar = True
      Size = 14
    end
    object quempnational_card_no: TStringField
      FieldName = 'national_card_no'
      FixedChar = True
      Size = 10
    end
    object quempis_married: TSmallintField
      FieldName = 'is_married'
    end
    object quempnum_of_child: TSmallintField
      FieldName = 'num_of_child'
    end
    object quempreligion: TSmallintField
      FieldName = 'religion'
    end
    object quemphealth_state: TStringField
      FieldName = 'health_state'
      Size = 200
    end
    object quempsoldiery: TSmallintField
      FieldName = 'soldiery'
    end
    object quempedu_degree: TSmallintField
      FieldName = 'edu_degree'
    end
    object quempimmunity_reason: TStringField
      FieldName = 'immunity_reason'
      Size = 200
    end
    object quemplast_school_name: TStringField
      FieldName = 'last_school_name'
      Size = 40
    end
    object quemplast_school_loc_code: TStringField
      FieldName = 'last_school_loc_code'
      FixedChar = True
      Size = 14
    end
    object quemplast_diploma_date: TStringField
      FieldName = 'last_diploma_date'
      FixedChar = True
      Size = 8
    end
    object quempwriting: TStringField
      FieldName = 'writing'
      Size = 500
    end
    object quempemp_type: TSmallintField
      FieldName = 'emp_type'
    end
    object quemporg_code: TIntegerField
      FieldName = 'org_code'
    end
    object quempunit_code: TSmallintField
      FieldName = 'unit_code'
    end
    object quempisargary_state: TSmallintField
      FieldName = 'isargary_state'
    end
    object quempemployed_emp_law: TSmallintField
      FieldName = 'employed_emp_law'
    end
    object quempemp_state: TSmallintField
      FieldName = 'emp_state'
    end
    object quempcomment: TStringField
      FieldName = 'comment'
      Size = 300
    end
    object quempemp_photo: TBlobField
      FieldName = 'emp_photo'
    end
    object quempdiploma_name: TStringField
      FieldName = 'diploma_name'
      Size = 50
    end
    object quemppost_no: TIntegerField
      FieldName = 'post_no'
    end
    object quempjob_lev: TSmallintField
      FieldName = 'job_lev'
    end
    object quempIn_First: TFloatField
      FieldName = 'In_First'
    end
    object quempemp_code: TStringField
      FieldName = 'emp_code'
      FixedChar = True
    end
    object quempFLName: TStringField
      FieldName = 'FLName'
      ReadOnly = True
      Size = 72
    end
  end
  object qudetail: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = qudetailAfterScroll
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select   D.*,E.Name+'#39'  '#39'+ E.Family as FLName,O.Ut_Mast_Code'
      'From     Deploy_Location  D,Emp  E,Org_Unit O'
      'Where  D.Org_Code  =:p0               and'
      '             D.Unit_code =:p1                     and'
      '             D.Emp_No = E.Emp_No     and'
      '             D.Unit_Code = O.Ut_Code  and'
      '             D.Org_Code = O.Ut_Org_Code'
      'Order by loc_Code')
    Left = 148
    Top = 87
    object qudetailloc_code: TSmallintField
      FieldName = 'loc_code'
    end
    object qudetailloc_desc: TStringField
      FieldName = 'loc_desc'
      Size = 50
    end
    object qudetailemp_no: TStringField
      FieldName = 'emp_no'
      FixedChar = True
      Size = 10
    end
    object qudetailunit_code: TSmallintField
      FieldName = 'unit_code'
    end
    object qudetailorg_code: TIntegerField
      FieldName = 'org_code'
    end
    object qudetaildescr: TStringField
      FieldName = 'descr'
      Size = 100
    end
    object qudetailFLName: TStringField
      FieldName = 'FLName'
      ReadOnly = True
      Size = 72
    end
    object qudetailUt_Mast_Code: TSmallintField
      FieldName = 'Ut_Mast_Code'
    end
  end
end
