object Course: TCourse
  Left = 322
  Top = 154
  HelpContext = 1
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                               '#1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
  ClientHeight = 375
  ClientWidth = 338
  Color = clBtnFace
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
  object paCourse: TPanel
    Left = 0
    Top = 313
    Width = 338
    Height = 62
    Align = alBottom
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object paEdit: TPanel
      Left = 2
      Top = 2
      Width = 334
      Height = 27
      Align = alTop
      TabOrder = 0
      object edTitle: TRSqlEdit
        Left = 1
        Top = 1
        Width = 292
        Height = 24
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edTitleKeyPress
        FieldType = ftRequired
      end
      object edRow: TRSqlEdit
        Left = 293
        Top = 1
        Width = 39
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        FieldType = ftDisplay
      end
    end
    object paTemp: TPanel
      Left = 2
      Top = 29
      Width = 334
      Height = 31
      Align = alClient
      TabOrder = 1
      object btCancel: TRSqlButton
        Left = 83
        Top = 3
        Width = 75
        Height = 25
        Cancel = True
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
      object btOk: TRSqlButton
        Left = 3
        Top = 3
        Width = 75
        Height = 25
        Caption = #1578#1575#1574#1610#1583
        Default = True
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
    end
  end
  object dbgCourse: TDBGrid
    Left = 0
    Top = 0
    Width = 338
    Height = 313
    Align = alClient
    Color = 14737632
    DataSource = dsqCourse
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgCourseEnter
    OnKeyPress = dbgCourseKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'RowNumber'
        Title.Caption = #1585#1583#1610#1601
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'field_name'
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 277
        Visible = True
      end>
  end
  object dsqCourse: TDataSource
    DataSet = DabData.quCourse
    Left = 32
    Top = 264
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
      'Delete from Field where field_no=:p1')
    Left = 72
    Top = 264
  end
  object quNew: TADOQuery
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
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'insert into Field (Field_no,Field_name) Values(:p1,:p2)')
    Left = 112
    Top = 264
  end
  object quEdit: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
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
      'update Field Set field_name=:p1 where field_no=:p2')
    Left = 152
    Top = 264
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 120
    Top = 128
  end
end
