object SetBillUserName: TSetBillUserName
  Left = 126
  Top = 170
  Width = 564
  Height = 193
  ActiveControl = btOK
  BiDiMode = bdRightToLeft
  Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607' '#1603#1575#1604#1575
  Color = 14663101
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PaDetailOper: TPanel
    Left = 0
    Top = 0
    Width = 556
    Height = 129
    Align = alClient
    BorderWidth = 1
    TabOrder = 0
    object Label2: TLabel
      Left = 463
      Top = 10
      Width = 42
      Height = 16
      Caption = #1603#1583' '#1605#1575#1604
    end
    object Label1: TLabel
      Left = 351
      Top = 106
      Width = 53
      Height = 16
      Caption = #1588#1600#1600#1600#1600#1600#1600#1585#1581
    end
    object Label4: TLabel
      Left = 225
      Top = 58
      Width = 67
      Height = 16
      Caption = #1605#1585#1603#1586' '#1607#1586#1610#1606#1607
    end
    object Label5: TLabel
      Left = 460
      Top = 82
      Width = 81
      Height = 16
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
    end
    object Label6: TLabel
      Left = 210
      Top = 83
      Width = 81
      Height = 16
      Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
    end
    object Label7: TLabel
      Left = 460
      Top = 106
      Width = 73
      Height = 16
      Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
    end
    object Label8: TLabel
      Left = 460
      Top = 55
      Width = 90
      Height = 16
      BiDiMode = bdRightToLeft
      Caption = ' '#1608#1575#1581#1583#1587#1575#1586#1605#1575#1606#1610
      ParentBiDiMode = False
    end
    object Label9: TLabel
      Left = 227
      Top = 34
      Width = 48
      Height = 16
      BiDiMode = bdRightToLeft
      Caption = #1587#1575#1586#1605#1575#1606
      ParentBiDiMode = False
    end
    object Label10: TLabel
      Left = 459
      Top = 32
      Width = 80
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607
    end
    object Label3: TLabel
      Left = 229
      Top = 9
      Width = 45
      Height = 16
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
    end
    object edGoods: TRSqlEdit
      Left = 294
      Top = 5
      Width = 163
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = 16635581
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftDisplay
    end
    object dblCostUser: TRSqlDbLookup
      Left = 4
      Top = 53
      Width = 220
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = DabData.dsCostCenter
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = dblCostUserClick
      OnCloseUp = dblCostUserClick
      FieldType = ftNonRequired
    end
    object dblEmpUser: TRSqlDbLookup
      Left = 4
      Top = 79
      Width = 201
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'Emp_No'
      ListField = 'FLName'
      ListSource = DabData.dsEmp
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = dblEmpUserClick
      FieldType = ftRequired
    end
    object meGetDate: TRSqlMaskEdit
      Left = 406
      Top = 102
      Width = 51
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
      FieldType = ftNonRequired
    end
    object edDescr: TRSqlEdit
      Left = 3
      Top = 102
      Width = 342
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftNonRequired
    end
    object dblUnit: TRSqlDbLookup
      Left = 294
      Top = 53
      Width = 163
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = DabData.dsOrgUnit
      ParentBiDiMode = False
      TabOrder = 5
      OnClick = dblUnitClick
      OnCloseUp = dblUnitClick
      FieldType = ftNonRequired
    end
    object dblLocUser: TRSqlDbLookup
      Left = 294
      Top = 77
      Width = 163
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'loc_code'
      ListField = 'loc_desc'
      ListSource = DabData.dsDeployLoc
      ParentBiDiMode = False
      TabOrder = 6
      OnClick = dblLocUserClick
      OnCloseUp = dblLocUserClick
      FieldType = ftNonRequired
    end
    object dblOrg: TRSqlDbLookup
      Left = 4
      Top = 29
      Width = 220
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = DabData.dsOrg
      ParentBiDiMode = False
      TabOrder = 7
      OnClick = dblOrgCloseUp
      OnCloseUp = dblOrgCloseUp
      FieldType = ftNonRequired
    end
    object edBill: TRSqlEdit
      Left = 294
      Top = 29
      Width = 163
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = 16635581
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      FieldType = ftDisplay
    end
    object edItemName: TRSqlEdit
      Left = 4
      Top = 3
      Width = 220
      Height = 22
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = 16635581
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
      FieldType = ftDisplay
    end
  end
  object paOkCancel: TPanel
    Left = 0
    Top = 129
    Width = 556
    Height = 30
    Align = alBottom
    TabOrder = 1
    object btCancel: TRSqlButton
      Left = 80
      Top = 3
      Width = 65
      Height = 25
      Cancel = True
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btCancelClick
      ButtonType = btCancel
    end
    object btOK: TRSqlButton
      Left = 14
      Top = 3
      Width = 67
      Height = 25
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
  object spUpdateGoodsUser: TADOStoredProc
    Connection = DabData.ADOC
    ProcedureName = 'spUpdateGoodsUser;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@InsertMode'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@Goods_code'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@Bill_no'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Bill_Type'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@User_Emp_no'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@org_code'
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
        Name = '@Cost_code'
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
        Name = '@Get_Date'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = Null
      end
      item
        Name = '@Descr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end>
    Left = 152
    Top = 133
  end
  object quInsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Bill_no'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Bill_Type'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'User_Emp_no'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Goods_code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'org_code'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Unit_code'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Cost_code'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Loc_code'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Get_Date'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'Descr'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into goods_user(Bill_no,Bill_Type,User_Emp_no,Goods_code,' +
        'org_code,Unit_code,Cost_code,Loc_code,Get_Date,Descr)'
      
        'values( :Bill_no,Isnull(:Bill_Type,-1),IsNull(:User_Emp_no,dbo.G' +
        'etUser()),:Goods_code,'
      
        '             Isnull(:org_code,dbo.GetOrgCode()),:Unit_code,:Cost' +
        '_code,:Loc_code,'
      '             IsNull(:Get_Date,dbo.GetPDate(GetDate())),:Descr)')
    Left = 208
    Top = 136
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'User_Emp_no'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'org_code'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Unit_code'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Cost_code'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Loc_code'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Get_Date'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'Descr'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'Bill_no'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Bill_Type'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Goods_code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Update Goods_User  Set'
      ' User_Emp_no=:User_Emp_no,'
      ' org_code=:org_code ,'
      ' Unit_code=:Unit_code ,'
      ' Cost_code=:Cost_code,'
      ' Loc_code=:Loc_code,'
      ' Get_Date=:Get_Date,'
      ' Descr=:Descr'
      ' where   Bill_No=:Bill_no '
      '   and   Bill_Type=:Bill_Type'
      '   and   Goods_Code=:Goods_code')
    Left = 240
    Top = 136
  end
end
