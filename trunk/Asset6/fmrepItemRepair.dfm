object repItemRepair: TrepItemRepair
  Left = 0
  Top = 92
  HelpContext = 16
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '       '#1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1578#1593#1605#1610#1585' '#1605#1575#1604
  ClientHeight = 454
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object ppViewer: TppViewer
    Left = 0
    Top = 40
    Width = 789
    Height = 383
    BevelInner = bvLowered
    PageColor = clWindow
    Report = ppReport1
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
    object ppViewer1: TppViewer
      Left = 2
      Top = 2
      Width = 785
      Height = 378
      Align = alClient
      PageColor = clWindow
      ZoomPercentage = 100
      ZoomSetting = zsWholePage
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 423
    Width = 788
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
    Width = 788
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 594
      Top = 10
      Width = 63
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1605#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 285
      Top = 10
      Width = 43
      Height = 16
      Caption = #1606#1575#1605' '#1605#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edGood_Code: TRSqlEdit
      Left = 465
      Top = 7
      Width = 121
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = edGood_CodeExit
      FieldType = ftRequired
    end
    object edGood_Name: TRSqlEdit
      Left = 161
      Top = 7
      Width = 121
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
    end
    object SpeedButton1: TButton
      Left = 439
      Top = 8
      Width = 24
      Height = 22
      Caption = '...'
      TabOrder = 1
      OnClick = SpeedButton1Click
    end
  end
  object quReqItem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Goods_code'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'ForAll'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * From Item_Request Ir left outer join Vw_Moveable_goods ' +
        'Mg'
      ' on  Ir.Goods_code=Mg.Goods_code'
      'Where Ir.State=3 and Ir.req_type=2'
      'and '
      '  ( Ir.Goods_code=:Goods_code or 1=:ForAll)')
    Left = 44
    Top = 252
    object quReqItemReq_no: TIntegerField
      FieldName = 'Req_no'
    end
    object quReqItemCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quReqItemCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quReqItemOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object quReqItemOrg_Unit_Code: TSmallintField
      FieldName = 'Org_Unit_Code'
    end
    object quReqItemConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 8
    end
    object quReqItemConfirm_date: TStringField
      FieldName = 'Confirm_date'
      FixedChar = True
      Size = 8
    end
    object quReqItemVerifier: TStringField
      FieldName = 'Verifier'
      FixedChar = True
      Size = 10
    end
    object quReqItemVerify_date: TStringField
      FieldName = 'Verify_date'
      FixedChar = True
      Size = 8
    end
    object quReqItemState: TSmallintField
      FieldName = 'State'
    end
    object quReqItemReq_Type: TSmallintField
      FieldName = 'Req_Type'
    end
    object quReqItemGoods_code: TStringField
      FieldName = 'Goods_code'
      FixedChar = True
      Size = 12
    end
    object quReqItemloc_code: TSmallintField
      FieldName = 'loc_code'
    end
    object quReqItemStateAsset: TStringField
      FieldName = 'StateAsset'
      Size = 100
    end
    object quReqItemgoods_code_1: TStringField
      FieldName = 'goods_code_1'
      FixedChar = True
      Size = 12
    end
    object quReqItemreceipt_no: TIntegerField
      FieldName = 'receipt_no'
    end
    object quReqItemlabel: TIntegerField
      FieldName = 'label'
    end
    object quReqItemAssetBPrice: TFloatField
      FieldName = 'AssetBPrice'
    end
    object quReqItemAssetEPrice: TFloatField
      FieldName = 'AssetEPrice'
    end
    object quReqItemAssetType: TStringField
      FieldName = 'AssetType'
      Size = 100
    end
    object quReqItemItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object quReqItemMaster_Name: TStringField
      FieldName = 'Master_Name'
      Size = 200
    end
    object quReqItemDetail_Name: TStringField
      FieldName = 'Detail_Name'
      Size = 200
    end
    object quReqItemItem_Name: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object quReqItemPosition_code: TStringField
      FieldName = 'Position_code'
      FixedChar = True
      Size = 10
    end
    object quReqItemInventory_Limit: TSmallintField
      FieldName = 'Inventory_Limit'
    end
    object quReqItemOrder_Point: TSmallintField
      FieldName = 'Order_Point'
    end
    object quReqItemItem_Inventory: TIntegerField
      FieldName = 'Item_Inventory'
    end
    object quReqItemitem_desc: TStringField
      FieldName = 'item_desc'
      Size = 100
    end
    object quReqItemclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quReqItemclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quReqItemclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quReqItemClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quReqItemppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quReqItempc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quReqItemps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
    object quReqItemUnit_Item: TStringField
      FieldName = 'Unit_Item'
    end
    object quReqItemClass_TypeStr: TStringField
      FieldName = 'Class_TypeStr'
      Size = 100
    end
    object quReqItemExpr1: TSmallintField
      FieldName = 'Expr1'
    end
    object quReqItemExpr2: TSmallintField
      FieldName = 'Expr2'
    end
  end
  object dsReqItem: TDataSource
    DataSet = quReqItem
    Left = 76
    Top = 252
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
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 44
    Top = 284
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1711#1586#1575#1585#1588' '#1603#1575#1604#1575#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1588#1583#1607' '#1576#1585#1575#1610' '#1578#1593#1605#1610#1585' '#1605#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 55298
        mmTop = 6085
        mmWidth = 88371
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
        mmLeft = 20902
        mmTop = 1323
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
        mmLeft = 24342
        mmTop = 1323
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
        mmLeft = 25135
        mmTop = 7144
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
        mmLeft = 9790
        mmTop = 7144
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
        mmLeft = 15875
        mmTop = 1323
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
        mmLeft = 11906
        mmTop = 1323
        mmWidth = 1058
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 14869218
        mmHeight = 6879
        mmLeft = 16933
        mmTop = 31485
        mmWidth = 167746
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 177007
        mmTop = 32015
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 145521
        mmTop = 31750
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 118798
        mmTop = 31750
        mmWidth = 19315
        BandType = 0
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 85725
        mmTop = 31750
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 39158
        mmTop = 31750
        mmWidth = 8731
        BandType = 0
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
        mmHeight = 6879
        mmLeft = 174361
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
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
        mmHeight = 6879
        mmLeft = 140229
        mmTop = 31485
        mmWidth = 13229
        BandType = 0
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
        mmHeight = 6879
        mmLeft = 112448
        mmTop = 31485
        mmWidth = 13229
        BandType = 0
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
        mmHeight = 6879
        mmLeft = 71173
        mmTop = 31485
        mmWidth = 13229
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 7144
        mmLeft = 16933
        mmTop = 0
        mmWidth = 167746
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
        mmHeight = 6879
        mmLeft = 174361
        mmTop = 0
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
        mmHeight = 6879
        mmLeft = 140229
        mmTop = 0
        mmWidth = 13229
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
        mmHeight = 6879
        mmLeft = 112448
        mmTop = 0
        mmWidth = 13229
        BandType = 4
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
        mmLeft = 71173
        mmTop = 0
        mmWidth = 13229
        BandType = 4
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
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 140494
        mmTop = 1323
        mmWidth = 34131
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
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
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 112977
        mmTop = 1323
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'class_name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 70908
        mmTop = 1323
        mmWidth = 41540
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
        mmHeight = 4498
        mmLeft = 17727
        mmTop = 1323
        mmWidth = 52388
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        OnGetText = ppVariable1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 1323
        mmWidth = 10054
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsReqItem
    UserName = 'DBPipeline1'
    Left = 76
    Top = 284
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_no'
      FieldName = 'Req_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Creator'
      FieldName = 'Creator'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Create_Date'
      FieldName = 'Create_Date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Org_Code'
      FieldName = 'Org_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Org_Unit_Code'
      FieldName = 'Org_Unit_Code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Confirmer'
      FieldName = 'Confirmer'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Confirm_date'
      FieldName = 'Confirm_date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Verifier'
      FieldName = 'Verifier'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Verify_date'
      FieldName = 'Verify_date'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Req_Type'
      FieldName = 'Req_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Goods_code'
      FieldName = 'Goods_code'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'loc_code'
      FieldName = 'loc_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'StateAsset'
      FieldName = 'StateAsset'
      FieldLength = 100
      DisplayWidth = 100
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'goods_code_1'
      FieldName = 'goods_code_1'
      FieldLength = 12
      DisplayWidth = 12
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'receipt_no'
      FieldName = 'receipt_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'label'
      FieldName = 'label'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'AssetBPrice'
      FieldName = 'AssetBPrice'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'AssetEPrice'
      FieldName = 'AssetEPrice'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'AssetType'
      FieldName = 'AssetType'
      FieldLength = 100
      DisplayWidth = 100
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Item_Code'
      FieldName = 'Item_Code'
      FieldLength = 10
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Master_Name'
      FieldName = 'Master_Name'
      FieldLength = 200
      DisplayWidth = 200
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Detail_Name'
      FieldName = 'Detail_Name'
      FieldLength = 200
      DisplayWidth = 200
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
      FieldAlias = 'Position_code'
      FieldName = 'Position_code'
      FieldLength = 10
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Inventory_Limit'
      FieldName = 'Inventory_Limit'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Order_Point'
      FieldName = 'Order_Point'
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
      FieldAlias = 'item_desc'
      FieldName = 'item_desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'class_code'
      FieldName = 'class_code'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'class_desc'
      FieldName = 'class_desc'
      FieldLength = 100
      DisplayWidth = 100
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'class_name'
      FieldName = 'class_name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Class_Type'
      FieldName = 'Class_Type'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'ppc_code'
      FieldName = 'ppc_code'
      FieldLength = 5
      DisplayWidth = 5
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'pc_code'
      FieldName = 'pc_code'
      FieldLength = 5
      DisplayWidth = 5
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'ps_code'
      FieldName = 'ps_code'
      FieldLength = 5
      DisplayWidth = 5
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'Unit_Item'
      FieldName = 'Unit_Item'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'Class_TypeStr'
      FieldName = 'Class_TypeStr'
      FieldLength = 100
      DisplayWidth = 100
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Expr1'
      FieldName = 'Expr1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppDBPipeline1ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Expr2'
      FieldName = 'Expr2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
  end
end
