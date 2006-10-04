object InItemOrderRequest: TInItemOrderRequest
  Left = 121
  Top = 53
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583' '#1603#1575#1604 +
    #1575
  ClientHeight = 443
  ClientWidth = 519
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
    Width = 519
    Height = 403
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 378
      Top = 11
      Width = 129
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583':'
    end
    object Label2: TLabel
      Left = 121
      Top = 11
      Width = 44
      Height = 15
      Caption = #1608#1590#1593#1610#1578':'
    end
    object CreateGB: TGroupBox
      Left = 7
      Top = 30
      Width = 503
      Height = 159
      Caption = #1578#1606#1592#1610#1605
      TabOrder = 0
      object Label3: TLabel
        Left = 421
        Top = 49
        Width = 52
        Height = 15
        Caption = #1606#1608#1593' '#1603#1575#1604#1575':'
      end
      object Label5: TLabel
        Left = 422
        Top = 21
        Width = 74
        Height = 15
        Caption = #1605#1587#1608#1608#1604' '#1575#1606#1576#1575#1585':'
      end
      object Label4: TLabel
        Left = 187
        Top = 49
        Width = 56
        Height = 15
        Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575':'
      end
      object Label6: TLabel
        Left = 188
        Top = 21
        Width = 70
        Height = 15
        Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605':'
      end
      object Label12: TLabel
        Left = 354
        Top = 75
        Width = 66
        Height = 15
        Caption = #1601#1589#1604' '#1607#1586#1610#1606#1607':'
      end
      object Label13: TLabel
        Left = 351
        Top = 105
        Width = 89
        Height = 15
        Caption = #1586#1610#1585' '#1601#1589#1604' '#1607#1586#1610#1606#1607':'
      end
      object Label14: TLabel
        Left = 351
        Top = 135
        Width = 92
        Height = 15
        Caption = #1580#1586#1569' '#1601#1589#1604' '#1607#1586#1610#1606#1607':'
      end
      object cbItemType: TRSqlComboBox
        Left = 265
        Top = 45
        Width = 159
        Height = 22
        Style = csDropDownList
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 14
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        OnClick = cbItemTypeClick
        Items.Strings = (
          #1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604' '#1605#1589#1585#1601#1610
          #1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604' '#1583#1585' '#1581#1603#1605' '#1605#1589#1585#1601#1610
          #1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604' '#1594#1610#1585' '#1605#1589#1585#1601#1610)
        FieldType = ftRequired
      end
      object lkpItemClass: TRSqlDbLookup
        Left = 8
        Top = 45
        Width = 180
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'class_code'
        ListField = 'class_name'
        ListSource = dsItemClass
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnClick = lkpItemClassClick
        FieldType = ftRequired
      end
      object edCreator: TRSqlEdit
        Left = 285
        Top = 17
        Width = 139
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        FieldType = ftDisplay
      end
      object edCreateDate: TRSqlEdit
        Left = 90
        Top = 17
        Width = 98
        Height = 22
        BiDiMode = bdRightToLeft
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
      object edChapter: TRSqlEdit
        Left = 8
        Top = 73
        Width = 345
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
        FieldType = ftDisplay
      end
      object edSubChapter: TRSqlEdit
        Left = 8
        Top = 100
        Width = 345
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
        FieldType = ftDisplay
      end
      object edPartChapter: TRSqlEdit
        Left = 8
        Top = 128
        Width = 345
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        FieldType = ftDisplay
      end
    end
    object Confirm: TGroupBox
      Left = 7
      Top = 192
      Width = 503
      Height = 133
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      object Label7: TLabel
        Left = 383
        Top = 21
        Width = 109
        Height = 15
        Caption = #1605#1587#1608#1608#1604' '#1603#1575#1585#1662#1585#1583#1575#1586#1610':'
      end
      object Label8: TLabel
        Left = 104
        Top = 21
        Width = 68
        Height = 15
        Caption = #1578#1575#1585#1610#1582' '#1578#1575#1610#1610#1583':'
      end
      object lbREqRefReason: TLabel
        Left = 143
        Top = 45
        Width = 100
        Height = 15
        Caption = #1593#1604#1578' '#1585#1583' '#1583#1585#1582#1608#1575#1587#1578':'
      end
      object Label9: TLabel
        Left = 303
        Top = 45
        Width = 103
        Height = 15
        Caption = #1576#1585#1570#1608#1585#1583' '#1603#1604#1610' '#1602#1610#1605#1578':'
      end
      object Label15: TLabel
        Left = 306
        Top = 86
        Width = 100
        Height = 15
        Caption = #1606#1608#1593' '#1575#1606#1580#1575#1605' '#1605#1593#1575#1605#1604#1607':'
      end
      object rbConfirm: TRadioButton
        Left = 428
        Top = 67
        Width = 53
        Height = 16
        BiDiMode = bdRightToLeft
        Caption = #1578#1575#1610#1610#1583
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = rbConfirmClick
      end
      object rbRefuse: TRadioButton
        Left = 435
        Top = 107
        Width = 46
        Height = 16
        Caption = #1585#1583
        TabOrder = 1
        OnClick = rbRefuseClick
      end
      object edConfirmer: TRSqlEdit
        Left = 252
        Top = 17
        Width = 139
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        FieldType = ftDisplay
      end
      object edConfirmDate: TRSqlEdit
        Left = 8
        Top = 17
        Width = 98
        Height = 22
        BiDiMode = bdRightToLeft
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
      object edTotalPrice: TRSqlEdit
        Left = 270
        Top = 63
        Width = 136
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
        FieldType = ftDisplay
      end
      object cbDealKind: TRSqlComboBox
        Left = 270
        Top = 103
        Width = 136
        Height = 22
        Style = csDropDownList
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 14
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        Items.Strings = (
          #1575#1587#1578#1593#1604#1575#1605' '#1588#1601#1575#1607#1610
          #1575#1587#1578#1593#1604#1575#1605' '#1603#1578#1576#1610
          #1605#1606#1575#1602#1589#1607)
        FieldType = ftRequired
      end
      object mmReqRefReason: TMemo
        Left = 8
        Top = 63
        Width = 235
        Height = 63
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 200
        ParentFont = False
        TabOrder = 4
        WantReturns = False
      end
    end
    object Credit: TGroupBox
      Left = 7
      Top = 325
      Width = 503
      Height = 70
      Caption = #1578#1575#1605#1610#1606' '#1575#1593#1578#1576#1575#1585
      TabOrder = 2
      object Label10: TLabel
        Left = 383
        Top = 21
        Width = 110
        Height = 15
        Caption = #1578#1575#1605#1610#1606' '#1575#1593#1578#1576#1575#1585' '#1603#1606#1606#1583#1607':'
      end
      object Label11: TLabel
        Left = 99
        Top = 21
        Width = 111
        Height = 15
        Caption = #1578#1575#1585#1610#1582' '#1578#1575#1605#1610#1606' '#1575#1593#1578#1576#1575#1585':'
      end
      object rbCredConfirm: TRadioButton
        Left = 300
        Top = 47
        Width = 91
        Height = 16
        Caption = #1578#1575#1605#1610#1606' '#1575#1593#1578#1576#1575#1585
        TabOrder = 0
      end
      object rbCredRefuse: TRadioButton
        Left = 30
        Top = 47
        Width = 76
        Height = 16
        Caption = #1585#1583' '#1575#1593#1578#1576#1575#1585
        TabOrder = 1
      end
      object edCreditSuplier: TRSqlEdit
        Left = 252
        Top = 17
        Width = 139
        Height = 22
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        FieldType = ftDisplay
      end
      object edCSDate: TRSqlEdit
        Left = 8
        Top = 17
        Width = 98
        Height = 22
        BiDiMode = bdRightToLeft
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
    end
    object edOrderReqNo: TRSqlEdit
      Left = 271
      Top = 8
      Width = 114
      Height = 22
      BiDiMode = bdRightToLeft
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
    object edState: TRSqlEdit
      Left = 7
      Top = 8
      Width = 113
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftDisplay
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 403
    Width = 519
    Height = 40
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Action: TRSqlButton
      Left = 8
      Top = 8
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
      Top = 8
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
        Attributes = [paNullable]
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
        Size = 8
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
      'INSERT INTO Order_Request '
      
        '(Order_Req_Type , Order_Req_No , State , Creator , Create_Date ,' +
        ' '
      'Item_Type , Item_Class ) '
      'VALUES (:p1,:p2,:p3,:p4,:p5,:p6,:p7)')
    Left = 168
    Top = 434
  end
  object quGenCode: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Order_Request '
      'WHERE '
      'Order_Req_Type = 1 '
      'ORDER BY '
      'Order_Req_No')
    Left = 208
    Top = 434
    object quGenCodeOrder_Req_No: TStringField
      FieldName = 'Order_Req_No'
      FixedChar = True
      Size = 8
    end
  end
  object Main_FormInitializer: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = True
    Left = 256
    Top = 434
  end
  object quItemClass: TADOQuery
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
      'SELECT GC.* , PC.PC_Desc , PS.PS_Desc , PPC.PPC_Desc'
      ' FROM Goods_Class GC'
      'LEFT OUTER JOIN Pre_Chapter PC ON '
      'GC.PC_Code = PC.PC_Code '
      'LEFT OUTER JOIN Pre_SubChapter PS ON '
      'GC.PS_Code = PS.PS_Code '
      'LEFT OUTER JOIN Pre_Part_Chapter PPC ON '
      'GC.PPC_Code = PPC.PPC_Code '
      'WHERE '
      'GC.Class_Type = :p1 ')
    Left = 135
    Top = 81
    object quItemClassclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quItemClassclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quItemClassclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quItemClassClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quItemClassppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quItemClasspc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quItemClassps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
    object quItemClassPC_Desc: TStringField
      FieldName = 'PC_Desc'
      Size = 70
    end
    object quItemClassPS_Desc: TStringField
      FieldName = 'PS_Desc'
      Size = 70
    end
    object quItemClassPPC_Desc: TStringField
      FieldName = 'PPC_Desc'
      Size = 70
    end
  end
  object dsItemClass: TDataSource
    DataSet = quItemClass
    Left = 95
    Top = 81
  end
  object quEMP: TADOQuery
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
      'SELECT * FROM EMP WHERE emp_no = :p1 ')
    Left = 296
    Top = 434
    object quEMPname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object quEMPfamily: TStringField
      FieldName = 'family'
      Size = 40
    end
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    Left = 336
    Top = 434
  end
  object quTotalPrice: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Ordered_Request_Item'
      'WHERE '
      'Order_Type = 1 AND '
      'Order_Req_No = :p1 ')
    Left = 376
    Top = 434
    object quTotalPricePrice_Estimate_Number: TFloatField
      FieldName = 'Price_Estimate_Number'
    end
  end
  object quFillItemRequestList: TADOQuery
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
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE Fill_Item_Request_List :p1,:p2')
    Left = 416
    Top = 438
  end
  object quFillOrderedRequestItem: TADOQuery
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
      'EXECUTE FillOrderedRequestItem :p1')
    Left = 448
    Top = 438
  end
end
