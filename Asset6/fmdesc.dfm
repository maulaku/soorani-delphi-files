object desc: Tdesc
  Left = 142
  Top = 145
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1605#1588#1582#1589#1575#1578'  '#1575#1588#1610#1575#1569' '#1608' '#1604#1608#1575#1586#1605' '#1606#1601#1610#1587' '#1608' '#1593#1578#1610#1602#1607
  ClientHeight = 263
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 37
    Width = 449
    Height = 192
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 1
    object Label1: TLabel
      Left = 352
      Top = 7
      Width = 70
      Height = 14
      Caption = #1583#1608#1585#1607' '#1578#1575#1585#1610#1600#1582#1610':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 359
      Top = 32
      Width = 69
      Height = 14
      Caption = #1605#1581#1600#1604' '#1575#1603#1578#1588#1575#1601':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 356
      Top = 57
      Width = 71
      Height = 14
      Caption = #1578#1575#1585#1610#1582' '#1575#1603#1578#1588#1575#1601':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 344
      Top = 82
      Width = 24
      Height = 14
      Caption = #1608#1586#1606':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 131
      Top = 86
      Width = 23
      Height = 14
      Caption = #1585#1606#1711':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 359
      Top = 134
      Width = 79
      Height = 14
      Caption = #1593#1604#1575#1605#1578' '#1605#1588#1582#1589#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 142
      Top = 61
      Width = 84
      Height = 14
      Caption = #1578#1575#1585#1610#1582' '#1578#1607#1610#1607' '#1593#1603#1587':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 359
      Top = 160
      Width = 78
      Height = 14
      Caption = #1587#1575#1610#1585' '#1605#1588#1582#1589#1575#1578':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 345
      Top = 107
      Width = 67
      Height = 14
      Caption = #1575#1576#1600#1593#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1583':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edprd: TRSqlEdit
      Left = 166
      Top = 7
      Width = 169
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
      TabOrder = 0
      FieldType = ftRequired
    end
    object edcolor: TRSqlEdit
      Left = 53
      Top = 84
      Width = 67
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
      TabOrder = 5
      FieldType = ftRequired
    end
    object edweight: TRSqlEdit
      Left = 262
      Top = 83
      Width = 73
      Height = 22
      BiDiMode = bdLeftToRight
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftRequired
      EditType = etNumeric
    end
    object edloc: TRSqlEdit
      Left = 53
      Top = 32
      Width = 282
      Height = 22
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftRequired
    end
    object eddesc: TRSqlEdit
      Left = 53
      Top = 160
      Width = 282
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
      TabOrder = 8
      FieldType = ftNonRequired
    end
    object edddate: TRSqlMaskEdit
      Left = 262
      Top = 58
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
      TabOrder = 2
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object edPdate: TRSqlMaskEdit
      Left = 53
      Top = 59
      Width = 67
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
    object eddim: TRSqlEdit
      Left = 196
      Top = 109
      Width = 139
      Height = 22
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      FieldType = ftNonRequired
      EditType = etNumeric
    end
    object edmark: TRSqlEdit
      Left = 196
      Top = 135
      Width = 139
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
      TabOrder = 7
      FieldType = ftNonRequired
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 227
    Width = 449
    Height = 36
    Align = alBottom
    TabOrder = 2
    object btok: TRSqlButton
      Left = 12
      Top = 6
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
      Left = 83
      Top = 6
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
    Width = 449
    Height = 37
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    object lbctg: TLabel
      Left = 368
      Top = 10
      Width = 51
      Height = 14
      Caption = #1575#1586' '#1603#1583' '#1605#1575#1604':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbGoodUp: TLabel
      Left = 162
      Top = 10
      Width = 48
      Height = 14
      Caption = #1578#1575' '#1603#1583' '#1605#1575#1604':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edGood: TRSqlEdit
      Left = 218
      Top = 7
      Width = 117
      Height = 22
      BiDiMode = bdLeftToRight
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftDisplay
      EditType = etNumeric
    end
    object btMal: TRSqlButton
      Left = 222
      Top = 7
      Width = 22
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btMalClick
      ButtonType = btNone
    end
    object btGoodUp: TRSqlButton
      Left = 22
      Top = 7
      Width = 21
      Height = 22
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btGoodUpClick
      ButtonType = btNone
    end
    object dblgood: TRSqlDbLookup
      Left = 242
      Top = 7
      Width = 109
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
    object dblGoodUp: TRSqlDbLookup
      Left = 42
      Top = 7
      Width = 109
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
      TabOrder = 4
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
        Size = 20
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
        Size = 10
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p9'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
      end>
    SQL.Strings = (
      '  Insert into antique '
      
        ' (ant_gcode,ant_hprd,ant_dloc,ant_ddate,ant_weight,ant_color,ant' +
        '_dim,ant_mark,ant_pdate,ant_desc)  '
      '   values(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10)')
    Left = 52
    Top = 171
  end
  object quupdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
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
        Size = 8
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
        Size = 10
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p7'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      ' Update antique '
      ' Set ant_hprd=:p0,'
      '       ant_dloc=:p1,'
      '       ant_ddate=:p2,'
      '       ant_weight=:p3,'
      '       ant_color=:p4,'
      '       ant_dim=:p5,'
      '       ant_mark=:p6,'
      '       ant_pdate=:p7,'
      '       ant_desc=:p8'
      ' where  '
      '      ant_gcode=:p9')
    Left = 21
    Top = 170
  end
  object dsgood: TDataSource
    DataSet = DabData.quMalClass
    Left = 16
    Top = 45
  end
end
