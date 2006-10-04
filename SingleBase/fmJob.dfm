object Job: TJob
  Left = 279
  Top = 35
  HelpContext = 5
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                     '#1585#1587#1578#1607#1548' '#1585#1588#1578#1607' '#1608' '#1591#1576#1602#1607' '#1588#1594#1604#1610
  ClientHeight = 425
  ClientWidth = 348
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgJob: TPageControl
    Left = 0
    Top = 33
    Width = 348
    Height = 359
    ActivePage = tsCategory
    Align = alClient
    HotTrack = True
    TabOrder = 0
    TabWidth = 115
    OnChange = pgJobChange
    object tsJob: TTabSheet
      Caption = #1591#1576#1602#1607
      TabVisible = False
      OnShow = tsJobShow
      object paLookup2: TPanel
        Left = 0
        Top = 0
        Width = 340
        Height = 52
        Align = alTop
        TabOrder = 0
        object Bevel2: TBevel
          Left = 294
          Top = 2
          Width = 45
          Height = 24
        end
        object lbCategory2: TLabel
          Left = 297
          Top = 6
          Width = 37
          Height = 16
          Caption = #1585#1587#1578#1607' :'
        end
        object Bevel3: TBevel
          Left = 294
          Top = 27
          Width = 45
          Height = 23
        end
        object lbSub: TLabel
          Left = 297
          Top = 31
          Width = 37
          Height = 16
          Caption = #1585#1588#1578#1607' :'
        end
        object lcCategory2: TRSqlDbLookup
          Left = 2
          Top = 2
          Width = 291
          Height = 24
          KeyField = 'ctg_code'
          ListField = 'ctg_name'
          ListSource = dsCat
          TabOrder = 0
          OnClick = lcCategory2Click
          OnKeyPress = lcCategoryKeyPress
          FieldType = ftSelective
        end
        object lcSub: TRSqlDbLookup
          Left = 2
          Top = 26
          Width = 291
          Height = 24
          KeyField = 'sub_ctg_code'
          ListField = 'sub_ctg_name'
          ListSource = dsSubCat
          TabOrder = 1
          OnClick = lcSubClick
          OnKeyPress = lcCategoryKeyPress
          FieldType = ftSelective
        end
      end
      object paJob: TPanel
        Left = 0
        Top = 52
        Width = 340
        Height = 269
        Align = alClient
        TabOrder = 1
        object dbgJob: TDBGrid
          Left = 1
          Top = 1
          Width = 338
          Height = 267
          Align = alClient
          Color = 14737632
          DataSource = dsJob
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = btCancelClick
          OnExit = dbgCategoryExit
          Columns = <
            item
              Expanded = False
              FieldName = 'RowNumber'
              Title.Caption = #1585#1583#1610#1601
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'job_name'
              Title.Caption = #1605#1602#1583#1575#1585
              Width = 270
              Visible = True
            end>
        end
      end
      object paEdit3: TPanel
        Left = 0
        Top = 321
        Width = 340
        Height = 28
        Align = alBottom
        TabOrder = 2
        Visible = False
        object edRow3: TRSqlEdit
          Left = 292
          Top = 2
          Width = 47
          Height = 24
          BiDiMode = bdRightToLeft
          Color = 16635581
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
        object edTitle3: TRSqlEdit
          Left = 2
          Top = 2
          Width = 290
          Height = 24
          BiDiMode = bdLeftToRight
          Color = 14737632
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnChange = edTitle3Change
          OnKeyPress = edTitle3KeyPress
          FieldType = ftRequired
          EditType = etNumeric
        end
      end
    end
    object tsSubCategory: TTabSheet
      Caption = #1585#1588#1578#1607
      ImageIndex = 1
      TabVisible = False
      OnShow = tsSubCategoryShow
      object paLookup1: TPanel
        Left = 0
        Top = 0
        Width = 340
        Height = 28
        Align = alTop
        TabOrder = 0
        object lbCategory: TLabel
          Left = 297
          Top = 6
          Width = 37
          Height = 16
          Caption = #1585#1587#1578#1607' :'
        end
        object Bevel1: TBevel
          Left = 294
          Top = 2
          Width = 45
          Height = 24
        end
        object lcCategory: TRSqlDbLookup
          Left = 2
          Top = 2
          Width = 291
          Height = 24
          KeyField = 'ctg_code'
          ListField = 'ctg_name'
          ListSource = dsCat
          TabOrder = 0
          OnClick = lcCategoryClick
          OnKeyPress = lcCategoryKeyPress
          FieldType = ftSelective
        end
      end
      object paSubCategory: TPanel
        Left = 0
        Top = 28
        Width = 340
        Height = 293
        Align = alClient
        TabOrder = 1
        object dbgSub: TDBGrid
          Left = 1
          Top = 1
          Width = 338
          Height = 291
          Align = alClient
          Color = 14737632
          DataSource = dsSubCat
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = btCancelClick
          OnExit = dbgCategoryExit
          Columns = <
            item
              Expanded = False
              FieldName = 'RowNumber'
              Title.Caption = #1585#1583#1610#1601
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sub_ctg_name'
              Title.Caption = #1593#1606#1608#1575#1606
              Width = 270
              Visible = True
            end>
        end
      end
      object paEdit2: TPanel
        Left = 0
        Top = 321
        Width = 340
        Height = 28
        Align = alBottom
        TabOrder = 2
        Visible = False
        object edRow2: TRSqlEdit
          Left = 292
          Top = 2
          Width = 47
          Height = 24
          BiDiMode = bdRightToLeft
          Color = 16635581
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
        object edTitle2: TRSqlEdit
          Left = 2
          Top = 2
          Width = 290
          Height = 24
          BiDiMode = bdRightToLeft
          Color = 14737632
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 80
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnChange = edTitle2Change
          FieldType = ftRequired
        end
      end
    end
    object tsCategory: TTabSheet
      Caption = #1585#1587#1578#1607
      ImageIndex = 2
      TabVisible = False
      object paCategory: TPanel
        Left = 0
        Top = 0
        Width = 340
        Height = 321
        Align = alClient
        TabOrder = 0
        object dbgCategory: TDBGrid
          Left = 1
          Top = 1
          Width = 338
          Height = 319
          Align = alClient
          Color = 14737632
          DataSource = dsCat
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = btCancelClick
          OnExit = dbgCategoryExit
          Columns = <
            item
              Expanded = False
              FieldName = 'RowNumber'
              Title.Caption = #1585#1583#1610#1601
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctg_name'
              Title.Caption = #1593#1606#1608#1575#1606
              Width = 270
              Visible = True
            end>
        end
      end
      object paEdit1: TPanel
        Left = 0
        Top = 321
        Width = 340
        Height = 28
        Align = alBottom
        TabOrder = 1
        Visible = False
        object edRow1: TRSqlEdit
          Left = 292
          Top = 2
          Width = 47
          Height = 24
          BiDiMode = bdRightToLeft
          Color = 16635581
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
        object edTitle1: TRSqlEdit
          Left = 2
          Top = 2
          Width = 290
          Height = 24
          BiDiMode = bdRightToLeft
          Color = 14737632
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 50
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnChange = edTitle1Change
          FieldType = ftRequired
        end
      end
    end
  end
  object paButtons: TPanel
    Left = 0
    Top = 392
    Width = 348
    Height = 33
    Align = alBottom
    TabOrder = 1
    Visible = False
    object btOk: TRSqlButton
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Default = True
      Enabled = False
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
    object btCancel: TRSqlButton
      Left = 80
      Top = 4
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
  end
  object fcButtonGroup2: TfcButtonGroup
    Left = 0
    Top = 0
    Width = 348
    Height = 33
    Align = alTop
    AutoBold = False
    BevelOuter = bvNone
    ButtonClassName = 'TfcImageBtn'
    ClickStyle = bcsRadioGroup
    ControlSpacing = 1
    Columns = 1
    Layout = loHorizontal
    MaxControlSize = 0
    TabOrder = 2
    Transparent = False
    object Band3: TfcImageBtn
      Left = 0
      Top = 0
      Width = 116
      Height = 33
      Caption = #1591#1576#1602#1607
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GroupIndex = 1
      Image.Data = {
        424D960600000000000076000000280000006B0000001C000000010004000000
        0000200600000000000000000000100000000000000043434100585858006666
        66007878780088888800909090009E9E9E00ACACAC00BFBFBF00BFBFBF00C2C2
        C200D2D2D200D8D8D700E8E8E800F3F3F2000000FF00F4441000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F34431000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000F888332111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111110000000000FCCD
        A443333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333332100000000FDEDCA65555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555555555555555543200000000FEEEDBA66666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        655310000000FEEEDCA877777777777777777777777777777777777777777777
        777777777777777777777777777777777777777777777777765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCB8888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCB8888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCB888888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AA
        765310000000FEEEDCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB76310000000FEEE
        EDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB6410000000FEEEEEDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDCC521000000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEDB43100000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDB43100000FEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDC33100000}
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      OnClick = Band3Click
      RegionData = {
        3000000020000000010000000100000010000000010000000000000074000000
        2100000001000000000000007400000021000000}
      DownRegionData = {00000000}
    end
    object Band2: TfcImageBtn
      Left = 117
      Top = 0
      Width = 115
      Height = 33
      Caption = #1585#1588#1578#1607
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = Band3
      ExtImageDown = Band3
      GroupIndex = 1
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      OnClick = Band2Click
      RegionData = {
        3000000020000000010000000100000010000000010000000000000073000000
        2100000001000000000000007300000021000000}
      DownRegionData = {00000000}
    end
    object band1: TfcImageBtn
      Left = 233
      Top = 0
      Width = 115
      Height = 33
      Caption = #1585#1587#1578#1607
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = Band3
      ExtImageDown = Band3
      GroupIndex = 1
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      OnClick = band1Click
      RegionData = {00000000}
      DownRegionData = {
        3000000020000000010000000100000010000000010000000000000073000000
        2100000001000000000000007300000021000000}
    end
  end
  object FormInitializer: TFormInitializer
    FieldMode = fmEdit
    SearchFocusables = False
    Left = 308
    Top = 319
  end
  object dsCat: TDataSource
    DataSet = DabData.quCat
    Left = 12
    Top = 323
  end
  object quNewCat: TADOQuery
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
        Size = 80
        Value = Null
      end>
    SQL.Strings = (
      'insert into Category (Ctg_Code,Ctg_Name) Values(:p1,:p2)')
    Left = 44
    Top = 323
  end
  object quEditCat: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
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
      'Update Category Set ctg_name=:p1 where ctg_code=:p2')
    Left = 76
    Top = 323
  end
  object quDelCat: TADOQuery
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
      'delete from Category where Ctg_Code=:p1')
    Left = 108
    Top = 323
  end
  object quGetMaxCat: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select Max(Ctg_Code) as NewRow from Category')
    Left = 140
    Top = 323
    object quGetMaxCatNewRow: TSmallintField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
  object dsSubCat: TDataSource
    DataSet = DabData.quSubCat
    Left = 12
    Top = 291
  end
  object quNewSub: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Sub_Category (Ctg_Code,Sub_Ctg_Code,Sub_Ctg_Name) Va' +
        'lues(:p1,:p2,:p3)')
    Left = 44
    Top = 291
  end
  object quEditSub: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Update Sub_Category Set sub_ctg_name=:p1 '
      'where ctg_code=:p2 and sub_ctg_code=:p3')
    Left = 76
    Top = 291
  end
  object quDelSub: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'delete from Sub_Category where Ctg_Code=:p1 and Sub_Ctg_Code=:p2')
    Left = 108
    Top = 291
  end
  object quGetMaxSub: TADOQuery
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
      'select Max(Sub_Ctg_Code) as NewRow from Sub_Category '
      'where ctg_code=:p1')
    Left = 140
    Top = 291
    object quGetMaxSubNewRow: TSmallintField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
  object dsJob: TDataSource
    DataSet = DabData.quJob
    Left = 12
    Top = 259
  end
  object quNewJob: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Job (Ctg_Code,Sub_Ctg_Code,Job_Code,Job_Name) Values' +
        '(:p1,:p2,:p3,:p4)')
    Left = 44
    Top = 259
  end
  object quEditJob: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Update Job Set job_name=:p1 '
      'where ctg_code=:p2 and sub_ctg_code=:p3 and Job_Code=:p4')
    Left = 76
    Top = 259
  end
  object quDelJob: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'delete from Job where Ctg_Code=:p1 and Sub_Ctg_Code=:p2 and Job_' +
        'Code=:p3')
    Left = 108
    Top = 259
  end
  object quGetMaxJob: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select Max(Job_Code) as NewRow from Job'
      'where ctg_code=:p1 and sub_ctg_code=:p2')
    Left = 140
    Top = 259
    object quGetMaxJobNewRow: TSmallintField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
end
