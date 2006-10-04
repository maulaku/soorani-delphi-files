object medicaldet: Tmedicaldet
  Left = 212
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                   '#1605#1588#1582#1589#1575#1578' '#1604#1608#1575#1586#1605' '#1662#1586#1588#1603#1610#1548' '#1583#1585#1605#1575#1606#1610' '#1608#1570#1586#1605#1575#1610#1588#1711#1575#1607#1610
  ClientHeight = 234
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 12
  object Label12: TLabel
    Left = 298
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
    Top = 39
    Width = 432
    Height = 161
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 1
    DesignSize = (
      432
      161)
    object Label1: TLabel
      Left = 335
      Top = 6
      Width = 68
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ':'#1603#1588#1608#1585' '#1587#1575#1586#1606#1583#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 335
      Top = 31
      Width = 80
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ':'#1603#1575#1585#1582#1575#1606#1607' '#1587#1575#1586#1606#1583#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 335
      Top = 57
      Width = 77
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ':'#1588#1605#1575#1585#1607' '#1603#1575#1585#1582#1575#1606#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 335
      Top = 82
      Width = 22
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ':'#1605#1583#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 335
      Top = 108
      Width = 34
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ':'#1587#1585#1610#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 335
      Top = 133
      Width = 78
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ':'#1587#1575#1610#1585' '#1605#1588#1582#1589#1575#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edserial: TRSqlEdit
      Left = 216
      Top = 105
      Width = 113
      Height = 23
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftRequired
    end
    object edmodel: TRSqlEdit
      Left = 243
      Top = 80
      Width = 86
      Height = 23
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      FieldType = ftRequired
    end
    object edcountry: TRSqlEdit
      Left = 145
      Top = 6
      Width = 184
      Height = 23
      Anchors = [akTop, akRight]
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
      Left = 67
      Top = 130
      Width = 262
      Height = 23
      Anchors = [akTop, akRight]
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
    object edfactory: TRSqlEdit
      Left = 146
      Top = 31
      Width = 183
      Height = 23
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftNonRequired
    end
    object edfactno: TRSqlEdit
      Left = 147
      Top = 56
      Width = 182
      Height = 23
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftNonRequired
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 200
    Width = 432
    Height = 34
    Align = alBottom
    TabOrder = 2
    object btok: TRSqlButton
      Left = 10
      Top = 4
      Width = 69
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
      Left = 79
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
    Width = 432
    Height = 39
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    object lbctg: TLabel
      Left = 330
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
      Left = 147
      Top = 11
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
      Left = 203
      Top = 8
      Width = 126
      Height = 23
      BiDiMode = bdLeftToRight
      Color = cl3DLight
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
      Left = 222
      Top = 7
      Width = 107
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
    object btMal: TRSqlButton
      Left = 201
      Top = 8
      Width = 22
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btMalClick
      ButtonType = btNone
    end
    object dblgoodUp: TRSqlDbLookup
      Left = 39
      Top = 8
      Width = 106
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
      TabOrder = 2
      FieldType = ftRequired
    end
    object btGoodUp: TRSqlButton
      Left = 18
      Top = 8
      Width = 22
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btGoodUpClick
      ButtonType = btNone
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
        DataType = ftLargeint
        Precision = 19
        Size = 8
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
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
      'Insert into laboratory_medical_thing_spec'
      
        '(goods_code,maker_country,maker_factory,factory_no,model,serial,' +
        'specification)'
      'values(:p1,:p2,:p3,:p4,:p5,:p6,:p7)')
    Left = 17
    Top = 75
  end
  object dsgood: TDataSource
    DataSet = DabData.quMalClass
    Left = 64
    Top = 65
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
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
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Update laboratory_medical_thing_spec'
      'Set maker_country=:p0,'
      '      maker_factory=:p1,'
      '      factory_no=:p2,'
      '      model=:p3,'
      '      serial=:p4,'
      '      specification=:p5'
      'where '
      '      goods_code=:p6')
    Left = 22
    Top = 112
  end
  object Table1: TTable
    DatabaseName = 'Bt01f.amv.dsn'
    TableName = 'Paytax1'
    Left = 112
    Top = 130
  end
end
