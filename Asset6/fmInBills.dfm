object InBills: TInBills
  Left = 118
  Top = 113
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                             '#1581#1608#1575 +
    #1604#1607' '#1607#1575#1610' '#1575#1606#1576#1575#1585
  ClientHeight = 344
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnBotton: TPanel
    Left = 0
    Top = 308
    Width = 547
    Height = 36
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object btnOK: TRSqlButton
      Left = 7
      Top = 8
      Width = 70
      Height = 23
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnOKClick
      ButtonType = btOk
    end
    object btnCancel: TRSqlButton
      Left = 77
      Top = 8
      Width = 70
      Height = 23
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
      ButtonType = btCancel
    end
  end
  object edMove: TGroupBox
    Left = 0
    Top = 189
    Width = 547
    Height = 70
    Align = alTop
    Caption = #1578#1606#1592#1610#1605' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1711#1575#1606
    TabOrder = 1
    object Label16: TLabel
      Left = 453
      Top = 48
      Width = 75
      Height = 15
      Caption = #1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607':'
    end
    object Label17: TLabel
      Left = 449
      Top = 23
      Width = 52
      Height = 15
      Caption = #1587#1575#1586#1605#1575#1606' :'
    end
    object Label18: TLabel
      Left = 166
      Top = 17
      Width = 86
      Height = 15
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610':'
    end
    object Label12: TLabel
      Left = 179
      Top = 47
      Width = 71
      Height = 15
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
    end
    object DblUserSend: TRSqlDbLookup
      Left = 268
      Top = 43
      Width = 175
      Height = 23
      KeyField = 'emp_no'
      ListField = 'FLName'
      ListSource = DabData.dsEmp
      TabOrder = 0
      FieldType = ftRequired
    end
    object dblOrgSend: TRSqlDbLookup
      Left = 268
      Top = 21
      Width = 175
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = DabData.dsOrg
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = dblOrgClick
      FieldType = ftRequired
    end
    object dblUnitSend: TRSqlDbLookup
      Left = 6
      Top = 13
      Width = 152
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = DabData.dsCostCenter
      ParentBiDiMode = False
      TabOrder = 2
      FieldType = ftRequired
    end
    object dblLocSend: TRSqlDbLookup
      Left = 8
      Top = 42
      Width = 148
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'loc_code'
      ListField = 'loc_desc'
      ListSource = DabData.dsDeployLoc
      ParentBiDiMode = False
      TabOrder = 3
      FieldType = ftNonRequired
    end
  end
  object GBConfirm: TGroupBox
    Left = 0
    Top = 259
    Width = 547
    Height = 49
    Align = alTop
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 2
    object Label8: TLabel
      Left = 424
      Top = 12
      Width = 67
      Height = 15
      Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607':'
    end
    object Label9: TLabel
      Left = 106
      Top = 12
      Width = 68
      Height = 15
      Caption = #1578#1575#1585#1610#1582' '#1578#1575#1610#1610#1583':'
    end
    object rbConfirm: TRadioButton
      Left = 482
      Top = 31
      Width = 46
      Height = 16
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
    end
    object rbRefuse: TRadioButton
      Left = 429
      Top = 31
      Width = 46
      Height = 16
      Caption = #1585#1583
      TabOrder = 1
    end
    object edConfirmer: TRSqlEdit
      Left = 240
      Top = 8
      Width = 180
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftDisplay
    end
    object edConfirmDate: TRSqlEdit
      Left = 6
      Top = 8
      Width = 96
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      FieldType = ftDisplay
    end
  end
  object GBCreate2: TGroupBox
    Left = 0
    Top = 121
    Width = 547
    Height = 68
    Align = alTop
    Caption = #1578#1606#1592#1610#1605
    TabOrder = 3
    object Label5: TLabel
      Left = 436
      Top = 17
      Width = 96
      Height = 15
      Caption = #1583#1604#1610#1604' '#1589#1583#1608#1585' '#1581#1608#1575#1604#1607':'
    end
    object Label6: TLabel
      Left = 436
      Top = 39
      Width = 69
      Height = 15
      Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607':'
    end
    object Label7: TLabel
      Left = 117
      Top = 39
      Width = 70
      Height = 15
      Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605':'
    end
    object edReason: TRSqlEdit
      Left = 13
      Top = 13
      Width = 414
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 100
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftNonRequired
    end
    object edCreator: TRSqlEdit
      Left = 233
      Top = 36
      Width = 193
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftDisplay
    end
    object edCreateDate: TRSqlEdit
      Left = 12
      Top = 36
      Width = 97
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftDisplay
    end
  end
  object GBCreate1: TGroupBox
    Left = 0
    Top = 29
    Width = 547
    Height = 92
    Align = alTop
    Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1711#1575#1606' '#1581#1608#1575#1604#1607
    TabOrder = 4
    object Label3: TLabel
      Left = 442
      Top = 22
      Width = 98
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578':'
    end
    object Label10: TLabel
      Left = 239
      Top = 22
      Width = 52
      Height = 15
      Caption = #1587#1575#1586#1605#1575#1606' :'
    end
    object Label11: TLabel
      Left = 439
      Top = 44
      Width = 86
      Height = 15
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610':'
    end
    object Label4: TLabel
      Left = 209
      Top = 44
      Width = 81
      Height = 15
      Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607':'
    end
    object Label13: TLabel
      Left = 464
      Top = 68
      Width = 71
      Height = 15
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
    end
    object edItemReqNo: TRSqlEdit
      Left = 321
      Top = 18
      Width = 110
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftRequired
    end
    object btnItemReq: TButton
      Left = 296
      Top = 18
      Width = 22
      Height = 23
      Caption = '...'
      TabOrder = 1
      OnClick = btnItemReqClick
    end
    object dblOrg: TRSqlDbLookup
      Left = 6
      Top = 18
      Width = 227
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = DabData.dsOrg
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = dblOrgClick
      FieldType = ftRequired
    end
    object dblUnit: TRSqlDbLookup
      Left = 296
      Top = 40
      Width = 136
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = DabData.dsCostCenter
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = dblUnitClick
      FieldType = ftRequired
    end
    object lkpReciever: TRSqlDbLookup
      Left = 6
      Top = 40
      Width = 197
      Height = 23
      KeyField = 'emp_no'
      ListField = 'FLName'
      ListSource = DabData.dsEmp
      TabOrder = 4
      FieldType = ftNonRequired
    end
    object dblLocUser: TRSqlDbLookup
      Left = 8
      Top = 66
      Width = 441
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'loc_code'
      ListField = 'loc_desc'
      ListSource = DabData.dsDeployLoc
      ParentBiDiMode = False
      TabOrder = 5
      FieldType = ftNonRequired
    end
  end
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 29
    Align = alTop
    TabOrder = 5
    object Label2: TLabel
      Left = 153
      Top = 8
      Width = 59
      Height = 15
      Caption = #1606#1608#1593' '#1581#1608#1575#1604#1607':'
    end
    object Label1: TLabel
      Left = 432
      Top = 8
      Width = 106
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585':'
    end
    object edBillNo: TRSqlEdit
      Left = 314
      Top = 2
      Width = 111
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = edBillNoChange
      FieldType = ftRequired
    end
    object cbBillType: TRSqlComboBox
      Left = 9
      Top = 3
      Width = 136
      Height = 22
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnChange = cbBillTypeChange
      Items.Strings = (
        #1575#1606#1576#1575#1585
        #1580#1575#1576#1580#1575#1610#1610
        #1576#1585#1711#1588#1578)
      FieldType = ftRequired
    end
  end
  object quGenCode: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Bill '
      'ORDER BY Bill_No')
    Left = 261
    Top = 313
    object quGenCodeBill_no: TIntegerField
      FieldName = 'Bill_no'
    end
  end
  object quInsert: TADOQuery
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
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
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p18'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p19'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Bill'
      
        'VALUES(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:' +
        'p14,:p15,:p16,:p17,:p18,:p19)')
    Left = 289
    Top = 313
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'receiver0'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Org_code1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Unit_code2'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Loc_code3'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'rec_org_code4'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'rec_Unit_code5'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'rec_Loc_code6'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'delivery_man7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Reason8'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'Bill_No9'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Bill_Type10'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE Bill SET '
      'receiver = :receiver0,'
      'Org_code=:Org_code1,'
      'Unit_code=:Unit_code2,'
      'Loc_code=:Loc_code3,'
      'rec_org_code=:rec_org_code4,'
      'rec_Unit_code=:rec_Unit_code5,'
      'rec_Loc_code=:rec_Loc_code6,'
      'delivery_man=:delivery_man7,'
      'Reason = :Reason8 '
      'WHERE '
      'Bill_No = :Bill_No9 AND '
      'Bill_Type = :Bill_Type10 ')
    Left = 317
    Top = 313
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
    Left = 406
    Top = 313
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
    Left = 345
    Top = 313
  end
  object quCheckKey: TADOQuery
    Connection = DabData.ADOC
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
      'select Bill_no from  Bill where Bill_No=:p0')
    Left = 472
    Top = 337
    object quCheckKeyBill_no: TIntegerField
      FieldName = 'Bill_no'
    end
  end
end
