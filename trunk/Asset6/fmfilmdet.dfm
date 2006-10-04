object filmdet: Tfilmdet
  Left = 112
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                                 '#1605#1588#1582#1589#1575#1578' '#1606#1608#1575#1585' '#1601#1610#1604#1605' '#1608' '#1583#1610#1587#1603#1578' '
  ClientHeight = 239
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Label12: TLabel
    Left = 303
    Top = 12
    Width = 36
    Height = 14
    Caption = ':'#1603#1583' '#1605#1575#1604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 425
    Height = 164
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 1
    object Label1: TLabel
      Left = 337
      Top = 8
      Width = 41
      Height = 14
      Caption = ':'#1605#1608#1590#1608#1593
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 337
      Top = 35
      Width = 22
      Height = 14
      Caption = ':'#1606#1608#1593
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 337
      Top = 60
      Width = 33
      Height = 14
      Caption = ':'#1575#1606#1583#1575#1586#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 337
      Top = 86
      Width = 60
      Height = 14
      Caption = ':'#1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 337
      Top = 112
      Width = 62
      Height = 14
      Caption = ':'#1608#1575#1581#1583' '#1587#1606#1580#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 337
      Top = 138
      Width = 78
      Height = 14
      Caption = ':'#1587#1575#1610#1585' '#1605#1588#1582#1589#1575#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edsub: TRSqlEdit
      Left = 84
      Top = 6
      Width = 250
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftRequired
    end
    object eddesc: TRSqlEdit
      Left = 68
      Top = 133
      Width = 266
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      FieldType = ftNonRequired
    end
    object cbmeasure: TRSqlComboBox
      Left = 224
      Top = 108
      Width = 110
      Height = 22
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        #1586#1605#1575#1606' '
        #1592#1585#1601#1610#1578)
      FieldType = ftRequired
    end
    object edsize: TRSqlEdit
      Left = 223
      Top = 56
      Width = 111
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
    end
    object cbsize: TRSqlComboBox
      Left = 224
      Top = 83
      Width = 110
      Height = 22
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        #1587#1575#1593#1578
        #1583#1602#1610#1602#1607
        #1605#1711#1575#1576#1575#1610#1578)
      FieldType = ftRequired
    end
    object cbtype: TRSqlComboBox
      Left = 224
      Top = 31
      Width = 110
      Height = 22
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        #1606#1608#1575#1585' '#1601#1610#1604#1605
        #1583#1610#1587#1603#1578)
      FieldType = ftRequired
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 205
    Width = 425
    Height = 34
    Align = alBottom
    TabOrder = 2
    object btok: TRSqlButton
      Left = 10
      Top = 4
      Width = 71
      Height = 23
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btokClick
      ButtonType = btOk
    end
    object btca: TRSqlButton
      Left = 81
      Top = 4
      Width = 70
      Height = 23
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btcaClick
      ButtonType = btCancel
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 40
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    object lbctg: TLabel
      Left = 339
      Top = 11
      Width = 51
      Height = 14
      Caption = ':'#1575#1586' '#1603#1583' '#1605#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbGoodUp: TLabel
      Left = 144
      Top = 12
      Width = 48
      Height = 14
      Caption = ':'#1578#1575' '#1603#1583' '#1605#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edGood: TRSqlEdit
      Left = 207
      Top = 8
      Width = 126
      Height = 22
      BiDiMode = bdLeftToRight
      Color = 16635581
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftDisplay
      EditType = etNumeric
    end
    object dblgood: TRSqlDbLookup
      Left = 221
      Top = 8
      Width = 113
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'GoodS_CodeStr'
      ListField = 'GoodS_CodeStr'
      ListSource = dsgood
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftRequired
    end
    object Button1: TRSqlButton
      Left = 201
      Top = 8
      Width = 22
      Height = 23
      Hint = #1605#1588#1575#1607#1583#1607' '#1580#1586#1574#1610#1575#1578' '#1605#1575#1604
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button1Click
      ButtonType = btNone
    end
    object btGoodUp: TRSqlButton
      Left = 10
      Top = 8
      Width = 23
      Height = 23
      Hint = #1605#1588#1575#1607#1583#1607' '#1580#1586#1574#1610#1575#1578' '#1605#1575#1604
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btGoodUpClick
      ButtonType = btNone
    end
    object dblGoodUp: TRSqlDbLookup
      Left = 31
      Top = 8
      Width = 112
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'GoodS_CodeStr'
      ListField = 'GoodS_CodeStr'
      ListSource = dsgood
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      FieldType = ftRequired
    end
  end
  object quserch: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from docsend '
      'Where Doc_code=:p1')
    Left = 659
    Top = 110
    object quserchDoc_code: TIntegerField
      FieldName = 'Doc_code'
    end
    object quserchDoc_date: TStringField
      FieldName = 'Doc_date'
      FixedChar = True
      Size = 8
    end
    object quserchDoc_type: TSmallintField
      FieldName = 'Doc_type'
    end
    object quserchDoc_del: TStringField
      FieldName = 'Doc_del'
    end
    object quserchDoc_res: TStringField
      FieldName = 'Doc_res'
      Size = 50
    end
    object quserchdoc_pas: TStringField
      FieldName = 'doc_pas'
      Size = 50
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from docsend '
      'Where Doc_code=:p1')
    Left = 659
    Top = 110
    object IntegerField1: TIntegerField
      FieldName = 'Doc_code'
    end
    object StringField1: TStringField
      FieldName = 'Doc_date'
      FixedChar = True
      Size = 8
    end
    object SmallintField1: TSmallintField
      FieldName = 'Doc_type'
    end
    object StringField2: TStringField
      FieldName = 'Doc_del'
    end
    object StringField3: TStringField
      FieldName = 'Doc_res'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'doc_pas'
      Size = 50
    end
  end
  object quinsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      end
      item
        Name = 'p7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into diskette_film_spec(goods_code,subject,type,good_size' +
        ',size_unit,measure_unit,specification)'
      'values(:p1,:p2,:p3,:p4,:p5,:p6,:p7 )')
    Left = 20
    Top = 103
  end
  object dsgood: TDataSource
    DataSet = DabData.quMalClass
    Left = 32
    Top = 49
  end
  object quupdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
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
        Size = 10
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
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Update diskette_film_spec'
      'Set  subject=:p0,'
      '        type=:p1,'
      '        good_size=:p2,'
      '        size_unit=:p3,'
      '        measure_unit=:p4,'
      '        specification=:p5'
      'where goods_code=:p6')
    Left = 19
    Top = 145
  end
end
