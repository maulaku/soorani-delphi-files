object Organization: TOrganization
  Left = 78
  Top = 125
  HelpContext = 4
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                             '#1578#1588#1603 +
    #1610#1604#1575#1578' '#1587#1575#1586#1605#1575#1606#1610
  ClientHeight = 374
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
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
  object pgOrganization: TPageControl
    Left = 0
    Top = 33
    Width = 625
    Height = 341
    ActivePage = tsOrg
    Align = alClient
    HotTrack = True
    TabOrder = 0
    TabWidth = 207
    OnChange = pgOrganizationChange
    object tsPost: TTabSheet
      Caption = #1580#1575#1610#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1610
      TabVisible = False
      OnShow = tsPostShow
      object paLookup2: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 52
        Align = alTop
        TabOrder = 0
        object Bevel3: TBevel
          Left = 519
          Top = 27
          Width = 96
          Height = 24
        end
        object Bevel2: TBevel
          Left = 519
          Top = 2
          Width = 96
          Height = 24
        end
        object Label1: TLabel
          Left = 519
          Top = 6
          Width = 53
          Height = 16
          Caption = #1587#1575#1586#1605#1575#1606' :'
        end
        object Label2: TLabel
          Left = 517
          Top = 30
          Width = 91
          Height = 16
          Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' :'
        end
        object lcOrg2: TRSqlDbLookup
          Left = 2
          Top = 2
          Width = 516
          Height = 24
          KeyField = 'Org_Code'
          ListField = 'Org_Name'
          ListSource = dsOrg
          TabOrder = 0
          OnClick = lcOrg2Click
          OnKeyPress = lcOrgKeyPress
          FieldType = ftSelective
        end
        object lcUnit: TRSqlDbLookup
          Left = 2
          Top = 26
          Width = 516
          Height = 24
          KeyField = 'Ut_Code'
          ListField = 'Ut_Name'
          ListSource = dsUnit
          TabOrder = 1
          OnClick = lcUnitClick
          OnKeyPress = lcOrgKeyPress
          FieldType = ftSelective
        end
      end
      object paPost: TPanel
        Left = 0
        Top = 52
        Width = 617
        Height = 279
        Align = alClient
        TabOrder = 1
        object dbgPost: TDBGrid
          Left = 1
          Top = 1
          Width = 615
          Height = 277
          Align = alClient
          Color = 14737632
          DataSource = dsPost
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = dbgOrgEnter
          OnExit = dbgOrgExit
          Columns = <
            item
              Expanded = False
              FieldName = 'post_code'
              Title.Caption = #1603#1583
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_name'
              Title.Caption = #1606#1575#1605' '#1580#1575#1610#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1610
              Width = 224
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mast_Name'
              Title.Caption = #1606#1575#1605' '#1580#1575#1610#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575#1604#1575#1583#1587#1578
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Type'
              Title.Caption = #1606#1608#1593
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'State'
              Title.Caption = #1608#1590#1593#1610#1578
              Visible = True
            end>
        end
      end
    end
    object tsUnit: TTabSheet
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      ImageIndex = 1
      TabVisible = False
      OnShow = tsUnitShow
      object paLookup1: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 28
        Align = alTop
        TabOrder = 0
        object Bevel1: TBevel
          Left = 519
          Top = 2
          Width = 96
          Height = 24
        end
        object Label3: TLabel
          Left = 519
          Top = 6
          Width = 53
          Height = 16
          Caption = #1587#1575#1586#1605#1575#1606' :'
        end
        object lcOrg: TRSqlDbLookup
          Left = 2
          Top = 2
          Width = 516
          Height = 24
          KeyField = 'Org_Code'
          ListField = 'Org_Name'
          ListSource = dsOrg
          TabOrder = 0
          OnClick = lcOrgClick
          OnKeyPress = lcOrgKeyPress
          FieldType = ftSelective
        end
      end
      object paUnit: TPanel
        Left = 0
        Top = 28
        Width = 617
        Height = 303
        Align = alClient
        TabOrder = 1
        object dbgUnit: TDBGrid
          Left = 1
          Top = 1
          Width = 615
          Height = 301
          Align = alClient
          Color = 14737632
          DataSource = dsUnit
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = dbgOrgEnter
          OnExit = dbgOrgExit
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
              FieldName = 'Ut_Name'
              Title.Caption = #1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
              Width = 275
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mast_Name'
              Title.Caption = #1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575#1604#1575#1583#1587#1578
              Width = 270
              Visible = True
            end>
        end
      end
    end
    object tsOrg: TTabSheet
      Caption = #1587#1575#1586#1605#1575#1606
      ImageIndex = 2
      TabVisible = False
      object paOrg: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 331
        Align = alClient
        TabOrder = 0
        object dbgOrg: TDBGrid
          Left = 1
          Top = 1
          Width = 615
          Height = 329
          Align = alClient
          Color = 14737632
          DataSource = dsOrg
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEnter = dbgOrgEnter
          OnExit = dbgOrgExit
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
              FieldName = 'Org_Name'
              Title.Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
              Width = 275
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mast_Name'
              Title.Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606' '#1576#1575#1604#1575#1583#1587#1578
              Width = 270
              Visible = True
            end>
        end
      end
    end
  end
  object fcButtonGroup2: TfcButtonGroup
    Left = 0
    Top = 0
    Width = 625
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
    TabOrder = 1
    Transparent = False
    object Band3: TfcImageBtn
      Left = 0
      Top = 0
      Width = 208
      Height = 33
      Caption = #1580#1575#1610#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1610
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
        30000000200000000100000001000000100000000200000000000000D0000000
        210000000200000000000000D000000021000000}
      DownRegionData = {00000000}
    end
    object Band2: TfcImageBtn
      Left = 209
      Top = 0
      Width = 208
      Height = 33
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
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
      NumGlyphs = 0
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
        30000000200000000100000001000000100000000200000000000000D0000000
        210000000200000000000000D000000021000000}
      DownRegionData = {00000000}
    end
    object band1: TfcImageBtn
      Left = 418
      Top = 0
      Width = 207
      Height = 33
      Caption = #1587#1575#1586#1605#1575#1606
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
      NumGlyphs = 0
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
        30000000200000000100000001000000100000000200000000000000CF000000
        210000000200000000000000CF00000021000000}
    end
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 308
    Top = 319
  end
  object dsOrg: TDataSource
    DataSet = DabData.quOrg
    Left = 12
    Top = 323
  end
  object quDelOrg: TADOQuery
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
      'delete from Organization where Org_Code=:p1')
    Left = 44
    Top = 323
  end
  object dsUnit: TDataSource
    DataSet = DabData.quUnit
    Left = 12
    Top = 291
  end
  object quDelUnit: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'delete from Org_Unit where Ut_Org_Code=:p1 and Ut_Code=:p2')
    Left = 44
    Top = 291
  end
  object dsPost: TDataSource
    DataSet = DabData.quPost
    Left = 12
    Top = 259
  end
  object quDelPost: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'delete from Post where '
      'Pt_Org_Code=:p1 and Pt_Ut_Code=:p2 and Pt_Code=:p3'
      'and  post_state=1')
    Left = 44
    Top = 259
  end
end
