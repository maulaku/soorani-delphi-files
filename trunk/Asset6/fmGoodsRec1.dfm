object GoodsRec: TGoodsRec
  Left = 3
  Top = 78
  HelpContext = 12
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                   ﬁ»÷ ﬂ«·«Â«Ì «‰»«—'
  ClientHeight = 454
  ClientWidth = 789
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
    Width = 789
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
        Title.Caption = '‘„«—Â ﬁ»÷'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Get_Type'
        Title.Caption = '‰Ê⁄  ÕÊÌ·'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'order_no'
        Title.Caption = '‘„«—Â œ—ŒÊ«”  Œ—Ìœ'
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_Code'
        Title.Caption = '‘„«—Â ›«ﬂ Ê—'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_Date'
        Title.Caption = ' «—ÌŒ ›«ﬂ Ê—'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Org_Name'
        Title.Caption = '”«“„«‰ œ—ŒÊ«”  ﬂ‰‰œÂ'
        Width = 163
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 199
    Width = 789
    Height = 26
    Align = alTop
    BevelInner = bvLowered
    Caption = 'ﬂ«·«Â«Ì —”ÌœÂ ‘œÂ »Â «‰»«—'
    TabOrder = 1
  end
  object dbgRecItem: TDBGrid
    Left = 0
    Top = 220
    Width = 789
    Height = 201
    Align = alBottom
    Color = cl3DLight
    DataSource = dsRecItem
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
        Title.Caption = '‰«„ ﬂ«·«'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_Item_Desc'
        Title.Caption = 'Ê«Õœ ﬂ«·«'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Title.Caption = '„ﬁœ«—'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buy_price'
        Title.Caption = 'ﬁÌ„  Ê«Õœ'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exprice'
        Title.Caption = 'Ã„⁄ ﬂ·'
        Width = 163
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 421
    Width = 789
    Height = 33
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 176
      Top = 7
      Width = 56
      Height = 16
      Caption = 'Ã„⁄ ﬂ·:'
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
    Active = True
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
      
        'Select Goods_Rec.*,Rec_Item.*,Item.*,Goods_Class.*,Unit_Item.*,B' +
        'uy_Price*Item_inventory as sum'
      'From Goods_Rec left outer join Rec_Item '
      'on Goods_Rec.rec_no=rec_item.rec_no'
      'left outer join Item on Rec_Item.Item_code=Item.Item_code'
      
        'left outer join Goods_Class on Item.Class_Code=Goods_Class.Class' +
        '_Code'
      'left outer join Unit_Item on Unit_Item.Code=Item.Item_Unit'
      'where goods_rec.rec_no=:p0')
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
      DisplayWidth = 0
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
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 147902
    PrinterSetup.mmPaperWidth = 210079
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 404
    Top = 285
    Version = '5.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 25929
        mmLeft = 14023
        mmTop = 265
        mmWidth = 169069
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = '(ﬁ»÷ «‰»«—)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8202
        mmLeft = 27517
        mmTop = 9260
        mmWidth = 21960
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14737632
        mmHeight = 7938
        mmLeft = 14023
        mmTop = 33602
        mmWidth = 169334
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 108479
        mmTop = 33867
        mmWidth = 4233
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 85990
        mmTop = 33867
        mmWidth = 2910
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 67998
        mmTop = 33867
        mmWidth = 7144
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 42333
        mmTop = 33867
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Alignment = taCenter
        Caption = 'Ê«Õœ ﬂ«·«'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 71702
        mmTop = 35454
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Alignment = taCenter
        Caption = ' ⁄œ«œ/„ﬁœ«—'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 89959
        mmTop = 35454
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taCenter
        Caption = 'ﬁÌ„  Ê«Õœ '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 110067
        mmTop = 35454
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Alignment = taCenter
        Caption = 'Ã„⁄ ﬂ·'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 49477
        mmTop = 35454
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Alignment = taCenter
        Caption = '„·«ÕŸ« '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 26723
        mmTop = 35454
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Alignment = taRightJustify
        DataField = 'rec_no'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 155311
        mmTop = 18785
        mmWidth = 17198
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 128059
        mmTop = 33867
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Alignment = taCenter
        Caption = '‰«„ ﬂ«·«'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 146315
        mmTop = 35454
        mmWidth = 9525
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 170392
        mmTop = 33867
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Alignment = taCenter
        Caption = '—œÌ›'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 173302
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = '’›ÕÂ:'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 173567
        mmTop = 5292
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Alignment = taRightJustify
        VarType = vtPageNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 170921
        mmTop = 5292
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = '«“'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 166423
        mmTop = 5292
        mmWidth = 1852
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Alignment = taRightJustify
        VarType = vtPageCount
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 163777
        mmTop = 5292
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = ' «—ÌŒ'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 173567
        mmTop = 11377
        mmWidth = 6615
        BandType = 0
      end
      object lbDate: TppLabel
        UserName = 'lbDate'
        Alignment = taRightJustify
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 161132
        mmTop = 11906
        mmWidth = 11113
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
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
        mmLeft = 100013
        mmTop = 794
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Alignment = taCenter
        Caption = 'Ê“«—  ﬂ‘Ê—'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 93927
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
      end
      object edOrgan: TppLabel
        UserName = 'edOrgan'
        Alignment = taCenter
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7408
        mmLeft = 56092
        mmTop = 16669
        mmWidth = 97102
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Alignment = taRightJustify
        Caption = '‘„«—Â'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 173832
        mmTop = 17992
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Alignment = taRightJustify
        Caption = '„Õ· Œ—Ìœ'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 167746
        mmTop = 26723
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Alignment = taRightJustify
        Caption = 
          'ﬂ«·«Â«Ì “Ì— »„ÊÃ» œ—ŒÊ«”  ‘„«—Â                Œ—Ìœ«—Ì Ê »Â «‰»«' +
          '—  ÕÊÌ· œ«œÂ ‘œ'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 8731
        mmTop = 26458
        mmWidth = 114300
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Alignment = taRightJustify
        DataField = 'order_no'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 57415
        mmTop = 26458
        mmWidth = 14552
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Alignment = taRightJustify
        DataField = 'Order_Location'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 7938
        mmLeft = 123561
        mmTop = 25929
        mmWidth = 43656
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
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 85990
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 42333
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 67998
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 108479
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Alignment = taCenter
        DataField = 'sum'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 43127
        mmTop = 794
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Alignment = taCenter
        DataField = 'buy_price'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 109009
        mmTop = 794
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Alignment = taCenter
        DataField = 'Unit_Item_Desc'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 67998
        mmTop = 794
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Alignment = taCenter
        DataField = 'Item_Inventory'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 88371
        mmTop = 794
        mmWidth = 17463
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 128059
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Alignment = taCenter
        DataField = 'item_name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 128588
        mmTop = 794
        mmWidth = 41275
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 170392
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        Alignment = taCenter
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
        Transparent = True
        mmHeight = 6085
        mmLeft = 171186
        mmTop = 794
        mmWidth = 11377
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Alignment = taRightJustify
        Caption = '«„÷«¡'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 29369
        mmTop = 1588
        mmWidth = 6879
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Alignment = taRightJustify
        Caption = 'Õ”«»œ«— Ê Ã„⁄œ«— «„Ê«·'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 42333
        mmTop = 1852
        mmWidth = 30692
        BandType = 8
      end
    end
  end
end
