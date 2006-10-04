object GoodsRec: TGoodsRec
  Left = 0
  Top = 74
  HelpContext = 12
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1602#1576#1590' '#1603#1575#1604#1575#1607#1575#1610' '#1575#1606#1576#1575#1585
  ClientHeight = 458
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object dbgGoodsRec: TDBGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 199
    Align = alTop
    DataSource = dsGoodsRec
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgGoodsRecDblClick
    OnEnter = dbgGoodsRecEnter
    OnExit = dbgGoodsRecExit
    Columns = <
      item
        Expanded = False
        FieldName = 'rec_no'
        Title.Caption = #1588#1605#1575#1585#1607' '#1602#1576#1590
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Get_Type'
        Title.Caption = #1606#1608#1593' '#1578#1581#1608#1610#1604
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'order_no'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_Code'
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_Date'
        Title.Caption = #1578#1575#1585#1610#1582' '#1601#1575#1603#1578#1608#1585
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Org_Name'
        Title.Caption = #1587#1575#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
        Width = 163
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 199
    Width = 792
    Height = 26
    Align = alTop
    BevelInner = bvLowered
    Caption = #1603#1575#1604#1575#1607#1575#1610' '#1585#1587#1610#1583#1607' '#1588#1583#1607' '#1576#1607' '#1575#1606#1576#1575#1585
    TabOrder = 1
  end
  object dbgRecItem: TDBGrid
    Left = 0
    Top = 225
    Width = 792
    Height = 200
    Hint = 
      #1583#1585' '#1589#1608#1585#1578#1610' '#1603#1607' '#1588#1605#1575' '#1583#1585' '#1575#1610#1606' '#1602#1587#1605#1578' '#1603#1575#1604#1575#1610#1610' '#1585#1575' '#1608#1575#1585#1583' '#1606#1605#1575#1610#1610#1583' '#1576#1591#1608#1585' '#1582#1608#1583#1603#1575#1585' '#1583#1585 +
      ' '#1604#1610#1587#1578' '#1603#1575#1604#1575#1607#1575#1610' '#1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604' '#1583#1585#1580' '#1582#1608#1575#1607#1583' '#1588#1583' '#1608' '#1583#1585' '#1589#1608#1585#1578' '#1581#1584#1601' '#1608' '#1608#1610#1585#1575#1588' '#1607#1605#1610 +
      #1606' '#1575#1578#1601#1575#1602' '#1583#1585' '#1604#1610#1587#1578' '#1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604' '#1582#1608#1575#1607#1583' '#1575#1601#1578#1575#1583
    Align = alClient
    Color = cl3DLight
    DataSource = dsRecItem
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgRecItemEnter
    OnExit = dbgRecItemExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Item_name'
        Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_Item_Desc'
        Title.Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Title.Caption = #1605#1602#1583#1575#1585
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buy_price'
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exprice'
        Title.Caption = #1580#1605#1593' '#1603#1604
        Width = 163
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 792
    Height = 33
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 182
      Top = 7
      Width = 51
      Height = 16
      Caption = #1580#1605#1593' '#1603#1604':'
    end
    object edTotalPrice: TRSqlEdit
      Left = 3
      Top = 3
      Width = 178
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftDisplay
    end
  end
  object dsGoodsRec: TDataSource
    DataSet = DabData.quGoodsRec
    Left = 8
    Top = 16
  end
  object dsRecItem: TDataSource
    DataSet = DabData.quRec_Item
    Left = 8
    Top = 256
  end
  object quDelete: TADOQuery
    Connection = DabData.ADOC
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
      'DELETE FROM Goods_Rec '
      'WHERE '
      'rec_no = :p1 ')
    Left = 24
    Top = 56
  end
  object quUpdateOrderRequest: TADOQuery
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
      end>
    SQL.Strings = (
      'UPDATE Order_Request '
      'SET State = :p1 '
      'WHERE '
      'Order_Req_Type = 1 AND '
      'Order_Req_No = :p2 ')
    Left = 56
    Top = 58
  end
  object quDelRecItem: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM Rec_Item '
      'WHERE '
      'Rec_No = :p1 AND '
      'Item_Code = :p2 ')
    Left = 8
    Top = 296
  end
  object quRecItem: TADOQuery
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
      'Select'
      '   Gr.*,'
      '   Ri.*,'
      '   I.*,'
      '   Gc.*,'
      '   Ui.*,'
      '   Buy_Price*Amount as sum'
      'From Goods_Rec Gr left outer join Rec_Item Ri'
      'on Gr.rec_no=Ri.rec_no'
      'left outer join Item I on Ri.Item_code=I.Item_code'
      'left outer join Goods_Class Gc on I.Class_Code=Gc.Class_Code'
      'left outer join Unit_Item Ui on Ui.Code=I.Item_Unit'
      'where Gr.rec_no=:p0'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 376
    Top = 257
    object quRecItemrec_no: TIntegerField
      FieldName = 'rec_no'
    end
    object quRecItemcreator: TStringField
      FieldName = 'creator'
      FixedChar = True
      Size = 10
    end
    object quRecItemdate: TStringField
      FieldName = 'date'
      FixedChar = True
      Size = 8
    end
    object quRecItemdeliver: TStringField
      FieldName = 'deliver'
      FixedChar = True
      Size = 10
    end
    object quRecItemddate: TStringField
      FieldName = 'ddate'
      FixedChar = True
      Size = 8
    end
    object quRecItemconfirmer: TStringField
      FieldName = 'confirmer'
      FixedChar = True
      Size = 10
    end
    object quRecItemcdate: TStringField
      FieldName = 'cdate'
      FixedChar = True
      Size = 8
    end
    object quRecItemorder_no: TStringField
      FieldName = 'order_no'
      FixedChar = True
      Size = 8
    end
    object quRecItemdoc_no: TStringField
      FieldName = 'doc_no'
      Size = 15
    end
    object quRecItemorg: TStringField
      FieldName = 'org'
      Size = 50
    end
    object quRecItemclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quRecItemGetType: TSmallintField
      FieldName = 'GetType'
    end
    object quRecItemOrder_Location: TStringField
      FieldName = 'Order_Location'
      Size = 40
    end
    object quRecItemOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object quRecItemF_Code: TStringField
      FieldName = 'F_Code'
      Size = 15
    end
    object quRecItemF_Date: TStringField
      FieldName = 'F_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemrec_no_1: TIntegerField
      FieldName = 'rec_no_1'
    end
    object quRecItemitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 8
    end
    object quRecItembuy_price: TFloatField
      FieldName = 'buy_price'
    end
    object quRecItemex_price: TFloatField
      FieldName = 'ex_price'
    end
    object quRecItemamount: TIntegerField
      FieldName = 'amount'
    end
    object quRecItemitem_code_1: TStringField
      FieldName = 'item_code_1'
      FixedChar = True
      Size = 8
    end
    object quRecItemitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quRecItemclass_code_1: TSmallintField
      FieldName = 'class_code_1'
    end
    object quRecItemitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quRecItemitem_unit: TSmallintField
      FieldName = 'item_unit'
    end
    object quRecItemItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quRecItemOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quRecItemInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
    object quRecItemclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quRecItemclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quRecItemClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quRecItemCode: TSmallintField
      FieldName = 'Code'
    end
    object quRecItemUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object quRecItemTypeName: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeName'
      Size = 70
      Calculated = True
    end
    object quRecItemppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quRecItempc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quRecItemps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
    object quRecItemsum: TFloatField
      FieldName = 'sum'
      ReadOnly = True
    end
    object quRecItemPk_Item: TIntegerField
      FieldName = 'Pk_Item'
    end
    object quRecItemPK_DetailGroups: TSmallintField
      FieldName = 'PK_DetailGroups'
    end
    object quRecItemPK_MasterGroups: TSmallintField
      FieldName = 'PK_MasterGroups'
    end
    object quRecItemPosition_Code: TStringField
      FieldName = 'Position_Code'
      FixedChar = True
      Size = 10
    end
    object quRecItemNotes: TStringField
      FieldName = 'Notes'
      Size = 250
    end
    object quRecItemNotes_1: TStringField
      FieldName = 'Notes_1'
      Size = 250
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 376
    Top = 285
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'rec_no'
      FieldName = 'rec_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'creator'
      FieldName = 'creator'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'date'
      FieldName = 'date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'deliver'
      FieldName = 'deliver'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ddate'
      FieldName = 'ddate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'confirmer'
      FieldName = 'confirmer'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'cdate'
      FieldName = 'cdate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'order_no'
      FieldName = 'order_no'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'doc_no'
      FieldName = 'doc_no'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'org'
      FieldName = 'org'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'class_code'
      FieldName = 'class_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'GetType'
      FieldName = 'GetType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Order_Location'
      FieldName = 'Order_Location'
      FieldLength = 40
      DisplayWidth = 40
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Org_Code'
      FieldName = 'Org_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'F_Code'
      FieldName = 'F_Code'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'F_Date'
      FieldName = 'F_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'rec_no_1'
      FieldName = 'rec_no_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'item_code'
      FieldName = 'item_code'
      FieldLength = 8
      DisplayWidth = 8
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'buy_price'
      FieldName = 'buy_price'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'ex_price'
      FieldName = 'ex_price'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'amount'
      FieldName = 'amount'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'item_code_1'
      FieldName = 'item_code_1'
      FieldLength = 8
      DisplayWidth = 8
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'item_name'
      FieldName = 'item_name'
      FieldLength = 30
      DisplayWidth = 30
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'class_code_1'
      FieldName = 'class_code_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'item_desc'
      FieldName = 'item_desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'item_unit'
      FieldName = 'item_unit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Inventory'
      FieldName = 'Item_Inventory'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order_Point'
      FieldName = 'Order_Point'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Inventory_Limit'
      FieldName = 'Inventory_Limit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'class_desc'
      FieldName = 'class_desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'class_name'
      FieldName = 'class_name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Class_Type'
      FieldName = 'Class_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'TypeName'
      FieldName = 'TypeName'
      FieldLength = 70
      DisplayWidth = 70
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'ppc_code'
      FieldName = 'ppc_code'
      FieldLength = 5
      DisplayWidth = 5
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'pc_code'
      FieldName = 'pc_code'
      FieldLength = 5
      DisplayWidth = 5
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'ps_code'
      FieldName = 'ps_code'
      FieldLength = 5
      DisplayWidth = 5
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'sum'
      FieldName = 'sum'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppDBPipeline1ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pk_Item'
      FieldName = 'Pk_Item'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppDBPipeline1ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'PK_DetailGroups'
      FieldName = 'PK_DetailGroups'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 40
    end
    object ppDBPipeline1ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'PK_MasterGroups'
      FieldName = 'PK_MasterGroups'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Position_Code'
      FieldName = 'Position_Code'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'Notes'
      FieldName = 'Notes'
      FieldLength = 250
      DisplayWidth = 250
      Position = 43
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'Notes_1'
      FieldName = 'Notes_1'
      FieldLength = 250
      DisplayWidth = 250
      Position = 44
    end
  end
  object DataSource1: TDataSource
    DataSet = quRecItem
    Left = 404
    Top = 257
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = #1602#1576#1590' '#1575#1606#1576#1575#1585' '#1603#1575#1604#1575
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 10350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 404
    Top = 285
    Version = '9.01'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14737632
        mmHeight = 6085
        mmLeft = 12700
        mmTop = 36777
        mmWidth = 169334
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 107950
        mmTop = 36777
        mmWidth = 4233
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 92075
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 73554
        mmTop = 36777
        mmWidth = 7144
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 61648
        mmTop = 36777
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 78317
        mmTop = 37306
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1593#1583#1575#1583'/'#1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 92869
        mmTop = 37042
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 109538
        mmTop = 37306
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 62442
        mmTop = 37306
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1604#1575#1581#1592#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 26458
        mmTop = 37306
        mmWidth = 24077
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 127529
        mmTop = 36777
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 145786
        mmTop = 37306
        mmWidth = 9525
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 169863
        mmTop = 36777
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 172773
        mmTop = 37306
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '('#1602#1576#1590' '#1575#1606#1576#1575#1585')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8202
        mmLeft = 29104
        mmTop = 10848
        mmWidth = 21960
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'rec_no'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 156898
        mmTop = 20373
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1589#1601#1581#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 172244
        mmTop = 6879
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 169598
        mmTop = 6879
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 165100
        mmTop = 6879
        mmWidth = 3704
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 162454
        mmTop = 6879
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 175155
        mmTop = 12965
        mmWidth = 6615
        BandType = 0
      end
      object lbDate: TppLabel
        UserName = 'lbDate'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 26194
        mmTop = 4233
        mmWidth = 11113
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Picture.Data = {
          07544269746D617016060000424D160600000000000036040000280000001700
          0000140000000100080000000000E00100000000000000000000000100000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
          E00000400000004020000040400000406000004080000040A0000040C0000040
          E00000600000006020000060400000606000006080000060A0000060C0000060
          E00000800000008020000080400000806000008080000080A0000080C0000080
          E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
          E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
          E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
          E00040000000400020004000400040006000400080004000A0004000C0004000
          E00040200000402020004020400040206000402080004020A0004020C0004020
          E00040400000404020004040400040406000404080004040A0004040C0004040
          E00040600000406020004060400040606000406080004060A0004060C0004060
          E00040800000408020004080400040806000408080004080A0004080C0004080
          E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
          E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
          E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
          E00080000000800020008000400080006000800080008000A0008000C0008000
          E00080200000802020008020400080206000802080008020A0008020C0008020
          E00080400000804020008040400080406000804080008040A0008040C0008040
          E00080600000806020008060400080606000806080008060A0008060C0008060
          E00080800000808020008080400080806000808080008080A0008080C0008080
          E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
          E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
          E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
          E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
          E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
          E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
          E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
          E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
          E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
          E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          F607EDEDA352F7EDED08F6FFFFFFFFFFFF00FFFFFFFF08A35B00004900000049
          00525BA3F6FFFFFFFF00FFFFFF08EDF6085200000049000000A3F6F6F707FFFF
          FF00FFFF0852F6F6520052F70000A3F70000A3FFF65208FFFF00FFF652F7FF5B
          0052F6080000A3FFED0000F7FFED00F6FF00FFF700FFF7000008FF074900A3FF
          FFA34900F6FF525BFF00F6005BFF5200A3FFFF07000052FFFFF60000F7FFA300
          0700F700F7F6000007FFFF07000000FFFFFF5B005BFFF700A3005B00A3070000
          F6FFFF07004952FFFFFFED0052F6ED005B00A300F7074900F6FFFF07000000FF
          FFFFED0052F6F700A3000700A3070000F6FFFF07000052FFFFFFED0052FFA300
          ED00F65200085200F6FFFF07490000FFFFFFED00A3FF0000F600FFF700F7A300
          F6FFFF07000052FFFFFFF70007ED00F7FF00FFFFA300ED00F7FFFF07000000FF
          FFF65252F600A3F6FF00FFFFF6A3525B00F6FF07004952FFFFED52075B5BF6FF
          FF00FFFFFFFFF7520052F6ED000000F6ED00A35BF7F6FFFFFF00FFFFFFFFFFF6
          ED5BED52000000A3F7A3EDF6FFFFFFFFFF00FFFFFFFFFFFFFFFF085252525252
          F6FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF6F607F6F6FFFFFFFFFFFFFFFF
          FF00}
        mmHeight = 8467
        mmLeft = 101600
        mmTop = 3969
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1608#1586#1575#1585#1578' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 95515
        mmTop = 10848
        mmWidth = 21167
        BandType = 0
      end
      object edOrgan: TppLabel
        UserName = 'edOrgan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 57679
        mmTop = 18256
        mmWidth = 97102
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 175419
        mmTop = 19579
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1581#1604' '#1582#1585#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 169334
        mmTop = 28310
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          #1603#1575#1604#1575#1607#1575#1610' '#1586#1610#1585' '#1576#1605#1608#1580#1576' '#1583#1585#1582#1608#1575#1587#1578' '#1588#1605#1575#1585#1607'                '#1582#1585#1610#1583#1575#1585#1610' '#1608' '#1576#1607' '#1575#1606#1576#1575 +
          #1585' '#1578#1581#1608#1610#1604' '#1583#1575#1583#1607' '#1588#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 14288
        mmTop = 28046
        mmWidth = 109273
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'order_no'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 59002
        mmTop = 28046
        mmWidth = 14552
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Order_Location'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7938
        mmLeft = 125148
        mmTop = 27517
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 43392
        mmTop = 4233
        mmWidth = 18521
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'F_Date'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 157692
        mmTop = 13758
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7673
        mmLeft = 14023
        mmTop = 0
        mmWidth = 169069
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 92604
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 59267
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 74083
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 108479
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'sum'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 59796
        mmTop = 794
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'buy_price'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 108744
        mmTop = 794
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Unit_Item_Desc'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 74877
        mmTop = 794
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'amount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 94192
        mmTop = 794
        mmWidth = 12435
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 128059
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'item_name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 128323
        mmTop = 794
        mmWidth = 41275
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 170392
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        OnCalc = ppVariable1Calc
        OnReset = ppVariable1Reset
        ResetType = veReportStart
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 170921
        mmTop = 794
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Notes_1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 14023
        mmTop = 794
        mmWidth = 44979
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppSignAcount: TppLabel
        UserName = 'SignAcount'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 19315
        mmTop = 28310
        mmWidth = 6879
        BandType = 8
      end
      object ppNameAcount: TppLabel
        UserName = 'NameAcount'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1610#1606' '#1575#1605#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 31221
        mmTop = 28575
        mmWidth = 13229
        BandType = 8
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'Notes'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 20108
        mmLeft = 14023
        mmTop = 0
        mmWidth = 169334
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 4498
        mmLeft = 62177
        mmTop = 0
        mmWidth = 29898
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'sum'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 62442
        mmTop = 0
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1580#1605#1593' '#1603#1604' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 80433
        mmTop = 0
        mmWidth = 11113
        BandType = 7
      end
    end
  end
end
