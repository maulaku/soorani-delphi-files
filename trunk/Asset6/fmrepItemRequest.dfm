object repItemRequest: TrepItemRequest
  Left = 6
  Top = 90
  HelpContext = 16
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    ' '#1711#1586#1575#1585#1588' '#1583#1585#1582#1608#1575#1587#1578#1607#1575#1610' '#1603#1575#1604#1575' '#1576#1607' '#1578#1601#1603#1610#1603' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
  ClientHeight = 454
  ClientWidth = 789
  Color = clBtnFace
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
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ppViewer: TppViewer
    Left = 0
    Top = 88
    Width = 789
    Height = 335
    BevelInner = bvLowered
    PageColor = clWindow
    Report = ppReport1
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
    object ppViewer1: TppViewer
      Left = 2
      Top = 2
      Width = 785
      Height = 331
      Align = alClient
      PageColor = clWindow
      ZoomPercentage = 100
      ZoomSetting = zsWholePage
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 423
    Width = 789
    Height = 31
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 1
    object spbPreviewWhole: TSpeedButton
      Left = 3
      Top = 3
      Width = 24
      Height = 24
      Hint = 'Whole Page'
      AllowAllUp = True
      GroupIndex = 1
      Down = True
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        6E030000424D6E03000000000000760000002800000050000000130000000100
        040000000000F8020000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
        7F7F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
        00000000000000777F00000000000000007F7706868686868686807777068686
        86868686807777068686868686868077F70080808080808080F7770868000000
        0068607777086800000000686077770868000000006860777F08080000000008
        007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
        F70080087878708080F77708680FFFFFF06860777708680FFFFFF06860777708
        680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
        00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
        F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
        007F7706860F00F0F08680777706860F00F0F08680777706860F00F0F0868077
        F70080080070708080F77708680FFFFFF06860777708680FFFFFF06860777708
        680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
        00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
        F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
        007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
        F70080087878708080F777086800000000686077770868000000006860777708
        68000000006860777F08080000000008007F7706868686868686807777068686
        86868686807777068686868686868077F70080808080808080F7770000000000
        0000007777000000000000000077770000000000000000777F00000000000000
        007F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
        77777777777777777F7F7F7F7F7F7F7F7F7F}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewWholeClick
    end
    object spbPreviewFirst: TSpeedButton
      Left = 152
      Top = 3
      Width = 24
      Height = 24
      Hint = 'First Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E4000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077778877777778777777000077770077777780777777
        0000777700777778007777770000777700777780007777770000777700777800
        0077777700007777007780000077777700007777007778000077777700007777
        0077778000777777000077770077777800777777000077770077777780777777
        0000777788777777787777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object spbPreviewPrior: TSpeedButton
      Left = 176
      Top = 3
      Width = 24
      Height = 24
      Hint = 'Prior Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E4000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777777777877777777000077777777778077777777
        0000777777777800777777770000777777778000777777770000777777780000
        7777777700007777778000007777777700007777777800007777777700007777
        7777800077777777000077777777780077777777000077777777778077777777
        0000777777777778777777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewPriorClick
    end
    object spbPreviewNext: TSpeedButton
      Left = 243
      Top = 3
      Width = 24
      Height = 24
      Hint = 'Next Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E4000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777778777777777777000077777770877777777777
        0000777777700877777777770000777777700087777777770000777777700008
        7777777700007777777000008777777700007777777000087777777700007777
        7770008777777777000077777770087777777777000077777770877777777777
        0000777777787777777777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewNextClick
    end
    object spbPreviewLast: TSpeedButton
      Left = 267
      Top = 3
      Width = 24
      Height = 24
      Hint = 'Last Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E4000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777877777778877777000077777087777770077777
        0000777770087777700777770000777770008777700777770000777770000877
        7007777700007777700000877007777700007777700008777007777700007777
        7000877770077777000077777008777770077777000077777087777770077777
        0000777778777777788777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object spbPreviewWidth: TSpeedButton
      Left = 27
      Top = 3
      Width = 24
      Height = 24
      Hint = 'Page Width'
      AllowAllUp = True
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        6E030000424D6E03000000000000760000002800000050000000130000000100
        040000000000F8020000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
        7F7F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
        00000000000000777F00000000000000007F77060FFFFFFFFFF0807777060FFF
        FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
        00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
        007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
        F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
        0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
        FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
        00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
        007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
        F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
        0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
        FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080FFFFFFF
        FFF0607777080FFFFFFFFFF0607777080FFFFFFFFFF060777F08008787878780
        007F770600000000000080777706000000000000807777060000000000008077
        F70000000000000080F777086868686868686077770868686868686860777708
        68686868686860777F08080808080808007F7706868686868686807777068686
        86868686807777068686868686868077F70080808080808080F7770000000000
        0000007777000000000000000077770000000000000000777F00000000000000
        007F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
        77777777777777777F7F7F7F7F7F7F7F7F7F}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewWidthClick
    end
    object spbPreview100Percent: TSpeedButton
      Left = 51
      Top = 3
      Width = 24
      Height = 24
      Hint = '100 %'
      AllowAllUp = True
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        BA030000424DBA03000000000000760000002800000051000000130000000100
        04000000000044030000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7
        F7F7F00000007777777777777777777777777777777777777777777777777777
        777777777F7F7F7F7F7F7F7F7F7F700000007700000000000000007777700000
        0000000000077770000000000000000777F00000000000000007F00000007706
        80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
        87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
        860FFFFFFFFFFF0777F08008787878787807F0000000770680FF000F00000077
        7770680FF000F00000077770680FF000F00000077F70080780008000000F7000
        0000770860FF000F000000777770860FF000F00000077770860FF000F0000007
        77F08008700070000007F0000000770680FFFFFFFFFFF0777770680FFFFFFFFF
        FF077770680FFFFFFFFFFF077F70080787878787870F70000000770860FFFFFF
        FFFFF0777770860FFFFFFFFFFF077770860FFFFFFFFFFF0777F0800878787878
        7807F0000000770680FF000F000000777770680FF000F00000077770680FF000
        F00000077F70080780008000000F70000000770860FF000F000000777770860F
        F000F00000077770860FF000F000000777F08008700070000007F00000007706
        80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
        87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
        860FFFFFFFFFFF0777F08008787878787807F000000077068000000000000077
        77706800000000000007777068000000000000077F70080000000000000F7000
        0000770868686868686860777770868686868686860777708686868686868607
        77F08080808080808007F0000000770686868686868680777770686868686868
        6807777068686868686868077F70080808080808080F70000000770000000000
        00000077777000000000000000077770000000000000000777F0000000000000
        0007F00000007777777777777777777777777777777777777777777777777777
        777777777F7F7F7F7F7F7F7F7F7F700000007777777777777777777777777777
        7777777777777777777777777777777777F7F7F7F7F7F7F7F7F7F0000000}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreview100PercentClick
    end
    object mskPreviewPage: TMaskEdit
      Left = 202
      Top = 5
      Width = 37
      Height = 20
      TabStop = False
      AutoSelect = False
      EditMask = '99999;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = mskPreviewPageKeyPress
    end
    object mskPreviewPercentage: TMaskEdit
      Left = 93
      Top = 5
      Width = 37
      Height = 20
      TabStop = False
      AutoSelect = False
      EditMask = '999\ %;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = mskPreviewPercentageKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 88
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label3: TLabel
      Left = 731
      Top = 63
      Width = 45
      Height = 16
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 731
      Top = 37
      Width = 53
      Height = 16
      Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 731
      Top = 11
      Width = 49
      Height = 16
      Caption = #1606#1608#1593' '#1603#1575#1604#1575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 98
      Top = 38
      Width = 49
      Height = 16
      Caption = #1578#1575' '#1578#1575#1585#1610#1582
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 10
      Width = 49
      Height = 16
      Caption = #1575#1586' '#1578#1575#1585#1610#1582
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 378
      Top = 38
      Width = 120
      Height = 16
      Caption = #1608#1575#1581#1583' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 378
      Top = 62
      Width = 79
      Height = 16
      Caption = #1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 378
      Top = 10
      Width = 138
      Height = 16
      Caption = #1587#1575#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbType: TRSqlComboBox
      Left = 519
      Top = 7
      Width = 205
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
      OnChange = cbTypeChange
      Items.Strings = (
        #1575#1605#1608#1575#1604#1610' '#1605#1606#1602#1608#1604' '#1605#1589#1585#1601#1610
        #1575#1605#1608#1575#1604#1610' '#1605#1606#1602#1608#1604' '#1583#1585' '#1581#1603#1605' '#1605#1589#1585#1601#1610
        #1575#1605#1608#1575#1604#1610' '#1594#1610#1585' '#1605#1589#1585#1601#1610)
      FieldType = ftRequired
    end
    object dblClass: TRSqlDbLookup
      Left = 519
      Top = 33
      Width = 205
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'class_code'
      ListField = 'class_name'
      ListSource = dsDblClass
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = dblClassClick
      FieldType = ftRequired
    end
    object dblItem: TRSqlDbLookup
      Left = 520
      Top = 59
      Width = 204
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'item_code'
      ListField = 'item_name'
      ListSource = dsDblItem
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
    end
    object edToDate: TRSqlMaskEdit
      Left = 12
      Top = 33
      Width = 81
      Height = 22
      BiDiMode = bdLeftToRight
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object edFromDate: TRSqlMaskEdit
      Left = 12
      Top = 7
      Width = 81
      Height = 22
      BiDiMode = bdLeftToRight
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object dblUnit: TRSqlDbLookup
      Left = 156
      Top = 33
      Width = 216
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = dsDblUnit
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftRequired
    end
    object cbReqType: TRSqlComboBox
      Left = 156
      Top = 59
      Width = 217
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
      TabOrder = 5
      Items.Strings = (
        #1583#1585#1582#1608#1575#1587#1578' '#1593#1575#1583#1610' '#1603#1575#1604#1575
        #1583#1585#1582#1608#1575#1587#1578' '#1587#1575#1604#1575#1606#1607' '#1603#1575#1604#1575
        #1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575' '#1580#1607#1578' '#1578#1593#1605#1610#1585' '#1605#1575#1604)
      FieldType = ftRequired
    end
    object dblOrg: TRSqlDbLookup
      Left = 156
      Top = 7
      Width = 216
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = dsDblOrg
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnClick = dblOrgClick
      FieldType = ftRequired
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 296863
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 60
    Top = 253
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1711#1586#1575#1585#1588' '#1583#1585#1582#1608#1575#1587#1578#1607#1575#1610' '#1603#1575#1604#1575' '#1576#1607' '#1578#1601#1603#1610#1603' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 92340
        mmTop = 3440
        mmWidth = 94721
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 21431
        mmTop = 5292
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1589#1601#1581#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 24871
        mmTop = 5292
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 25400
        mmTop = 11377
        mmWidth = 6350
        BandType = 0
      end
      object lbDate: TppLabel
        UserName = 'lbDate'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 10054
        mmTop = 11113
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 16404
        mmTop = 5292
        mmWidth = 2117
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 12435
        mmTop = 5292
        mmWidth = 1058
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8202
        mmLeft = 23019
        mmTop = 265
        mmWidth = 238125
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ItemType'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 198173
        mmTop = 794
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Class_Name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 172244
        mmTop = 794
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Item_Name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 111654
        mmTop = 794
        mmWidth = 27517
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Unit_Item_Desc'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 92340
        mmTop = 1323
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Conf_Amount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 46831
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Recieve_Amount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 25135
        mmTop = 1058
        mmWidth = 16669
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 252413
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 197644
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 91811
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 111125
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 43127
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 67998
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Req_Amount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 71967
        mmTop = 1058
        mmWidth = 17463
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        OnCalc = ppVariable1Calc
        OnReset = ppVariable1Reset
        ResetType = veGroupStart
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 255853
        mmTop = 1058
        mmWidth = 4498
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 139965
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup4: TppGroup
      BreakName = 'ReqType'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20373
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 14671839
          mmHeight = 13229
          mmLeft = 23019
          mmTop = 265
          mmWidth = 238125
          BandType = 3
          GroupNo = 0
        end
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 15921906
          mmHeight = 6879
          mmLeft = 23019
          mmTop = 13758
          mmWidth = 238125
          BandType = 3
          GroupNo = 0
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1605#1602#1583#1575#1585' '#1583#1585#1610#1575#1601#1578#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 24871
          mmTop = 14023
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 43127
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 46038
          mmTop = 14023
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 67998
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 69850
          mmTop = 14023
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 91811
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 95779
          mmTop = 14023
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 111125
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 124090
          mmTop = 14023
          mmWidth = 4498
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 139965
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 163513
          mmTop = 14023
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 197644
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1606#1608#1593' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 223309
          mmTop = 14023
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 252413
          mmTop = 13758
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1585#1583#1610#1601
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 253207
          mmTop = 14023
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 230717
          mmTop = 529
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 185738
          mmTop = 529
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1608#1575#1581#1583' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 229394
          mmTop = 7144
          mmWidth = 30692
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 147373
          mmTop = 7144
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 6350
          mmLeft = 82815
          mmTop = 7144
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'Req_No'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 213519
          mmTop = 529
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ReqType'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 107950
          mmTop = 529
          mmWidth = 77258
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'UT_Name'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 165365
          mmTop = 7144
          mmWidth = 63765
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'FullName'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 100542
          mmTop = 7144
          mmWidth = 46567
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'Create_Date'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 66411
          mmTop = 7144
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsItemReq
    UserName = 'DBPipeline1'
    Left = 32
    Top = 253
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ReqType'
      FieldName = 'ReqType'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReqState'
      FieldName = 'ReqState'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ItemType'
      FieldName = 'ItemType'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_No'
      FieldName = 'Req_No'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Item_Code'
      FieldName = 'Item_Code'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Conf_Amount'
      FieldName = 'Conf_Amount'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Recieve_Amount'
      FieldName = 'Recieve_Amount'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'r_state'
      FieldName = 'r_state'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'item_type'
      FieldName = 'item_type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_type'
      FieldName = 'Req_type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Req_number'
      FieldName = 'Req_number'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_no_1'
      FieldName = 'Req_no_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Creator'
      FieldName = 'Creator'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Create_Date'
      FieldName = 'Create_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Org_Code'
      FieldName = 'Org_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Org_Unit_Code'
      FieldName = 'Org_Unit_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Confirmer'
      FieldName = 'Confirmer'
      FieldLength = 8
      DisplayWidth = 8
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Confirm_date'
      FieldName = 'Confirm_date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Verifier'
      FieldName = 'Verifier'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Verify_date'
      FieldName = 'Verify_date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_Type_1'
      FieldName = 'Req_Type_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Goods_Code'
      FieldName = 'Goods_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Item_Code_1'
      FieldName = 'Item_Code_1'
      FieldLength = 8
      DisplayWidth = 8
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Item_Name'
      FieldName = 'Item_Name'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Class_Code'
      FieldName = 'Class_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Class_Code_1'
      FieldName = 'Class_Code_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'Class_Name'
      FieldName = 'Class_Name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'UT_Code'
      FieldName = 'UT_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'UT_Name'
      FieldName = 'UT_Name'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Unit'
      FieldName = 'Item_Unit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'Emp_No'
      FieldName = 'Emp_No'
      FieldLength = 10
      DisplayWidth = 10
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'FullName'
      FieldName = 'FullName'
      FieldLength = 71
      DisplayWidth = 71
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_Amount'
      FieldName = 'Req_Amount'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
  end
  object dsItemReq: TDataSource
    DataSet = quItemReq
    Left = 60
    Top = 225
  end
  object quItemReq: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    OnCalcFields = quItemReqCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select Requested_Item.*,Item_Request.*'
      ',Item.Item_Code,Item.Item_Name,Item.Class_Code'
      ',Goods_Class.Class_Code,Goods_Class.Class_Name'
      ',Org_Unit.UT_Code,Org_Unit.UT_Name'
      ',Unit_Item.*,Item.Item_Unit'
      ',EMP.Emp_No,(Emp.Name+'#39' '#39'+Emp.Family) as FullName'
      'From Item_Request left outer join Requested_Item'
      'on Item_Request.Req_No=Requested_Item.Req_No'
      'left outer join Item'
      'on Requested_Item.Item_Code=Item.Item_Code'
      'left outer join Goods_Class'
      'on Goods_Class.Class_Code=Item.Class_Code'
      'left outer join org_Unit'
      'on Item_Request.Org_Unit_Code=Org_Unit.UT_Code'
      'left outer join Unit_Item On Item.Item_Unit=Unit_Item.Code'
      'left outer join Emp on Emp.Emp_No=Item_Request.Creator')
    Left = 32
    Top = 225
    object quItemReqReq_No: TIntegerField
      FieldName = 'Req_No'
    end
    object quItemReqItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object quItemReqReq_Amount: TIntegerField
      FieldName = 'Req_Amount'
    end
    object quItemReqConf_Amount: TIntegerField
      FieldName = 'Conf_Amount'
    end
    object quItemReqRecieve_Amount: TIntegerField
      FieldName = 'Recieve_Amount'
    end
    object quItemReqr_state: TSmallintField
      FieldName = 'r_state'
    end
    object quItemReqitem_type: TSmallintField
      FieldName = 'item_type'
    end
    object quItemReqReq_type: TSmallintField
      FieldName = 'Req_type'
    end
    object quItemReqReq_number: TStringField
      FieldName = 'Req_number'
      FixedChar = True
      Size = 8
    end
    object quItemReqReq_no_1: TIntegerField
      FieldName = 'Req_no_1'
    end
    object quItemReqCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quItemReqCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quItemReqOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object quItemReqOrg_Unit_Code: TSmallintField
      FieldName = 'Org_Unit_Code'
    end
    object quItemReqConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 8
    end
    object quItemReqConfirm_date: TStringField
      FieldName = 'Confirm_date'
      FixedChar = True
      Size = 8
    end
    object quItemReqVerifier: TStringField
      FieldName = 'Verifier'
      FixedChar = True
      Size = 10
    end
    object quItemReqVerify_date: TStringField
      FieldName = 'Verify_date'
      FixedChar = True
      Size = 8
    end
    object quItemReqState: TSmallintField
      FieldName = 'State'
    end
    object quItemReqReq_Type_1: TSmallintField
      FieldName = 'Req_Type_1'
    end
    object quItemReqGoods_code: TStringField
      FieldName = 'Goods_code'
      FixedChar = True
      Size = 12
    end
    object quItemReqLoc_Code: TSmallintField
      FieldName = 'Loc_Code'
    end
    object quItemReqItem_Code_1: TStringField
      FieldName = 'Item_Code_1'
      FixedChar = True
      Size = 10
    end
    object quItemReqItem_Name: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object quItemReqClass_Code: TSmallintField
      FieldName = 'Class_Code'
    end
    object quItemReqClass_Code_1: TSmallintField
      FieldName = 'Class_Code_1'
    end
    object quItemReqClass_Name: TStringField
      FieldName = 'Class_Name'
      Size = 50
    end
    object quItemReqUT_Code: TSmallintField
      FieldName = 'UT_Code'
    end
    object quItemReqUT_Name: TStringField
      FieldName = 'UT_Name'
      Size = 80
    end
    object quItemReqCode: TSmallintField
      FieldName = 'Code'
    end
    object quItemReqUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object quItemReqItem_Unit: TSmallintField
      FieldName = 'Item_Unit'
    end
    object quItemReqEmp_No: TStringField
      FieldName = 'Emp_No'
      FixedChar = True
      Size = 10
    end
    object quItemReqFullName: TStringField
      FieldName = 'FullName'
      ReadOnly = True
      Size = 71
    end
    object quItemReqReqState: TStringField
      FieldKind = fkCalculated
      FieldName = 'StateType'
      Size = 100
      Calculated = True
    end
    object quItemReqItemType: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemType'
      Size = 100
      Calculated = True
    end
    object quItemReqReqType: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReqType'
      Size = 100
      Calculated = True
    end
  end
  object qudblClass: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * from goods_Class where Class_Type=:p0')
    Left = 300
    Top = 149
    object qudblClassclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object qudblClassclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object qudblClassclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object qudblClassClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object qudblClassppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object qudblClasspc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object qudblClassps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
  end
  object dsDblClass: TDataSource
    DataSet = qudblClass
    Left = 328
    Top = 149
  end
  object dsDblItem: TDataSource
    DataSet = quDblItem
    Left = 620
    Top = 157
  end
  object quDblItem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Item where Class_Code=:p0')
    Left = 591
    Top = 157
    object quDblItemitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 8
    end
    object quDblItemitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quDblItemclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quDblItemitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quDblItemitem_unit: TSmallintField
      FieldName = 'item_unit'
    end
    object quDblItemItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quDblItemOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quDblItemInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
  end
  object dsDblUnit: TDataSource
    DataSet = quDblUnit
    Left = 144
    Top = 151
  end
  object quDblUnit: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Org_Unit '
      'WHERE'
      'Ut_Org_Code=:p0 ')
    Left = 116
    Top = 150
    object quDblUnitUt_Org_Code: TIntegerField
      FieldName = 'Ut_Org_Code'
    end
    object quDblUnitUt_Code: TSmallintField
      FieldName = 'Ut_Code'
    end
    object quDblUnitUt_Name: TStringField
      FieldName = 'Ut_Name'
      Size = 80
    end
    object quDblUnitUt_Mast_Code: TSmallintField
      FieldName = 'Ut_Mast_Code'
    end
  end
  object dsDblOrg: TDataSource
    DataSet = qudblOrg
    Left = 28
    Top = 100
  end
  object qudblOrg: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Organization')
    Left = 60
    Top = 100
    object qudblOrgOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object qudblOrgOrg_Name: TStringField
      FieldName = 'Org_Name'
      Size = 80
    end
    object qudblOrgOrg_Addr: TStringField
      FieldName = 'Org_Addr'
      FixedChar = True
      Size = 14
    end
    object qudblOrgOrg_Mast_Code: TIntegerField
      FieldName = 'Org_Mast_Code'
    end
  end
end
