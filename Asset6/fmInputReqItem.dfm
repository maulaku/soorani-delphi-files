object InputReqItem: TInputReqItem
  Left = 138
  Top = 210
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                 '#1603#1575#1604#1575#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578 +
    ' '#1588#1583#1607
  ClientHeight = 139
  ClientWidth = 580
  Color = clBtnFace
  Constraints.MaxHeight = 182
  Constraints.MaxWidth = 588
  Constraints.MinHeight = 173
  Constraints.MinWidth = 552
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 110
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      Left = 185
      Top = 30
      Width = 108
      Height = 16
      Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607':'
    end
    object Label6: TLabel
      Left = 427
      Top = 81
      Width = 160
      Height = 16
      Caption = #1608#1590#1593#1610#1578' '#1603#1575#1604#1575#1610' '#1583#1585#1582#1608#1575#1587#1578#1610':'
    end
    object Label7: TLabel
      Left = 427
      Top = 55
      Width = 120
      Height = 16
      Caption = #1605#1602#1583#1575#1585' '#1578#1581#1608#1610#1604' '#1601#1593#1604#1610':'
    end
    object Label2: TLabel
      Left = 427
      Top = 31
      Width = 113
      Height = 16
      Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610':'
    end
    object Label11: TLabel
      Left = 427
      Top = 7
      Width = 156
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1600#1600#1578' '#1603#1600#1575#1604#1575' :'
    end
    object Label3: TLabel
      Left = 532
      Top = 105
      Width = 5
      Height = 16
    end
    object Label4: TLabel
      Left = 185
      Top = 55
      Width = 83
      Height = 16
      Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575':'
    end
    object SpeedButton1: TSpeedButton
      Left = 185
      Top = 3
      Width = 63
      Height = 22
      Hint = #1588#1605#1575#1585' '#1583#1585' '#1575#1610#1606' '#1602#1587#1605#1578' '#1605#1610' '#1578#1608#1575#1606#1606#1610#1583' '#1603#1575#1604#1575#1610' '#1580#1583#1610#1583#1610' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object edReqAmount: TRSqlEdit
      Left = 290
      Top = 28
      Width = 137
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnExit = edReqAmountExit
      FieldType = ftRequired
      EditType = etNumeric
    end
    object edReqNo: TRSqlEdit
      Left = 290
      Top = 3
      Width = 137
      Height = 24
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = 15461355
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      FieldType = ftKeyGm
    end
    object edConf_Amount: TRSqlEdit
      Left = 3
      Top = 27
      Width = 180
      Height = 24
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnExit = edConf_AmountExit
      FieldType = ftNonRequired
    end
    object edRecAmount: TRSqlEdit
      Left = 290
      Top = 53
      Width = 137
      Height = 24
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnExit = edRecAmountExit
      FieldType = ftNonRequired
    end
    object cmbState: TRSqlComboBox
      Left = 290
      Top = 79
      Width = 137
      Height = 24
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        #1583#1585#1582#1608#1575#1587#1578' '#1588#1583#1607
        #1578#1593#1610#1610#1606' '#1605#1610#1586#1575#1606' '#1578#1581#1608#1610#1604#1610
        #1578#1581#1608#1610#1604' '#1606#1575#1602#1589
        #1578#1581#1608#1610#1604' '#1603#1575#1605#1604)
      FieldType = ftRequired
    end
    object dblItemName: TRSqlDbLookup
      Left = 3
      Top = 2
      Width = 180
      Height = 24
      KeyField = 'Item_Code'
      ListField = 'item_name'
      ListSource = dsGoods
      TabOrder = 5
      OnClick = dblItemNameClick
      OnCloseUp = dblItemNameClick
      FieldType = ftRequired
    end
    object edExist: TRSqlEdit
      Left = 3
      Top = 52
      Width = 180
      Height = 24
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      OnExit = edConf_AmountExit
      FieldType = ftDisplay
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 110
    Width = 580
    Height = 29
    Align = alBottom
    TabOrder = 1
    object btOk: TRSqlButton
      Left = 7
      Top = 2
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
      OnClick = btOkClick
      ButtonType = btOk
    end
    object btCancel: TRSqlButton
      Left = 82
      Top = 2
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
      OnClick = btCancelClick
      ButtonType = btCancel
    end
  end
  object quSelMax: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(Req_No)  AS maxNo FROM Item_Request')
    Left = 360
    Top = 102
    object quSelMaxmaxNo: TIntegerField
      FieldName = 'maxNo'
      ReadOnly = True
    end
  end
  object quEmp: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select Name+'#39' '#39'+Family  FLName FROM EMP WHERE Emp_no=:p0'
      '')
    Left = 388
    Top = 102
    object quEmpFLName: TStringField
      FieldName = 'FLName'
      ReadOnly = True
      Size = 71
    end
  end
  object quDetInsert: TADOQuery
    Connection = DabData.ADOC
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
        Name = 'P1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'P2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'P3'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'P4'
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
      end>
    SQL.Strings = (
      'INSERT INTO Requested_Item '
      '(Req_No,Item_Code,Req_Amount,Conf_Amount,Recieve_Amount,r_State)'
      'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)')
    Left = 489
    Top = 108
  end
  object quDetUpdate: TADOQuery
    Connection = DabData.ADOC
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned, paNullable]
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
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Update Requested_Item'
      'Set'
      'req_amount=:p0,'
      'conf_amount=:p1,'
      'recieve_amount=:p2,'
      'r_State=:p3,'
      'Item_Code=:p4'#10
      'where'
      'req_no=:p5 and Item_Code=:p6')
    Left = 528
    Top = 107
  end
  object quSelGoods: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Item.*,Goods_Class.*'
      'FROM Item '
      'LEFT OUTER JOIN  Goods_Class ON'
      'Item.Class_Code=Goods_Class.Class_Code'
      'WHERE  Item.Item_code NOT IN'
      '(SELECT Item_Code FROM  Requested_item '
      'WHERE  req_no = :p0)')
    Left = 193
    Top = 102
    object quSelGoodsitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 10
    end
    object quSelGoodsitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quSelGoodsclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quSelGoodsitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quSelGoodsitem_unit: TSmallintField
      FieldName = 'item_unit'
    end
    object quSelGoodsItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quSelGoodsOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quSelGoodsInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
    object quSelGoodsclass_code_1: TSmallintField
      FieldName = 'class_code_1'
    end
    object quSelGoodsclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quSelGoodsclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quSelGoodsClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quSelGoodsppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quSelGoodspc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quSelGoodsps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
  end
  object quItemCheck: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'select item_inventory from item where item_code=:p0')
    Left = 272
    Top = 107
    object quItemCheckitem_inventory: TIntegerField
      FieldName = 'item_inventory'
    end
  end
  object dsGoods: TDataSource
    DataSet = quSelGoods
    Left = 168
    Top = 104
  end
end
