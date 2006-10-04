object Bills: TBills
  Left = 0
  Top = 47
  HelpContext = 13
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                                '#1581#1608#1575#1604#1607' '#1607#1575
  ClientHeight = 523
  ClientWidth = 804
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
  object dbgBill: TDBGrid
    Left = 0
    Top = 0
    Width = 804
    Height = 169
    Align = alTop
    DataSource = dsBillKar
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgBillEnter
    OnExit = dbgBillExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Bill_no'
        Title.Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Billtype'
        Title.Caption = #1606#1608#1593' '#1581#1608#1575#1604#1607
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ST'
        Title.Caption = #1608#1590#1593#1610#1578
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_req_no'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reason'
        Title.Caption = #1583#1604#1610#1604' '#1589#1583#1608#1585' '#1581#1608#1575#1604#1607
        Width = 299
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 169
    Width = 804
    Height = 26
    Align = alTop
    BevelInner = bvLowered
    Caption = #1603#1575#1604#1575#1607#1575#1610' '#1605#1589#1585#1601#1610' '#1581#1608#1575#1604#1607' '#1588#1583#1607
    TabOrder = 1
    object paButton: TPanel
      Left = 3
      Top = -2
      Width = 150
      Height = 28
      TabOrder = 0
      object btReject: TRSqlButton
        Left = -1
        Top = 3
        Width = 75
        Height = 24
        Caption = #1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btOKClick
        ButtonType = btNone
      end
      object btOK: TRSqlButton
        Left = 73
        Top = 3
        Width = 75
        Height = 24
        Caption = #1578#1575#1574#1610#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btOKClick
        ButtonType = btOk
      end
    end
  end
  object dbgBillItems: TDBGrid
    Left = 0
    Top = 195
    Width = 804
    Height = 273
    Align = alClient
    Color = cl3DLight
    DataSource = dsBillItems
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgBillItemsEnter
    OnExit = dbgBillItemsExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Goods_codeStr'
        Title.Caption = #1603#1583' '#1605#1575#1604'/'#1603#1583#1603#1575#1604#1575
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item_Name'
        Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_Item_Desc'
        Title.Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Caption = #1605#1602#1583#1575#1585' '#1603#1575#1604#1575
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Label'
        Title.Caption = #1588#1605#1575#1585#1607' '#1576#1585#1670#1587#1576
        Width = 110
        Visible = True
      end>
  end
  object pnUser: TPanel
    Left = 0
    Top = 468
    Width = 804
    Height = 55
    Align = alBottom
    TabOrder = 3
    object Label5: TLabel
      Left = 728
      Top = 9
      Width = 49
      Height = 16
      Caption = #1608#1590#1610#1593#1578':'
      FocusControl = DBEdit1
    end
    object Label6: TLabel
      Left = 496
      Top = 9
      Width = 71
      Height = 16
      Caption = #1606#1608#1593' '#1605#1575#1604#1603#1610#1578
      FocusControl = DBEdit2
    end
    object SpeedButton1: TSpeedButton
      Left = 255
      Top = 4
      Width = 93
      Height = 22
      Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607':'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 306
      Top = 29
      Width = 93
      Height = 22
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585':'
      Flat = True
    end
    object SpeedButton3: TSpeedButton
      Left = 715
      Top = 31
      Width = 71
      Height = 22
      Caption = #1605#1585#1603#1586#1607#1586#1610#1606#1607':'
      Flat = True
    end
    object DBEdit1: TDBEdit
      Left = 582
      Top = 4
      Width = 142
      Height = 24
      Color = 16635581
      DataField = 'State_Name'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 352
      Top = 4
      Width = 137
      Height = 24
      Color = 16635581
      DataField = 'ctype'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 5
      Top = 4
      Width = 249
      Height = 24
      Color = 16635581
      DataField = 'userName'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 400
      Top = 31
      Width = 317
      Height = 24
      Color = 16635581
      DataField = 'Ut_Name'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 4
      Top = 29
      Width = 301
      Height = 24
      Color = 16635581
      DataField = 'Descr'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object dsBillKar: TDataSource
    DataSet = DabData.quBillKar
    Left = 8
    Top = 16
  end
  object dsBillItems: TDataSource
    DataSet = spDetailBillStor
    Left = 317
    Top = 280
  end
  object quDelete: TADOQuery
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
      end>
    SQL.Strings = (
      'DELETE FROM Bill '
      'WHERE '
      'Bill_No = :p1 AND '
      'Bill_Type = :p2 ')
    Left = 11
    Top = 48
  end
  object quFillBillItems: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
      end>
    SQL.Strings = (
      'EXECUTE FillBillItems :p1,:p2,:p3,:p4')
    Left = 13
    Top = 82
  end
  object quDetail: TADOQuery
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
    Left = 288
    Top = 329
    object SmallintField1: TSmallintField
      FieldName = 'Bill_Type'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Bill_No'
    end
    object StringField1: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 8
    end
    object IntegerField2: TIntegerField
      FieldName = 'Item_Amount_Number'
    end
    object StringField2: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object StringField4: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'Confirm_Date'
      FixedChar = True
      Size = 8
    end
    object IntegerField3: TIntegerField
      FieldName = 'Item_Req_No'
    end
    object SmallintField2: TSmallintField
      FieldName = 'State'
    end
    object SmallintField3: TSmallintField
      FieldName = 'Class_Code'
    end
    object SmallintField4: TSmallintField
      FieldName = 'Item_Unit'
    end
    object StringField6: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object IntegerField4: TIntegerField
      FieldName = 'Conf_Amount'
    end
    object StringField7: TStringField
      FieldName = 'Class_Name'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object StringField9: TStringField
      FieldName = 'CrtName'
      ReadOnly = True
      Size = 72
    end
    object StringField10: TStringField
      FieldName = 'ConfName'
      ReadOnly = True
      Size = 72
    end
  end
  object spDetailBillStor: TADOStoredProc
    Connection = DabData.ADOC
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = spDetailBillStorAfterScroll
    ProcedureName = 'spDetailBillStor;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Bill_No'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 288
    Top = 280
    object spDetailBillStorItem_Name: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object spDetailBillStorUnit_Item_Desc: TStringField
      FieldName = 'Unit_Item_Desc'
    end
    object spDetailBillStorLabel: TIntegerField
      FieldName = 'Label'
    end
    object spDetailBillStorGoods_codeStr: TStringField
      FieldName = 'Goods_codeStr'
      ReadOnly = True
      FixedChar = True
      Size = 12
    end
    object spDetailBillStorItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object spDetailBillStorGoods_code: TStringField
      FieldName = 'Goods_code'
      FixedChar = True
      Size = 12
    end
    object spDetailBillStorAmount: TIntegerField
      FieldName = 'Amount'
    end
    object spDetailBillStoruserReceiverName: TStringField
      FieldName = 'userReceiverName'
      ReadOnly = True
      Size = 71
    end
    object spDetailBillStoruserName: TStringField
      FieldName = 'userName'
      ReadOnly = True
      Size = 71
    end
    object spDetailBillStorUt_Name: TStringField
      FieldName = 'Ut_Name'
      Size = 80
    end
    object spDetailBillStorDescr: TStringField
      FieldName = 'Descr'
      Size = 100
    end
    object spDetailBillStorOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object spDetailBillStorUnit_Code: TSmallintField
      FieldName = 'Unit_Code'
    end
    object spDetailBillStorLoc_Code: TSmallintField
      FieldName = 'Loc_Code'
    end
    object spDetailBillStorLoc_Code_1: TSmallintField
      FieldName = 'Loc_Code_1'
    end
    object spDetailBillStorUser_emp_no: TStringField
      FieldName = 'User_emp_no'
      FixedChar = True
      Size = 10
    end
    object spDetailBillStorGet_Date: TStringField
      FieldName = 'Get_Date'
      FixedChar = True
      Size = 8
    end
    object spDetailBillStorDescr_1: TStringField
      FieldName = 'Descr_1'
      Size = 200
    end
    object spDetailBillStorLoc_Code_2: TSmallintField
      FieldName = 'Loc_Code_2'
    end
    object spDetailBillStorLoc_Desc: TStringField
      FieldName = 'Loc_Desc'
      Size = 50
    end
    object spDetailBillStorUseLoc: TStringField
      FieldName = 'UseLoc'
      ReadOnly = True
      Size = 100
    end
    object spDetailBillStorMgNote: TStringField
      FieldName = 'MgNote'
      Size = 200
    end
    object spDetailBillStorBill_no: TIntegerField
      FieldName = 'Bill_no'
    end
  end
  object DataSource1: TDataSource
    DataSet = spDetailBillStor
    Left = 168
    Top = 400
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 147902
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 149
    DeviceType = 'Screen'
    Left = 372
    Top = 280
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 48419
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 25929
        mmLeft = 10319
        mmTop = 265
        mmWidth = 176477
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = '('#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 16669
        mmTop = 9260
        mmWidth = 22490
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14737632
        mmHeight = 7938
        mmLeft = 10319
        mmTop = 40481
        mmWidth = 176477
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 110861
        mmTop = 40746
        mmWidth = 4763
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 88371
        mmTop = 40746
        mmWidth = 3440
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 70379
        mmTop = 40746
        mmWidth = 7673
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 44715
        mmTop = 40746
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 74083
        mmTop = 42333
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #1578#1593#1583#1575#1583'/'#1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 92340
        mmTop = 42333
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 49213
        mmTop = 42333
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = #1605#1604#1575#1581#1592#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 29369
        mmTop = 42333
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Bill_No'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 148961
        mmTop = 18256
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 136525
        mmTop = 42069
        mmWidth = 10054
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 172773
        mmTop = 40746
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 175684
        mmTop = 42333
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
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
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
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
      object ppLabel11: TppLabel
        UserName = 'Label11'
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
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
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
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = ':'#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 173832
        mmTop = 11377
        mmWidth = 9260
        BandType = 0
      end
      object lbDate: TppLabel
        UserName = 'lbDate'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 159015
        mmTop = 11906
        mmWidth = 11642
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
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
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = #1608#1586#1575#1585#1578' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 86254
        mmTop = 9260
        mmWidth = 21696
        BandType = 0
      end
      object edOrgan: TppLabel
        UserName = 'edOrgan'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 49742
        mmTop = 16669
        mmWidth = 97631
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = ':'#1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 174890
        mmTop = 17992
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = #1604#1575#1586#1605' '#1575#1587#1578' '#1575#1602#1604#1575#1605' '#1586#1610#1585' '#1585#1575' '#1576#1605#1608#1580#1576' '#1575#1610#1606' '#1581#1608#1575#1604#1607' '#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585'  '#1578#1581#1608#1610#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 95250
        mmTop = 26723
        mmWidth = 90752
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'userReceiverName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 47625
        mmTop = 26723
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = #1576#1606#1605#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 29104
        mmTop = 26723
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 168540
        mmTop = 33602
        mmWidth = 17463
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'UseLoc'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 10319
        mmTop = 33867
        mmWidth = 157163
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 7673
        mmLeft = 10319
        mmTop = 0
        mmWidth = 176477
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 88371
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 44715
        mmTop = 0
        mmWidth = 6085
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 70379
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 110861
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'userName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 45508
        mmTop = 794
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
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
        mmHeight = 6085
        mmLeft = 70379
        mmTop = 794
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Amount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 90752
        mmTop = 794
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'item_name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 110861
        mmTop = 794
        mmWidth = 61913
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.75
        mmHeight = 7673
        mmLeft = 172773
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        OnGetText = ppVariable1GetText
        CalcOrder = 0
        DataType = dtInteger
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        OnReset = ppVariable1Reset
        ResetType = veReportStart
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 173567
        mmTop = 794
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MgNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 10054
        mmTop = 265
        mmWidth = 35190
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 21167
        mmLeft = 10319
        mmTop = 0
        mmWidth = 176477
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 31750
        mmTop = 1588
        mmWidth = 7408
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = #1605#1583#1610#1585' '#1603#1604' '#1575#1605#1608#1585' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 41275
        mmTop = 1852
        mmWidth = 34660
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = #1581#1587#1575#1576#1583#1575#1585' '#1608' '#1580#1605#1593#1583#1575#1585' '#1575#1605#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 126207
        mmTop = 2381
        mmWidth = 31221
        BandType = 8
      end
      object ppLabel15: TppLabel
        UserName = 'Label101'
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 113242
        mmTop = 2117
        mmWidth = 7408
        BandType = 8
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 7673
        mmLeft = 16404
        mmTop = 13494
        mmWidth = 169598
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 
          #1603#1575#1604#1575#1607#1575#1610' '#1576#1575#1604#1575'  '#1576#1607' '#1575#1610#1606#1580#1575#1606#1576' .......................................' +
          '.......................... '#1578#1581#1608#1610#1604' '#1711#1585#1583#1610#1583' .'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 78052
        mmTop = 14023
        mmWidth = 107686
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 41804
        mmTop = 14023
        mmWidth = 7408
        BandType = 8
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsBillItems
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 344
    Top = 280
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Item_Name'
      FieldName = 'Item_Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Unit_Item_Desc'
      FieldName = 'Unit_Item_Desc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Label'
      FieldName = 'Label'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Goods_codeStr'
      FieldName = 'Goods_codeStr'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Item_Code'
      FieldName = 'Item_Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Goods_code'
      FieldName = 'Goods_code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'userReceiverName'
      FieldName = 'userReceiverName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'userName'
      FieldName = 'userName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Ut_Name'
      FieldName = 'Ut_Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Descr'
      FieldName = 'Descr'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Org_Code'
      FieldName = 'Org_Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Unit_Code'
      FieldName = 'Unit_Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Loc_Code'
      FieldName = 'Loc_Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Loc_Code_1'
      FieldName = 'Loc_Code_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'User_emp_no'
      FieldName = 'User_emp_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Get_Date'
      FieldName = 'Get_Date'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Descr_1'
      FieldName = 'Descr_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Loc_Code_2'
      FieldName = 'Loc_Code_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Loc_Desc'
      FieldName = 'Loc_Desc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'UseLoc'
      FieldName = 'UseLoc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'MgNote'
      FieldName = 'MgNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object Bill_No: TppField
      FieldAlias = 'Bill_No'
      FieldName = 'Bill_No'
      FieldLength = 10
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
  end
  object spInsertUpdateBill: TADOStoredProc
    Connection = DabData.ADOC
    CursorLocation = clUseServer
    ProcedureName = 'spAfterInsUpd2Bill;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Bill_No'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Bill_Type'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@item_req_no'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Receiver'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@State'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Reason'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Delivery_Man'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Org_code'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Unit_code'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Loc_code'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@rec_Org_code'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Rec_Unit_code'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Rec_Loc_code'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end>
    Left = 254
    Top = 113
  end
end
