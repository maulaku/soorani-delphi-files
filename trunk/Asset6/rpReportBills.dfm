object ReportBills: TReportBills
  Left = 0
  Top = 91
  HelpContext = 16
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                           '#1711#1586#1575#1585#1588 +
    ' '#1581#1608#1575#1604#1607' '#1605#1589#1585#1601#1610' '#1575#1606#1576#1575#1585' '#1576#1607' '#1578#1601#1603#1610#1603' '#1581#1608#1575#1604#1607' '#1605#1589#1585#1601#1610
  ClientHeight = 454
  ClientWidth = 789
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
  object ppViewer: TppViewer
    Left = 0
    Top = 62
    Width = 789
    Height = 361
    Align = alClient
    BevelInner = bvLowered
    PageColor = clWindow
    Report = ppReport1
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
    object ppViewer1: TppViewer
      Left = 2
      Top = 2
      Width = 785
      Height = 357
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
      Left = 153
      Top = 3
      Width = 23
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
      Width = 25
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
    Height = 62
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 227
      Top = 36
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
    object Label1: TLabel
      Left = 230
      Top = 9
      Width = 79
      Height = 16
      Caption = #1608#1590#1593#1610#1578' '#1581#1608#1575#1604#1607':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 724
      Top = 9
      Width = 53
      Height = 16
      Caption = #1575#1586' '#1578#1575#1585#1610#1582':'
    end
    object Label4: TLabel
      Left = 724
      Top = 36
      Width = 53
      Height = 16
      Caption = #1578#1575' '#1578#1575#1585#1610#1582':'
    end
    object Label5: TLabel
      Left = 475
      Top = 9
      Width = 76
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607':'
    end
    object cbType: TRSqlComboBox
      Left = 6
      Top = 5
      Width = 221
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
    object dblClass: TRSqlDbLookup
      Left = 6
      Top = 32
      Width = 221
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
      TabOrder = 4
      FieldType = ftRequired
    end
    object meFromDate: TRSqlMaskEdit
      Left = 595
      Top = 5
      Width = 129
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
      TabOrder = 0
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object meToDate: TRSqlMaskEdit
      Left = 595
      Top = 32
      Width = 129
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
    object edBillNo: TRSqlEdit
      Left = 352
      Top = 5
      Width = 121
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
      EditType = etNumeric
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 210079
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
        Caption = #1711#1586#1575#1585#1588' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1605#1589#1585#1601#1610' '#1575#1606#1576#1575#1585' '#1576#1607' '#1578#1601#1603#1610#1603' '#1581#1608#1575#1604#1607' '#1605#1589#1585#1601#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7938
        mmLeft = 51329
        mmTop = 6615
        mmWidth = 93927
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
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 6350
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 6350
        mmTop = 5027
        mmWidth = 184150
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 186796
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 34396
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 70379
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 103717
        mmTop = 0
        mmWidth = 3969
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
        mmHeight = 7673
        mmLeft = 174625
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
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
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 7144
        mmTop = 1058
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
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
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 38894
        mmTop = 1058
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
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
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 74877
        mmTop = 1058
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
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
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 108479
        mmTop = 1058
        mmWidth = 69321
        BandType = 4
      end
      object Row: TppVariable
        UserName = 'Row'
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
        OnCalc = RowCalc
        OnReset = RowReset
        ResetComponent = ppGroup1
        ResetType = veGroupStart
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 179123
        mmTop = 1058
        mmWidth = 10583
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'Bill_No'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20638
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 15329769
          mmHeight = 12700
          mmLeft = 6350
          mmTop = 529
          mmWidth = 184150
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
          Caption = ':'#1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 168540
          mmTop = 1058
          mmWidth = 21167
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
          Caption = ':'#1608#1590#1593#1610#1578' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 115623
          mmTop = 1058
          mmWidth = 22754
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
          Caption = ':'#1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 49477
          mmTop = 1058
          mmWidth = 26194
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
          Caption = ':'#1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 168540
          mmTop = 7144
          mmWidth = 15081
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
          Caption = ':'#1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 115623
          mmTop = 7408
          mmWidth = 15875
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
          Caption = ':'#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 49477
          mmTop = 7408
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
          DataField = 'Bill_No'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5292
          mmLeft = 150813
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          mmHeight = 6879
          mmLeft = 6350
          mmTop = 13758
          mmWidth = 184150
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
          Caption = #1585#1583#1610#1601
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 183092
          mmTop = 14552
          mmWidth = 6615
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
          Caption = #1606#1575#1605' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 169598
          mmTop = 14552
          mmWidth = 8202
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
          Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 96044
          mmTop = 14552
          mmWidth = 10848
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
          Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607' '#1583#1585#1582#1608#1575#1587#1578#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 40746
          mmTop = 14552
          mmWidth = 32808
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
          Caption = #1605#1610#1586#1575#1606' '#1581#1608#1575#1604#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 5292
          mmLeft = 23548
          mmTop = 14552
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
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
          mmHeight = 6879
          mmLeft = 34925
          mmTop = 13758
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
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
          mmHeight = 6879
          mmLeft = 72231
          mmTop = 13758
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
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
          mmHeight = 6879
          mmLeft = 103452
          mmTop = 13758
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
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
          mmHeight = 6879
          mmLeft = 175684
          mmTop = 13758
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
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
          mmLeft = 21167
          mmTop = 1058
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
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
          mmLeft = 143934
          mmTop = 7144
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ST'
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
          mmLeft = 93663
          mmTop = 1058
          mmWidth = 21431
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
          DataField = 'CreatorName'
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
          mmLeft = 70908
          mmTop = 7408
          mmWidth = 44186
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
          DataField = 'RecieverName'
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
          mmLeft = 7673
          mmTop = 7408
          mmWidth = 41540
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
  end
  object dsItemReq: TDataSource
    DataSet = quBills
    Left = 60
    Top = 225
  end
  object quBills: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    OnCalcFields = quBillsCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT BI.* , Bill.Creator , Bill.Create_Date , Bill.Item_Req_No' +
        ' , Bill.receiver,'
      
        '       Bill.State  , IT.Item_Name , IT.Item_Unit , IT.Class_Code' +
        ' , RI.Conf_Amount ,'
      
        '       UI.Unit_Item_Desc , LTRIM(RTRIM(Emp.Name))+'#39'  '#39'+LTRIM(RTR' +
        'IM(Emp.family)) CreatorName , '
      
        '       LTRIM(RTRIM(Em.Name)) + '#39'  '#39'+LTRIM(RTRIM(Em.family)) Reci' +
        'everName FROM Bill_Items BI'
      'LEFT OUTER JOIN Bill ON'
      'BI.Bill_no = Bill.Bill_No AND '
      'BI.Bill_Type = Bill.Bill_Type'
      'LEFT OUTER JOIN Item IT ON '
      'BI.Item_Code = IT.Item_Code'
      'LEFT OUTER JOIN Requested_Item RI ON '
      'BI.Item_Code = RI.Item_Code AND '
      'Bill.Item_Req_No = RI.Req_No'
      'LEFT OUTER JOIN Unit_Item UI ON '
      'IT.Item_Unit = UI.Code '
      'LEFT OUTER JOIN Emp ON '
      'Bill.Creator = Emp.emp_no'
      'LEFT OUTER JOIN Emp EM ON '
      'Bill.Receiver = Em.emp_no'
      'WHERE BI.Bill_No IS NOT NULL ')
    Left = 32
    Top = 225
    object quBillsBill_Type: TSmallintField
      FieldName = 'Bill_Type'
    end
    object quBillsBill_No: TIntegerField
      FieldName = 'Bill_No'
    end
    object quBillsItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 8
    end
    object quBillsItem_Amount_Number: TIntegerField
      FieldName = 'Item_Amount_Number'
    end
    object quBillsCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quBillsCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quBillsItem_Req_No: TIntegerField
      FieldName = 'Item_Req_No'
    end
    object quBillsreceiver: TStringField
      FieldName = 'receiver'
      FixedChar = True
      Size = 10
    end
    object quBillsState: TSmallintField
      FieldName = 'State'
    end
    object quBillsItem_Name: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object quBillsItem_Unit: TSmallintField
      FieldName = 'Item_Unit'
    end
    object quBillsClass_Code: TSmallintField
      FieldName = 'Class_Code'
    end
    object quBillsConf_Amount: TIntegerField
      FieldName = 'Conf_Amount'
    end
    object quBillsUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object quBillsST: TStringField
      FieldKind = fkCalculated
      FieldName = 'ST'
      Calculated = True
    end
    object quBillsCreatorName: TStringField
      FieldName = 'CreatorName'
      ReadOnly = True
      Size = 71
    end
    object quBillsRecieverName: TStringField
      FieldName = 'RecieverName'
      ReadOnly = True
      Size = 71
    end
  end
  object qudblClass: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from goods_Class ')
    Left = 64
    Top = 34
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
    Left = 92
    Top = 34
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsItemReq
    UserName = 'DBPipeline1'
    Left = 32
    Top = 253
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bill_Type'
      FieldName = 'Bill_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bill_No'
      FieldName = 'Bill_No'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Item_Code'
      FieldName = 'Item_Code'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Amount_Number'
      FieldName = 'Item_Amount_Number'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Creator'
      FieldName = 'Creator'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Create_Date'
      FieldName = 'Create_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Req_No'
      FieldName = 'Item_Req_No'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'receiver'
      FieldName = 'receiver'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Item_Name'
      FieldName = 'Item_Name'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Unit'
      FieldName = 'Item_Unit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Class_Code'
      FieldName = 'Class_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Conf_Amount'
      FieldName = 'Conf_Amount'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ST'
      FieldName = 'ST'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'CreatorName'
      FieldName = 'CreatorName'
      FieldLength = 71
      DisplayWidth = 71
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'RecieverName'
      FieldName = 'RecieverName'
      FieldLength = 71
      DisplayWidth = 71
      Position = 16
    end
  end
end
