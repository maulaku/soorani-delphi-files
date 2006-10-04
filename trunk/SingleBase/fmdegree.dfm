object Degre: TDegre
  Left = 210
  Top = 147
  HelpContext = 5
  Anchors = []
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                                               '#1583#1585#1580#1607' '#1578#1581#1589#1610#1604#1610
  ClientHeight = 380
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 435
    Height = 313
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 16771320
    DataSource = dsdegree
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgrid1Enter
    OnKeyPress = dbgrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Row'
        Title.Caption = #1585#1583#1610#1601
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descr'
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 337
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 435
    Height = 67
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 1
    Enabled = False
    TabOrder = 1
    object edLName: TRSqlEdit
      Left = 24
      Top = 4
      Width = 334
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnChange = edLNameChange
      FieldType = ftRequired
      Provider = FormInitializer1
    end
    object edLCode: TRSqlEdit
      Left = 358
      Top = 4
      Width = 71
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = edLCodeChange
      OnKeyPress = edLCodeKeyPress
      FieldType = ftRequired
      Provider = FormInitializer1
    end
    object btOK: TRSqlButton
      Left = 8
      Top = 34
      Width = 67
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btOKClick
      ButtonType = btOk
    end
    object btCancle: TRSqlButton
      Left = 75
      Top = 34
      Width = 65
      Height = 25
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btCancleClick
      ButtonType = btCancel
    end
  end
  object quUpdate: TADOQuery
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
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Update  degree'
      'set  descr=:p1'
      'where  code=:p2')
    Left = 45
    Top = 115
  end
  object quInsert: TADOQuery
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
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'insert into degree (Code,descr) values (:p1,:p2)')
    Left = 87
    Top = 93
  end
  object dsdegree: TDataSource
    DataSet = DabData.qudegree
    Left = 28
    Top = 30
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
      'Delete from degree'
      'where code=:p1')
    Left = 42
    Top = 82
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmNone
    SearchFocusables = False
    Left = 265
    Top = 145
  end
end
