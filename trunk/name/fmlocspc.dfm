object GeoLoc: TGeoLoc
  Left = 231
  Top = 192
  ActiveControl = dblcntry
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                            '#1605#1581#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604' '#1580#1600#1600#1594#1585#1575#1601 +
    #1600#1600#1610#1575#1610#1610'      '
  ClientHeight = 142
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 535
    Height = 37
    Align = alBottom
    TabOrder = 0
    object btca: TButton
      Left = 85
      Top = 7
      Width = 74
      Height = 24
      Cancel = True
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btcaClick
    end
    object btok: TButton
      Left = 8
      Top = 7
      Width = 75
      Height = 24
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btokClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 105
    Align = alClient
    TabOrder = 1
    object lbprovince: TLabel
      Left = 161
      Top = 12
      Width = 63
      Height = 16
      Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbcntry: TLabel
      Left = 438
      Top = 12
      Width = 59
      Height = 16
      Caption = #1606#1575#1605' '#1603#1588#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbcnty: TLabel
      Left = 438
      Top = 46
      Width = 87
      Height = 16
      Caption = #1606#1575#1605' '#1588#1607#1585#1587#1578#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbsection: TLabel
      Left = 161
      Top = 46
      Width = 57
      Height = 16
      Caption = #1606#1575#1605' '#1576#1582#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbvillage: TLabel
      Left = 438
      Top = 78
      Width = 77
      Height = 16
      Caption = #1606#1575#1605' '#1583#1607#1587#1578#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblprovince: TDBLookupComboBox
      Left = 9
      Top = 8
      Width = 145
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'province_code'
      ListField = 'province_name'
      ListSource = dsprovince
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnCloseUp = dblprovinceCloseUp
      OnKeyDown = dblprovinceKeyDown
      OnKeyPress = dblprovinceKeyPress
    end
    object dblcntry: TDBLookupComboBox
      Left = 277
      Top = 9
      Width = 146
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'country_code'
      ListField = 'country_name'
      ListSource = dscntry
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnCloseUp = dblcntryCloseUp
      OnKeyDown = dblcntryKeyDown
      OnKeyPress = dblcntryKeyPress
    end
    object dblcnty: TDBLookupComboBox
      Left = 277
      Top = 41
      Width = 146
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'county_code'
      ListField = 'county_name'
      ListSource = dscnty
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnCloseUp = dblcntyCloseUp
      OnExit = dblcntyExit
      OnKeyDown = dblcntyKeyDown
      OnKeyPress = dblcntyKeyPress
    end
    object dblsection: TDBLookupComboBox
      Left = 9
      Top = 41
      Width = 145
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'section_code'
      ListField = 'section_name'
      ListSource = dssection
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnCloseUp = dblsectionCloseUp
      OnKeyPress = dblsectionKeyPress
    end
    object dblvillage: TDBLookupComboBox
      Left = 277
      Top = 74
      Width = 146
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'village_code'
      ListField = 'village_name'
      ListSource = dsvillage
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnKeyPress = dblvillageKeyPress
    end
  end
  object qucntry: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select country_code, country_name from Country'
      'Order by country_code')
    Left = 481
    Top = 99
    object qucntrycountry_code: TSmallintField
      FieldName = 'country_code'
    end
    object qucntrycountry_name: TStringField
      FieldName = 'country_name'
      Size = 40
    end
  end
  object quprovince: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select province_code, province_name from Province'
      'where country_code = :p1'
      'Order by province_code')
    Left = 456
    Top = 99
    object quprovinceprovince_code: TSmallintField
      FieldName = 'province_code'
    end
    object quprovinceprovince_name: TStringField
      FieldName = 'province_name'
      Size = 40
    end
  end
  object qucnty: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
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
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select county_code, county_name from County'
      'where'
      'country_code = :p1 and'
      'province_code = :p2'
      '')
    Left = 427
    Top = 99
    object qucntycounty_code: TSmallintField
      FieldName = 'county_code'
    end
    object qucntycounty_name: TStringField
      FieldName = 'county_name'
      Size = 40
    end
  end
  object qusection: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
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
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
      'select section_code, section_name from Section'
      'where'
      'country_code  = :p1 and'
      'province_code = :p2 and'
      'county_code = :p3'
      'Order by section_code')
    Left = 401
    Top = 99
    object qusectionsection_code: TSmallintField
      FieldName = 'section_code'
    end
    object qusectionsection_name: TStringField
      FieldName = 'section_name'
      Size = 40
    end
  end
  object quvillage: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
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
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select village_code, village_name from Village'
      'Where'
      'country_code = :p1 and'
      'province_code = :p2 and'
      'county_code = :p3 and'
      'section_code = :p4'
      'Order by village_code')
    Left = 373
    Top = 99
    object quvillagevillage_code: TSmallintField
      FieldName = 'village_code'
    end
    object quvillagevillage_name: TStringField
      FieldName = 'village_name'
      Size = 40
    end
  end
  object dscntry: TDataSource
    DataSet = qucntry
    Left = 481
    Top = 126
  end
  object dsprovince: TDataSource
    DataSet = quprovince
    Left = 461
    Top = 126
  end
  object dscnty: TDataSource
    DataSet = qucnty
    Left = 431
    Top = 126
  end
  object dssection: TDataSource
    DataSet = qusection
    Left = 402
    Top = 125
  end
  object dsvillage: TDataSource
    DataSet = quvillage
    Left = 374
    Top = 129
  end
end
