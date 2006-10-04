object Country: TCountry
  Left = 191
  Top = 134
  HelpContext = 2
  Anchors = []
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                            '#1578#1593#1585#1610#1601' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1594#1585#1575#1601#1610#1575#1610#1610
  ClientHeight = 369
  ClientWidth = 433
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
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgcntry: TPageControl
    Left = 0
    Top = 32
    Width = 433
    Height = 337
    ActivePage = tsvillage
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = pgcntryChange
    object tsvillage: TTabSheet
      Caption = '   '#1583#1607#1587#1578#1575#1606'    '
      TabVisible = False
      OnHide = tsvillageHide
      object pavillage1: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 72
        Align = alTop
        TabOrder = 0
        object lbcntry5: TLabel
          Left = 335
          Top = 12
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1603#1588#1608#1585' '
        end
        object lbprovince5: TLabel
          Left = 142
          Top = 12
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606' '
        end
        object lbcounty5: TLabel
          Left = 339
          Top = 44
          Width = 79
          Height = 16
          Caption = #1606#1575#1605' '#1588#1607#1585#1587#1578#1575#1606' '
        end
        object lbsection5: TLabel
          Left = 145
          Top = 45
          Width = 55
          Height = 16
          Caption = #1606#1575#1605' '#1576#1582#1588' '
        end
        object dblcntry5: TDBLookupComboBox
          Left = 214
          Top = 9
          Width = 118
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'Country_code'
          ListField = 'Country_name'
          ListSource = dscntry
          ParentBiDiMode = False
          TabOrder = 0
          OnCloseUp = dblcntry5CloseUp
        end
        object dblprovince5: TDBLookupComboBox
          Left = 11
          Top = 9
          Width = 124
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'province_code'
          ListField = 'province_name'
          ListSource = dstemp
          ParentBiDiMode = False
          TabOrder = 1
          OnCloseUp = dblprovince5CloseUp
        end
        object dblcnty5: TDBLookupComboBox
          Left = 215
          Top = 41
          Width = 118
          Height = 24
          KeyField = 'county_code'
          ListField = 'county_name'
          ListSource = dstemp1
          TabOrder = 2
          OnCloseUp = dblcnty5CloseUp
        end
        object dblsection5: TDBLookupComboBox
          Left = 10
          Top = 43
          Width = 124
          Height = 24
          KeyField = 'section_code'
          ListField = 'section_name'
          ListSource = dstemp2
          TabOrder = 3
          OnCloseUp = dblsection5CloseUp
        end
      end
      object pavillage2: TPanel
        Left = 0
        Top = 204
        Width = 425
        Height = 123
        Align = alBottom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 1
        object lbcode5: TLabel
          Left = 338
          Top = 10
          Width = 64
          Height = 16
          Caption = #1603#1583' '#1583#1607#1587#1578#1575#1606
        end
        object lbname5: TLabel
          Left = 124
          Top = 10
          Width = 66
          Height = 16
          Caption = #1606#1575#1605' '#1583#1607#1587#1578#1575#1606
        end
        object Label9: TLabel
          Left = 124
          Top = 38
          Width = 110
          Height = 16
          Caption = #1583#1585#1580#1607' '#1576#1583#1610' '#1570#1576' '#1608' '#1607#1608#1575
        end
        object Label10: TLabel
          Left = 121
          Top = 65
          Width = 160
          Height = 16
          Caption = #1601#1608#1602' '#1575#1604#1593#1575#1583#1607' '#1580#1584#1576' '#1606#1602#1575#1591' '#1605#1581#1585#1608#1605
        end
        object Label11: TLabel
          Left = 338
          Top = 37
          Width = 55
          Height = 16
          Caption = #1581#1602' '#1605#1585#1586#1610
        end
        object Label12: TLabel
          Left = 336
          Top = 65
          Width = 86
          Height = 16
          Caption = #1711#1585#1608#1607' '#1605#1581#1585#1608#1605#1610#1578
        end
        object edcode5: TEdit
          Left = 241
          Top = 7
          Width = 99
          Height = 24
          Color = clWhite
          Enabled = False
          MaxLength = 4
          TabOrder = 0
          OnChange = edcode5Change
          OnKeyPress = edcode3KeyPress
        end
        object edname5: TEdit
          Left = 10
          Top = 7
          Width = 111
          Height = 24
          MaxLength = 40
          TabOrder = 1
          OnChange = edname5Change
        end
        object edgrade2: TEdit
          Left = 80
          Top = 34
          Width = 41
          Height = 24
          MaxLength = 2
          TabOrder = 3
          OnChange = edName3Change
          OnKeyPress = edgrade2KeyPress
        end
        object edjpay2: TEdit
          Left = 48
          Top = 59
          Width = 73
          Height = 24
          MaxLength = 4
          TabOrder = 5
          OnChange = edName3Change
          OnKeyPress = edjpay2KeyPress
        end
        object edgrp2: TEdit
          Left = 296
          Top = 59
          Width = 44
          Height = 24
          MaxLength = 2
          TabOrder = 4
          OnChange = edName3Change
          OnKeyPress = edgrp2KeyPress
        end
        object cbpay2: TComboBox
          Left = 242
          Top = 33
          Width = 98
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 2
          Items.Strings = (
            #1605#1588#1605#1608#1604' '#1581#1602' '#1605#1585#1586#1610
            #1594#1610#1585' '#1605#1588#1605#1608#1604)
        end
        object btok5: TButton
          Left = 9
          Top = 92
          Width = 75
          Height = 25
          Caption = #1578#1575#1610#1610#1583
          TabOrder = 6
          OnClick = btok5Click
        end
        object btca5: TButton
          Left = 87
          Top = 92
          Width = 75
          Height = 25
          Caption = #1604#1594#1608
          TabOrder = 7
          OnClick = btca5Click
        end
      end
      object dbgvillage: TDBGrid
        Left = 0
        Top = 72
        Width = 425
        Height = 132
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = 16771320
        DataSource = dsvillage
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = dbgvillageColEnter
        OnEnter = dbgvillageEnter
        OnKeyPress = dbgcntyKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'county_code'
            Title.Caption = #1603#1583' '#1588#1607#1585#1587#1578#1575#1606
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'section_code'
            Title.Caption = #1603#1583' '#1576#1582#1588
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'village_code'
            Title.Caption = #1603#1583' '#1583#1607#1587#1578#1575#1606
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'village_name'
            Title.Caption = #1606#1575#1605' '#1583#1607#1587#1578#1575#1606
            Width = 191
            Visible = True
          end>
      end
    end
    object tssection: TTabSheet
      Caption = '   '#1576#1582#1588'   '
      ImageIndex = 1
      TabVisible = False
      OnHide = tssectionHide
      object pasection2: TPanel
        Left = 0
        Top = 208
        Width = 425
        Height = 119
        Align = alBottom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 0
        object lbcode4: TLabel
          Left = 335
          Top = 11
          Width = 49
          Height = 16
          Caption = #1603#1583' '#1576#1582#1588
        end
        object lbname4: TLabel
          Left = 122
          Top = 10
          Width = 55
          Height = 16
          Caption = #1606#1575#1605' '#1576#1582#1588' '
        end
        object Label5: TLabel
          Left = 123
          Top = 38
          Width = 110
          Height = 16
          Caption = #1583#1585#1580#1607' '#1576#1583#1610' '#1570#1576' '#1608' '#1607#1608#1575
        end
        object Label6: TLabel
          Left = 336
          Top = 38
          Width = 55
          Height = 16
          Caption = #1581#1602' '#1605#1585#1586#1610
        end
        object Label7: TLabel
          Left = 334
          Top = 65
          Width = 86
          Height = 16
          Caption = #1711#1585#1608#1607' '#1605#1581#1585#1608#1605#1610#1578
        end
        object Label8: TLabel
          Left = 120
          Top = 65
          Width = 160
          Height = 16
          Caption = #1601#1608#1602' '#1575#1604#1593#1575#1583#1607' '#1580#1584#1576' '#1606#1602#1575#1591' '#1605#1581#1585#1608#1605
        end
        object edcode4: TEdit
          Left = 230
          Top = 7
          Width = 107
          Height = 24
          Color = clWhite
          Enabled = False
          MaxLength = 4
          TabOrder = 0
          OnChange = edcode4Change
          OnKeyPress = edcode3KeyPress
        end
        object edname4: TEdit
          Left = 11
          Top = 8
          Width = 107
          Height = 24
          MaxLength = 40
          TabOrder = 1
          OnChange = edname4Change
        end
        object edgrade1: TEdit
          Left = 80
          Top = 34
          Width = 37
          Height = 24
          MaxLength = 2
          TabOrder = 3
          OnChange = edName3Change
          OnKeyPress = edgrade1KeyPress
        end
        object edjpay1: TEdit
          Left = 56
          Top = 59
          Width = 61
          Height = 24
          MaxLength = 4
          TabOrder = 5
          OnChange = edName3Change
          OnKeyPress = edjpay1KeyPress
        end
        object edgrp1: TEdit
          Left = 296
          Top = 59
          Width = 40
          Height = 24
          MaxLength = 2
          TabOrder = 4
          OnChange = edName3Change
          OnKeyPress = edgrp1KeyPress
        end
        object cbpay1: TComboBox
          Left = 238
          Top = 33
          Width = 98
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 2
          Items.Strings = (
            #1605#1588#1605#1608#1604' '#1581#1602' '#1605#1585#1586#1610
            #1594#1610#1585' '#1605#1588#1605#1608#1604)
        end
        object btok4: TButton
          Left = 9
          Top = 90
          Width = 75
          Height = 25
          Caption = #1578#1575#1610#1610#1583
          TabOrder = 6
          OnClick = btok4Click
        end
        object btca4: TButton
          Left = 87
          Top = 90
          Width = 75
          Height = 25
          Caption = #1604#1594#1608
          TabOrder = 7
          OnClick = btca4Click
        end
      end
      object dbgsection: TDBGrid
        Left = 0
        Top = 72
        Width = 425
        Height = 136
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = 16771320
        DataSource = dssection
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = dbgsectionColEnter
        OnEnter = dbgsectionEnter
        OnKeyPress = dbgcntyKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'section_code'
            Title.Caption = #1603#1583' '#1576#1582#1588
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'section_name'
            Title.Caption = #1606#1575#1605' '#1576#1582#1588
            Width = 221
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grade'
            Title.Caption = #1583#1585#1580#1607
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grp'
            Title.Caption = #1711#1585#1608#1607
            Width = 43
            Visible = True
          end>
      end
      object pasection1: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 72
        Align = alTop
        TabOrder = 2
        object lbcntry4: TLabel
          Left = 333
          Top = 11
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1603#1588#1608#1585' '
        end
        object lbprovince4: TLabel
          Left = 129
          Top = 14
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606' '
        end
        object lbcnty4: TLabel
          Left = 337
          Top = 43
          Width = 79
          Height = 16
          Caption = #1606#1575#1605' '#1588#1607#1585#1587#1578#1575#1606' '
        end
        object dblcntry4: TDBLookupComboBox
          Left = 213
          Top = 9
          Width = 109
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'Country_code'
          ListField = 'Country_name'
          ListSource = dscntry
          ParentBiDiMode = False
          TabOrder = 0
          OnCloseUp = dblcntry4CloseUp
        end
        object dblprovince4: TDBLookupComboBox
          Left = 16
          Top = 10
          Width = 106
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'province_code'
          ListField = 'province_name'
          ListSource = dstemp
          ParentBiDiMode = False
          TabOrder = 1
          OnCloseUp = dblprovince4CloseUp
        end
        object dblcnty4: TDBLookupComboBox
          Left = 214
          Top = 42
          Width = 108
          Height = 24
          KeyField = 'county_code'
          ListField = 'county_name'
          ListSource = dstemp1
          TabOrder = 2
          OnCloseUp = dblcnty4CloseUp
        end
      end
    end
    object tscnty: TTabSheet
      Caption = '   '#1588#1607#1585#1587#1578#1575#1606'   '
      ImageIndex = 2
      TabVisible = False
      OnHide = tscntyHide
      OnShow = tscntyShow
      object pacnty1: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 36
        Align = alTop
        TabOrder = 0
        object lbcntry3: TLabel
          Left = 329
          Top = 11
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1603#1588#1608#1585' '
        end
        object lbprovince3: TLabel
          Left = 128
          Top = 12
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606' '
        end
        object dblcntry3: TDBLookupComboBox
          Left = 225
          Top = 6
          Width = 97
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'Country_code'
          ListField = 'Country_name'
          ListSource = dscntry
          ParentBiDiMode = False
          TabOrder = 0
          OnCloseUp = dblcntry3CloseUp
        end
        object dblprovince3: TDBLookupComboBox
          Left = 8
          Top = 7
          Width = 103
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'province_code'
          ListField = 'province_name'
          ListSource = dstemp
          ParentBiDiMode = False
          TabOrder = 1
          OnCloseUp = dblprovince3CloseUp
        end
      end
      object pacnty2: TPanel
        Left = 0
        Top = 206
        Width = 425
        Height = 121
        Align = alBottom
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 1
        object lbcode3: TLabel
          Left = 331
          Top = 11
          Width = 77
          Height = 16
          Caption = #1603#1583' '#1588#1607#1585#1587#1578#1575#1606' '
        end
        object lbname3: TLabel
          Left = 115
          Top = 10
          Width = 79
          Height = 16
          Caption = #1606#1575#1605' '#1588#1607#1585#1587#1578#1575#1606' '
        end
        object Label1: TLabel
          Left = 113
          Top = 62
          Width = 160
          Height = 16
          Caption = #1601#1608#1602' '#1575#1604#1593#1575#1583#1607' '#1580#1584#1576' '#1606#1602#1575#1591' '#1605#1581#1585#1608#1605
        end
        object Label2: TLabel
          Left = 330
          Top = 62
          Width = 86
          Height = 16
          Caption = #1711#1585#1608#1607' '#1605#1581#1585#1608#1605#1610#1578
        end
        object Label3: TLabel
          Left = 116
          Top = 36
          Width = 110
          Height = 16
          Caption = #1583#1585#1580#1607' '#1576#1583#1610' '#1570#1576' '#1608' '#1607#1608#1575
        end
        object Label4: TLabel
          Left = 332
          Top = 37
          Width = 55
          Height = 16
          Caption = #1581#1602' '#1605#1585#1586#1610
        end
        object edcode3: TEdit
          Left = 234
          Top = 7
          Width = 99
          Height = 24
          Color = clWhite
          Enabled = False
          MaxLength = 4
          TabOrder = 0
          OnChange = edcode3Change
          OnKeyPress = edcode3KeyPress
        end
        object edName3: TEdit
          Left = 10
          Top = 7
          Width = 104
          Height = 24
          MaxLength = 40
          TabOrder = 1
          OnChange = edName3Change
        end
        object edgrade: TEdit
          Left = 72
          Top = 33
          Width = 42
          Height = 24
          MaxLength = 2
          TabOrder = 3
          OnChange = edName3Change
          OnKeyPress = edgradeKeyPress
        end
        object edjpay: TEdit
          Left = 40
          Top = 58
          Width = 74
          Height = 24
          MaxLength = 2
          TabOrder = 5
          OnChange = edName3Change
          OnKeyPress = edjpayKeyPress
        end
        object edgrp: TEdit
          Left = 288
          Top = 58
          Width = 45
          Height = 24
          MaxLength = 2
          TabOrder = 4
          OnChange = edName3Change
          OnKeyPress = edgrpKeyPress
        end
        object cbpay: TComboBox
          Left = 234
          Top = 33
          Width = 98
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 2
          Items.Strings = (
            #1605#1588#1605#1608#1604' '#1581#1602' '#1605#1585#1586#1610
            #1594#1610#1585' '#1605#1588#1605#1608#1604)
        end
        object btOk3: TButton
          Left = 7
          Top = 90
          Width = 75
          Height = 25
          Caption = #1578#1575#1610#1610#1583
          TabOrder = 6
          OnClick = btOk3Click
        end
        object btCa3: TButton
          Left = 85
          Top = 90
          Width = 75
          Height = 25
          Caption = #1604#1594#1608
          TabOrder = 7
          OnClick = btCa3Click
        end
      end
      object dbgcnty: TDBGrid
        Left = 0
        Top = 36
        Width = 425
        Height = 170
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = 16771320
        DataSource = dscnty
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = dbgcntyColEnter
        OnEnter = dbgcntyEnter
        OnKeyPress = dbgcntyKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'country_code'
            Title.Caption = #1603#1583' '#1603#1588#1608#1585
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'province_code'
            Title.Caption = #1603#1583' '#1575#1587#1578#1575#1606
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'county_code'
            Title.Caption = #1603#1583' '#1588#1607#1585#1587#1578#1575#1606' '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'county_name'
            Title.Caption = #1606#1575#1605' '#1588#1607#1585#1587#1578#1575#1606' '
            Width = 194
            Visible = True
          end>
      end
    end
    object tsprovince: TTabSheet
      Caption = '    '#1575#1587#1578#1575#1606'    '
      ImageIndex = 3
      TabVisible = False
      OnHide = tsprovinceHide
      object paprovince1: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 33
        Align = alTop
        TabOrder = 0
        object lbcntry2: TLabel
          Left = 345
          Top = 7
          Width = 55
          Height = 16
          Caption = #1606#1575#1605' '#1603#1588#1608#1585
        end
        object dblcntry2: TDBLookupComboBox
          Left = 214
          Top = 4
          Width = 118
          Height = 24
          BiDiMode = bdRightToLeft
          KeyField = 'Country_code'
          ListField = 'Country_name'
          ListSource = dscntry
          ParentBiDiMode = False
          TabOrder = 0
          OnCloseUp = dblcntry2CloseUp
        end
      end
      object paprovince2: TPanel
        Left = 0
        Top = 257
        Width = 425
        Height = 70
        Align = alBottom
        TabOrder = 1
        object lbname2: TLabel
          Left = 152
          Top = 9
          Width = 59
          Height = 16
          Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606' '
        end
        object lbCode2: TLabel
          Left = 329
          Top = 9
          Width = 69
          Height = 16
          Caption = #1603#1583' '#1575#1587#1578#1575#1606'    '
        end
        object edName2: TEdit
          Left = 10
          Top = 6
          Width = 120
          Height = 24
          BiDiMode = bdRightToLeft
          MaxLength = 40
          ParentBiDiMode = False
          TabOrder = 1
          OnChange = edName2Change
        end
        object edcode2: TEdit
          Left = 246
          Top = 7
          Width = 85
          Height = 24
          BiDiMode = bdRightToLeft
          MaxLength = 4
          ParentBiDiMode = False
          TabOrder = 0
          OnChange = edcode2Change
          OnKeyPress = edcode2KeyPress
        end
        object btCa2: TButton
          Left = 86
          Top = 37
          Width = 75
          Height = 25
          Caption = #1604#1594#1608
          TabOrder = 2
          OnClick = btCa2Click
        end
        object btOk2: TButton
          Left = 8
          Top = 37
          Width = 75
          Height = 25
          Caption = #1578#1575#1610#1610#1583
          TabOrder = 3
          OnClick = btOk2Click
        end
      end
      object dbgprovince: TDBGrid
        Left = 0
        Top = 33
        Width = 425
        Height = 224
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = 16771320
        DataSource = dsprovince
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = dbgprovinceColEnter
        OnEnter = dbgprovinceEnter
        OnKeyPress = dbgprovinceKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'country_code'
            Title.Caption = #1603#1583' '#1603#1588#1608#1585
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'province_code'
            Title.Caption = #1603#1583' '#1575#1587#1578#1575#1606' '
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'province_name'
            Title.Caption = #1606#1575#1605' '#1575#1587#1578#1575#1606
            Width = 242
            Visible = True
          end>
      end
    end
    object tscntry: TTabSheet
      Caption = '   '#1603#1588#1608#1585'   '
      ImageIndex = 4
      TabVisible = False
      OnHide = tscntryHide
      OnShow = tscntryShow
      object pacntry1: TPanel
        Left = 0
        Top = 233
        Width = 425
        Height = 94
        Align = alBottom
        TabOrder = 1
        object lbname1: TLabel
          Left = 121
          Top = 8
          Width = 75
          Height = 16
          Caption = '    '#1606#1575#1605' '#1603#1588#1608#1585' '
        end
        object lbCode1: TLabel
          Left = 342
          Top = 8
          Width = 53
          Height = 16
          Caption = #1603#1583' '#1603#1588#1608#1585
        end
        object lbdegree1: TLabel
          Left = 339
          Top = 33
          Width = 41
          Height = 16
          Caption = #1583#1585#1580#1607'   '
        end
        object lbbadw1: TLabel
          Left = 129
          Top = 36
          Width = 110
          Height = 16
          Caption = #1583#1585#1580#1607' '#1576#1583#1610' '#1570#1576' '#1608' '#1607#1608#1575
        end
        object edcode1: TEdit
          Left = 253
          Top = 4
          Width = 88
          Height = 24
          BiDiMode = bdRightToLeft
          MaxLength = 8
          ParentBiDiMode = False
          TabOrder = 0
          OnChange = edcode1Change
          OnKeyPress = edcode1KeyPress
        end
        object edname1: TEdit
          Left = 7
          Top = 4
          Width = 109
          Height = 24
          MaxLength = 40
          TabOrder = 1
          OnChange = edname1Change
        end
        object edbadw1: TEdit
          Left = 6
          Top = 31
          Width = 110
          Height = 24
          MaxLength = 4
          TabOrder = 3
          OnKeyPress = edbadw1KeyPress
        end
        object eddegree1: TEdit
          Left = 254
          Top = 31
          Width = 87
          Height = 24
          MaxLength = 4
          TabOrder = 2
          OnKeyPress = eddegree1KeyPress
        end
        object btCa1: TButton
          Left = 88
          Top = 64
          Width = 75
          Height = 25
          Caption = #1604#1594#1608
          TabOrder = 4
          OnClick = btCa1Click
        end
        object btOk1: TButton
          Left = 6
          Top = 64
          Width = 75
          Height = 25
          Caption = #1578#1575#1610#1610#1583
          TabOrder = 5
          OnClick = btOk1Click
        end
      end
      object dbgcntry: TDBGrid
        Left = 0
        Top = 0
        Width = 425
        Height = 233
        Align = alClient
        BiDiMode = bdRightToLeft
        Color = 16771320
        DataSource = dscntry
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentBiDiMode = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = dbgcntryColEnter
        OnEnter = dbgcntryEnter
        OnKeyPress = dbgcntryKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Country_code'
            Title.Alignment = taCenter
            Title.Caption = '   '#1603#1583' '#1603#1588#1608#1585'     '
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Country_name'
            Title.Alignment = taCenter
            Title.Caption = '  '#1606#1600#1600#1600#1575#1605' '#1603#1600#1588#1600#1608#1585'  '
            Width = 170
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'degree'
            Title.Caption = '  '#1583#1585#1580#1607
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bad_Weather_Degree'
            Title.Caption = '  '#1583#1585#1580#1607' '#1576#1583#1610' '#1570#1576' '#1608' '#1607#1608#1575
            Width = 123
            Visible = True
          end>
      end
    end
  end
  object fcButtonGroup1: TfcButtonGroup
    Left = 0
    Top = 0
    Width = 433
    Height = 32
    Align = alTop
    AutoBold = False
    BevelOuter = bvNone
    ButtonClassName = 'TfcImageBtn'
    ClickStyle = bcsRadioGroup
    ControlSpacing = 1
    Columns = 1
    Layout = loHorizontal
    MaxControlSize = 0
    TabOrder = 0
    Transparent = False
    OnChange = fcButtonGroup1Change
    object ft1: TfcImageBtn
      Left = 0
      Top = 0
      Width = 86
      Height = 32
      Caption = #1583#1607#1587#1578#1575#1606
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
      OnClick = ft1Click
      RegionData = {
        3000000020000000010000000100000010000000010000000000000056000000
        2000000001000000000000005600000020000000}
      DownRegionData = {00000000}
    end
    object ft2: TfcImageBtn
      Left = 87
      Top = 0
      Width = 86
      Height = 32
      Caption = #1576#1582#1588
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = ft1
      ExtImageDown = ft1
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
      OnClick = ft2Click
      RegionData = {
        3000000020000000010000000100000010000000010000000000000056000000
        2000000001000000000000005600000020000000}
      DownRegionData = {00000000}
    end
    object ft3: TfcImageBtn
      Left = 174
      Top = 0
      Width = 86
      Height = 32
      Caption = #1588#1607#1585#1587#1578#1575#1606
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = ft1
      ExtImageDown = ft1
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
      OnClick = ft3Click
      RegionData = {
        3000000020000000010000000100000010000000010000000000000056000000
        2000000001000000000000005600000020000000}
      DownRegionData = {00000000}
    end
    object ft4: TfcImageBtn
      Left = 261
      Top = 0
      Width = 86
      Height = 32
      Caption = #1575#1587#1578#1575#1606
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = ft1
      ExtImageDown = ft1
      GroupIndex = 1
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 3
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      OnClick = ft4Click
      RegionData = {
        3000000020000000010000000100000010000000010000000000000056000000
        2000000001000000000000005600000020000000}
      DownRegionData = {00000000}
    end
    object ft5: TfcImageBtn
      Left = 348
      Top = 0
      Width = 85
      Height = 32
      Caption = #1603#1588#1608#1585
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = ft1
      ExtImageDown = ft1
      GroupIndex = 1
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 4
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      OnClick = ft5Click
      RegionData = {00000000}
      DownRegionData = {
        3000000020000000010000000100000010000000010000000000000055000000
        2000000001000000000000005500000020000000}
    end
  end
  object quIncntry: TADOQuery
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
      end
      item
        Name = 'p3'
        Size = -1
        Value = Null
      end
      item
        Name = 'p4'
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'Insert into Country (country_code, country_name, degree, bad_wea' +
        'ther_degree)'
      'values(:p1, :p2, :p3, :p4)')
    Left = 13
    Top = 295
  end
  object quInprovince: TADOQuery
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
        Size = 40
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into province (country_code, province_code, province_name' +
        ')'
      'values(:p1,:p2,:p3)'
      '')
    Left = 112
    Top = 207
  end
  object quIncnty: TADOQuery
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
        Size = 40
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
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert into county (country_code, province_code, county_code, co' +
        'unty_name,m_pay,grade,grp,j_pay)'
      'values(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)'
      '')
    Left = 46
    Top = 121
  end
  object dscntry: TDataSource
    DataSet = DabData.quCountry
    Left = 16
    Top = 322
  end
  object dsprovince: TDataSource
    DataSet = DabData.quprovince1
    Left = 124
    Top = 324
  end
  object dscnty: TDataSource
    DataSet = DabData.qucounty1
    Left = 241
    Top = 318
  end
  object quUpcntry: TADOQuery
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
        Size = -1
        Value = Null
      end
      item
        Name = 'p4'
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Update Country'
      'set'
      'country_name = :p1,'
      'degree = :p2,'
      'bad_weather_degree = :p3'
      'where country_code = :p4')
    Left = 40
    Top = 294
  end
  object quUpprovince: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
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
      'Update Province'
      'Set'
      'province_name =:p1'
      'Where'
      'country_code=:p2'
      'and  province_code = :p3')
    Left = 140
    Top = 223
  end
  object quUpcnty: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
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
      end>
    Prepared = True
    SQL.Strings = (
      'Update county'
      'Set'
      'county_name=:p1,'
      'M_pay=:p2,'
      'grade=:p3,'
      'grp=:p4,'
      'j_pay=:p5'
      'Where'
      'country_code = :p6 and'
      'province_code=:p7  and'
      'county_code=:p8')
    Left = 137
    Top = 113
  end
  object quDelcntry: TADOQuery
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
      'Delete From Country Where '
      'Country_Code=:p1')
    Left = 67
    Top = 294
  end
  object quDelprovince: TADOQuery
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
        Size = 40
        Value = Null
      end>
    SQL.Strings = (
      'Delete From Province Where '
      'country_code=:p1'
      'and'
      'province_code =:p2'
      'and'
      'province_name = :p3'
      '')
    Left = 177
    Top = 216
  end
  object quDelcnty: TADOQuery
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
    Prepared = True
    SQL.Strings = (
      'Delete From county  Where '
      'country_code = :p1 and'
      'province_code = :p2 and'
      'county_code = :p3')
    Left = 141
    Top = 162
  end
  object qutemp: TADOQuery
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
    Prepared = True
    SQL.Strings = (
      'select  province_code, province_name  from province '
      'where '
      'country_code = :p1')
    Left = 315
    Top = 153
    object qutempprovince_code: TSmallintField
      FieldName = 'province_code'
    end
    object qutempprovince_name: TStringField
      FieldName = 'province_name'
      Size = 40
    end
  end
  object dstemp: TDataSource
    DataSet = qutemp
    Left = 303
    Top = 144
  end
  object quinsection: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
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
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into section (country_code, province_code, county_code, s' +
        'ection_code,section_name, m_pay,grade, grp,j_pay) '
      'values (:p1, :p2, :p3, :p4, :p5, :p6, :p7,:p8,:p9)')
    Left = 266
    Top = 221
  end
  object quupsection: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'update section'
      'set'
      'section_name = :p1 ,'
      'm_pay=:p2,'
      'grade = :p3 ,'
      'grp = :p4,'
      'j_pay=:p5'
      'where'
      'country_code = :p6  and'
      'province_code = :p7  and'
      'county_code = :p8  and'
      'section_code = :p9'
      '')
    Left = 348
    Top = 245
  end
  object qudelsection: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'delete from section'
      'where '
      'country_code = :p1  and'
      'province_code = :p2 and'
      'county_code = :p3  and'
      'section_code = :p4')
    Left = 386
    Top = 214
  end
  object dssection: TDataSource
    DataSet = DabData.qusection1
    Left = 339
    Top = 321
  end
  object quinvillage: TADOQuery
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into village (country_code, province_code, county_code, s' +
        'ection_code, village_code, village_name,m_pay,grade,grp,j_pay)'
      'values (:p1, :p2, :p3, :p4, :p5, :p6,:p7,:p8,:p9,:p10)')
    Left = 443
    Top = 298
  end
  object quupvillage: TADOQuery
    AutoCalcFields = False
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'update village'
      'set '
      'village_name = :p1,'
      'm_pay=:p2,'
      'grade=:p3,'
      'grp=:p4,'
      'j_pay=:p5'
      'where'
      'country_code = :p6  and '
      'province_code = :p7 and '
      'county_code = :p8  and '
      'section_code = :p9  and '
      'village_code = :p10')
    Left = 470
    Top = 297
  end
  object qudelvillage: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Size = -1
        Value = Null
      end
      item
        Name = 'p2'
        Size = -1
        Value = Null
      end
      item
        Name = 'p3'
        Size = -1
        Value = Null
      end
      item
        Name = 'p4'
        Size = -1
        Value = Null
      end
      item
        Name = 'p5'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'delete from village'
      'where'
      'country_code = :p1'
      'and province_code = :p2'
      'and county_code = :p3'
      'and section_code = :p4'
      'and village_code = :p5')
    Left = 497
    Top = 299
  end
  object dsvillage: TDataSource
    DataSet = DabData.quvillage1
    Left = 457
    Top = 326
  end
  object qutemp1: TADOQuery
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
    Prepared = True
    SQL.Strings = (
      'select county_code, county_name from county'
      'where  country_code = :p1 and  '
      'province_code = :p2')
    Left = 346
    Top = 128
  end
  object dstemp1: TDataSource
    DataSet = qutemp1
    Left = 381
    Top = 160
  end
  object dstemp2: TDataSource
    DataSet = qutemp2
    Left = 468
    Top = 268
  end
  object qutemp2: TADOQuery
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
      'select section_code, section_name from section'
      'where'
      'country_code = :p1  and'
      'province_code = :p2  and'
      'county_code = :p3')
    Left = 442
    Top = 267
    object qutemp2section_code: TSmallintField
      FieldName = 'section_code'
    end
    object qutemp2section_name: TStringField
      FieldName = 'section_name'
      Size = 40
    end
  end
  object quvaldel: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    Left = 223
    Top = 161
  end
  object quvaldelcntry: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      
        'select Emp.birth_loc_code, Emp.cer_loc_code, Emp.last_school_loc' +
        '_code,Emp_Work.loc_code'
      'from Emp, Emp_Work'
      'where'
      'Emp.emp_no = Emp_Work.emp_no and'
      'SubString(Emp.birth_loc_code,1,3 ) = :p1 or'
      'SubString(Emp.cer_loc_code,1,3 ) = :p2 or'
      'SubString(Emp.last_school_loc_code,1,3) = :p3 or'
      'SubString(Emp_Work.loc_code,1,3) = :p4'
      ''
      ' '
      ' '
      ' ')
    Left = 258
    Top = 167
  end
end
