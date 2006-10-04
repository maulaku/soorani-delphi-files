object Item: TItem
  Left = 111
  Top = 102
  HelpContext = 1
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                          Ê«Õœ ﬂ«·«'
  ClientHeight = 397
  ClientWidth = 398
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
  object dbgUnitItem: TDBGrid
    Left = 0
    Top = 0
    Width = 398
    Height = 329
    Align = alTop
    DataSource = dsUnitItem
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Unit_Item_Desc'
        Title.Caption = 'Ê«Õœ ﬂ«·«'
        Width = 375
        Visible = True
      end>
  end
  object panInput: TPanel
    Left = 0
    Top = 329
    Width = 398
    Height = 68
    Align = alClient
    AutoSize = True
    BevelInner = bvLowered
    TabOrder = 1
    object btnOK: TRSqlButton
      Left = 7
      Top = 36
      Width = 75
      Height = 25
      Caption = ' «∆Ìœ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnOKClick
      ButtonType = btOk
    end
    object btnCancel: TRSqlButton
      Left = 82
      Top = 36
      Width = 75
      Height = 25
      Caption = '·€Ê'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelClick
      ButtonType = btCancel
    end
    object edCode: TRSqlEdit
      Left = 322
      Top = 7
      Width = 69
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftKeyGm
      EditType = etNumeric
    end
    object edDesc: TRSqlEdit
      Left = 6
      Top = 7
      Width = 313
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentFont = False
      TabOrder = 1
      FieldType = ftRequired
    end
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
      'Delete from Unit_Item where Code=:p1')
    Left = 30
    Top = 139
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
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'insert into Unit_Item (Code,Unit_Item_Desc) Values(:p1,:p2)')
    Left = 62
    Top = 139
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
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
      'update Unit_Item Set Unit_Item_Desc=:p1 where Code=:p2')
    Left = 95
    Top = 139
  end
  object quItem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Unit_Item'
      'ORDER BY Code')
    Left = 16
    Top = 56
    object quItemCode: TSmallintField
      FieldName = 'Code'
    end
    object quItemUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
  end
  object dsUnitItem: TDataSource
    DataSet = quItem
    Left = 24
    Top = 88
  end
end
