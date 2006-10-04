object InNewBill: TInNewBill
  Left = 91
  Top = 70
  Width = 606
  Height = 412
  BiDiMode = bdRightToLeft
  Caption = #1608#1610#1585#1575#1610#1588' '#1581#1608#1575#1604#1607' '#1607#1575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 38
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 506
      Top = 10
      Width = 49
      Height = 15
      Caption = #1603#1583' '#1581#1608#1575#1604#1607
    end
    object Label2: TLabel
      Left = 305
      Top = 10
      Width = 55
      Height = 15
      Caption = #1606#1608#1593' '#1581#1608#1575#1604#1607
    end
    object DBEdit1: TDBEdit
      Left = 383
      Top = 8
      Width = 113
      Height = 23
      DataField = 'Bill_no'
      DataSource = NewBills.dsuBill
      ReadOnly = True
      TabOrder = 0
    end
    object catType: TRSqlDbLookup
      Left = 98
      Top = 8
      Width = 193
      Height = 22
      BiDiMode = bdRightToLeft
      DataField = 'Bill_type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ID'
      ListField = 'desc'
      ListSource = dsCat
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = catTypeClick
      FieldType = ftRequired
    end
  end
  object GBCreate1: TGroupBox
    Left = 0
    Top = 38
    Width = 598
    Height = 92
    Align = alTop
    Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1711#1575#1606' '#1581#1608#1575#1604#1607
    TabOrder = 1
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
      Height = 23
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
      FieldType = ftRequired
    end
    object lkpReciever: TRSqlDbLookup
      Left = 6
      Top = 40
      Width = 197
      Height = 23
      BiDiMode = bdRightToLeft
      KeyField = 'emp_no'
      ListField = 'FLName'
      ListSource = DabData.dsEmp
      ParentBiDiMode = False
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
  object GBCreate2: TGroupBox
    Left = 0
    Top = 130
    Width = 598
    Height = 69
    Align = alTop
    Caption = #1578#1606#1592#1610#1605
    TabOrder = 2
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
      Height = 23
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
      Height = 23
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
      Height = 23
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
  object edMove: TGroupBox
    Left = 0
    Top = 199
    Width = 598
    Height = 69
    Align = alTop
    Caption = #1578#1606#1592#1610#1605' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1711#1575#1606
    TabOrder = 3
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
      BiDiMode = bdRightToLeft
      KeyField = 'emp_no'
      ListField = 'FLName'
      ListSource = DabData.dsEmp
      ParentBiDiMode = False
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
    Top = 268
    Width = 598
    Height = 50
    Align = alTop
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 4
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
      Height = 23
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
      Height = 23
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
  object pnBotton: TPanel
    Left = 0
    Top = 343
    Width = 598
    Height = 35
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 5
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
      ButtonType = btCancel
    end
  end
  object dsCat: TDataSource
    DataSet = spCat1
    Left = 104
    Top = 8
  end
  object spCat1: TADOStoredProc
    Connection = DabData.ADOC
    ProcedureName = 'GetCatNames;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Tbl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'Bill'
      end
      item
        Name = '@Col'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'Bill_type'
      end>
    Left = 72
    Top = 8
    object spCat1ID: TIntegerField
      FieldName = 'ID'
    end
    object spCat1desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
end
