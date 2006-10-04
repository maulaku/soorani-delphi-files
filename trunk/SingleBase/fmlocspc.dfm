object GeoLoc: TGeoLoc
  Left = 158
  Top = 155
  Width = 520
  Height = 158
  BorderIcons = [biSystemMenu]
  Caption = 
    '                                         '#1605#1581#1600#1600#1600#1600#1600#1600#1600#1600#1600#1604' '#1580#1600#1600#1594#1585#1575#1601#1600#1600#1610 +
    #1575#1610#1610'          '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 101
    Align = alTop
    TabOrder = 0
    object lbprovince: TLabel
      Left = 208
      Top = 11
      Width = 38
      Height = 16
      Caption = ' '#1575#1587#1578#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbcntry: TLabel
      Left = 453
      Top = 11
      Width = 38
      Height = 16
      Caption = ' '#1603#1588#1608#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbcnty: TLabel
      Left = 453
      Top = 43
      Width = 58
      Height = 16
      Caption = ' '#1588#1607#1585#1587#1578#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbsection: TLabel
      Left = 209
      Top = 43
      Width = 34
      Height = 16
      Caption = ' '#1576#1582#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbvillage: TLabel
      Left = 453
      Top = 75
      Width = 49
      Height = 16
      Caption = ' '#1583#1607#1587#1578#1575#1606
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblprovince: TRSqlDbLookup
      Left = 26
      Top = 7
      Width = 185
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
      OnClick = dblprovinceClick
      OnCloseUp = dblprovinceCloseUp
      OnExit = dblprovinceCloseUp
      FieldType = ftRequired
    end
    object dblcntry: TRSqlDbLookup
      Left = 274
      Top = 7
      Width = 182
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
      OnClick = dblcntryClick
      OnCloseUp = dblcntryCloseUp
      OnExit = dblcntryCloseUp
      FieldType = ftRequired
    end
    object dblcnty: TRSqlDbLookup
      Left = 275
      Top = 39
      Width = 182
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
      OnClick = dblcntyClick
      OnCloseUp = dblcntyCloseUp
      OnExit = dblcntyExit
      FieldType = ftRequired
    end
    object dblsection: TRSqlDbLookup
      Left = 26
      Top = 39
      Width = 185
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clInfoBk
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
      OnClick = dblsectionClick
      OnCloseUp = dblsectionCloseUp
      OnExit = dblsectionExit
      FieldType = ftNonRequired
    end
    object dblvillage: TRSqlDbLookup
      Left = 275
      Top = 71
      Width = 182
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clInfoBk
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
      FieldType = ftNonRequired
    end
    object btInsert: TRSqlButton
      Left = 250
      Top = 9
      Width = 25
      Height = 21
      Hint = #1583#1585#1580' '#1606#1575#1605' '#1603#1588#1608#1585
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btInsertClick
      ButtonType = btNone
    end
    object btprv: TRSqlButton
      Left = 2
      Top = 9
      Width = 25
      Height = 21
      Hint = #1583#1585#1580' '#1606#1575#1605' '#1603#1588#1608#1585
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btprvClick
      ButtonType = btNone
    end
    object btcnt: TRSqlButton
      Left = 251
      Top = 40
      Width = 25
      Height = 22
      Hint = #1583#1585#1580' '#1606#1575#1605' '#1603#1588#1608#1585
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btcntClick
      ButtonType = btNone
    end
    object btsec: TRSqlButton
      Left = 2
      Top = 41
      Width = 25
      Height = 21
      Hint = #1583#1585#1580' '#1606#1575#1605' '#1603#1588#1608#1585
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btsecClick
      ButtonType = btNone
    end
    object btvil: TRSqlButton
      Left = 251
      Top = 72
      Width = 25
      Height = 21
      Hint = #1583#1585#1580' '#1606#1575#1605' '#1603#1588#1608#1585
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btvilClick
      ButtonType = btNone
    end
  end
  object btca: TRSqlButton
    Left = 78
    Top = 105
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btcaClick
    ButtonType = btCancel
  end
  object btok: TRSqlButton
    Left = 1
    Top = 105
    Width = 75
    Height = 25
    Caption = #1578#1575#1574#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btokClick
    ButtonType = btOk
  end
  object qucntry: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select country_code, country_name from Country'
      'Order by country_name')
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
      'Order by province_name')
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
      ''
      'order by county_name')
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
      'Order by section_name')
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
      'Order by village_name')
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
  object FI: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 48
    Top = 72
  end
  object quiran: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select  * from country'
      'where  ltrim(rtrim(country_name))='#39#1575#1610#1585#1575#1606#39';'
      ' ')
    Left = 240
    Top = 104
    object quiranCountry_code: TSmallintField
      FieldName = 'Country_code'
    end
    object quiranCountry_name: TStringField
      FieldName = 'Country_name'
      Size = 40
    end
    object quirandegree: TStringField
      FieldName = 'degree'
      FixedChar = True
      Size = 10
    end
    object quiranBad_Weather_Degree: TStringField
      FieldName = 'Bad_Weather_Degree'
      FixedChar = True
      Size = 10
    end
  end
  object qugilan: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select  * from province'
      'where  ltrim(rtrim(province_name))='#39#1711#1610#1604#1575#1606#39
      ''
      ' '
      ' ')
    Left = 176
    Top = 96
    object qugilanprovince_code: TSmallintField
      FieldName = 'province_code'
    end
  end
end
