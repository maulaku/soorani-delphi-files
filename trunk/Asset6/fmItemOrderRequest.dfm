object ItemOrderRequest: TItemOrderRequest
  Left = 1
  Top = 71
  HelpContext = 9
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                   '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583' '#1603#1575#1604#1575
  ClientHeight = 426
  ClientWidth = 791
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
  TextHeight = 15
  object dbgOrderRequest: TDBGrid
    Left = 0
    Top = 0
    Width = 791
    Height = 216
    Align = alTop
    DataSource = dsItemOrderRequest
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgOrderRequestEnter
    OnExit = dbgOrderRequestExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Order_Req_No'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StateStr'
        Title.Caption = #1608#1590#1593#1610#1578
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ItemType'
        Title.Caption = #1606#1608#1593' '#1603#1575#1604#1575
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_name'
        Title.Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575
        Width = 279
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 216
    Width = 791
    Height = 24
    Align = alTop
    BevelInner = bvLowered
    Caption = #1603#1575#1604#1575#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583' '#1588#1583#1607
    TabOrder = 1
  end
  object dbgOrderedRequestItem: TDBGrid
    Left = 0
    Top = 240
    Width = 791
    Height = 186
    Align = alClient
    DataSource = dsOrdReqItems
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgOrderedRequestItemDblClick
    OnEnter = dbgOrderedRequestItemEnter
    OnExit = dbgOrderedRequestItemExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Item_Code'
        Title.Caption = #1603#1583' '#1603#1575#1604#1575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item_name'
        Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_Item_Desc'
        Title.Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount_Number'
        Title.Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price_Estimate_Number'
        Title.Caption = #1576#1585#1570#1608#1585#1583' '#1602#1610#1605#1578
        Width = 156
        Visible = True
      end>
  end
  object dsItemOrderRequest: TDataSource
    DataSet = quItemOrderRequest
    Left = 16
    Top = 8
  end
  object quDelete: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM Order_Request'
      'WHERE '
      'Order_Req_Type = 1 AND '
      'Order_Req_No = :p1 ')
    Left = 32
    Top = 64
  end
  object dsOrdReqItems: TDataSource
    DataSet = quOrdReqItems
    Left = 16
    Top = 280
  end
  object quDelItem: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'P1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
      end
      item
        Name = 'P2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
      end>
    SQL.Strings = (
      'DELETE FROM Ordered_Request_Item'
      'WHERE '
      'Order_Type = 1 AND '
      'Order_Req_No = :p1 AND '
      'Item_Code = :p2')
    Left = 16
    Top = 320
  end
  object quItemOrderRequest: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = quItemOrderRequestAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'dbo.GetCatName(State,'#39'Order_Request'#39','#39'State'#39') StateStr,'
      'dbo.GetCatName(State,'#39'Goods_Class'#39','#39'Class_Type'#39') ItemType,'
      'ORR.* , GC.class_name  FROM Order_Request ORR'
      'LEFT OUTER JOIN Goods_Class GC ON'
      'ORR.Item_Class = GC.Class_Code')
    Left = 116
    Top = 56
    object quItemOrderRequestOrder_Req_Type: TSmallintField
      FieldName = 'Order_Req_Type'
    end
    object quItemOrderRequestOrder_Req_No: TStringField
      FieldName = 'Order_Req_No'
      FixedChar = True
      Size = 8
    end
    object quItemOrderRequestState: TSmallintField
      FieldName = 'State'
    end
    object quItemOrderRequestCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quItemOrderRequestCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quItemOrderRequestConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 10
    end
    object quItemOrderRequestConfirm_Date: TStringField
      FieldName = 'Confirm_Date'
      FixedChar = True
      Size = 8
    end
    object quItemOrderRequestCredit_Suplier: TStringField
      FieldName = 'Credit_Suplier'
      FixedChar = True
      Size = 10
    end
    object quItemOrderRequestCS_Date: TStringField
      FieldName = 'CS_Date'
      FixedChar = True
      Size = 8
    end
    object quItemOrderRequestService_Desc: TStringField
      FieldName = 'Service_Desc'
      Size = 100
    end
    object quItemOrderRequestItem_Type: TSmallintField
      FieldName = 'Item_Type'
    end
    object quItemOrderRequestItem_Class: TSmallintField
      FieldName = 'Item_Class'
    end
    object quItemOrderRequestRequest_Refuse_Reason: TStringField
      FieldName = 'Request_Refuse_Reason'
      Size = 200
    end
    object quItemOrderRequestService_Type_No: TSmallintField
      FieldName = 'Service_Type_No'
    end
    object quItemOrderRequestEstimate_Price: TFloatField
      FieldName = 'Estimate_Price'
    end
    object quItemOrderRequestDeal_Kind: TSmallintField
      FieldName = 'Deal_Kind'
    end
    object quItemOrderRequestInquiry_Date_Rec: TStringField
      FieldName = 'Inquiry_Date_Rec'
      FixedChar = True
      Size = 8
    end
    object quItemOrderRequestState_Desc: TStringField
      FieldKind = fkCalculated
      FieldName = 'State_Desc'
      Calculated = True
    end
    object quItemOrderRequestclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quItemOrderRequestStateStr: TStringField
      FieldName = 'StateStr'
      ReadOnly = True
      Size = 100
    end
    object quItemOrderRequestItemType: TStringField
      FieldName = 'ItemType'
      ReadOnly = True
      Size = 100
    end
  end
  object quOrdReqItems: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = '82000001'
      end>
    SQL.Strings = (
      'SELECT ITS.* , UI.Unit_Item_Desc FROM '
      '(SELECT ORI.* , Item.Item_name , Item.Item_Unit  '
      'FROM Ordered_Request_Item ORI'
      'LEFT OUTER JOIN Item ON '
      'ORI.Item_Code = Item.item_code ) ITS '
      'LEFT OUTER JOIN Unit_Item UI ON '
      'ITS.Item_Unit = UI.Code '
      'WHERE '
      'Order_Type = 1 AND '
      'Order_Req_No = :p1 ')
    Left = 199
    Top = 344
    object quOrdReqItemsOrder_Type: TSmallintField
      FieldName = 'Order_Type'
    end
    object quOrdReqItemsOrder_Req_No: TStringField
      FieldName = 'Order_Req_No'
      FixedChar = True
      Size = 8
    end
    object quOrdReqItemsItem_Code: TStringField
      DisplayWidth = 10
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object quOrdReqItemsAmount_Number: TSmallintField
      FieldName = 'Amount_Number'
    end
    object quOrdReqItemsPrice_Estimate_Number: TFloatField
      FieldName = 'Price_Estimate_Number'
    end
    object quOrdReqItemsItem_name: TStringField
      FieldName = 'Item_name'
      Size = 30
    end
    object quOrdReqItemsItem_Unit: TSmallintField
      FieldName = 'Item_Unit'
    end
    object quOrdReqItemsUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
  end
  object dsBillItems: TDataSource
    DataSet = quOrdReqItems
    Left = 317
    Top = 280
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsBillItems
    UserName = 'DBPipeline1'
    Left = 344
    Top = 280
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order_Type'
      FieldName = 'Order_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Order_Req_No'
      FieldName = 'Order_Req_No'
      FieldLength = 8
      DisplayWidth = 8
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
      FieldAlias = 'Amount_Number'
      FieldName = 'Amount_Number'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Price_Estimate_Number'
      FieldName = 'Price_Estimate_Number'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Item_name'
      FieldName = 'Item_name'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item_Unit'
      FieldName = 'Item_Unit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
  end
  object ppReport2: TppReport
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
    Left = 376
    Top = 280
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 25929
        mmLeft = 10319
        mmTop = 265
        mmWidth = 176477
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = '('#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583' '#1603#1575#1604#1575')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7938
        mmLeft = 11113
        mmTop = 8731
        mmWidth = 37571
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 14737632
        mmHeight = 5556
        mmLeft = 9260
        mmTop = 47361
        mmWidth = 177271
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 109802
        mmTop = 47096
        mmWidth = 4763
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 87313
        mmTop = 47096
        mmWidth = 3440
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 69321
        mmTop = 47096
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 73025
        mmTop = 47890
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = #1578#1593#1583#1575#1583'/'#1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 91281
        mmTop = 47890
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = #1605#1604#1575#1581#1592#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 28310
        mmTop = 47890
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 135467
        mmTop = 47890
        mmWidth = 10054
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 6085
        mmLeft = 171715
        mmTop = 47096
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 174890
        mmTop = 47890
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = #1589#1601#1581#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 175948
        mmTop = 5292
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 173302
        mmTop = 5292
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = #1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 168805
        mmTop = 5292
        mmWidth = 2381
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageCount
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 166159
        mmTop = 5292
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = ':'#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 175684
        mmTop = 11377
        mmWidth = 7408
        BandType = 0
      end
      object lbDate: TppLabel
        UserName = 'lbDate1'
        Caption = 'lbDate1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 156898
        mmTop = 11906
        mmWidth = 13758
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          07544269746D617016060000424D160600000000000036040000280000001700
          0000140000000100080000000000E00100000000000000000000000100000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
          E00000400000004020000040400000406000004080000040A0000040C0000040
          E00000600000006020000060400000606000006080000060A0000060C0000060
          E00000800000008020000080400000806000008080000080A0000080C0000080
          E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
          E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
          E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
          E00040000000400020004000400040006000400080004000A0004000C0004000
          E00040200000402020004020400040206000402080004020A0004020C0004020
          E00040400000404020004040400040406000404080004040A0004040C0004040
          E00040600000406020004060400040606000406080004060A0004060C0004060
          E00040800000408020004080400040806000408080004080A0004080C0004080
          E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
          E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
          E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
          E00080000000800020008000400080006000800080008000A0008000C0008000
          E00080200000802020008020400080206000802080008020A0008020C0008020
          E00080400000804020008040400080406000804080008040A0008040C0008040
          E00080600000806020008060400080606000806080008060A0008060C0008060
          E00080800000808020008080400080806000808080008080A0008080C0008080
          E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
          E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
          E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
          E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
          E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
          E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
          E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
          E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
          E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
          E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
          A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFF6FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          F607EDEDA352F7EDED08F6FFFFFFFFFFFF00FFFFFFFF08A35B00004900000049
          00525BA3F6FFFFFFFF00FFFFFF08EDF6085200000049000000A3F6F6F707FFFF
          FF00FFFF0852F6F6520052F70000A3F70000A3FFF65208FFFF00FFF652F7FF5B
          0052F6080000A3FFED0000F7FFED00F6FF00FFF700FFF7000008FF074900A3FF
          FFA34900F6FF525BFF00F6005BFF5200A3FFFF07000052FFFFF60000F7FFA300
          0700F700F7F6000007FFFF07000000FFFFFF5B005BFFF700A3005B00A3070000
          F6FFFF07004952FFFFFFED0052F6ED005B00A300F7074900F6FFFF07000000FF
          FFFFED0052F6F700A3000700A3070000F6FFFF07000052FFFFFFED0052FFA300
          ED00F65200085200F6FFFF07490000FFFFFFED00A3FF0000F600FFF700F7A300
          F6FFFF07000052FFFFFFF70007ED00F7FF00FFFFA300ED00F7FFFF07000000FF
          FFF65252F600A3F6FF00FFFFF6A3525B00F6FF07004952FFFFED52075B5BF6FF
          FF00FFFFFFFFF7520052F6ED000000F6ED00A35BF7F6FFFFFF00FFFFFFFFFFF6
          ED5BED52000000A3F7A3EDF6FFFFFFFFFF00FFFFFFFFFFFFFFFF085252525252
          F6FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF6F607F6F6FFFFFFFFFFFFFFFF
          FF00}
        mmHeight = 8467
        mmLeft = 93663
        mmTop = 794
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = #1608#1586#1575#1585#1578' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7938
        mmLeft = 87313
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
      end
      object edOrgan: TppLabel
        UserName = 'edOrgan1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7938
        mmLeft = 42333
        mmTop = 16669
        mmWidth = 112713
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = ':'#1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 175948
        mmTop = 17992
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 
          #1575#1580#1606#1575#1587' '#1605#1588#1585#1608#1581#1607' '#1584#1610#1604' '#1583#1585' '#1575#1606#1576#1575#1585' '#1605#1608#1580#1608#1583' '#1606#1605#1610' '#1576#1575#1588#1583' '#1604#1591#1601#1575' '#1582#1585#1610#1583#1575#1585#1610' '#1608' '#1578#1581#1608#1610#1604' '#1575#1606 +
          #1576#1575#1585' '#1711#1585#1583#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 83079
        mmTop = 39688
        mmWidth = 103717
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = #1575#1586' : '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 177271
        mmTop = 26988
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = #1576#1607': '#1575#1583#1575#1585#1607' '#1578#1583#1575#1585#1603#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 165894
        mmTop = 33338
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Order_Req_No'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 157427
        mmTop = 19315
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 30163
        mmTop = 2117
        mmWidth = 16404
        BandType = 0
      end
      object ppReportPDate: TppLabel
        UserName = 'Label1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 14023
        mmTop = 2381
        mmWidth = 14817
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        OnGetText = ppVariable1GetText
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Item_name'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 110331
        mmTop = 0
        mmWidth = 59796
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Amount_Number'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Unit_Item_Desc'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 70644
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 9525
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 69321
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 186267
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 109802
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 87313
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 4763
        mmLeft = 171715
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.75
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 3969
        mmWidth = 177007
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 94986
      mmPrintPosition = 0
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 31485
        mmTop = 76465
        mmWidth = 6879
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = #1605#1583#1610#1585' '#1603#1604' '#1575#1605#1608#1585' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 43392
        mmTop = 76200
        mmWidth = 34131
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = #1575#1586': '#1575#1583#1575#1585#1607' '#1603#1604' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 155311
        mmTop = 56092
        mmWidth = 32279
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = #1576#1607':'#1575#1583#1575#1585#1607' '#1578#1583#1575#1585#1603#1575#1578' '#1608' '#1582#1583#1605#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 153459
        mmTop = 61383
        mmWidth = 34131
        BandType = 7
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = #1606#1587#1576#1578' '#1576#1607' '#1582#1585#1610#1583' '#1575#1602#1604#1575#1605' '#1583#1585' '#1582#1608#1575#1587#1578#1610' '#1576#1607' '#1588#1585#1581' '#1576#1575#1604#1575' '#1662#1587' '#1575#1586' '#1578#1575#1605#1610#1606' '#1575#1593#1578#1576#1575#1585' '#1711#1585#1583#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 98954
        mmTop = 67469
        mmWidth = 89694
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label103'
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 34131
        mmTop = 14023
        mmWidth = 6879
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = #1575#1605#1610#1606' '#1575#1605#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 64558
        mmTop = 14288
        mmWidth = 13229
        BandType = 7
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 34131
        mmTop = 45773
        mmWidth = 6879
        BandType = 7
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = #1575#1583#1575#1585#1607' '#1578#1583#1575#1585#1603#1575#1578' '#1582#1583#1605#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 50536
        mmTop = 46038
        mmWidth = 27252
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 
          #1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1575#1606#1576#1575#1585' '#1582#1608#1575#1607#1588#1605#1606#1583' '#1575#1587#1578' '#1583#1587#1578#1608#1585' '#1601#1585#1605#1575#1610#1610#1583' '#1606#1587#1576#1578' '#1576#1607' '#1582#1585#1610#1583 +
          ' '#1575#1602#1604#1575#1605' '#1610#1575#1583' '#1588#1583#1607' '#1575#1602#1583#1575#1605' '#1603#1585#1583#1583' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 60590
        mmTop = 36248
        mmWidth = 127265
        BandType = 7
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = #1575#1586':'#1575#1583#1575#1585#1607' '#1578#1583#1575#1585#1603#1575#1578' '#1608' '#1582#1583#1605#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 154782
        mmTop = 22754
        mmWidth = 33338
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = #1576#1607': '#1575#1583#1575#1585#1607' '#1603#1604' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 154517
        mmTop = 29104
        mmWidth = 33073
        BandType = 7
      end
    end
  end
end
