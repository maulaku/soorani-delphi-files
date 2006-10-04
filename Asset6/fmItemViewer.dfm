inherited ItemVeiwer: TItemVeiwer
  Left = 230
  Top = 103
  Width = 412
  Height = 444
  Caption = #1603#1575#1604#1575#1607#1575
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel [0]
    Left = 0
    Top = 80
    Width = 404
    Height = 330
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 276
      Width = 402
      Height = 53
      Align = alBottom
      TabOrder = 0
      object Label6: TLabel
        Left = 332
        Top = 4
        Width = 61
        Height = 16
        Caption = #1588#1585#1581' '#1603#1575#1604#1575':'
        Color = clBtnFace
        ParentColor = False
      end
      object Label7: TLabel
        Left = 333
        Top = 28
        Width = 60
        Height = 16
        Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575':'
        Color = clBtnFace
        ParentColor = False
      end
      object edDesc: TRSqlEdit
        Left = 0
        Top = 1
        Width = 333
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = dblItemUnitExit
        FieldType = ftNonRequired
      end
      object dblItemUnit: TRSqlDbLookup
        Left = 214
        Top = 25
        Width = 119
        Height = 24
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'Code'
        ListField = 'Unit_Item_Desc'
        ListFieldIndex = 1
        ListSource = dsItemUnit
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnClick = dblItemUnitExit
        OnCloseUp = dblItemUnitExit
        FieldType = ftRequired
      end
      object btOk: TBitBtn
        Left = 5
        Top = 27
        Width = 24
        Height = 24
        Hint = #1578#1575#1610#1610#1583
        Default = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btOkClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object grItem: TRxDBGrid
      Left = 1
      Top = 1
      Width = 402
      Height = 275
      Align = alClient
      DataSource = dsdet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = grItemDblClick
      TitleButtons = True
      OnGetCellParams = grItemGetCellParams
      OnTitleBtnClick = grItemTitleBtnClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Radif'
          Title.Caption = #1585#1583#1610#1601
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item_code'
          Title.Caption = #1603#1583
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item_name'
          Title.Caption = #1606#1575#1605' '
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unit_Item_Desc'
          Title.Caption = #1608#1575#1581#1583
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Item_Inventory'
          Title.Caption = #1578#1593#1583#1575#1583
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 0
    Width = 404
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 143
      Top = 57
      Width = 47
      Height = 16
      Caption = #1603#1583' '#1603#1575#1604#1575':'
      Color = clBtnFace
      ParentColor = False
    end
    object Label2: TLabel
      Left = 329
      Top = 57
      Width = 51
      Height = 16
      Caption = #1606#1575#1605' '#1603#1575#1604#1575':'
      Color = clBtnFace
      ParentColor = False
    end
    object Label1: TLabel
      Left = 329
      Top = 7
      Width = 64
      Height = 16
      Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575':'
      Color = clBtnFace
      ParentColor = False
    end
    object Label5: TLabel
      Left = 123
      Top = 32
      Width = 72
      Height = 16
      Caption = #1711#1585#1608#1607' '#1601#1585#1593#1610':'
      Color = clBtnFace
      ParentColor = False
    end
    object Label4: TLabel
      Left = 328
      Top = 31
      Width = 72
      Height = 16
      Caption = #1711#1585#1608#1607' '#1575#1589#1604#1610':'
      Color = clBtnFace
      ParentColor = False
    end
    object BtNewItem: TBitBtn
      Left = 2
      Top = 53
      Width = 24
      Height = 24
      Hint = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1603#1575#1604#1575#1610' '#1580#1583#1610#1583' '#1583#1585' '#1589#1585#1578#1610' '#1603#1607' '#1711#1585#1608#1607' '#1601#1585#1593#1610' '#1607#1605' '#1662#1585' '#1588#1583#1607' '#1576#1575#1588#1583
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtNewItemClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object edItemCode: TRSqlEdit
      Left = 26
      Top = 53
      Width = 116
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edSearchChange
      FieldType = ftRequired
    end
    object edSearch: TRSqlEdit
      Left = 192
      Top = 53
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = edSearchChange
      FieldType = ftRequired
    end
    object dblMaster: TRSqlDbLookup
      Left = 201
      Top = 28
      Width = 128
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
      TabOrder = 3
      OnClick = dblMasterClick
      OnCloseUp = dblMasterClick
      FieldType = ftRequired
    end
    object dblClass: TRSqlDbLookup
      Left = 1
      Top = 3
      Width = 328
      Height = 24
      KeyField = 'class_code'
      ListField = 'class_name'
      ListSource = dsgoods
      TabOrder = 4
      OnClick = edSearchChange
      OnCloseUp = edSearchChange
      FieldType = ftRequired
    end
    object dblDetail: TRSqlDbLookup
      Left = 2
      Top = 28
      Width = 119
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
      TabOrder = 5
      OnClick = dblDetailClick
      OnCloseUp = dblDetailClick
      FieldType = ftRequired
    end
  end
  inherited FormInitializer1: TFormInitializer
    Left = 464
    Top = 128
  end
  inherited Filter1: TFilter
    Left = 457
    Top = 96
  end
  inherited ppRadDesigner: TppDesigner
    Left = 473
    Top = 159
  end
  inherited ppRadReport: TppReport
    Left = 447
    Top = 37
    DataPipelineName = 'ppRadDBRadFrom'
    inherited ppRadDetailBand1: TppDetailBand
      inherited ppRadVariable1: TppVariable [1]
      end
      inherited ppRadLine3: TppLine [2]
      end
    end
    inherited raRadCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
  end
  object dsdet: TDataSource
    DataSet = quItem
    Left = 218
    Top = 266
  end
  object dsgoods: TDataSource
    DataSet = DabData.qugoods
    Left = 40
    Top = 1
  end
  object quItem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'item_code'
        DataType = ftString
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'item_name'
        DataType = ftString
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'class_code'
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'Declare @item_name varchar(50),@Item_code varchar(10),@class_cod' +
        'e smallint'
      'Declare @Item_codeNull bit,@class_codeNull bit'
      'set @Item_codeNull=0'
      'set @class_codeNull=0'
      'Set @item_code=:item_code'
      'Set @item_name=:item_name'
      'Set @class_code=:class_code'
      'if isnull(@item_name,'#39#39')='#39#39
      '  set @item_name='#39#39
      'if isnull(@item_code,'#39#39')='#39#39
      '  set @item_codeNull=1'
      'if isnull(@class_code,-1)=-1'
      '  set @class_codeNull=1'
      'select * from Item'
      ' left outer join unit_item on'
      ' item.item_Unit=unit_item.code'
      ' left outer join goods_class on '
      ' item.class_code=goods_class.class_code'
      ' where'
      '       (item.class_code=@class_code or @class_codeNull=1)'
      '  and'
      '      (item_name like '#39'%'#39'+@item_name+'#39'%'#39')'
      '  and'
      '      (item_code like '#39'%'#39'+@item_code+'#39'%'#39' or @item_codeNull=1)'
      ' order by Item_code')
    Left = 139
    Top = 160
    object quDetRadif: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Radif'
      OnGetText = quDetRadifGetText
      Calculated = True
    end
    object quItemitem_code: TStringField
      DisplayWidth = 10
      FieldName = 'item_code'
      FixedChar = True
      Size = 10
    end
    object quItemitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quItemclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quItemitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quItemitem_unit: TSmallintField
      FieldName = 'item_unit'
    end
    object quItemItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quItemOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quItemInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
    object quItemCode: TSmallintField
      FieldName = 'Code'
    end
    object quItemUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object quItemPk_Item: TIntegerField
      FieldName = 'Pk_Item'
    end
    object quItemPK_DetailGroups: TSmallintField
      FieldName = 'PK_DetailGroups'
    end
    object quItemPK_MasterGroups: TSmallintField
      FieldName = 'PK_MasterGroups'
    end
    object quItemPosition_Code: TStringField
      FieldName = 'Position_Code'
      FixedChar = True
      Size = 10
    end
    object quItemClass_Type: TSmallintField
      FieldName = 'Class_Type'
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
    Left = 120
    Top = 5
  end
  object dsItemUnit: TDataSource
    DataSet = DabData.quItemKar
    Left = 168
    Top = 376
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
      '  (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9)')
    Left = 143
    Top = 375
  end
end
