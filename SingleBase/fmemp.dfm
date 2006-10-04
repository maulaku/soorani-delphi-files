object Emp: TEmp
  Left = 1
  Top = 69
  HelpContext = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '            '#1575#1591#1604#1575#1593#1600#1600#1600#1600#1600#1600#1575#1578' '#1662#1585#1587#1600#1600#1600#1600#1600#1606#1604#1610'                         '
  ClientHeight = 437
  ClientWidth = 782
  Color = clBtnFace
  Constraints.MaxHeight = 471
  Constraints.MaxWidth = 791
  Constraints.MinHeight = 471
  Constraints.MinWidth = 790
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 437
    Align = alLeft
    TabOrder = 0
    object pgemp: TPageControl
      Left = 1
      Top = 33
      Width = 487
      Height = 403
      ActivePage = tspersonal
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      object tsedu: TTabSheet
        Caption = ' '#1583#1608#1585#1607' '#1607#1575#1610' '#1570#1605#1608#1586#1588#1610' '#1605#1587#1578#1582#1583#1605'  '
        TabVisible = False
        object dbgedu: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsemp_edu
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'row_no'
              Title.Caption = #1585#1583#1610#1601
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'certificate_title'
              Title.Caption = #1593#1606#1608#1575#1606' '#1711#1608#1575#1607#1610#1606#1575#1605#1607
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'period_title'
              Title.Caption = #1593#1606#1608#1575#1606' '#1583#1608#1585#1607
              Width = 197
              Visible = True
            end>
        end
      end
      object tsac_edu: TTabSheet
        Caption = '  '#1605#1583#1575#1585#1603' '#1578#1581#1589#1610#1604#1610' '#1605#1587#1578#1582#1583#1605'  '
        ImageIndex = 1
        TabVisible = False
        object dbgac_edu: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsac_edu
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'row_no'
              Title.Caption = #1585#1583#1610#1601
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'field_name'
              Title.Caption = #1606#1575#1605' '#1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
              Width = 166
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descr'
              Title.Caption = #1605#1602#1591#1593' '#1578#1581#1589#1610#1604#1610
              Width = 144
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'graduation_date'
              Title.Caption = #1578#1575#1585#1610#1582' '#1575#1582#1584' '#1605#1583#1585#1603
              Width = 93
              Visible = True
            end>
        end
      end
      object tswork: TTabSheet
        Caption = '   '#1587#1575#1576#1602#1607' '#1603#1575#1585#1610' '#1605#1587#1578#1582#1583#1605'   '
        ImageIndex = 2
        TabVisible = False
        object dbgwork: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsemp_work
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'row_no'
              Title.Caption = #1585#1583#1610#1601
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'org_code'
              Title.Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'start_date'
              Title.Caption = #1575#1586' '#1578#1575#1585#1610#1582
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_date'
              Title.Caption = #1578#1575' '#1578#1575#1585#1610#1582
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wrkloctype'
              Title.Caption = #1606#1608#1593' '#1605#1581#1604' '#1582#1583#1605#1578
              Width = 103
              Visible = True
            end>
        end
      end
      object tscontact: TTabSheet
        Caption = '   '#1606#1581#1608#1607' '#1578#1605#1575#1587'  '
        ImageIndex = 3
        TabVisible = False
        object dbgcont: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dscontact
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'seq'
              Title.Caption = #1585#1583#1610#1601
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_no'
              Title.Caption = #1589#1606#1583#1608#1602' '#1662#1587#1578#1610
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tel_no'
              Title.Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mobile_no'
              Title.Caption = #1588#1605#1575#1585#1607' '#1605#1608#1576#1575#1610#1604
              Width = 127
              Visible = True
            end>
        end
      end
      object tslang: TTabSheet
        Caption = '  '#1586#1576#1575#1606' '#1582#1575#1585#1580#1610' '#1605#1587#1578#1582#1583#1605' '
        ImageIndex = 4
        TabVisible = False
        object dbglan: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsemp_lan
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'lg_name'
              Title.Caption = #1606#1575#1605' '#1586#1576#1575#1606
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'readstate'
              Title.Caption = #1578#1587#1604#1591' '#1582#1608#1575#1606#1583#1606
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'writestate'
              Title.Caption = #1578#1587#1604#1591' '#1606#1608#1588#1578#1606
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'talkstate'
              Title.Caption = #1578#1587#1604#1591' '#1589#1581#1576#1578
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'empstate'
              Title.Caption = #1608#1590#1593#1610#1578
              Width = 81
              Visible = True
            end>
        end
      end
      object tsesp: TTabSheet
        Caption = '  '#1588#1585#1591' '#1608#1610#1688#1607' '#1605#1587#1578#1582#1583#1605'  '
        ImageIndex = 5
        TabVisible = False
        object dbgesp: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsemp_esp
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'condtype'
              Title.Caption = #1606#1608#1593' '#1588#1585#1591' '#1608#1610#1688#1607
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'empstate'
              Title.Caption = #1608#1590#1593#1610#1578
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'familytype'
              Title.Caption = #1606#1587#1576#1578' '#1576#1575' '#1588#1607#1610#1583
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'confirmer'
              Title.Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607
              Width = 84
              Visible = True
            end>
        end
      end
      object tspens: TTabSheet
        Caption = ' '#1575#1601#1585#1575#1583' '#1578#1581#1578' '#1578#1603#1601#1604' '#1605#1587#1578#1582#1583#1605'  '
        ImageIndex = 6
        TabVisible = False
        object dbgPensioner: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 410
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsPensioner
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'row_no'
              Title.Caption = ' '#1585#1583#1610#1601
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pensioner_name'
              Title.Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
              Width = 188
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'empfamiliarity'
              Title.Caption = #1606#1587#1576#1578' '#1576#1575' '#1603#1575#1585#1605#1606#1583
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'support'
              Title.Caption = #1608#1590#1593#1610#1578' '#1578#1603#1601#1604
              Width = 88
              Visible = True
            end>
        end
      end
      object tspersonal: TTabSheet
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1588#1582#1589#1610' '#1605#1587#1578#1582#1583#1605
        ImageIndex = 7
        TabVisible = False
        OnShow = tspersonalShow
        object lbdegree: TLabel
          Left = 371
          Top = 219
          Width = 88
          Height = 16
          Caption = #1583#1585#1580#1607' '#1578#1581#1589#1610#1604#1610
        end
        object lbisar: TLabel
          Left = 371
          Top = 311
          Width = 99
          Height = 16
          Caption = #1608#1590#1593#1610#1578' '#1575#1610#1579#1575#1585#1711#1585#1610
        end
        object lbdiploma: TLabel
          Left = 121
          Top = 220
          Width = 130
          Height = 16
          Caption = #1570#1582#1585#1610#1606' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
        end
        object lbemptype: TLabel
          Left = 121
          Top = 311
          Width = 81
          Height = 16
          Caption = #1606#1608#1593' '#1575#1587#1578#1582#1583#1575#1605
        end
        object lbsoldery: TLabel
          Left = 371
          Top = 266
          Width = 120
          Height = 16
          Caption = #1608#1590#1593#1610#1578' '#1606#1592#1575#1605' '#1608#1592#1610#1601#1607
        end
        object lbtitle: TLabel
          Left = 121
          Top = 266
          Width = 26
          Height = 16
          Caption = #1711#1585#1608#1607
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 128
          Width = 475
          Height = 86
          TabOrder = 4
          object lbchild: TLabel
            Left = 62
            Top = 40
            Width = 81
            Height = 16
            Caption = #1578#1593#1583#1575#1583' '#1601#1585#1586#1606#1583#1575#1606
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 322
            Top = 15
            Width = 142
            Height = 57
            BiDiMode = bdRightToLeft
            Caption = '  '#1580#1606#1587#1610#1578'  '
            Columns = 2
            DataField = 'sex'
            DataSource = dsemp
            Enabled = False
            Items.Strings = (
              #1605#1585#1583
              #1586#1606)
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 0
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 140
            Top = 15
            Width = 163
            Height = 57
            BiDiMode = bdRightToLeft
            Caption = '  '#1608#1590#1593#1610#1578' '#1578#1571#1607#1604'   '
            Columns = 2
            DataField = 'is_married'
            DataSource = dsemp
            Enabled = False
            Items.Strings = (
              #1605#1580#1585#1583
              #1605#1578#1571#1607#1604)
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 1
            Values.Strings = (
              '1'
              '2')
          end
          object dbechild: TDBEdit
            Left = 12
            Top = 37
            Width = 47
            Height = 24
            BiDiMode = bdRightToLeft
            DataField = 'num_of_child'
            DataSource = dsemp
            Enabled = False
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 2
          end
        end
        object dbedegree: TDBEdit
          Left = 247
          Top = 217
          Width = 121
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'descr_1'
          DataSource = dsemp
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbeisar: TDBEdit
          Left = 247
          Top = 307
          Width = 121
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'isarstate'
          DataSource = dsemp
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbediploma: TDBEdit
          Left = 2
          Top = 217
          Width = 113
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'field_name'
          DataSource = dsemp
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 2
        end
        object GroupBox1: TGroupBox
          Left = -9
          Top = 3
          Width = 486
          Height = 131
          TabOrder = 3
          object lbcert: TLabel
            Left = 379
            Top = 20
            Width = 112
            Height = 16
            Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
          end
          object lbbirth: TLabel
            Left = 379
            Top = 60
            Width = 61
            Height = 16
            Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
          end
          object lbnation: TLabel
            Left = 379
            Top = 98
            Width = 48
            Height = 16
            Caption = #1603#1583' '#1605#1604#1610
          end
          object DBImage1: TDBImage
            Left = 11
            Top = 9
            Width = 125
            Height = 120
            Hint = #1576#1585#1575#1610' '#1583#1585#1580' '#1593#1603#1587'  '#1604#1591#1601#1575' '#1583#1585' '#1605#1581#1604' '#1583#1585#1580' '#1593#1603#1587' '#1583#1608#1576#1575#1585' '#1603#1604#1610#1603' '#1603#1606#1610#1583
            DataField = 'emp_photo'
            DataSource = dsemp
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
          end
          object dbecert: TDBEdit
            Left = 230
            Top = 16
            Width = 139
            Height = 24
            DataField = 'birth_certificate_no'
            DataSource = dsemp
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbebirth: TDBEdit
            Left = 229
            Top = 55
            Width = 140
            Height = 24
            BiDiMode = bdRightToLeft
            DataField = 'birth_date'
            DataSource = dsemp
            Enabled = False
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 1
          end
          object dbenational: TDBEdit
            Left = 230
            Top = 98
            Width = 139
            Height = 24
            DataField = 'national_card_no'
            DataSource = dsemp
            Enabled = False
            ReadOnly = True
            TabOrder = 3
          end
        end
        object dbeemptype: TDBEdit
          Left = 3
          Top = 307
          Width = 112
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'emptype'
          DataSource = dsemp
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 5
        end
        object dbesoldery: TDBEdit
          Left = 247
          Top = 262
          Width = 121
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'soldsatate'
          DataSource = dsemp
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 6
        end
        object dbetitle: TDBEdit
          Left = 72
          Top = 262
          Width = 43
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'job_lev'
          DataSource = dsemp
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object tsjob: TTabSheet
        Caption = #1583#1585#1589#1583#1607#1575#1610' '#1588#1594#1604#1610
        ImageIndex = 8
        TabVisible = False
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 479
          Height = 346
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = 16771320
          DataSource = dsper
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'type'
              Title.Caption = #1606#1608#1593' '#1583#1585#1589#1583
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'per_am'
              Title.Caption = #1605#1610#1586#1575#1606' '#1583#1585#1589#1583
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'per_desc'
              Title.Caption = #1605#1604#1575#1581#1592#1575#1578
              Width = 298
              Visible = True
            end>
        end
      end
    end
    object fcButtonGroup4: TfcButtonGroup
      Left = 1
      Top = 1
      Width = 487
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
      TabOrder = 1
      Transparent = False
      object Ft1: TfcImageBtn
        Left = 0
        Top = 0
        Width = 487
        Height = 32
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1588#1582#1589#1610' '#1605#1587#1578#1582#1583#1605
        Color = 12615808
        DitherColor = clNavy
        DitherStyle = dsFill
        Down = True
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
        OnClick = Ft1Click
        RegionData = {00000000}
        DownRegionData = {
          30000000200000000100000001000000100000000500000000000000E7010000
          200000000500000000000000E701000020000000}
      end
    end
  end
  object Panel2: TPanel
    Left = 479
    Top = 0
    Width = 303
    Height = 437
    Align = alRight
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 301
      Height = 70
      Align = alTop
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object rbid: TRadioButton
        Left = 186
        Top = 24
        Width = 105
        Height = 17
        Alignment = taLeftJustify
        Caption = #1588#1605#1575#1585#1607' '#1605#1587#1578#1582#1583#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbidClick
      end
      object rbname: TRadioButton
        Left = 122
        Top = 24
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Caption = #1606#1575#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbnameClick
      end
      object rbfamily: TRadioButton
        Left = 10
        Top = 24
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = rbfamilyClick
      end
      object Edit1: TEdit
        Left = 1
        Top = 43
        Width = 297
        Height = 24
        BiDiMode = bdRightToLeft
        Color = 16635581
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 297
        Height = 21
        Align = alTop
        BevelInner = bvLowered
        Caption = #1580#1587#1578#1580#1608
        TabOrder = 4
      end
    end
    object dbgEmp: TDBGrid
      Left = 1
      Top = 71
      Width = 301
      Height = 365
      Align = alClient
      BiDiMode = bdRightToLeft
      Color = 16771320
      DataSource = dsemp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = dbgEmpKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'emp_code'
          Title.Caption = #1588#1605#1575#1585#1607' '#1605#1587#1578#1582#1583#1605#1610
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = #1606#1575#1605
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'family'
          Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end>
    end
  end
  object dsemp: TDataSource
    AutoEdit = False
    DataSet = DabData.quemp
    Left = 747
    Top = 440
  end
  object dsPensioner: TDataSource
    Left = 719
    Top = 440
  end
  object dsemp_esp: TDataSource
    Left = 693
    Top = 440
  end
  object dsemp_lan: TDataSource
    Left = 666
    Top = 440
  end
  object dscontact: TDataSource
    Left = 638
    Top = 440
  end
  object dsemp_work: TDataSource
    Left = 611
    Top = 440
  end
  object dsac_edu: TDataSource
    DataSet = DabData.quemp
    Left = 577
    Top = 336
  end
  object dsemp_edu: TDataSource
    Left = 558
    Top = 440
  end
  object quempdel: TADOQuery
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
      'delete from Emp'
      'where'
      'emp_no = :p1')
    Left = 746
    Top = 412
  end
  object qupendel: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'delete from Pensioner'
      'Where'
      'emp_no = :p1 and'
      'row_no = :p2')
    Left = 719
    Top = 411
  end
  object qudelesp: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'delete from Emp_Esp'
      'Where'
      'emp_no = :p1 and'
      'cond_type = :p2')
    Left = 692
    Top = 412
  end
  object qudellan: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'delete from Emp_Lan'
      'where'
      'emp_no = :p1 and'
      'lang_code = :p2')
    Left = 667
    Top = 412
  end
  object qucontdel: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'delete from Contact '
      'where'
      'emp_no = :p1 and'
      'seq = :p2')
    Left = 640
    Top = 411
  end
  object qudelwork: TADOQuery
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
      end>
    SQL.Strings = (
      'delete from Emp_Work'
      'where'
      'emp_no = :p1 and'
      'row_no = :p2')
    Left = 612
    Top = 411
  end
  object qudeldeg: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'Delete from Emp_Ac_Edu'
      'where'
      'emp_no = :p1 and'
      'row_no = :p2')
    Left = 584
    Top = 413
  end
  object qudeledu: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'Delete from Emp_Edu '
      'Where'
      'emp_no = :p1 and'
      'row_no = :p2'
      ''
      '')
    Left = 558
    Top = 414
  end
  object dsper: TDataSource
    Left = 530
    Top = 440
  end
  object qudelper: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
      'Delete from emp_per where emp_no=:p1'
      'and per_type=:p2')
    Left = 530
    Top = 408
  end
  object qupost: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
      'update post'
      'set post_state=1'
      'where pt_org_code=:p2'
      'and pt_code=:p3')
    Left = 605
    Top = 176
  end
end
