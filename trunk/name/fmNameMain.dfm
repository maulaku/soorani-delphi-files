object NameMain: TNameMain
  Left = 0
  Top = 0
  Width = 854
  Height = 593
  BiDiMode = bdRightToLeft
  Caption = #1604#1610#1587#1578' '#1578#1594#1610#1610#1585#1575#1578' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 41
    Width = 846
    Height = 518
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleButtons = True
    OnTitleBtnClick = RxDBGrid1TitleBtnClick
    Columns = <
      item
        Expanded = False
        FieldName = 'v01_cnt'
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1578#1589#1608#1610#1576#1610
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v02_cnt'
        Title.Caption = #1606#1575#1605
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v03_cnt'
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v04'
        Title.Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v05'
        Title.Caption = #1603#1583' '#1605#1604#1610
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v06'
        Title.Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v11'
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1582#1578#1610#1575#1585
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v12'
        Title.Caption = #1578#1575#1585#1610#1582' '#1578#1589#1608#1610#1576
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v07'
        Title.Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v08'
        Title.Caption = #1576#1582#1588
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'v09_cnt'
        Title.Caption = #1605#1581#1604' '#1589#1583#1608#1585
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v13'
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1589#1608#1610#1576
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v14_cnt'
        Title.Caption = #1581#1585#1608#1601' '#1605#1602#1591#1593
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v15_cnt'
        Title.Caption = #1606#1575#1605' '#1608#1575#1585#1583' '#1603#1606#1606#1583#1607' '#1575#1591#1604#1575#1593#1575#1578
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = #1578#1575#1585#1610#1582'1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'type'
        Title.Caption = #1606#1608#1594' '#1578#1602#1583#1605
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v10_cnt'
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1602#1576#1604#1610
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      846
      41)
    object Label1: TLabel
      Left = 763
      Top = 12
      Width = 77
      Height = 13
      Anchors = [akTop, akRight, akBottom]
      Caption = #1578#1585#1578#1610#1576' '#1581#1585#1608#1601' '#1575#1604#1601#1576#1575
    end
    object RxSplitter1: TRxSplitter
      Left = 1
      Top = 1
      Width = 844
      Height = 3
      ControlFirst = Panel1
      ControlSecond = RxDBGrid1
      Align = alTop
    end
    object cxButton1: TcxButton
      Left = 424
      Top = 9
      Width = 113
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1589#1583#1608#1585' '#1581#1603#1605' '#1605#1608#1575#1601#1602#1578
      TabOrder = 2
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 544
      Top = 9
      Width = 193
      Height = 21
      DropDownCount = 8
      Anchors = [akTop, akRight, akBottom]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      LookupField = 'TABLE_NAME'
      LookupDisplay = 'TABLE_NAME'
      LookupSource = DataSource2
      TabOrder = 1
      OnChange = RxDBLookupCombo1Change
    end
    object cxButton2: TcxButton
      Left = 304
      Top = 9
      Width = 113
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1589#1583#1608#1585' '#1581#1603#1605' '#1605#1582#1575#1604#1601#1578
      TabOrder = 3
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton3: TcxButton
      Left = 184
      Top = 9
      Width = 113
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1593#1604#1575#1605' '#1605#1593#1575#1585#1590
      TabOrder = 4
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton4: TcxButton
      Left = 56
      Top = 9
      Width = 113
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1593#1583#1605' '#1605#1608#1575#1601#1602#1578' '#1581#1584#1601' '#1662#1587#1608#1606#1583
      TabOrder = 5
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
    end
  end
  object DataSource1: TDataSource
    DataSet = dsoNames
    Left = 192
    Top = 296
  end
  object ADODataSet1: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = ' exec sp_tables @table_type ="'#39'TABLE'#39'", @TABLE_NAME="v%"'
    Parameters = <>
    Left = 248
    Top = 24
    object ADODataSet1TABLE_QUALIFIER: TWideStringField
      FieldName = 'TABLE_QUALIFIER'
      ReadOnly = True
      Size = 128
    end
    object ADODataSet1TABLE_OWNER: TWideStringField
      FieldName = 'TABLE_OWNER'
      ReadOnly = True
      Size = 128
    end
    object ADODataSet1TABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      ReadOnly = True
      Size = 128
    end
    object ADODataSet1TABLE_TYPE: TStringField
      FieldName = 'TABLE_TYPE'
      ReadOnly = True
      Size = 32
    end
    object ADODataSet1REMARKS: TStringField
      FieldName = 'REMARKS'
      ReadOnly = True
      Size = 254
    end
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet1
    Left = 272
    Top = 24
  end
  object dsoNames: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    OnCalcFields = ADOTable1CalcFields
    CommandText = 'select * from v1 order by v01_Cnt'
    Parameters = <>
    Left = 224
    Top = 296
    object dsoNamesv01: TStringField
      FieldName = 'v01'
      FixedChar = True
      Size = 39
    end
    object dsoNamesv01_cnt: TStringField
      FieldName = 'v01_cnt'
      Size = 200
    end
    object dsoNamesv02: TStringField
      FieldName = 'v02'
      FixedChar = True
      Size = 25
    end
    object dsoNamesv02_cnt: TStringField
      FieldName = 'v02_cnt'
      Size = 200
    end
    object dsoNamesv03: TStringField
      FieldName = 'v03'
      FixedChar = True
      Size = 25
    end
    object dsoNamesv03_cnt: TStringField
      FieldName = 'v03_cnt'
      Size = 200
    end
    object dsoNamesv04: TIntegerField
      FieldName = 'v04'
    end
    object dsoNamesv05: TBCDField
      FieldName = 'v05'
      Precision = 10
      Size = 0
    end
    object dsoNamesv06: TIntegerField
      FieldName = 'v06'
    end
    object dsoNamesv07: TIntegerField
      FieldName = 'v07'
    end
    object dsoNamesv08: TIntegerField
      FieldName = 'v08'
    end
    object dsoNamesv09: TStringField
      FieldName = 'v09'
      FixedChar = True
      Size = 25
    end
    object dsoNamesv09_cnt: TStringField
      FieldName = 'v09_cnt'
      Size = 200
    end
    object dsoNamesv10_cnt: TStringField
      FieldName = 'v10_cnt'
      Size = 200
    end
    object dsoNamesv10: TStringField
      FieldName = 'v10'
      FixedChar = True
      Size = 39
    end
    object dsoNamesv11: TIntegerField
      FieldName = 'v11'
    end
    object dsoNamesv12: TIntegerField
      FieldName = 'v12'
    end
    object dsoNamesv13: TIntegerField
      FieldName = 'v13'
    end
    object dsoNamesv14: TStringField
      FieldName = 'v14'
      FixedChar = True
      Size = 39
    end
    object dsoNamesv14_cnt: TStringField
      FieldName = 'v14_cnt'
      Size = 200
    end
    object dsoNamesv15: TStringField
      FieldName = 'v15'
      FixedChar = True
      Size = 5
    end
    object dsoNamesv15_cnt: TStringField
      FieldName = 'v15_cnt'
      Size = 200
    end
    object dsoNamestype: TStringField
      FieldKind = fkCalculated
      FieldName = 'type'
      Size = 200
      Calculated = True
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 8
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1587#1605#1607' '#1578#1593#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6181
        mmLeft = 93302
        mmTop = 4763
        mmWidth = 13589
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1580#1605#1607#1608#1585#1610' '#1575#1587#1604#1575#1605#1610' '#1575#1610#1585#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6181
        mmLeft = 162994
        mmTop = 1058
        mmWidth = 27771
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1608#1586#1575#1585#1578' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 168805
        mmTop = 8202
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1587#1575#1586#1605#1575#1606' '#1579#1576#1578' '#1575#1581#1608#1575#1604' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 161396
        mmTop = 15610
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1583#1575#1585#1607' '#1603#1604' '#1579#1576#1578' '#1575#1581#1608#1575#1604' '#1575#1587#1578#1575#1606' '#1578#1607#1585#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5546
        mmLeft = 157544
        mmTop = 22754
        mmWidth = 40894
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1588#1605#1575#1585#1607' ----------------------------------------1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 12171
        mmTop = 4233
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582' ----------------------------------------1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 12435
        mmTop = 10054
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1662#1610#1608#1587#1578' ----------------------------------------1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 12171
        mmTop = 17198
        mmWidth = 35983
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 125677
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1583#1575#1585#1607' '#1578#1605#1585#1603#1586' '#1575#1587#1606#1575#1583' '#1587#1580#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 162190
        mmTop = 1852
        mmWidth = 30163
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 146315
        mmTop = 7408
        mmWidth = 47096
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1583#1575#1585#1607' '#1579#1576#1578' '#1575#1581#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 165365
        mmTop = 8202
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1575#1586#1711#1588#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 187505
        mmTop = 20108
        mmWidth = 9610
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1662#1610#1585#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 190765
        mmTop = 27252
        mmWidth = 4233
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 186267
        mmTop = 25400
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 176742
        mmTop = 23019
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1594#1610#1610#1585' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 117550
        mmTop = 24077
        mmWidth = 19770
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1570#1602#1575#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 108479
        mmTop = 21431
        mmWidth = 5292
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 105569
        mmTop = 26988
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1582#1575#1606#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 109347
        mmTop = 28840
        mmWidth = 4953
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1583#1575#1585#1606#1583#1607' '#1588#1606#1575#1587#1606#1575#1605#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 180426
        mmTop = 42069
        mmWidth = 16425
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 169069
        mmTop = 37571
        mmWidth = 6350
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 168805
        mmTop = 43921
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1578#1608#1604#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 169334
        mmTop = 45773
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v04'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 142875
        mmTop = 38100
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v08'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 139965
        mmTop = 46302
        mmWidth = 27781
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1601#1585#1586#1606#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 119856
        mmTop = 41540
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v03_cnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 96573
        mmTop = 42069
        mmWidth = 20902
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1589#1575#1583#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 84371
        mmTop = 37571
        mmWidth = 6646
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 76200
        mmTop = 43921
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 78464
        mmTop = 45244
        mmWidth = 12023
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v09_cnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 55033
        mmTop = 38100
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v06'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 47890
        mmTop = 46302
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1586' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 181991
        mmTop = 56356
        mmWidth = 16976
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 122767
        mmTop = 55563
        mmWidth = 1852
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1590#1605#1606' '#1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 181938
        mmTop = 66675
        mmWidth = 12531
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1583#1575#1585#1607' '#1603#1604' '#1582#1583#1605#1575#1578' '#1608' '#1605#1583#1575#1585#1603' '#1587#1580#1604#1610' '#1575#1586' '#1591#1585#1610#1602' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 86911
        mmTop = 67204
        mmWidth = 45381
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1608#1581#1583#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 188214
        mmTop = 75142
        mmWidth = 7578
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 180975
        mmTop = 81492
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1606#1578#1582#1575#1576' '#1570#1586#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 182732
        mmTop = 82815
        mmWidth = 12531
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 177261
        mmTop = 79111
        mmWidth = 2921
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1583#1587#1578#1608#1585#1575#1604#1593#1605#1604' '#1588#1605#1575#1585#1607' 2 '#1605#1608#1585#1583' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 91642
        mmTop = 78581
        mmWidth = 27686
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1608#1575#1601#1602#1578' '#1602#1585#1575#1585' '#1711#1585#1601#1578' '#1670#1607#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 170837
        mmTop = 96573
        mmWidth = 26543
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1580#1585#1575' '#1583#1585' '#1575#1587#1606#1575#1583' '#1587#1580#1604#1610' '#1606#1575#1605#1576#1585#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 139373
        mmTop = 93134
        mmWidth = 28109
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 152665
        mmTop = 99484
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1576#1604#1575#1594' '#1576#1607' '#1605#1578#1602#1575#1590#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 150865
        mmTop = 100806
        mmWidth = 16087
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1593#1604#1575#1605' '#1605#1610' '#1711#1585#1583#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 107717
        mmTop = 97631
        mmWidth = 15579
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1583#1610#1585' '#1603#1604' '#1579#1576#1578' '#1575#1581#1608#1575#1604' '#1575#1587#1578#1575#1606' '#1578#1607#1585#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Titr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6181
        mmLeft = 66252
        mmTop = 115888
        mmWidth = 39582
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v01_cnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4868
        mmLeft = 70908
        mmTop = 56092
        mmWidth = 49477
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v13'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4868
        mmLeft = 146844
        mmTop = 67469
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v10_cnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4868
        mmLeft = 59796
        mmTop = 25400
        mmWidth = 44450
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'v10_cnt'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4868
        mmLeft = 134673
        mmTop = 57415
        mmWidth = 44450
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 43392
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1585#1608#1606#1608#1588#1578':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5546
        mmLeft = 183389
        mmTop = 3175
        mmWidth = 11345
        BandType = 8
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1583#1575#1585#1607' '#1579#1576#1578' '#1575#1581#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5546
        mmLeft = 173144
        mmTop = 10319
        mmWidth = 21590
        BandType = 8
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1593#1591#1601' '#1576#1588#1605#1575#1585#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5546
        mmLeft = 118513
        mmTop = 9525
        mmWidth = 16425
        BandType = 8
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1580#1607#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5546
        mmLeft = 70845
        mmTop = 9790
        mmWidth = 6943
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Anchors = [atTop, atRight]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1591#1604#1575#1593' '#1608' '#1575#1602#1583#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5546
        mmLeft = 178033
        mmTop = 21167
        mmWidth = 17230
        BandType = 8
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 464
    Top = 8
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'v01'
      FieldName = 'v01'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'v01_cnt'
      FieldName = 'v01_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'v02'
      FieldName = 'v02'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'v02_cnt'
      FieldName = 'v02_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'v03'
      FieldName = 'v03'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'v03_cnt'
      FieldName = 'v03_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'v04'
      FieldName = 'v04'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'v05'
      FieldName = 'v05'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'v06'
      FieldName = 'v06'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'v07'
      FieldName = 'v07'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'v08'
      FieldName = 'v08'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'v09'
      FieldName = 'v09'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'v09_cnt'
      FieldName = 'v09_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'v10_cnt'
      FieldName = 'v10_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'v10'
      FieldName = 'v10'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'v11'
      FieldName = 'v11'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'v12'
      FieldName = 'v12'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'v13'
      FieldName = 'v13'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'v14'
      FieldName = 'v14'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'v14_cnt'
      FieldName = 'v14_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'v15'
      FieldName = 'v15'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'v15_cnt'
      FieldName = 'v15_cnt'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'type'
      FieldName = 'type'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
end
