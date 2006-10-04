object textiledet: Ttextiledet
  Left = 131
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                          '#1605#1588#1582#1589#1575#1578' '#1576#1575#1601#1578#1607' '#1607#1575#1610' '#1583#1587#1578#1610' '#1608' '#1605#1575#1588#1610#1606#1610
  ClientHeight = 289
  ClientWidth = 435
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
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 435
    Height = 217
    BevelInner = bvLowered
    BevelWidth = 3
    Color = 14663101
    TabOrder = 1
    object Label1: TLabel
      Left = 345
      Top = 10
      Width = 48
      Height = 14
      Caption = ':'#1606#1608#1593' '#1576#1575#1601#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 345
      Top = 35
      Width = 51
      Height = 14
      Caption = ':'#1605#1581#1604' '#1576#1575#1601#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 345
      Top = 59
      Width = 36
      Height = 14
      Caption = ':'#1593#1604#1575#1605#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 345
      Top = 84
      Width = 57
      Height = 14
      Caption = ':'#1578#1575#1585#1610#1582' '#1576#1575#1601#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 345
      Top = 109
      Width = 25
      Height = 14
      Caption = ':'#1591#1608#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 190
      Top = 109
      Width = 33
      Height = 14
      Caption = ':'#1593#1585#1590
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 345
      Top = 134
      Width = 54
      Height = 14
      Caption = ':'#1585#1606#1711' '#1586#1605#1610#1606#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 190
      Top = 136
      Width = 57
      Height = 14
      Caption = ':'#1585#1606#1711' '#1581#1575#1588#1610#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 345
      Top = 186
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
    object Label11: TLabel
      Left = 345
      Top = 161
      Width = 27
      Height = 14
      Caption = ':'#1606#1602#1588#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edlen: TRSqlEdit
      Left = 263
      Top = 106
      Width = 73
      Height = 22
      BiDiMode = bdLeftToRight
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftRequired
      EditType = etNumeric
    end
    object edmark: TRSqlEdit
      Left = 229
      Top = 57
      Width = 108
      Height = 22
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
      TabOrder = 2
      FieldType = ftRequired
    end
    object edloc: TRSqlEdit
      Left = 166
      Top = 33
      Width = 171
      Height = 22
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
      TabOrder = 1
      FieldType = ftRequired
    end
    object eddesc: TRSqlEdit
      Left = 71
      Top = 183
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
      TabOrder = 9
      FieldType = ftNonRequired
    end
    object eddate: TRSqlMaskEdit
      Left = 263
      Top = 82
      Width = 73
      Height = 22
      BiDiMode = bdLeftToRight
      Color = clInfoBk
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object edwid: TRSqlEdit
      Left = 109
      Top = 106
      Width = 73
      Height = 22
      BiDiMode = bdLeftToRight
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      FieldType = ftRequired
      EditType = etNumeric
    end
    object edbcolor: TRSqlEdit
      Left = 263
      Top = 131
      Width = 73
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
      TabOrder = 6
      FieldType = ftRequired
    end
    object edmap: TRSqlEdit
      Left = 231
      Top = 158
      Width = 106
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      FieldType = ftNonRequired
    end
    object edcolor: TRSqlEdit
      Left = 109
      Top = 132
      Width = 73
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
      TabOrder = 7
      FieldType = ftRequired
    end
    object cbtype: TRSqlComboBox
      Left = 196
      Top = 8
      Width = 141
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
      TabOrder = 0
      Items.Strings = (
        #1583#1587#1578#1610
        #1605#1575#1588#1610#1606#1610)
      FieldType = ftRequired
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 255
    Width = 435
    Height = 34
    Align = alBottom
    Color = 14663101
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
    Width = 435
    Height = 39
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    Color = 14663101
    TabOrder = 0
    object lbctg: TLabel
      Left = 343
      Top = 10
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
      Left = 140
      Top = 10
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
      Left = 206
      Top = 8
      Width = 128
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
      Left = 224
      Top = 8
      Width = 111
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
      Left = 203
      Top = 8
      Width = 23
      Height = 20
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
    object btGoodUp: TRSqlButton
      Left = 8
      Top = 8
      Width = 23
      Height = 19
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btGoodUpClick
      ButtonType = btNone
    end
    object dblGoodUp: TRSqlDbLookup
      Left = 30
      Top = 7
      Width = 108
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p7'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p8'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p9'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Insert into machine_manual_textile_spec'
      
        '(goods_code,texture_type,texture_loc,mark,texture_date,length,wi' +
        'dth,back_color,border_color,specification,map) '
      'values(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)'
      ' ')
    Left = 11
    Top = 47
  end
  object dsgood: TDataSource
    DataSet = DabData.quMalClass
    Left = 56
    Top = 1
  end
  object quupdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p7'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Update machine_manual_textile_spec'
      'Set texture_type=:p0,'
      '       texture_loc=:p1,'
      '        mark=:p2,'
      '        texture_date=:p3,'
      '        length=:p4,'
      '        width=:p5,'
      '         back_color=:p6,'
      '         border_color=:p7,'
      '         specification=:p8,'
      '         map=:p9'
      'where '
      '       goods_code=:p10')
    Left = 15
    Top = 78
  end
end
