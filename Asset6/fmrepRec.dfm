object repRec: TrepRec
  Left = 0
  Top = 99
  HelpContext = 16
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                  '#1711#1586#1575#1585#1588' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585' '#1603#1575#1604#1575#1607#1575
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
  PixelsPerInch = 96
  TextHeight = 13
  object ppViewer: TppViewer
    Left = 0
    Top = 41
    Width = 789
    Height = 382
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
      Height = 377
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
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 483
      Top = 11
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
      Left = 100
      Top = 11
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
      Left = 239
      Top = 11
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
    object cbType: TRSqlComboBox
      Left = 543
      Top = 7
      Width = 185
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
      Left = 295
      Top = 7
      Width = 184
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
      FieldType = ftRequired
    end
    object edToDate: TRSqlMaskEdit
      Left = 14
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
      TabOrder = 3
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
    end
    object edFromDate: TRSqlMaskEdit
      Left = 153
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
      TabOrder = 2
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftRequired
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
      mmHeight = 23813
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1711#1586#1575#1585#1588' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585' '#1603#1575#1604#1575#1607#1575' '#1576#1607' '#1578#1601#1603#1610#1603' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 56886
        mmTop = 4233
        mmWidth = 87048
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
        mmLeft = 10319
        mmTop = 265
        mmWidth = 175155
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
        DataField = 'item_name'
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
        mmLeft = 159279
        mmTop = 1588
        mmWidth = 15875
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
        mmLeft = 136525
        mmTop = 1588
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'amount'
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
        mmLeft = 119856
        mmTop = 1852
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'F_Code'
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
        mmLeft = 50536
        mmTop = 1588
        mmWidth = 14552
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
        mmLeft = 176213
        mmTop = 265
        mmWidth = 3175
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 152929
        mmTop = 265
        mmWidth = 2646
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
        mmLeft = 116152
        mmTop = 265
        mmWidth = 3175
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
        mmHeight = 7938
        mmLeft = 132292
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
        mmHeight = 7938
        mmLeft = 68263
        mmTop = 265
        mmWidth = 5556
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
        mmHeight = 7938
        mmLeft = 84931
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ex_price'
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
        mmLeft = 94986
        mmTop = 1588
        mmWidth = 8731
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
        mmLeft = 181240
        mmTop = 1852
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel13: TppLabel
        OnPrint = ppLabel13Print
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 69586
        mmTop = 1852
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'F_Date'
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
        mmLeft = 31485
        mmTop = 1588
        mmWidth = 13494
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 48419
        mmTop = 265
        mmWidth = 5556
        BandType = 4
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
        mmHeight = 8202
        mmLeft = 30163
        mmTop = 265
        mmWidth = 5556
        BandType = 4
      end
      object ppLabel22: TppLabel
        OnPrint = ppLabel22Print
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label22'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 12171
        mmTop = 1323
        mmWidth = 15875
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'rec_no'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 22754
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape5'
          Brush.Color = 15790320
          mmHeight = 6879
          mmLeft = 10319
          mmTop = 15875
          mmWidth = 175155
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
          mmHeight = 6879
          mmLeft = 176213
          mmTop = 15875
          mmWidth = 3175
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
          mmHeight = 6879
          mmLeft = 152929
          mmTop = 15875
          mmWidth = 7144
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
          mmHeight = 6879
          mmLeft = 132292
          mmTop = 15875
          mmWidth = 7144
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
          mmHeight = 6879
          mmLeft = 116152
          mmTop = 15875
          mmWidth = 7144
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
          mmLeft = 84931
          mmTop = 16140
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
          mmLeft = 177536
          mmTop = 16669
          mmWidth = 6615
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
          Caption = #1606#1575#1605' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 160602
          mmTop = 16140
          mmWidth = 8731
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
          Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 137319
          mmTop = 16140
          mmWidth = 11377
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
          Caption = #1605#1602#1583#1575#1585' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 118534
          mmTop = 16140
          mmWidth = 11906
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
          Caption = '('#1602#1610#1605#1578' '#1608#1575#1581#1583' '#1603#1575#1604#1575' ('#1585#1610#1575#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 86254
          mmTop = 16140
          mmWidth = 28840
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
          Caption = '('#1580#1605#1593'('#1585#1610#1575#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 70115
          mmTop = 16140
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 14079702
          mmHeight = 15346
          mmLeft = 10319
          mmTop = 265
          mmWidth = 175155
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
          Caption = ':'#1588#1605#1575#1585#1607' '#1585#1587#1610#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 165100
          mmTop = 1852
          mmWidth = 17463
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
          Caption = ':'#1606#1608#1593' '#1585#1587#1610#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 98690
          mmTop = 1588
          mmWidth = 14023
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
          Caption = ':'#1608#1590#1593#1610#1578' '#1585#1587#1610#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 37835
          mmTop = 1588
          mmWidth = 19050
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
          Caption = ':'#1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 150813
          mmTop = 8731
          mmWidth = 31750
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
          Caption = ':'#1591#1576#1602#1607' '#1603#1575#1604#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 99748
          mmTop = 8467
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
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
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 39952
          mmTop = 8202
          mmWidth = 16933
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
          DataField = 'rec_no'
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
          mmLeft = 117740
          mmTop = 1852
          mmWidth = 44979
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'order_no'
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
          mmLeft = 117211
          mmTop = 9260
          mmWidth = 32279
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
          mmLeft = 67998
          mmTop = 1323
          mmWidth = 28840
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
          DataField = 'TypeName'
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
          mmLeft = 67469
          mmTop = 8202
          mmWidth = 29633
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
          mmLeft = 14288
          mmTop = 1588
          mmWidth = 22754
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
          DataField = 'date'
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
          mmLeft = 14023
          mmTop = 8467
          mmWidth = 23813
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
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6615
          mmLeft = 68263
          mmTop = 16140
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
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
          mmHeight = 6879
          mmLeft = 48419
          mmTop = 15875
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
          Caption = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 50800
          mmTop = 16669
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1578#1575#1585#1610#1582' '#1601#1575#1603#1578#1608#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 32015
          mmTop = 16140
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 30163
          mmTop = 15875
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = #1601#1585#1608#1588#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Nazanin'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          mmHeight = 6085
          mmLeft = 15346
          mmTop = 16140
          mmWidth = 10583
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsRecItem
    UserName = 'DBPipeline1'
    Left = 32
    Top = 253
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'TypeName'
      FieldName = 'TypeName'
      FieldLength = 70
      DisplayWidth = 70
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'rec_no'
      FieldName = 'rec_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'creator'
      FieldName = 'creator'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'date'
      FieldName = 'date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'deliver'
      FieldName = 'deliver'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'ddate'
      FieldName = 'ddate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'confirmer'
      FieldName = 'confirmer'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'cdate'
      FieldName = 'cdate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'order_no'
      FieldName = 'order_no'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'doc_no'
      FieldName = 'doc_no'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'org'
      FieldName = 'org'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'class_code'
      FieldName = 'class_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'GetType'
      FieldName = 'GetType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Order_Location'
      FieldName = 'Order_Location'
      FieldLength = 40
      DisplayWidth = 40
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
      FieldAlias = 'F_Code'
      FieldName = 'F_Code'
      FieldLength = 15
      DisplayWidth = 15
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'F_Date'
      FieldName = 'F_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'rec_no_1'
      FieldName = 'rec_no_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'item_code'
      FieldName = 'item_code'
      FieldLength = 8
      DisplayWidth = 8
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'buy_price'
      FieldName = 'buy_price'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'ex_price'
      FieldName = 'ex_price'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'amount'
      FieldName = 'amount'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'item_code_1'
      FieldName = 'item_code_1'
      FieldLength = 8
      DisplayWidth = 8
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'item_name'
      FieldName = 'item_name'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'class_code_1'
      FieldName = 'class_code_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'item_desc'
      FieldName = 'item_desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'item_unit'
      FieldName = 'item_unit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Inventory'
      FieldName = 'Item_Inventory'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order_Point'
      FieldName = 'Order_Point'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Inventory_Limit'
      FieldName = 'Inventory_Limit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'class_code_2'
      FieldName = 'class_code_2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'class_desc'
      FieldName = 'class_desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'class_name'
      FieldName = 'class_name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Class_Type'
      FieldName = 'Class_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'ppc_code'
      FieldName = 'ppc_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'pc_code'
      FieldName = 'pc_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'ps_code'
      FieldName = 'ps_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppDBPipeline1ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order_Req_Type'
      FieldName = 'Order_Req_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'Order_Req_No'
      FieldName = 'Order_Req_No'
      FieldLength = 8
      DisplayWidth = 8
      Position = 40
    end
    object ppDBPipeline1ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Creator_1'
      FieldName = 'Creator_1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'Create_Date'
      FieldName = 'Create_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 43
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'Confirmer_1'
      FieldName = 'Confirmer_1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 44
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'Confirm_Date'
      FieldName = 'Confirm_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 45
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'Credit_Suplier'
      FieldName = 'Credit_Suplier'
      FieldLength = 10
      DisplayWidth = 10
      Position = 46
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'CS_Date'
      FieldName = 'CS_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 47
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'Service_Desc'
      FieldName = 'Service_Desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 48
    end
    object ppDBPipeline1ppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Type'
      FieldName = 'Item_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppDBPipeline1ppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Class'
      FieldName = 'Item_Class'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'Request_Refuse_Reason'
      FieldName = 'Request_Refuse_Reason'
      FieldLength = 200
      DisplayWidth = 200
      Position = 51
    end
    object ppDBPipeline1ppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'Service_Type_No'
      FieldName = 'Service_Type_No'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppDBPipeline1ppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estimate_Price'
      FieldName = 'Estimate_Price'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 53
    end
    object ppDBPipeline1ppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'Deal_Kind'
      FieldName = 'Deal_Kind'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'Inquiry_Date_Rec'
      FieldName = 'Inquiry_Date_Rec'
      FieldLength = 8
      DisplayWidth = 8
      Position = 55
    end
    object ppDBPipeline1ppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'Row'
      FieldName = 'Row'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppDBPipeline1ppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_code'
      FieldName = 'P_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppDBPipeline1ppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'L_code'
      FieldName = 'L_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppDBPipeline1ppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProPosal_Price'
      FieldName = 'ProPosal_Price'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 59
    end
    object ppDBPipeline1ppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order_type'
      FieldName = 'Order_type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = 'Order_no_1'
      FieldName = 'Order_no_1'
      FieldLength = 8
      DisplayWidth = 8
      Position = 61
    end
    object ppDBPipeline1ppField63: TppField
      FieldAlias = 'V_date'
      FieldName = 'V_date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 62
    end
    object ppDBPipeline1ppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'person_code'
      FieldName = 'person_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppDBPipeline1ppField65: TppField
      FieldAlias = 'F_L_name'
      FieldName = 'F_L_name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object ppDBPipeline1ppField66: TppField
      FieldAlias = 'Father_name'
      FieldName = 'Father_name'
      FieldLength = 20
      DisplayWidth = 20
      Position = 65
    end
    object ppDBPipeline1ppField67: TppField
      FieldAlias = 'loc'
      FieldName = 'loc'
      FieldLength = 14
      DisplayWidth = 14
      Position = 66
    end
    object ppDBPipeline1ppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'certificate_no'
      FieldName = 'certificate_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppDBPipeline1ppField69: TppField
      FieldAlias = 'adress'
      FieldName = 'adress'
      FieldLength = 100
      DisplayWidth = 100
      Position = 68
    end
    object ppDBPipeline1ppField70: TppField
      FieldAlias = 'phone_no'
      FieldName = 'phone_no'
      FieldLength = 15
      DisplayWidth = 15
      Position = 69
    end
    object ppDBPipeline1ppField71: TppField
      FieldAlias = 'fax_no'
      FieldName = 'fax_no'
      FieldLength = 14
      DisplayWidth = 14
      Position = 70
    end
    object ppDBPipeline1ppField72: TppField
      FieldAlias = 'zip_code'
      FieldName = 'zip_code'
      FieldLength = 12
      DisplayWidth = 12
      Position = 71
    end
    object ppDBPipeline1ppField73: TppField
      FieldAlias = 'eco_no'
      FieldName = 'eco_no'
      FieldLength = 20
      DisplayWidth = 20
      Position = 72
    end
    object ppDBPipeline1ppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'budjet_org_grade'
      FieldName = 'budjet_org_grade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppDBPipeline1ppField75: TppField
      FieldAlias = 'v_state'
      FieldName = 'v_state'
      FieldLength = 1
      DisplayWidth = 1
      Position = 74
    end
    object ppDBPipeline1ppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'Legal_Code'
      FieldName = 'Legal_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 75
    end
    object ppDBPipeline1ppField77: TppField
      FieldAlias = 'CompanyName'
      FieldName = 'CompanyName'
      FieldLength = 50
      DisplayWidth = 50
      Position = 76
    end
    object ppDBPipeline1ppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'V_State_1'
      FieldName = 'V_State_1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppDBPipeline1ppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rec_No_2'
      FieldName = 'Rec_No_2'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 15
      Position = 78
    end
    object ppDBPipeline1ppField80: TppField
      FieldAlias = 'Rec_Date'
      FieldName = 'Rec_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 79
    end
    object ppDBPipeline1ppField81: TppField
      FieldAlias = 'Rec_Location'
      FieldName = 'Rec_Location'
      FieldLength = 100
      DisplayWidth = 100
      Position = 80
    end
    object ppDBPipeline1ppField82: TppField
      FieldAlias = 'E_Mail'
      FieldName = 'E_Mail'
      FieldLength = 30
      DisplayWidth = 30
      Position = 81
    end
    object ppDBPipeline1ppField83: TppField
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 100
      DisplayWidth = 100
      Position = 82
    end
    object ppDBPipeline1ppField84: TppField
      FieldAlias = 'Phone_No_1'
      FieldName = 'Phone_No_1'
      FieldLength = 14
      DisplayWidth = 14
      Position = 83
    end
    object ppDBPipeline1ppField85: TppField
      FieldAlias = 'Fax_No_1'
      FieldName = 'Fax_No_1'
      FieldLength = 14
      DisplayWidth = 14
      Position = 84
    end
    object ppDBPipeline1ppField86: TppField
      FieldAlias = 'Zip_Code_1'
      FieldName = 'Zip_Code_1'
      FieldLength = 12
      DisplayWidth = 12
      Position = 85
    end
    object ppDBPipeline1ppField87: TppField
      FieldAlias = 'Commercial_No'
      FieldName = 'Commercial_No'
      FieldLength = 20
      DisplayWidth = 20
      Position = 86
    end
    object ppDBPipeline1ppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'Budet_Org_Grade'
      FieldName = 'Budet_Org_Grade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 87
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
    OnCalcFields = quRecItemCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'Select Goods_Rec.*,Rec_Item.*,Item.*,Goods_Class.*,Unit_Item.*,O' +
        'rder_Request.*,InQuiry_Winer.*'
      ',Person_Supliet.*,Legal_Suplier.*'
      'From Goods_Rec left outer join Rec_Item '
      'on Goods_Rec.rec_no=rec_item.rec_no'
      'left outer join Item on Rec_Item.Item_code=Item.Item_code'
      
        'left outer join Goods_Class on Item.Class_Code=Goods_Class.Class' +
        '_Code'
      'left outer join Unit_Item on Unit_Item.Code=Item.Item_Unit'
      
        'left outer join Order_Request on Order_Request.Order_req_no=Good' +
        's_rec.order_no '
      
        'left outer join InQuiry_Winer on InQuiry_Winer.Order_no=goods_re' +
        'c.order_no'
      
        'left outer join Person_Supliet on Person_Supliet.Person_code=InQ' +
        'uiry_Winer.P_Code'
      
        'left outer join Legal_Suplier on Legal_Suplier.Legal_code=InQuir' +
        'y_Winer.L_Code')
    Left = 32
    Top = 225
    object quRecItemrec_no: TIntegerField
      FieldName = 'rec_no'
    end
    object quRecItemcreator: TStringField
      FieldName = 'creator'
      FixedChar = True
      Size = 10
    end
    object quRecItemdate: TStringField
      FieldName = 'date'
      FixedChar = True
      Size = 8
    end
    object quRecItemdeliver: TStringField
      FieldName = 'deliver'
      FixedChar = True
      Size = 10
    end
    object quRecItemddate: TStringField
      FieldName = 'ddate'
      FixedChar = True
      Size = 8
    end
    object quRecItemconfirmer: TStringField
      FieldName = 'confirmer'
      FixedChar = True
      Size = 10
    end
    object quRecItemcdate: TStringField
      FieldName = 'cdate'
      FixedChar = True
      Size = 8
    end
    object quRecItemorder_no: TStringField
      FieldName = 'order_no'
      FixedChar = True
      Size = 8
    end
    object quRecItemdoc_no: TStringField
      FieldName = 'doc_no'
      Size = 15
    end
    object quRecItemorg: TStringField
      FieldName = 'org'
      Size = 50
    end
    object quRecItemGetType: TSmallintField
      FieldName = 'GetType'
    end
    object quRecItemOrder_Location: TStringField
      FieldName = 'Order_Location'
      Size = 40
    end
    object quRecItemOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object quRecItemF_Code: TStringField
      FieldName = 'F_Code'
      Size = 15
    end
    object quRecItemF_Date: TStringField
      FieldName = 'F_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemrec_no_1: TIntegerField
      FieldName = 'rec_no_1'
    end
    object quRecItemitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 10
    end
    object quRecItembuy_price: TFloatField
      FieldName = 'buy_price'
    end
    object quRecItemex_price: TFloatField
      FieldName = 'ex_price'
    end
    object quRecItemamount: TIntegerField
      FieldName = 'amount'
    end
    object quRecItemPk_Item: TIntegerField
      FieldName = 'Pk_Item'
    end
    object quRecItemitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quRecItemclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quRecItemitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quRecItemitem_unit: TSmallintField
      FieldName = 'item_unit'
    end
    object quRecItemItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quRecItemOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quRecItemInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
    object quRecItemPK_DetailGroups: TSmallintField
      FieldName = 'PK_DetailGroups'
    end
    object quRecItemPK_MasterGroups: TSmallintField
      FieldName = 'PK_MasterGroups'
    end
    object quRecItemPosition_Code: TStringField
      FieldName = 'Position_Code'
      FixedChar = True
      Size = 10
    end
    object quRecItemItem_Code_1: TStringField
      FieldName = 'Item_Code_1'
      FixedChar = True
      Size = 10
    end
    object quRecItemclass_code_1: TSmallintField
      FieldName = 'class_code_1'
    end
    object quRecItemclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quRecItemclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quRecItemClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quRecItemppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quRecItempc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quRecItemps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
    object quRecItemCode: TSmallintField
      FieldName = 'Code'
    end
    object quRecItemUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object quRecItemOrder_Req_Type: TSmallintField
      FieldName = 'Order_Req_Type'
    end
    object quRecItemOrder_Req_No: TStringField
      FieldName = 'Order_Req_No'
      FixedChar = True
      Size = 8
    end
    object quRecItemState: TSmallintField
      FieldName = 'State'
    end
    object quRecItemCreator_1: TStringField
      FieldName = 'Creator_1'
      FixedChar = True
      Size = 10
    end
    object quRecItemCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemConfirmer_1: TStringField
      FieldName = 'Confirmer_1'
      FixedChar = True
      Size = 10
    end
    object quRecItemConfirm_Date: TStringField
      FieldName = 'Confirm_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemCredit_Suplier: TStringField
      FieldName = 'Credit_Suplier'
      FixedChar = True
      Size = 10
    end
    object quRecItemCS_Date: TStringField
      FieldName = 'CS_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemService_Desc: TStringField
      FieldName = 'Service_Desc'
      Size = 100
    end
    object quRecItemItem_Type: TSmallintField
      FieldName = 'Item_Type'
    end
    object quRecItemItem_Class: TSmallintField
      FieldName = 'Item_Class'
    end
    object quRecItemRequest_Refuse_Reason: TStringField
      FieldName = 'Request_Refuse_Reason'
      Size = 200
    end
    object quRecItemService_Type_No: TSmallintField
      FieldName = 'Service_Type_No'
    end
    object quRecItemEstimate_Price: TFloatField
      FieldName = 'Estimate_Price'
    end
    object quRecItemDeal_Kind: TSmallintField
      FieldName = 'Deal_Kind'
    end
    object quRecItemInquiry_Date_Rec: TStringField
      FieldName = 'Inquiry_Date_Rec'
      FixedChar = True
      Size = 8
    end
    object quRecItemRow: TSmallintField
      FieldName = 'Row'
    end
    object quRecItemP_code: TSmallintField
      FieldName = 'P_code'
    end
    object quRecItemL_code: TSmallintField
      FieldName = 'L_code'
    end
    object quRecItemProPosal_Price: TFloatField
      FieldName = 'ProPosal_Price'
    end
    object quRecItemOrder_type: TSmallintField
      FieldName = 'Order_type'
    end
    object quRecItemOrder_no_1: TStringField
      FieldName = 'Order_no_1'
      FixedChar = True
      Size = 8
    end
    object quRecItemV_date: TStringField
      FieldName = 'V_date'
      FixedChar = True
      Size = 8
    end
    object quRecItemperson_code: TSmallintField
      FieldName = 'person_code'
    end
    object quRecItemF_L_name: TStringField
      FieldName = 'F_L_name'
      Size = 50
    end
    object quRecItemFather_name: TStringField
      FieldName = 'Father_name'
    end
    object quRecItemloc: TStringField
      FieldName = 'loc'
      FixedChar = True
      Size = 14
    end
    object quRecItemcertificate_no: TIntegerField
      FieldName = 'certificate_no'
    end
    object quRecItemadress: TStringField
      FieldName = 'adress'
      Size = 100
    end
    object quRecItemphone_no: TStringField
      FieldName = 'phone_no'
      Size = 15
    end
    object quRecItemfax_no: TStringField
      FieldName = 'fax_no'
      Size = 14
    end
    object quRecItemzip_code: TStringField
      FieldName = 'zip_code'
      Size = 12
    end
    object quRecItemeco_no: TStringField
      FieldName = 'eco_no'
    end
    object quRecItembudjet_org_grade: TSmallintField
      FieldName = 'budjet_org_grade'
    end
    object quRecItemv_state: TStringField
      FieldName = 'v_state'
      FixedChar = True
      Size = 1
    end
    object quRecItemLegal_Code: TSmallintField
      FieldName = 'Legal_Code'
    end
    object quRecItemCompanyName: TStringField
      FieldName = 'CompanyName'
      Size = 50
    end
    object quRecItemV_State_1: TSmallintField
      FieldName = 'V_State_1'
    end
    object quRecItemRec_No_2: TLargeintField
      FieldName = 'Rec_No_2'
    end
    object quRecItemRec_Date: TStringField
      FieldName = 'Rec_Date'
      FixedChar = True
      Size = 8
    end
    object quRecItemRec_Location: TStringField
      FieldName = 'Rec_Location'
      Size = 100
    end
    object quRecItemE_Mail: TStringField
      FieldName = 'E_Mail'
      Size = 30
    end
    object quRecItemAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object quRecItemPhone_No_1: TStringField
      FieldName = 'Phone_No_1'
      Size = 14
    end
    object quRecItemFax_No_1: TStringField
      FieldName = 'Fax_No_1'
      Size = 14
    end
    object quRecItemZip_Code_1: TStringField
      FieldName = 'Zip_Code_1'
      Size = 12
    end
    object quRecItemCommercial_No: TStringField
      FieldName = 'Commercial_No'
    end
    object quRecItemBudet_Org_Grade: TSmallintField
      FieldName = 'Budet_Org_Grade'
    end
    object quRecItemTypeName: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeName'
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
    Left = 103
    Top = 77
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
end
