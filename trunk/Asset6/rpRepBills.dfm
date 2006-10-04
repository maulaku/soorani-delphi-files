object RepBills: TRepBills
  Left = 0
  Top = 91
  HelpContext = 16
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '     '#1711#1586#1575#1585#1588' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585' '#1603#1575#1604#1575#1607#1575' '#1576#1607' '#1578#1601#1603#1610#1603' '#1603#1575#1604#1575
  ClientHeight = 480
  ClientWidth = 857
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
    Top = 62
    Width = 857
    Height = 387
    Align = alClient
    BevelInner = bvLowered
    PageColor = clWindow
    Report = ppReport1
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
    object ppViewer1: TppViewer
      Left = 2
      Top = 2
      Width = 853
      Height = 383
      Align = alClient
      PageColor = clWindow
      ZoomPercentage = 100
      ZoomSetting = zsWholePage
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 449
    Width = 857
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
    Width = 857
    Height = 62
    Align = alTop
    BevelInner = bvLowered
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 459
      Top = 9
      Width = 49
      Height = 16
      Caption = #1606#1575#1605' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 725
      Top = 9
      Width = 57
      Height = 16
      Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 461
      Top = 38
      Width = 53
      Height = 16
      Caption = #1578#1575' '#1578#1575#1585#1610#1582':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 724
      Top = 38
      Width = 53
      Height = 16
      Caption = #1575#1586' '#1578#1575#1585#1610#1582':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 156
      Top = 9
      Width = 79
      Height = 16
      Caption = #1608#1590#1593#1610#1578' '#1581#1608#1575#1604#1607':'
    end
    object dblClass: TRSqlDbLookup
      Left = 532
      Top = 5
      Width = 193
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
      TabOrder = 0
      OnClick = dblClassClick
      FieldType = ftRequired
    end
    object edToDate: TRSqlMaskEdit
      Left = 381
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
      TabOrder = 2
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object edFromDate: TRSqlMaskEdit
      Left = 644
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
      TabOrder = 1
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object cbState: TRSqlComboBox
      Left = 8
      Top = 5
      Width = 145
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
        #1578#1606#1592#1610#1605' '#1588#1583#1607
        #1578#1575#1610#1610#1583' '#1588#1583#1607
        #1585#1583' '#1588#1583#1607)
      FieldType = ftRequired
    end
    object dblItem: TRSqlDbLookup
      Left = 243
      Top = 4
      Width = 219
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'item_code'
      ListField = 'item_name'
      ListSource = dsDblItem
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
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
        Caption = #1711#1586#1575#1585#1588' '#1581#1608#1575#1604#1607' '#1605#1589#1585#1601#1610' '#1575#1606#1576#1575#1585' '#1576#1607' '#1578#1601#1603#1610#1603' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 102923
        mmTop = 3969
        mmWidth = 76994
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
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 79375
        mmTop = 10583
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ': '#1580#1605#1593#1583#1575#1585#1575#1605#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 68792
        mmTop = 2646
        mmWidth = 17727
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 3175
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 22225
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 56886
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 79111
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 120650
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 145257
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 189971
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 213255
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 240507
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 262732
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 275167
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 3175
        mmTop = 5821
        mmWidth = 276226
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Item_Amount_Number'
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
        mmLeft = 4233
        mmTop = 1058
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
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
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 27252
        mmTop = 1058
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ConfName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 84138
        mmTop = 1058
        mmWidth = 39688
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Confirm_Date'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 125677
        mmTop = 1058
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CrtName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 150284
        mmTop = 1058
        mmWidth = 42863
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
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
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 194998
        mmTop = 1058
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Item_Req_No'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 218282
        mmTop = 1058
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Bill_No'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 245534
        mmTop = 1058
        mmWidth = 20373
        BandType = 4
      end
      object ppvRow: TppVariable
        UserName = 'vRow'
        AutoSize = False
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
        OnCalc = ppvRowCalc
        OnReset = ppvRowReset
        ResetComponent = ppGroup2
        ResetType = veGroupStart
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 267230
        mmTop = 1058
        mmWidth = 11642
        BandType = 4
      end
      object pplbState: TppLabel
        OnPrint = pplbStatePrint
        UserName = 'lbState'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 61913
        mmTop = 1058
        mmWidth = 20638
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ' :'#1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1580#1605#1593#1583#1575#1585' '#1575#1605#1608#1575#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 216959
        mmTop = 265
        mmWidth = 44186
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 236273
        mmTop = 7938
        mmWidth = 6879
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Class_Code'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 13290186
          mmHeight = 7673
          mmLeft = 3175
          mmTop = 1058
          mmWidth = 276226
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
          Caption = ':'#1591#1576#1602#1607' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 262996
          mmTop = 1588
          mmWidth = 12965
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
          mmLeft = 4763
          mmTop = 1588
          mmWidth = 257705
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Item_Code'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 14540253
          mmHeight = 7673
          mmLeft = 3175
          mmTop = 1058
          mmWidth = 276226
          BandType = 3
          GroupNo = 1
        end
        object ppShape3: TppShape
          UserName = 'Shape3'
          Brush.Color = 15724527
          mmHeight = 7673
          mmLeft = 3175
          mmTop = 9790
          mmWidth = 276226
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1606#1575#1605' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 6350
          mmLeft = 265907
          mmTop = 1588
          mmWidth = 10054
          BandType = 3
          GroupNo = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
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
          mmLeft = 134409
          mmTop = 1852
          mmWidth = 130969
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ':'#1608#1575#1581#1583' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 6350
          mmLeft = 119327
          mmTop = 1588
          mmWidth = 12965
          BandType = 3
          GroupNo = 1
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
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
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6085
          mmLeft = 4498
          mmTop = 1852
          mmWidth = 114300
          BandType = 3
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1585#1583#1610#1601
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 271463
          mmTop = 10848
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 245534
          mmTop = 10848
          mmWidth = 20373
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 218282
          mmTop = 10848
          mmWidth = 25400
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 202142
          mmTop = 10848
          mmWidth = 14288
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 178065
          mmTop = 10848
          mmWidth = 15081
          BandType = 3
          GroupNo = 1
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1578#1575#1585#1610#1582' '#1578#1575#1610#1610#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 135467
          mmTop = 10848
          mmWidth = 12965
          BandType = 3
          GroupNo = 1
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 110067
          mmTop = 10848
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1608#1590#1593#1610#1578' '#1581#1608#1575#1604#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 66146
          mmTop = 10848
          mmWidth = 16140
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607' '#1583#1585#1582#1608#1575#1587#1578#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 27252
          mmTop = 10848
          mmWidth = 32808
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1605#1602#1583#1575#1585' '#1581#1608#1575#1604#1607' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 6879
          mmTop = 10848
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 22754
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 57415
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 79640
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 121179
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 145786
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 190500
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 213784
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 241036
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 263261
          mmTop = 9790
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRecItem
    UserName = 'DBPipeline1'
    Left = 32
    Top = 253
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Bill_Type'
      FieldName = 'Bill_Type'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Bill_No'
      FieldName = 'Bill_No'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Item_Code'
      FieldName = 'Item_Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Item_Amount_Number'
      FieldName = 'Item_Amount_Number'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Creator'
      FieldName = 'Creator'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Create_Date'
      FieldName = 'Create_Date'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Confirmer'
      FieldName = 'Confirmer'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Confirm_Date'
      FieldName = 'Confirm_Date'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Item_Req_No'
      FieldName = 'Item_Req_No'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Class_Code'
      FieldName = 'Class_Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Item_Unit'
      FieldName = 'Item_Unit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Item_Name'
      FieldName = 'Item_Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Conf_Amount'
      FieldName = 'Conf_Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Class_Name'
      FieldName = 'Class_Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'CrtName'
      FieldName = 'CrtName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'ConfName'
      FieldName = 'ConfName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
  end
  object dsRecItem: TDataSource
    DataSet = quRecItem
    Left = 60
    Top = 225
  end
  object quRecItem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT BI.* , Bill.Creator , Bill.Create_Date , Bill.Confirmer ,' +
        ' Bill.Confirm_Date , Bill.Item_Req_No , Bill.State,'
      
        '                 IT.Class_Code , IT.Item_Unit , IT.Item_Name , R' +
        'I.Conf_Amount , GC.Class_Name , UI.Unit_Item_Desc,'
      
        '                 LTRIM(RTRIM(EMP.Name))+'#39'  '#39'+LTRIM(RTRIM(EMP.Fam' +
        'ily)) CrtName , LTRIM(RTRIM(EM.Name))+'#39'  '#39'+LTRIM(RTRIM(EM.Family' +
        ')) ConfName'
      'FROM Bill_Items BI'
      'LEFT OUTER JOIN Bill ON '
      'BI.Bill_Type = Bill.Bill_Type AND '
      'BI.Bill_No = Bill.Bill_No'
      'LEFT OUTER JOIN Item IT ON '
      'BI.Item_Code = IT.Item_Code'
      'LEFT OUTER JOIN Requested_Item RI ON '
      'Bill.Item_Req_No = RI.Req_No AND '
      'BI.Item_Code = RI.Item_Code'
      'LEFT OUTER JOIN Goods_Class GC ON '
      'IT.Class_Code = GC.Class_Code '
      'LEFT OUTER JOIN Unit_Item UI ON '
      'IT.Item_Unit = UI.Code'
      'LEFT OUTER JOIN EMP ON '
      'Bill.Creator = EMP.emp_No '
      'LEFT OUTER JOIN EMP EM ON '
      'Bill.Confirmer = EM.emp_No'
      'WHERE BI.Bill_Type = 1')
    Left = 32
    Top = 225
    object quRecItemBill_Type: TSmallintField
      FieldName = 'Bill_Type'
    end
    object quRecItemBill_No: TIntegerField
      FieldName = 'Bill_No'
    end
    object quRecItemItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 8
    end
    object quRecItemItem_Amount_Number: TIntegerField
      FieldName = 'Item_Amount_Number'
    end
    object quRecItemCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quRecItemCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 10
    end
    object quRecItemConfirm_Date: TStringField
      FieldName = 'Confirm_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemItem_Req_No: TIntegerField
      FieldName = 'Item_Req_No'
    end
    object quRecItemState: TSmallintField
      FieldName = 'State'
    end
    object quRecItemClass_Code: TSmallintField
      FieldName = 'Class_Code'
    end
    object quRecItemItem_Unit: TSmallintField
      FieldName = 'Item_Unit'
    end
    object quRecItemItem_Name: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object quRecItemConf_Amount: TIntegerField
      FieldName = 'Conf_Amount'
    end
    object quRecItemClass_Name: TStringField
      FieldName = 'Class_Name'
      Size = 50
    end
    object quRecItemUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object quRecItemCrtName: TStringField
      FieldName = 'CrtName'
      ReadOnly = True
      Size = 72
    end
    object quRecItemConfName: TStringField
      FieldName = 'ConfName'
      ReadOnly = True
      Size = 72
    end
  end
  object qudblClass: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select * from goods_Class ')
    Left = 372
    Top = 77
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
    Left = 400
    Top = 77
  end
  object dsDblItem: TDataSource
    DataSet = quDblItem
    Left = 132
    Top = 77
  end
  object quDblItem: TADOQuery
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
      'Select * from Item where Class_Code=:p1')
    Left = 103
    Top = 77
    object quDblItemPk_Item: TIntegerField
      FieldName = 'Pk_Item'
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
    object quDblItemPK_DetailGroups: TSmallintField
      FieldName = 'PK_DetailGroups'
    end
    object quDblItemPK_MasterGroups: TSmallintField
      FieldName = 'PK_MasterGroups'
    end
    object quDblItemPosition_Code: TStringField
      FieldName = 'Position_Code'
      FixedChar = True
      Size = 10
    end
    object quDblItemItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
  end
end
