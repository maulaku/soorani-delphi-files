object goodsdet: Tgoodsdet
  Left = 227
  Top = 137
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 345
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 431
    Height = 158
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 1
    Visible = False
    object Label7: TLabel
      Left = 346
      Top = 33
      Width = 47
      Height = 16
      Caption = #1603#1583' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 350
      Top = 77
      Width = 60
      Height = 16
      Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 121
      Top = 103
      Width = 92
      Height = 16
      Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 341
      Top = 102
      Width = 83
      Height = 16
      Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 199
      Top = 33
      Width = 51
      Height = 16
      Caption = #1606#1575#1605' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 121
      Top = 78
      Width = 97
      Height = 16
      Caption = #1587#1602#1601' '#1605#1608#1580#1608#1583#1610':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 347
      Top = 56
      Width = 61
      Height = 16
      Caption = #1588#1585#1581' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbMaster: TSpeedButton
      Left = 325
      Top = 4
      Width = 68
      Height = 29
      Caption = #1711#1585#1608#1607' '#1575#1589#1604#1610
      OnClick = sbMasterClick
    end
    object sbDetail: TSpeedButton
      Left = 124
      Top = 4
      Width = 67
      Height = 29
      Caption = #1711#1585#1608#1607' '#1601#1585#1593#1610
      OnClick = sbDetailClick
    end
    object Label15: TLabel
      Left = 338
      Top = 126
      Width = 89
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1602#1601#1587#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edLimit: TRSqlEdit
      Left = 15
      Top = 76
      Width = 101
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftNonRequired
      EditType = etNumeric
    end
    object ediCode: TRSqlEdit
      Left = 250
      Top = 29
      Width = 95
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftKeyGm
    end
    object edclass: TRSqlEdit
      Left = 16
      Top = 29
      Width = 182
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftRequired
    end
    object dblUnit: TRSqlDbLookup
      Left = 224
      Top = 76
      Width = 121
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Code'
      ListField = 'Unit_Item_Desc'
      ListSource = dsunit
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      FieldType = ftRequired
    end
    object edInventory: TRSqlEdit
      Left = 224
      Top = 100
      Width = 121
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      FieldType = ftRequired
      EditType = etNumeric
    end
    object edPoint: TRSqlEdit
      Left = 15
      Top = 99
      Width = 101
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      FieldType = ftNonRequired
      EditType = etNumeric
    end
    object edItemDesc: TRSqlEdit
      Left = 15
      Top = 52
      Width = 330
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
      TabOrder = 2
      FieldType = ftRequired
    end
    object dblDetail: TRSqlDbLookup
      Left = 16
      Top = 7
      Width = 105
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'PK_DetailGroup'
      ListField = 'Desc'
      ListSource = DabData.dsDetailGroups
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      OnClick = dblDetailClick
      FieldType = ftRequired
    end
    object dblMaster: TRSqlDbLookup
      Left = 200
      Top = 7
      Width = 121
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Pk_MasterGroup'
      ListField = 'Desc'
      ListSource = DabData.dsMasterGroups
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      OnClick = dblMasterClick
      OnCloseUp = dblMasterClick
      FieldType = ftRequired
    end
    object edPos: TRSqlMaskEdit
      Left = 224
      Top = 124
      Width = 108
      Height = 22
      EditMask = 'AA\-AA\-AAA;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 9
      ParentFont = False
      TabOrder = 9
      Text = '  -  -   '
      MaskEditType = metNone
      FieldType = ftNonRequired
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 161
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 326
      Top = 11
      Width = 58
      Height = 16
      Caption = #1603#1583' '#1591#1576#1602#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 326
      Top = 35
      Width = 79
      Height = 16
      Caption = #1593#1606#1608#1575#1606' '#1591#1576#1602#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 326
      Top = 85
      Width = 73
      Height = 16
      Caption = #1601#1589#1604' '#1607#1586#1610#1606#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 197
      Top = 10
      Width = 68
      Height = 16
      Caption = #1606#1600#1608#1593' '#1591#1576#1602#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 326
      Top = 108
      Width = 95
      Height = 16
      Caption = #1586#1610#1585' '#1601#1589#1604' '#1607#1586#1610#1606#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 326
      Top = 132
      Width = 100
      Height = 16
      Caption = #1580#1586#1569' '#1601#1589#1604' '#1607#1586#1610#1606#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 326
      Top = 59
      Width = 72
      Height = 16
      Caption = #1588#1585#1581' '#1591#1576#1602#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCode: TRSqlEdit
      Left = 267
      Top = 5
      Width = 56
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftKeyGm
    end
    object edname: TRSqlEdit
      Left = 11
      Top = 30
      Width = 312
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
      TabOrder = 2
      FieldType = ftKeyGo
    end
    object dblPreChapter: TRSqlDbLookup
      Left = 10
      Top = 79
      Width = 313
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'PC_Code'
      ListField = 'PC_Desc'
      ListSource = dsPreChapter
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnClick = dblPreChapterClick
      FieldType = ftNonRequired
    end
    object dblPreSubChapter: TRSqlDbLookup
      Left = 10
      Top = 103
      Width = 313
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'PS_Code'
      ListField = 'PS_Desc'
      ListSource = dsPreSubChapter
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      OnClick = dblPreSubChapterClick
      FieldType = ftNonRequired
    end
    object dblPrePartChapter: TRSqlDbLookup
      Left = 10
      Top = 128
      Width = 313
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'PPC_Code'
      ListField = 'PPC_Desc'
      ListSource = dsPrePartChapter
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      FieldType = ftNonRequired
    end
    object eddesc: TRSqlEdit
      Left = 10
      Top = 54
      Width = 313
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
      TabOrder = 3
      FieldType = ftNonRequired
    end
    object cbClassType: TRSqlDbLookup
      Left = 11
      Top = 7
      Width = 182
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Id'
      ListField = 'CatStr'
      ListSource = DabData.dcCat
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftRequired
    end
  end
  object panel2: TPanel
    Left = 0
    Top = 319
    Width = 431
    Height = 26
    Align = alBottom
    TabOrder = 2
    Visible = False
    object btok: TRSqlButton
      Left = 5
      Top = 1
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btokClick
      ButtonType = btOk
    end
    object btcancel: TRSqlButton
      Left = 80
      Top = 1
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
      OnClick = btcancelClick
      ButtonType = btCancel
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
  object ADOQuery2: TADOQuery
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
    object IntegerField2: TIntegerField
      FieldName = 'Doc_code'
    end
    object StringField5: TStringField
      FieldName = 'Doc_date'
      FixedChar = True
      Size = 8
    end
    object SmallintField2: TSmallintField
      FieldName = 'Doc_type'
    end
    object StringField6: TStringField
      FieldName = 'Doc_del'
    end
    object StringField7: TStringField
      FieldName = 'Doc_res'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'doc_pas'
      Size = 50
    end
  end
  object quInsert: TADOQuery
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
        Size = 50
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
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Goods_Class (class_code ,class_desc , class_name ,cl' +
        'ass_type,pc_code ,ps_code , ppc_code)'
      'values (:p1,:p2,:p3,:p4,:p5,:p6,:p7)')
    Left = 125
    Top = 68
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Update Goods_Class'
      'Set class_desc = :p1,'
      '       class_name=:p2 ,'
      '        class_type=:p3,'
      '        pc_code=:p4,'
      '        ps_code=:p5,'
      '        ppc_code=:p6'
      'where'
      'class_code= :p7'
      ' ')
    Left = 152
    Top = 68
  end
  object quInsertdet: TADOQuery
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'insert into item '
      
        '  (Item_name, class_code,item_desc,item_unit,item_inventory,orde' +
        'r_point,inventory_limit,PK_MasterGroups,PK_DetailGroups,Position' +
        '_Code) '
      ' values '
      '  (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)'
      '')
    Left = 175
    Top = 319
  end
  object quUpdatedet: TADOQuery
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
      end>
    SQL.Strings = (
      'Update Item'
      'Set Item_name = :p0,'
      '       class_code=:p1,'
      '       item_desc=:p2,'
      '      item_unit=:p3,'
      '      item_inventory=:p4,'
      '      order_point=:p5,'
      '      inventory_limit=:p6,'
      '     Position_code=:P7'
      'where'
      '       Item_code  = :p8')
    Left = 205
    Top = 318
  end
  object dsunit: TDataSource
    DataSet = DabData.quItemKar
    Left = 391
    Top = 164
  end
  object dsassign: TDataSource
    Left = 9
    Top = 73
  end
  object quscha: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        DataType = ftSmallint
        Value = Null
      end>
    SQL.Strings = (
      'select SBA_assign,SBA_Date '
      'From scha_detailed_budget_assign'
      'where row=:p1')
    Left = 97
    Top = 68
    object quschaSBA_assign: TStringField
      FieldName = 'SBA_assign'
      FixedChar = True
      Size = 12
    end
    object quschaSBA_Date: TStringField
      FieldName = 'SBA_Date'
      FixedChar = True
      Size = 8
    end
  end
  object dsscha: TDataSource
    DataSet = quscha
    Left = 37
    Top = 73
  end
  object QuPreChapter: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Pre_Chapter')
    Left = 8
    Top = 104
    object QuPreChapterPC_Desc: TStringField
      FieldName = 'PC_Desc'
      Size = 70
    end
    object QuPreChapterPC_Code: TStringField
      FieldName = 'PC_Code'
      FixedChar = True
      Size = 5
    end
  end
  object QuPreSubChapter: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select * from pre_subchapter where pc_code=:p0')
    Left = 40
    Top = 104
    object QuPreSubChapterPS_Code: TStringField
      FieldName = 'PS_Code'
      FixedChar = True
      Size = 5
    end
    object QuPreSubChapterPS_Desc: TStringField
      FieldName = 'PS_Desc'
      Size = 70
    end
    object QuPreSubChapterPC_Code: TStringField
      FieldName = 'PC_Code'
      FixedChar = True
      Size = 5
    end
  end
  object QuPrePartChapter: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from pre_part_chapter where (ps_code= :p0 or 1=1)  and ' +
        'ps_code=:p1')
    Left = 72
    Top = 104
    object QuPrePartChapterPPC_Code: TStringField
      FieldName = 'PPC_Code'
      FixedChar = True
      Size = 5
    end
    object QuPrePartChapterPPC_Desc: TStringField
      FieldName = 'PPC_Desc'
      Size = 70
    end
    object QuPrePartChapterPS_Code: TStringField
      FieldName = 'PS_Code'
      FixedChar = True
      Size = 5
    end
  end
  object dsPreChapter: TDataSource
    DataSet = QuPreChapter
    Left = 8
    Top = 132
  end
  object dsPreSubChapter: TDataSource
    DataSet = QuPreSubChapter
    Left = 40
    Top = 132
  end
  object dsPrePartChapter: TDataSource
    DataSet = QuPrePartChapter
    Left = 72
    Top = 132
  end
  object quGetMax: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Max(Class_Code) as max From Goods_Class')
    Left = 101
    Top = 132
    object quGetMaxmax: TSmallintField
      FieldName = 'max'
      ReadOnly = True
    end
  end
  object spGetItem_code: TADOStoredProc
    Connection = DabData.ADOC
    ProcedureName = 'spGetItem_Code;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 1
      end
      item
        Name = '@Class_code'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Master'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Detail'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Pk_Item'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@Item_Code'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 10
        Value = Null
      end>
    Left = 288
    Top = 224
  end
end
