object DetailGroups: TDetailGroups
  Left = 270
  Top = 99
  HelpContext = 1
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ê—ÊÂ ›—⁄Ì ﬂ«·«Â«'
  ClientHeight = 397
  ClientWidth = 400
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
    Width = 400
    Height = 329
    Align = alTop
    DataSource = dsDetail
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgUnitItemDblClick
    OnKeyPress = dbgUnitItemKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PK_DetailGroup'
        Title.Caption = 'ﬂœ'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc'
        Title.Caption = 'ê—ÊÂ ›—⁄Ì ﬂ«·«'
        Width = 335
        Visible = True
      end>
  end
  object panInput: TPanel
    Left = 0
    Top = 329
    Width = 400
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
        Name = 'Detail'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Master'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Class_Code'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Delete from Tbl_DetailGroups '
      'where  Pk_DetailGroup=:Detail'
      #13'    and Pk_MasterGroup=:Master'
      '    and Class_Code=:Class_Code'
      '  ')
    Left = 30
    Top = 139
  end
  object quInsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Class_Code'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Master'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Desc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    SQL.Strings = (
      'insert into Tbl_DetailGroups'
      '    (Class_Code,PK_MasterGroup,[Desc]) '
      '  Values'
      '    (:Class_Code,:Master,:Desc)')
    Left = 62
    Top = 139
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Desc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'Detail'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Master'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Class_Code'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'update Tbl_DetailGroups Set [Desc]=:Desc'
      '  where Pk_DetailGroup=:Detail'
      '     and Pk_MasterGroup=:Master'
      '     and  Class_Code=:Class_Code')
    Left = 95
    Top = 139
  end
  object quDetail: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Class_Code'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Master'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *,[desc] as dsc FROM Tbl_DetailGroups'
      'where '
      '          Class_Code=:Class_Code'
      '   and '
      '          Pk_MasterGroup=:Master')
    Left = 16
    Top = 56
    object quDetailPK_DetailGroup: TSmallintField
      FieldName = 'PK_DetailGroup'
      ReadOnly = True
    end
    object quDetailPK_MasterGroup: TSmallintField
      FieldName = 'PK_MasterGroup'
    end
    object quDetailClass_Code: TSmallintField
      FieldName = 'Class_Code'
    end
    object quDetailDesc: TStringField
      FieldName = 'Desc'
      Size = 200
    end
    object quDetaildsc: TStringField
      FieldName = 'dsc'
      Size = 200
    end
  end
  object dsDetail: TDataSource
    DataSet = quDetail
    Left = 24
    Top = 88
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 64
    Top = 64
  end
end
