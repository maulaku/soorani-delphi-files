object EmpIn: TEmpIn
  Left = 207
  Top = 83
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '        '#1575#1591#1604#1575#1593#1575#1578' '#1588#1582#1589#1610' '#1605#1587#1578#1582#1583#1605' '
  ClientHeight = 482
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton3: TSpeedButton
    Left = 468
    Top = 280
    Width = 23
    Height = 22
  end
  object gbinsert6: TGroupBox
    Left = 0
    Top = 334
    Width = 762
    Height = 116
    TabOrder = 5
    object lbcomment: TLabel
      Left = 632
      Top = 64
      Width = 56
      Height = 16
      Caption = #1578#1608#1590#1610#1581#1575#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbsit: TLabel
      Left = 203
      Top = 39
      Width = 43
      Height = 16
      Caption = #1608#1590#1593#1610#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbrule: TLabel
      Left = 632
      Top = 38
      Width = 143
      Height = 16
      Caption = #1606#1608#1593' '#1605#1602#1585#1585#1575#1578' '#1575#1587#1578#1582#1583#1575#1605#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbtype: TLabel
      Left = 414
      Top = 38
      Width = 81
      Height = 16
      Caption = #1606#1608#1593' '#1575#1587#1578#1582#1583#1575#1605
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbwrite: TLabel
      Left = 632
      Top = 11
      Width = 122
      Height = 16
      Caption = #1606#1608#1588#1578#1607' '#1607#1575' '#1608' '#1578#1575#1604#1610#1601#1575#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edwrite: TRSqlEdit
      Left = 29
      Top = 9
      Width = 598
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 500
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftNonRequired
    end
    object cbrule: TRSqlComboBox
      Left = 488
      Top = 36
      Width = 139
      Height = 24
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        #1575#1587#1578#1582#1583#1575#1605' '#1603#1588#1608#1585#1610
        #1588#1585#1603#1578#1610
        #1602#1575#1606#1608#1606' '#1603#1575#1585
        #1587#1575#1610#1585)
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object cbtype: TRSqlComboBox
      Left = 247
      Top = 36
      Width = 163
      Height = 24
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        #1585#1587#1605#1610' '#1602#1591#1593#1610
        #1585#1587#1605#1610' '#1570#1586#1605#1575#1610#1588#1610
        #1602#1585#1575#1585#1583#1575#1583#1610
        #1591#1585#1581' '#1582#1583#1605#1578
        #1662#1610#1605#1575#1606#1610
        #1603#1575#1585' '#1585#1608#1586)
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object cbsit: TRSqlComboBox
      Left = 29
      Top = 36
      Width = 172
      Height = 24
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        #1588#1575#1594#1604
        #1605#1571#1605#1608#1585' '#1576#1575' '#1581#1601#1592' '#1662#1587#1578
        #1605#1571#1605#1608#1585' '#1576#1583#1608#1606' '#1581#1601#1592' '#1662#1587#1578
        #1575#1606#1578#1602#1575#1604' '#1610#1575#1601#1578#1607
        #1583#1585' '#1581#1575#1604' '#1578#1593#1604#1610#1602
        #1570#1605#1575#1583#1607' '#1576#1607' '#1582#1583#1605#1578
        #1583#1585' '#1581#1575#1604' '#1575#1606#1601#1589#1575#1604' '#1605#1608#1602#1578
        #1575#1606#1601#1589#1575#1604' '#1583#1575#1574#1605
        #1605#1587#1578#1593#1601#1610
        #1575#1582#1585#1575#1580#1610
        #1576#1575#1586' '#1606#1588#1587#1578#1607
        #1576#1575#1586' '#1582#1585#1610#1583' '#1588#1583
        #1605#1578#1608#1601#1610
        #1605#1585#1582#1589#1610' '#1576#1583#1608#1606' '#1581#1602#1608#1602
        #1576#1585#1603#1606#1575#1585' '#1575#1586' '#1582#1583#1605#1578
        #1576#1585#1603#1606#1575#1585' '#1575#1586' '#1582#1583#1605#1578' '#1570#1605#1608#1586#1588#1610)
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edcomment: TRSqlMemo
      Left = 28
      Top = 64
      Width = 599
      Height = 46
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'edcomment')
      MaxLength = 300
      ParentFont = False
      TabOrder = 4
      FieldType = ftNonRequired
      Provider = FormInitializer1
      MultiLine = True
    end
  end
  object gbinsert5: TGroupBox
    Left = 0
    Top = 250
    Width = 762
    Height = 87
    TabOrder = 4
    object lbdegree: TLabel
      Left = 630
      Top = 10
      Width = 88
      Height = 16
      Caption = #1583#1585#1580#1607' '#1578#1581#1589#1610#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblastdate: TLabel
      Left = 242
      Top = 59
      Width = 136
      Height = 16
      Caption = #1578#1575#1585#1610#1582' '#1575#1582#1584' '#1570#1582#1585#1610#1606' '#1605#1583#1585#1603
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbpost: TLabel
      Left = 630
      Top = 62
      Width = 119
      Height = 16
      Caption = #1606#1575#1605' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbeduloc: TLabel
      Left = 630
      Top = 36
      Width = 140
      Height = 16
      Caption = #1606#1575#1605' '#1570#1582#1585#1610#1606' '#1605#1581#1604' '#1578#1581#1589#1610#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbplace: TLabel
      Left = 242
      Top = 36
      Width = 217
      Height = 16
      Caption = #1605#1581#1604' '#1580#1594#1585#1575#1601#1610#1575#1610#1610' '#1570#1582#1585#1610#1606' '#1605#1581#1604' '#1578#1581#1589#1610#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblev: TLabel
      Left = 65
      Top = 60
      Width = 72
      Height = 16
      Caption = #1711#1585#1608#1607' '#1588#1594#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbtitle: TLabel
      Left = 242
      Top = 10
      Width = 130
      Height = 16
      Caption = #1593#1606#1608#1575#1606' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object melastdate: TRSqlMaskEdit
      Left = 146
      Top = 58
      Width = 88
      Height = 24
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 6
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edlastedu: TRSqlEdit
      Left = 448
      Top = 34
      Width = 180
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 40
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Text = 'edlastedu'
      OnChange = edlasteduChange
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edlev: TRSqlEdit
      Left = 31
      Top = 57
      Width = 26
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      Text = 'edlev'
      OnKeyPress = edlevKeyPress
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edlastloc: TRSqlEdit
      Left = 54
      Top = 33
      Width = 180
      Height = 24
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = 'edlastloc'
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object dblpost: TRSqlDbLookup
      Left = 384
      Top = 60
      Width = 244
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'pt_code'
      ListField = 'str'
      ListSource = dspost
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object dbltype: TRSqlDbLookup
      Left = 32
      Top = 8
      Width = 201
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'field_no'
      ListField = 'field_name'
      ListSource = dstype
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object spedu: TRSqlButton
      Left = 29
      Top = 35
      Width = 25
      Height = 21
      Hint = #1578#1593#1610#1610#1606' '#1605#1581#1604' '#1580#1594#1585#1575#1601#1610#1575#1610#1610
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = speduClick
      ButtonType = btNone
    end
    object dbdegree: TRSqlDbLookup
      Left = 448
      Top = 7
      Width = 179
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Code'
      ListField = 'Descr'
      ListSource = dsdegree
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
  end
  object gbinsert4: TGroupBox
    Left = 0
    Top = 191
    Width = 762
    Height = 62
    TabOrder = 3
    object lbsolder: TLabel
      Left = 631
      Top = 11
      Width = 120
      Height = 16
      Caption = #1608#1590#1593#1610#1578' '#1606#1592#1575#1605' '#1608#1592#1610#1601#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbimmunity: TLabel
      Left = 631
      Top = 36
      Width = 78
      Height = 16
      Caption = #1593#1604#1578' '#1605#1593#1575#1601#1610#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbhealth: TLabel
      Left = 397
      Top = 11
      Width = 100
      Height = 16
      Caption = #1608#1590#1593#1610#1578' '#1587#1604#1575#1605#1578#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbsold: TRSqlComboBox
      Left = 488
      Top = 9
      Width = 140
      Height = 24
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = cbsoldChange
      OnClick = cbsoldClick
      Items.Strings = (
        #1575#1606#1580#1575#1605' '#1583#1575#1583#1607
        #1605#1593#1575#1601' '#1605#1608#1602#1578
        #1605#1593#1575#1601' '#1583#1575#1574#1605
        #1605#1593#1575#1601' '#1582#1585#1610#1583' '#1582#1583#1605#1578
        #1576#1610' '#1606#1610#1575#1586' '#1575#1586' '#1582#1583#1605#1578)
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edimmun: TRSqlEdit
      Left = 172
      Top = 34
      Width = 456
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 200
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Text = 'edimmun'
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edhealth: TRSqlEdit
      Left = 31
      Top = 9
      Width = 361
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 200
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Text = 'edhealth'
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object CHBisar: TCheckBox
      Left = 31
      Top = 35
      Width = 119
      Height = 17
      Caption = #1608#1590#1593#1610#1578' '#1575#1610#1579#1575#1585#1711#1585#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object gbinsert3: TGroupBox
    Left = 0
    Top = 145
    Width = 762
    Height = 49
    TabOrder = 2
    object lbchild: TLabel
      Left = 442
      Top = 20
      Width = 67
      Height = 16
      Caption = #1578#1593#1583#1575#1583' '#1601#1585#1586#1606#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbreg: TLabel
      Left = 326
      Top = 20
      Width = 44
      Height = 16
      Caption = #160#1605#1584#1607#1576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbnation: TLabel
      Left = 167
      Top = 20
      Width = 33
      Height = 16
      Caption = #1605#1604#1610#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbreg: TRSqlComboBox
      Left = 218
      Top = 16
      Width = 107
      Height = 24
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        #1588#1610#1593#1607
        #1587#1606#1610
        #1605#1587#1610#1581#1610
        #1603#1604#1610#1605#1610
        #1586#1585#1578#1588#1578#1610)
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object rbmarried: TRadioGroup
      Left = 512
      Top = 7
      Width = 118
      Height = 36
      BiDiMode = bdRightToLeft
      Caption = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        #1605#1580#1585#1583
        #1605#1578#1575#1607#1604)
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = rbmarriedClick
    end
    object edchild: TRSqlEdit
      Left = 403
      Top = 16
      Width = 34
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      Text = 'edchild'
      OnExit = edchildExit
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object rbsex: TRadioGroup
      Left = 640
      Top = 7
      Width = 102
      Height = 36
      BiDiMode = bdRightToLeft
      Caption = ' '#1580#1606#1587#1610#1578' '
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        #1605#1585#1583
        #1586#1606)
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnClick = rbsexClick
    end
    object dblnation: TRSqlDbLookup
      Left = 31
      Top = 16
      Width = 129
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'country_code'
      ListField = 'country_name'
      ListSource = dscountry
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
  end
  object gbinsert2: TGroupBox
    Left = 0
    Top = 28
    Width = 762
    Height = 120
    TabOrder = 1
    object lbname: TLabel
      Left = 630
      Top = 15
      Width = 19
      Height = 16
      Caption = #1606#1575#1605
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbcert: TLabel
      Left = 344
      Top = 92
      Width = 112
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbloc: TLabel
      Left = 630
      Top = 66
      Width = 135
      Height = 16
      Caption = #1605#1581#1604' '#1589#1583#1608#1585' '#1588#1606#1575#1587#1606#1575#1605#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbfather: TLabel
      Left = 635
      Top = 91
      Width = 43
      Height = 16
      Caption = #1606#1575#1605' '#1662#1583#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbfamily: TLabel
      Left = 344
      Top = 15
      Width = 83
      Height = 16
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbncode: TLabel
      Left = 344
      Top = 66
      Width = 48
      Height = 16
      Caption = #1603#1583' '#1605#1604#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbbirthdate: TLabel
      Left = 344
      Top = 42
      Width = 61
      Height = 16
      Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbbirthloc: TLabel
      Left = 630
      Top = 42
      Width = 58
      Height = 16
      Caption = #1605#1581#1604' '#1578#1608#1604#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edfamily: TRSqlEdit
      Left = 152
      Top = 11
      Width = 185
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 40
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      Text = 'edfamily'
      FieldType = ftRequired
      Provider = FormInitializer1
    end
    object edfather: TRSqlEdit
      Left = 439
      Top = 87
      Width = 185
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      Text = 'edfather'
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edcode: TRSqlEdit
      Left = 216
      Top = 62
      Width = 121
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      Text = 'edcode'
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edname: TRSqlEdit
      Left = 439
      Top = 12
      Width = 185
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      Text = 'edname'
      FieldType = ftRequired
      Provider = FormInitializer1
    end
    object edcert: TRSqlEdit
      Left = 216
      Top = 87
      Width = 121
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      Text = 'edcert'
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object mebirth: TRSqlMaskEdit
      Left = 256
      Top = 37
      Width = 81
      Height = 24
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 3
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object Panel1: TPanel
      Left = 32
      Top = 7
      Width = 110
      Height = 111
      BevelInner = bvLowered
      BorderWidth = 1
      Caption = #1605#1581#1604' '#1583#1585#1580' '#1593#1603#1587
      TabOrder = 8
      object Image: TImage
        Left = 3
        Top = 3
        Width = 104
        Height = 105
        Hint = #1576#1585#1575#1610' '#1583#1585#1580' '#1593#1603#1587' '#1583#1603#1605#1607' '#1670#1662' '#1605#1575#1608#1587' '#1585#1575' '#1603#1604#1610#1603' '#1603#1606#1610#1583
        Align = alClient
        AutoSize = True
        Center = True
        ParentShowHint = False
        ShowHint = True
        OnClick = ImageClick
      end
    end
    object edbirth: TRSqlEdit
      Left = 463
      Top = 37
      Width = 161
      Height = 24
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edcer: TRSqlEdit
      Left = 463
      Top = 61
      Width = 161
      Height = 24
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object btbirth: TRSqlButton
      Left = 439
      Top = 40
      Width = 25
      Height = 21
      Hint = #1578#1593#1610#1610#1606' '#1605#1581#1604' '#1580#1594#1585#1575#1601#1610#1575#1610#1610
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btbirthClick
      ButtonType = btNone
    end
    object btcer: TRSqlButton
      Left = 439
      Top = 64
      Width = 25
      Height = 21
      Hint = #1578#1593#1610#1610#1606' '#1605#1581#1604' '#1580#1594#1585#1575#1601#1610#1575#1610#1610
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btcerClick
      ButtonType = btNone
    end
  end
  object GBinsert1: TGroupBox
    Left = 0
    Top = -5
    Width = 762
    Height = 36
    TabOrder = 0
    object lbno: TLabel
      Left = 629
      Top = 13
      Width = 115
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1605#1587#1578#1582#1583#1605#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lborg: TLabel
      Left = 438
      Top = 12
      Width = 53
      Height = 16
      Caption = #1587#1575#1586#1605#1575#1606' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edunit: TLabel
      Left = 187
      Top = 12
      Width = 95
      Height = 16
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblorg: TRSqlDbLookup
      Left = 272
      Top = 8
      Width = 160
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'org_code'
      ListField = 'org_name'
      ListSource = dsorg
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = dblorgClick
      OnCloseUp = dblorgCloseUp
      OnExit = dblorgExit
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object dblunit: TRSqlDbLookup
      Left = 4
      Top = 8
      Width = 179
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ut_code'
      ListField = 'ut_name'
      ListSource = dsunit
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = dblunitClick
      OnCloseUp = dblunitCloseUp
      OnExit = dblunitExit
      FieldType = ftNonRequired
      Provider = FormInitializer1
    end
    object edno: TRSqlEdit
      Left = 488
      Top = 9
      Width = 135
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      Text = 'edno'
      OnExit = ednoExit
      FieldType = ftRequired
      Provider = FormInitializer1
    end
  end
  object btca: TRSqlButton
    Left = 78
    Top = 454
    Width = 75
    Height = 25
    Caption = #1604#1594#1608
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btcaClick
    ButtonType = btCancel
  end
  object btok: TRSqlButton
    Left = 3
    Top = 454
    Width = 75
    Height = 25
    Caption = #1578#1575#1574#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btokClick
    ButtonType = btOk
  end
  object dscountry: TDataSource
    DataSet = qucountry
    Left = 14
    Top = 111
  end
  object dsorg: TDataSource
    DataSet = quorg
    Left = 64
    Top = 106
  end
  object dsunit: TDataSource
    DataSet = quunit
    Left = 29
    Top = 51
  end
  object dspost: TDataSource
    DataSet = qupost
    Left = 587
    Top = 449
  end
  object quorg: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select org_code, org_name  from Organization'
      'Order by org_code'
      ''
      '')
    Left = 92
    Top = 81
    object quorgorg_code: TIntegerField
      FieldName = 'org_code'
    end
    object quorgorg_name: TStringField
      FieldName = 'org_name'
      Size = 80
    end
  end
  object quunit: TADOQuery
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
      'select ut_code, ut_name from Org_Unit'
      'where ut_org_code = :p1'
      'Order By ut_code')
    Left = 11
    Top = 54
    object quunitut_code: TSmallintField
      FieldName = 'ut_code'
    end
    object quunitut_name: TStringField
      FieldName = 'ut_name'
      Size = 80
    end
  end
  object qucountry: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select country_code, country_name from country'
      'Order by country_code')
    Left = 8
    Top = 212
  end
  object qupost: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
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
      
        'select pt_code, rtrim(post_code) + '#39' __ '#39' + ltrim (post_name)  a' +
        's  str from Post'
      'where'
      'pt_org_code = :p1 and'
      'pt_ut_code = :p2 and'
      'post_state = 1'
      'Order by pt_code')
    Left = 616
    Top = 449
    object qupostpt_code: TIntegerField
      FieldName = 'pt_code'
    end
    object qupoststr: TStringField
      FieldName = 'str'
      ReadOnly = True
      Size = 68
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 90
    Top = 54
  end
  object quvalkey: TADOQuery
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
      'select * from Emp'
      'where '
      'emp_no = :p1')
    Left = 719
    Top = 60
    object quvalkeyemp_no: TStringField
      FieldName = 'emp_no'
      FixedChar = True
      Size = 10
    end
    object quvalkeyname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object quvalkeyfamily: TStringField
      FieldName = 'family'
      Size = 40
    end
    object quvalkeyfather_name: TStringField
      FieldName = 'father_name'
      Size = 30
    end
    object quvalkeybirth_certificate_no: TStringField
      FieldName = 'birth_certificate_no'
      Size = 15
    end
    object quvalkeybirth_date: TStringField
      FieldName = 'birth_date'
      FixedChar = True
      Size = 8
    end
    object quvalkeysex: TSmallintField
      FieldName = 'sex'
    end
    object quvalkeynationality_code: TSmallintField
      FieldName = 'nationality_code'
    end
    object quvalkeybirth_loc_code: TStringField
      FieldName = 'birth_loc_code'
      FixedChar = True
      Size = 14
    end
    object quvalkeycer_loc_code: TStringField
      FieldName = 'cer_loc_code'
      FixedChar = True
      Size = 14
    end
    object quvalkeynational_card_no: TStringField
      FieldName = 'national_card_no'
      FixedChar = True
      Size = 10
    end
    object quvalkeyis_married: TSmallintField
      FieldName = 'is_married'
    end
    object quvalkeynum_of_child: TSmallintField
      FieldName = 'num_of_child'
    end
    object quvalkeyreligion: TSmallintField
      FieldName = 'religion'
    end
    object quvalkeyhealth_state: TStringField
      FieldName = 'health_state'
      Size = 200
    end
    object quvalkeysoldiery: TSmallintField
      FieldName = 'soldiery'
    end
    object quvalkeyedu_degree: TSmallintField
      FieldName = 'edu_degree'
    end
    object quvalkeyimmunity_reason: TStringField
      FieldName = 'immunity_reason'
      Size = 200
    end
    object quvalkeylast_school_name: TStringField
      FieldName = 'last_school_name'
      Size = 40
    end
    object quvalkeylast_school_loc_code: TStringField
      FieldName = 'last_school_loc_code'
      FixedChar = True
      Size = 14
    end
    object quvalkeylast_diploma_date: TStringField
      FieldName = 'last_diploma_date'
      FixedChar = True
      Size = 8
    end
    object quvalkeywriting: TStringField
      FieldName = 'writing'
      Size = 500
    end
    object quvalkeyemp_type: TSmallintField
      FieldName = 'emp_type'
    end
    object quvalkeyorg_code: TIntegerField
      FieldName = 'org_code'
    end
    object quvalkeyunit_code: TSmallintField
      FieldName = 'unit_code'
    end
    object quvalkeyisargary_state: TSmallintField
      FieldName = 'isargary_state'
    end
    object quvalkeyemployed_emp_law: TSmallintField
      FieldName = 'employed_emp_law'
    end
    object quvalkeyemp_state: TSmallintField
      FieldName = 'emp_state'
    end
    object quvalkeycomment: TStringField
      FieldName = 'comment'
      Size = 300
    end
    object quvalkeyemp_photo: TBlobField
      FieldName = 'emp_photo'
    end
    object quvalkeydiploma_name: TStringField
      FieldName = 'diploma_name'
      Size = 50
    end
    object quvalkeypost_no: TIntegerField
      FieldName = 'post_no'
    end
    object quvalkeyjob_lev: TSmallintField
      FieldName = 'job_lev'
    end
  end
  object qucity: TADOQuery
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
      'select county_code,  county_name from county'
      'where'
      'country_code = :p1 and'
      'province_code = :p2 and'
      'county_code =  :p3'
      ''
      '')
    Left = 720
    Top = 27
    object qucitycounty_code: TSmallintField
      FieldName = 'county_code'
    end
    object qucitycounty_name: TStringField
      FieldName = 'county_name'
      Size = 40
    end
  end
  object quupdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftString
        NumericScale = 255
        Precision = 255
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p9'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p10'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p12'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p13'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p14'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'p15'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p16'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p17'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'p18'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p19'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p20'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p21'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end
      item
        Name = 'p22'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p23'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p24'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p25'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 300
        Value = Null
      end
      item
        Name = 'p26'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'p27'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p28'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p29'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'p30'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Update Emp'
      'Set'
      'name = :p1 ,'
      'family = :p2 ,'
      'father_name = :p3 ,'
      'birth_certificate_no = :p4 ,'
      'birth_date = :p5 ,'
      'sex = :p6 ,'
      'nationality_code = :p7 ,'
      'birth_loc_code = :p8 ,'
      'cer_loc_code = :p9 ,'
      'national_card_no = :p10 ,'
      'is_married =:p11 ,'
      'num_of_child =  :p12 ,'
      'religion = :p13 ,'
      'health_state = :p14 ,'
      'soldiery  = :p15 ,'
      'edu_degree = :p16 ,'
      'immunity_reason = :p17 ,'
      'last_school_name = :p18 ,'
      'last_school_loc_code =:p19 ,'
      'last_diploma_date = :p20 ,'
      'writing = :p21 ,'
      'emp_type = :p22 ,'
      'isargary_state = :p23 ,'
      'employed_emp_law =:p24 ,'
      'comment = :p25 ,'
      'emp_photo = :p26 ,'
      'diploma_name =:p27 ,'
      'job_lev = :p28,'
      'emp_code=:p29'
      'where'
      'emp_no = :p30'
      ' '
      ' ')
    Left = 725
    Top = 438
  end
  object quinsert: TADOQuery
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p12'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p13'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p14'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p15'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'p16'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p17'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p18'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'p19'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p20'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p21'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p22'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end
      item
        Name = 'p23'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p24'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p25'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p26'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p27'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p28'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p29'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 300
        Value = Null
      end
      item
        Name = 'p30'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'p31'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p32'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p33'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p34'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p35'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'p36'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Emp values(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,' +
        ':p11,:p12,:p13,:p14,:p15,:p16,:p17,:p18,:p19,:p20,:p21,:p22,:p23' +
        ',:p24,:p25,:p26,:p27,:p28,:p29, :p30, :p31, :p32, :p33,:p34,:p35' +
        ',:p36)')
    Left = 688
    Top = 432
  end
  object dstype: TDataSource
    DataSet = qutype
    Left = 304
    Top = 440
  end
  object qutype: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select * from field')
    Left = 336
    Top = 440
    object qutypefield_no: TSmallintField
      FieldName = 'field_no'
    end
    object qutypefield_name: TStringField
      FieldName = 'field_name'
      Size = 50
    end
  end
  object quuppost: TADOQuery
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
      'Update  post'
      'set  post_state=2'
      'where'
      'pt_org_code = :p1 and'
      'pt_ut_code = :p2  and'
      'pt_code=:p3')
    Left = 408
    Top = 456
  end
  object qudegree: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select * from Degree')
    Left = 376
    Top = 442
    object qudegreeCode: TIntegerField
      FieldName = 'Code'
    end
    object qudegreeDescr: TStringField
      FieldName = 'Descr'
      Size = 50
    end
  end
  object dsdegree: TDataSource
    DataSet = qudegree
    Left = 448
    Top = 442
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmNone
    SearchFocusables = False
    Left = 9
    Top = 65
  end
  object MSNPopUp1: TMSNPopUp
    Text = 'text'
    URL = 'http://www.url.com/'
    IconLeft = 8
    IconTop = 8
    Width = 148
    Height = 121
    GradientColor1 = 16764057
    GradientColor2 = clWhite
    ScrollSpeed = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HoverFont.Charset = DEFAULT_CHARSET
    HoverFont.Color = clBlue
    HoverFont.Height = -11
    HoverFont.Name = 'MS Sans Serif'
    HoverFont.Style = [fsUnderline]
    Title = 'title'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Options = [msnAutoOpenURL, msnCascadePopups, msnAllowScroll, msnAllowHyperlink]
    TextCursor = crDefault
    PopupMarge = 2
    PopupStartX = 16
    PopupStartY = 2
    DefaultMonitor = dmDesktop
    Left = 56
    Top = 52
  end
  object quemp: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  cast(emp_no  as int) as num  from emp'
      'order by num')
    Left = 160
    Top = 76
    object quempnum: TIntegerField
      FieldName = 'num'
      ReadOnly = True
    end
  end
  object quselemp: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select * from emp '
      'where emp_code=:p1')
    Left = 152
    Top = 100
    object quselempemp_code: TStringField
      FieldName = 'emp_code'
      FixedChar = True
    end
  end
  object qucomp: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select Emp_code from emp '
      'where emp_code=:p1')
    Left = 240
    Top = 448
  end
  object quiran: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select  * from country'
      'where  ltrim(rtrim(country_name))='#39#1575#1610#1585#1575#1606#39';'
      ' ')
    Left = 528
    Top = 456
    object quiranCountry_code: TSmallintField
      FieldName = 'Country_code'
    end
    object quiranCountry_name: TStringField
      FieldName = 'Country_name'
      Size = 40
    end
    object quirandegree: TStringField
      FieldName = 'degree'
      FixedChar = True
      Size = 10
    end
    object quiranBad_Weather_Degree: TStringField
      FieldName = 'Bad_Weather_Degree'
      FixedChar = True
      Size = 10
    end
  end
  object quus: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select Emp_code from emp '
      'where emp_code=:p1')
    Left = 488
    Top = 36
    object quusEmp_code: TStringField
      FieldName = 'Emp_code'
      FixedChar = True
    end
  end
end
