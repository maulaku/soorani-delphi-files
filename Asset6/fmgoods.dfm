object goods: Tgoods
  Left = 0
  Top = 50
  HelpContext = 2
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                  '#1578#1593#1585#1610#1601' '#1591#1576#1602#1607' '#1608' '#1603#1575#1604#1575' '
  ClientHeight = 482
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MaxHeight = 516
  Constraints.MinHeight = 479
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
  TextHeight = 13
  object grItem: TDBGrid
    Left = 0
    Top = 269
    Width = 792
    Height = 213
    Align = alBottom
    Color = clWhite
    DataSource = dsdet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = grItemDblClick
    OnEnter = grItemEnter
    OnExit = grItemExit
    OnKeyPress = grItemKeyPress
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Radif'
        Title.Caption = #1585#1583#1610#1601
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_code'
        Title.Caption = '   '#1603#1583' '#1603#1575#1604#1575
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Caption = '            '#1606#1575#1605' '#1603#1575#1604#1575
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
        Title.Caption = '   '#1608#1575#1581#1583' '#1603#1575#1604#1575
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item_Inventory'
        Title.Caption = '    '#1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order_Point'
        Title.Caption = '       '#1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inventory_Limit'
        Title.Caption = '    '#1587#1602#1601' '#1605#1608#1580#1608#1583#1610
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end>
  end
  object grClass: TDBGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 241
    Align = alClient
    Color = clWhite
    DataSource = dsgoods
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clPurple
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = grItemDblClick
    OnEnter = grClassEnter
    OnExit = grClassExit
    Columns = <
      item
        Expanded = False
        FieldName = 'radif'
        Title.Caption = #1585#1583#1610#1601
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_name'
        Title.Caption = '         '#1606#1575#1605' '#1591#1576#1602#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type'
        Title.Caption = '              '#1606#1608#1593' '#1591#1576#1602#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pc_desc'
        Title.Caption = '                  '#1601#1589#1604' '#1607#1586#1610#1606#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 228
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 792
    Height = 28
    Align = alBottom
    TabOrder = 2
    object erSearch: TRadioGroup
      Left = 1
      Top = 1
      Width = 790
      Height = 26
      Align = alClient
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        #1603#1583' '#1603#1575#1604#1575
        #1606#1575#1605' '#1603#1575#1604#1575)
      ParentFont = False
      TabOrder = 0
      OnClick = erSearchClick
    end
  end
  object dsgoods: TDataSource
    DataSet = DabData.qugoods
    Left = 424
    Top = 97
  end
  object dsdet: TDataSource
    DataSet = DabData.quDetKar
    Left = 290
    Top = 330
  end
  object quDelete: TADOQuery
    Connection = DabData.ADOC
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
      'Delete from Goods_Class'
      'where class_code=:p1')
    Left = 477
    Top = 305
  end
  object qudeletedet: TADOQuery
    Connection = DabData.ADOC
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
      'Delete from Item'
      'where item_code=:p1')
    Left = 361
    Top = 339
  end
  object quCascadeDelete: TADOQuery
    Connection = DabData.ADOC
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
      'Delete from Item where class_code=:p1 ')
    Left = 438
    Top = 290
  end
  object QuPreChapter: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select * from Pre_chapter')
    Left = 529
    Top = 88
  end
  object dsPreChapter: TDataSource
    DataSet = QuPreChapter
    Left = 560
    Top = 88
  end
  object quGenItemCode: TADOQuery
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
      'Delete from Item'
      'where item_code=:p1')
    Left = 465
    Top = 355
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 64
    Top = 64
  end
end
