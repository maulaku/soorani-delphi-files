object InUseTrans: TInUseTrans
  Left = 145
  Top = 231
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                          '#1589#1608#1585#1578#1580#1604 +
    #1587#1607' '#1605#1589#1585#1601
  ClientHeight = 217
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object panInput: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 180
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 461
      Top = 10
      Width = 104
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1589#1608#1585#1578#1580#1604#1587#1607':'
    end
    object Label2: TLabel
      Left = 461
      Top = 38
      Width = 137
      Height = 15
      Caption = #1588#1585#1581' '#1605#1582#1578#1589#1585' '#1589#1608#1585#1578#1580#1604#1587#1607':'
    end
    object Label3: TLabel
      Left = 114
      Top = 65
      Width = 129
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583':'
    end
    object Label4: TLabel
      Left = 461
      Top = 65
      Width = 56
      Height = 15
      Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575':'
    end
    object Label5: TLabel
      Left = 461
      Top = 92
      Width = 69
      Height = 15
      Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607':'
    end
    object Label6: TLabel
      Left = 114
      Top = 92
      Width = 70
      Height = 15
      Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605':'
    end
    object Label9: TLabel
      Left = 114
      Top = 10
      Width = 44
      Height = 15
      Caption = #1608#1590#1593#1610#1578':'
    end
    object edUseTrNo: TRSqlEdit
      Left = 344
      Top = 7
      Width = 114
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      FieldType = ftDisplay
    end
    object edState: TRSqlEdit
      Left = 8
      Top = 7
      Width = 102
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      FieldType = ftDisplay
    end
    object edDesc: TRSqlEdit
      Left = 8
      Top = 34
      Width = 450
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 100
      ParentFont = False
      TabOrder = 2
      FieldType = ftNonRequired
    end
    object lkpGoodsClass: TRSqlDbLookup
      Left = 245
      Top = 61
      Width = 213
      Height = 23
      KeyField = 'class_code'
      ListField = 'class_name'
      ListSource = dsGoodsClass
      TabOrder = 3
      OnClick = lkpGoodsClassClick
      FieldType = ftRequired
    end
    object edOrderNo: TRSqlEdit
      Left = 30
      Top = 61
      Width = 80
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      FieldType = ftRequired
    end
    object edCreator: TRSqlEdit
      Left = 300
      Top = 88
      Width = 158
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      FieldType = ftDisplay
    end
    object edCreateDate: TRSqlEdit
      Left = 8
      Top = 88
      Width = 102
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      FieldType = ftDisplay
    end
    object btnOrderNo: TButton
      Left = 8
      Top = 61
      Width = 23
      Height = 23
      Caption = '...'
      TabOrder = 5
      OnClick = btnOrderNoClick
    end
    object gbConfirm: TGroupBox
      Left = 5
      Top = 113
      Width = 581
      Height = 60
      Caption = #1578#1575#1610#1610#1583' '#1589#1608#1585#1578#1580#1604#1587#1607
      TabOrder = 8
      object Label7: TLabel
        Left = 354
        Top = 25
        Width = 67
        Height = 15
        Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607':'
      end
      object Label8: TLabel
        Left = 106
        Top = 25
        Width = 68
        Height = 15
        Caption = #1578#1575#1585#1610#1582' '#1578#1575#1610#1610#1583':'
      end
      object edConfirmer: TRSqlEdit
        Left = 195
        Top = 22
        Width = 158
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        FieldType = ftDisplay
      end
      object edConfDate: TRSqlEdit
        Left = 8
        Top = 22
        Width = 102
        Height = 22
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        FieldType = ftDisplay
      end
      object rbConfirm: TRadioButton
        Left = 435
        Top = 13
        Width = 53
        Height = 16
        BiDiMode = bdLeftToRight
        Caption = #1578#1575#1610#1610#1583
        ParentBiDiMode = False
        TabOrder = 0
      end
      object rbRefuse: TRadioButton
        Left = 435
        Top = 36
        Width = 38
        Height = 16
        BiDiMode = bdLeftToRight
        Caption = #1585#1583
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 180
    Width = 603
    Height = 37
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Action: TRSqlButton
      Left = 8
      Top = 6
      Width = 70
      Height = 23
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = ActionClick
      ButtonType = btOk
    end
    object Cancel: TRSqlButton
      Left = 78
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
      OnClick = CancelClick
      ButtonType = btCancel
    end
  end
  object quGoodsClass: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Goods_Class')
    Left = 320
    Top = 64
  end
  object dsGoodsClass: TDataSource
    DataSet = quGoodsClass
    Left = 290
    Top = 64
  end
  object quGenCode: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  Use_Trans')
    Left = 176
    Top = 197
    object quGenCodeUse_Tr_No: TStringField
      FieldName = 'Use_Tr_No'
      FixedChar = True
      Size = 6
    end
  end
  object quInsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Use_Trans '
      'VALUES(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10)')
    Left = 240
    Top = 198
  end
  object quFillDetUseTrans: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE FillDetUseTrans :p1,:p2')
    Left = 280
    Top = 198
  end
  object quUsers: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Emp.Name + '#39' '#39' + Emp.Family FullName From Emp WHERE emp_n' +
        'o = :p1 ')
    Left = 320
    Top = 199
    object quUsersFullName: TStringField
      FieldName = 'FullName'
      ReadOnly = True
      Size = 71
    end
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
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
        Size = 8
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE Use_Trans '
      'SET '
      '[Desc] = :p1 , '
      'Class_Code = :p2 , '
      'Order_No = :p3 '
      'WHERE '
      'Use_Tr_No = :p4')
    Left = 352
    Top = 200
  end
  object quConfirmUseTrans: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE ConfirmUseTrans :p1')
    Left = 392
    Top = 198
  end
end
