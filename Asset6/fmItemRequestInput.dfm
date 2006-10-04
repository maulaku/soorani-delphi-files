object ItemReqInput: TItemReqInput
  Left = 183
  Top = 185
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                        '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604 +
    #1575
  ClientHeight = 158
  ClientWidth = 562
  Color = clBtnFace
  Constraints.MaxHeight = 230
  Constraints.MaxWidth = 570
  Constraints.MinHeight = 189
  Constraints.MinWidth = 570
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
  TextHeight = 15
  object Label9: TLabel
    Left = 135
    Top = 22
    Width = 78
    Height = 15
    Caption = #1578#1575#1585#1610#1582' '#1578#1606#1600#1592#1610#1605' :'
  end
  object Bevel10: TBevel
    Left = 135
    Top = 20
    Width = 85
    Height = 22
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 121
    Align = alClient
    TabOrder = 0
    object Bevel12: TBevel
      Left = 164
      Top = 72
      Width = 86
      Height = 23
    end
    object Bevel1: TBevel
      Left = 385
      Top = 3
      Width = 139
      Height = 22
    end
    object Bevel2: TBevel
      Left = 385
      Top = 26
      Width = 139
      Height = 23
    end
    object Bevel4: TBevel
      Left = 385
      Top = 50
      Width = 139
      Height = 22
    end
    object Bevel5: TBevel
      Left = 385
      Top = 73
      Width = 139
      Height = 23
    end
    object Bevel9: TBevel
      Left = 439
      Top = 96
      Width = 85
      Height = 22
    end
    object Bevel8: TBevel
      Left = 165
      Top = 50
      Width = 86
      Height = 22
    end
    object Bevel6: TBevel
      Left = 165
      Top = 26
      Width = 86
      Height = 23
    end
    object Label5: TLabel
      Left = 166
      Top = 28
      Width = 78
      Height = 15
      Caption = #1578#1575#1585#1610#1582' '#1578#1606#1600#1592#1610#1605' :'
    end
    object Label1: TLabel
      Left = 166
      Top = 53
      Width = 82
      Height = 15
      Caption = #1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578':'
    end
    object Label8: TLabel
      Left = 441
      Top = 100
      Width = 76
      Height = 15
      Caption = #1603#1600#1600#1600#1600#1583' '#1605#1600#1600#1600#1575#1604' :'
    end
    object Label6: TLabel
      Left = 392
      Top = 77
      Width = 130
      Height = 15
      Caption = #1608#1575#1581#1600#1600#1583' '#1587#1600#1600#1600#1575#1586#1605#1600#1600#1600#1575#1606#1600#1600#1610' :'
    end
    object Label7: TLabel
      Left = 380
      Top = 53
      Width = 145
      Height = 15
      Caption = #1587#1575#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607' :'
    end
    object Label2: TLabel
      Left = 395
      Top = 30
      Width = 125
      Height = 15
      Caption = #1578#1600#1600#1600#1606#1600#1600#1592#1600#1600#1610#1600#1600#1605' '#1603#1600#1600#1606#1600#1606#1600#1583#1607' :'
    end
    object Label11: TLabel
      Left = 384
      Top = 7
      Width = 141
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1600#1600#1578' '#1603#1600#1575#1604#1575' :'
    end
    object Bevel11: TBevel
      Left = 165
      Top = 2
      Width = 86
      Height = 22
    end
    object Label10: TLabel
      Left = 167
      Top = 4
      Width = 72
      Height = 15
      Caption = #1608#1590#1600#1600#1593#1610#1600#1600#1600#1600#1578' :'
    end
    object Bevel3: TBevel
      Left = 164
      Top = 97
      Width = 86
      Height = 22
    end
    object Label3: TLabel
      Left = 502
      Top = 98
      Width = 4
      Height = 15
    end
    object Label12: TLabel
      Left = 169
      Top = 100
      Width = 46
      Height = 15
      Caption = #1606#1575#1605' '#1605#1575#1604':'
    end
    object Label13: TLabel
      Left = 171
      Top = 76
      Width = 71
      Height = 15
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
    end
    object Label4: TLabel
      Left = 159
      Top = 123
      Width = 86
      Height = 15
      Caption = #1576#1585#1670#1587#1576' '#1575#1605#1608#1575#1604#1610':'
    end
    object Bevel7: TBevel
      Left = 148
      Top = 120
      Width = 86
      Height = 23
    end
    object edCreate_Date: TRSqlMaskEdit
      Left = 3
      Top = 25
      Width = 160
      Height = 23
      BiDiMode = bdLeftToRight
      Enabled = False
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftDisplay
    end
    object cmbType: TRSqlComboBox
      Left = 3
      Top = 49
      Width = 160
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
      TabOrder = 5
      OnChange = cmbTypeChange
      Items.Strings = (
        #1593#1575#1583#1610
        #1587#1575#1604#1575#1606#1607
        #1578#1593#1605#1610#1585)
      FieldType = ftRequired
    end
    object dblUnit: TRSqlDbLookup
      Left = 252
      Top = 73
      Width = 131
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = dsUnit
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      OnClick = dblUnitClick
      FieldType = ftRequired
    end
    object dblOrg: TRSqlDbLookup
      Left = 252
      Top = 50
      Width = 131
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = dsorg
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnClick = dblOrgClick
      FieldType = ftRequired
    end
    object edCreate: TRSqlEdit
      Left = 252
      Top = 26
      Width = 131
      Height = 23
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      FieldType = ftDisplay
    end
    object edReqNo: TRSqlEdit
      Left = 252
      Top = 3
      Width = 131
      Height = 23
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = 15461355
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      FieldType = ftKeyGm
    end
    object edGoodName: TRSqlEdit
      Left = 3
      Top = 97
      Width = 160
      Height = 23
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
      FieldType = ftNonRequired
    end
    object edGoodCode: TRSqlEdit
      Left = 278
      Top = 97
      Width = 159
      Height = 23
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      FieldType = ftNonRequired
    end
    object edState: TRSqlEdit
      Left = 3
      Top = 2
      Width = 160
      Height = 23
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftDisplay
    end
    object SpeedButton1: TButton
      Left = 255
      Top = 98
      Width = 22
      Height = 20
      Caption = '...'
      TabOrder = 8
      OnClick = SpeedButton1Click
    end
    object dblLocUser: TRSqlDbLookup
      Left = 3
      Top = 72
      Width = 160
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'loc_code'
      ListField = 'loc_desc'
      ListSource = DabData.dsDeployLoc
      ParentBiDiMode = False
      TabOrder = 10
      FieldType = ftNonRequired
    end
    object edGoodLable: TRSqlEdit
      Left = 4
      Top = 119
      Width = 143
      Height = 23
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 11
      FieldType = ftNonRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 527
    Height = 37
    Align = alBottom
    TabOrder = 1
    object btOk: TRSqlButton
      Left = 7
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
      OnClick = btOkClick
      ButtonType = btOk
    end
    object btCancel: TRSqlButton
      Left = 77
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
      OnClick = btCancelClick
      ButtonType = btCancel
    end
  end
  object dsGoods: TDataSource
    DataSet = quGoods
    Left = 181
    Top = 135
  end
  object quGoods: TADOQuery
    AutoCalcFields = False
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Moveable_Goods left outer join item '
      'on Moveable_goods.item_code=Item.Item_code'
      'where goods_code=:p0')
    Left = 211
    Top = 136
    object quGoodsitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 8
    end
    object quGoodsreceipt_no: TIntegerField
      FieldName = 'receipt_no'
    end
    object quGoodslabel: TIntegerField
      FieldName = 'label'
    end
    object quGoodsBprice: TFloatField
      FieldName = 'Bprice'
    end
    object quGoodsEprice: TFloatField
      FieldName = 'Eprice'
    end
    object quGoodsType: TSmallintField
      FieldName = 'Type'
    end
    object quGoodsState: TSmallintField
      FieldName = 'State'
    end
    object quGoodsitem_code_1: TStringField
      FieldName = 'item_code_1'
      FixedChar = True
      Size = 8
    end
    object quGoodsitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quGoodsclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quGoodsitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quGoodsitem_unit: TSmallintField
      FieldName = 'item_unit'
    end
    object quGoodsItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quGoodsOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quGoodsInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
    object quGoodsgoods_code: TStringField
      FieldName = 'goods_code'
      FixedChar = True
      Size = 12
    end
  end
  object dsorg: TDataSource
    DataSet = quOrg
    Left = 275
    Top = 136
  end
  object quOrg: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Organization')
    Left = 339
    Top = 136
    object quOrgOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object quOrgOrg_Name: TStringField
      FieldName = 'Org_Name'
      Size = 80
    end
    object quOrgOrg_Addr: TStringField
      FieldName = 'Org_Addr'
      FixedChar = True
      Size = 14
    end
    object quOrgOrg_Mast_Code: TIntegerField
      FieldName = 'Org_Mast_Code'
    end
  end
  object dsUnit: TDataSource
    DataSet = quUnit
    Left = 403
    Top = 136
  end
  object quUnit: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Org_Unit '
      'WHERE'
      'Ut_Org_Code=:p0 ')
    Left = 371
    Top = 136
    object quUnitUt_Org_Code: TIntegerField
      FieldName = 'Ut_Org_Code'
    end
    object quUnitUt_Code: TSmallintField
      FieldName = 'Ut_Code'
    end
    object quUnitUt_Name: TStringField
      FieldName = 'Ut_Name'
      Size = 80
    end
    object quUnitUt_Mast_Code: TSmallintField
      FieldName = 'Ut_Mast_Code'
    end
  end
  object quSelMax: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(Req_No)  AS maxNo FROM Item_Request')
    Left = 435
    Top = 136
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
    Left = 307
    Top = 136
    object quEmpFLName: TStringField
      FieldName = 'FLName'
      ReadOnly = True
      Size = 71
    end
  end
  object quMasCheck: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Item_Request '
      'WHERE '
      'Req_No=:p0'
      '')
    Left = 531
    Top = 133
    object quMasCheckCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quMasCheckCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quMasCheckOrg_Code: TSmallintField
      FieldName = 'Org_Code'
    end
    object quMasCheckOrg_Unit_Code: TSmallintField
      FieldName = 'Org_Unit_Code'
    end
    object quMasCheckConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 8
    end
    object quMasCheckConfirm_date: TStringField
      FieldName = 'Confirm_date'
      FixedChar = True
      Size = 8
    end
    object quMasCheckVerifier: TStringField
      FieldName = 'Verifier'
      FixedChar = True
      Size = 10
    end
    object quMasCheckVerify_date: TStringField
      FieldName = 'Verify_date'
      FixedChar = True
      Size = 8
    end
    object quMasCheckState: TSmallintField
      FieldName = 'State'
    end
    object quMasCheckReq_Type: TSmallintField
      FieldName = 'Req_Type'
    end
    object quMasCheckReq_no: TIntegerField
      FieldName = 'Req_no'
    end
    object quMasCheckGoods_Code: TStringField
      FieldName = 'Goods_Code'
      FixedChar = True
      Size = 12
    end
  end
  object quMasInsert: TADOQuery
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'P3'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'P4'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'P5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'P6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'P7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'P8'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'P9'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'P10'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'P11'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'p12'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Item_Request VALUES('
      ':p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12)')
    Left = 467
    Top = 134
  end
  object quMastUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        Size = 8
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
        Attributes = [paNullable]
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
        Size = 8
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
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p12'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Update Item_Request '
      'Set'
      'Creator=:p0,'
      'Create_Date=:p1,'
      'Org_Code=:p2,'
      'org_unit_code=:p3,'
      'confirmer=:p4,'
      'confirm_date=:p5,'
      'verifier=:p6,'
      'verify_date=:p7,'
      'state=:p8,'
      'Req_Type=:p9,'
      'Goods_Code=:p10,'
      'Loc_Code=:p11'
      'Where Req_No=:p12 ')
    Left = 499
    Top = 135
  end
  object quGenCode: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from item_request')
    Left = 242
    Top = 137
    object quGenCodeReq_no: TIntegerField
      FieldName = 'Req_no'
    end
    object quGenCodeCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quGenCodeCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quGenCodeOrg_Code: TSmallintField
      FieldName = 'Org_Code'
    end
    object quGenCodeOrg_Unit_Code: TSmallintField
      FieldName = 'Org_Unit_Code'
    end
    object quGenCodeConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 8
    end
    object quGenCodeConfirm_date: TStringField
      FieldName = 'Confirm_date'
      FixedChar = True
      Size = 8
    end
    object quGenCodeVerifier: TStringField
      FieldName = 'Verifier'
      FixedChar = True
      Size = 10
    end
    object quGenCodeVerify_date: TStringField
      FieldName = 'Verify_date'
      FixedChar = True
      Size = 8
    end
    object quGenCodeState: TSmallintField
      FieldName = 'State'
    end
    object quGenCodeReq_Type: TSmallintField
      FieldName = 'Req_Type'
    end
    object quGenCodeGoods_Code: TStringField
      FieldName = 'Goods_Code'
      FixedChar = True
      Size = 12
    end
  end
end
