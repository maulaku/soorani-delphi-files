object TreeItem: TTreeItem
  Left = 0
  Top = 54
  HelpContext = 16
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '   ‰„Êœ«— œ—Œ Ì ﬂ«·«'
  ClientHeight = 454
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
  object MainTV: TTreeView
    Left = 0
    Top = 27
    Width = 792
    Height = 417
    Align = alClient
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Indent = 19
    ParentFont = False
    TabOrder = 0
  end
  object TreeProgress: TProgressBar
    Left = 0
    Top = 444
    Width = 792
    Height = 10
    Align = alBottom
    Min = 0
    Max = 10000
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 27
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 723
      Top = 5
      Width = 59
      Height = 16
      Caption = 'Ã” ÃÊ :'
    end
    object SpeedButton1: TSpeedButton
      Left = 573
      Top = 2
      Width = 25
      Height = 24
      Caption = 'ø'
      OnClick = SpeedButton1Click
    end
    object sbSave: TSpeedButton
      Left = 544
      Top = 2
      Width = 25
      Height = 24
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000D8E9EC000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080800080800000000000000000000000000000000000
        00D8E9ECD8E9EC00000000808000000000000000000080800080800000000000
        00000000000000000000000000D8E9ECD8E9EC00000000808000000000000000
        00008080008080000000000000000000000000000000000000D8E9ECD8E9EC00
        0000008080000000000000000000808000808000000000000000000000000000
        0000000000000000000000000000008080000000000000000000808000808000
        8080008080008080008080008080008080008080008080008080008080000000
        0000000000008080008080000000000000000000000000000000000000000000
        0000000080800080800000000000000000008080000000D8E9ECD8E9ECD8E9EC
        D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000000080800000000000000000008080
        000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000000080
        800000000000000000008080000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
        ECD8E9ECD8E9EC0000000080800000000000000000008080000000D8E9ECD8E9
        ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC00000000808000000000000000
        00008080000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC00
        00000000000000000000000000008080000000D8E9ECD8E9ECD8E9ECD8E9ECD8
        E9ECD8E9ECD8E9ECD8E9EC000000D8E9EC000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      OnClick = sbSaveClick
    end
    object spExplode: TSpeedButton
      Left = 520
      Top = 2
      Width = 24
      Height = 24
      Hint = 'Explode All'
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF00000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFF000000000000
        000000FFFFFF0000000000000000000000000000000000000000000000FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFF0000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = spExplodeClick
    end
    object sbCollapse: TSpeedButton
      Left = 493
      Top = 3
      Width = 24
      Height = 24
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        1800000000006802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF00000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000FFFFFF000000000000
        000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFF
        000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFF0000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      OnClick = sbCollapseClick
    end
    object SpeedButton2: TSpeedButton
      Left = 459
      Top = 4
      Width = 24
      Height = 24
    end
    object edSearch: TEdit
      Left = 601
      Top = 1
      Width = 129
      Height = 24
      TabOrder = 0
    end
  end
  object QudblClass: TADOQuery
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
      'Select * From Goods_Class'
      'Where Class_Type=:p0')
    Left = 136
    Top = 132
  end
  object dsClass: TDataSource
    DataSet = QudblClass
    Left = 164
    Top = 132
  end
  object quItemType: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT Class_Type FROM Goods_Class')
    Left = 108
    Top = 160
    object quItemTypeClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
  end
  object quGoodsClass: TADOQuery
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
      'SELECT * FROM Goods_Class '
      'WHERE '
      'Class_Type = :p1 ')
    Left = 136
    Top = 160
    object quGoodsClassclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quGoodsClassclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quGoodsClassclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quGoodsClassClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quGoodsClassppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quGoodsClasspc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quGoodsClassps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
  end
  object quItem: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Item '
      'WHERE '
      '   Pk_MasterGroups = :p0 '
      'and '
      '   Pk_DetailGroups = :p1 '
      'and '
      '   Class_code=:p2')
    Left = 164
    Top = 160
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
    object quItemItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
  end
  object quMoveable: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Item_Code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from Moveable_Goods'
      'where Item_Code=:Item_Code')
    Left = 192
    Top = 160
    object quMoveablegoods_code: TStringField
      FieldName = 'goods_code'
      FixedChar = True
      Size = 12
    end
    object quMoveableitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 10
    end
    object quMoveablereceipt_no: TIntegerField
      FieldName = 'receipt_no'
    end
    object quMoveablelabel: TIntegerField
      FieldName = 'label'
    end
    object quMoveableBprice: TFloatField
      FieldName = 'Bprice'
    end
    object quMoveableEprice: TFloatField
      FieldName = 'Eprice'
    end
    object quMoveableType: TSmallintField
      FieldName = 'Type'
    end
    object quMoveableState: TSmallintField
      FieldName = 'State'
    end
    object quMoveableNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'Txt'
    FileName = 'AmvalTree.Txt'
    Left = 408
    Top = 48
  end
end
