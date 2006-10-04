object UserItemRequest: TUserItemRequest
  Left = 3
  Top = 110
  Width = 776
  Height = 435
  BiDiMode = bdRightToLeft
  Caption = #1583#1585' '#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 768
    Height = 237
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Req_No'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Item_Code'
        Title.Caption = #1603#1583' '#1603#1575#1604#1575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Req_Amount'
        Title.Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conf_Amount'
        Title.Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607' '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Recieve_Amount'
        Title.Caption = #1605#1602#1583#1575#1585' '#1605#1608#1580#1608#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'r_state'
        Title.Caption = #1608#1590#1610#1593#1578' '#1603#1575#1604#1575
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'item_type'
        Title.Caption = #1606#1608#1593' '#1603#1575#1604#1575
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Req_type'
        Title.Caption = #1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Req_number'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StateName'
        Title.Caption = #1608#1590#1610#1593#1578' '#1603#1575#1604#1575
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nItem'
        Title.Caption = #1606#1608#1593' '#1603#1575#1604#1575
        Width = 166
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 136
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 581
      Top = 7
      Width = 65
      Height = 13
      Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
    end
    object Label3: TLabel
      Left = 585
      Top = 29
      Width = 62
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
      FocusControl = cbDBCreateDate
    end
    object Label5: TLabel
      Left = 360
      Top = 58
      Width = 77
      Height = 13
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
    end
    object Label6: TLabel
      Left = 358
      Top = 6
      Width = 57
      Height = 13
      Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
    end
    object Label8: TLabel
      Left = 146
      Top = 7
      Width = 72
      Height = 13
      Caption = #1576#1585#1585#1587#1610' '#1603#1606#1606#1583#1607
    end
    object Label9: TLabel
      Left = 146
      Top = 29
      Width = 69
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1576#1585#1585#1587#1610
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 360
      Top = 86
      Width = 74
      Height = 13
      Caption = #1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578
    end
    object Label12: TLabel
      Left = 145
      Top = 86
      Width = 38
      Height = 13
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
    end
    object Label4: TLabel
      Left = 586
      Top = 58
      Width = 60
      Height = 13
      Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
    end
    object Label7: TLabel
      Left = 358
      Top = 29
      Width = 57
      Height = 13
      Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
    end
    object Label10: TLabel
      Left = 595
      Top = 86
      Width = 39
      Height = 13
      Caption = #1608#1590#1610#1593#1578
    end
    object Label13: TLabel
      Left = 138
      Top = 58
      Width = 71
      Height = 13
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
    end
    object cbDBCreateDate: TDBEdit
      Left = 433
      Top = 25
      Width = 134
      Height = 21
      Color = 16776176
      DataField = 'Create_Date'
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 3
      Top = 25
      Width = 134
      Height = 21
      Color = 16776176
      DataField = 'Verify_date'
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 5
    end
    object MasterDBGrid: TDBGrid
      Left = 646
      Top = 1
      Width = 121
      Height = 134
      Align = alRight
      DataSource = DataSource2
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Req_no'
          Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
          Visible = True
        end>
    end
    object cbDBOrg: TDBLookupComboBox
      Left = 434
      Top = 54
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = clInfoBk
      DataField = 'Org_Code'
      DataSource = DataSource2
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = DabData.dsOrg
      TabOrder = 8
      OnClick = cbDBOrgClick
      OnCloseUp = cbDBOrgClick
    end
    object cbDBCreator: TDBLookupComboBox
      Left = 432
      Top = 3
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = 16776176
      DataField = 'Creator'
      DataSource = DataSource2
      KeyField = 'Emp_no'
      ListField = 'FlName'
      ListSource = DabData.dsEmp
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit5: TDBLookupComboBox
      Left = 211
      Top = 54
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = clInfoBk
      DataField = 'Org_Unit_Code'
      DataSource = DataSource2
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = dsOrgUnit
      TabOrder = 2
    end
    object DBEdit6: TDBLookupComboBox
      Left = 211
      Top = 3
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = 16776176
      DataField = 'Confirmer'
      DataSource = DataSource2
      KeyField = 'Emp_no'
      ListField = 'FlName'
      ListSource = DabData.dsEmp
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit8: TDBLookupComboBox
      Left = 3
      Top = 3
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = 16776176
      DataField = 'Verifier'
      DataSource = DataSource2
      KeyField = 'Emp_no'
      ListField = 'FlName'
      ListSource = DabData.dsEmp
      ReadOnly = True
      TabOrder = 4
    end
    object cbDBItem: TDBLookupComboBox
      Left = 2
      Top = 82
      Width = 134
      Height = 21
      BevelWidth = 0
      DataField = 'Goods_code'
      DataSource = DataSource2
      KeyField = 'Item_Code'
      ListField = 'Item_Name'
      ListSource = dsItem
      TabOrder = 7
    end
    object DBEdit13: TDBLookupComboBox
      Left = 3
      Top = 54
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = clInfoBk
      DataField = 'Loc_Code'
      DataSource = DataSource2
      KeyField = 'loc_code'
      ListField = 'descr'
      ListSource = dsLoc
      TabOrder = 10
    end
    object DBEdit11: TDBLookupComboBox
      Left = 210
      Top = 82
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = clInfoBk
      DataField = 'Req_Type'
      DataSource = DataSource2
      KeyField = 'ID'
      ListField = 'desc'
      ListSource = DataSource4
      TabOrder = 6
    end
    object cbdbState: TDBLookupComboBox
      Left = 434
      Top = 82
      Width = 134
      Height = 21
      BevelWidth = 0
      Color = 16776176
      DataField = 'State'
      DataSource = DataSource2
      KeyField = 'ID'
      ListField = 'desc'
      ListSource = DataSource3
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit1: TDBEdit
      Left = 211
      Top = 25
      Width = 134
      Height = 21
      Color = 16776176
      DataField = 'Confirm_date'
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 12
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 373
    Width = 768
    Height = 28
    Align = alBottom
    TabOrder = 2
    object Label15: TLabel
      Left = 290
      Top = 7
      Width = 91
      Height = 13
      Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607' '
      FocusControl = DBEdit12
    end
    object Label16: TLabel
      Left = 81
      Top = 7
      Width = 131
      Height = 13
      Caption = #1605#1602#1583#1575#1585#1610' '#1603#1607' '#1583#1585#1610#1575#1601#1578' '#1603#1585#1583#1610#1583
      FocusControl = DBEdit14
    end
    object Label14: TLabel
      Left = 469
      Top = 7
      Width = 92
      Height = 13
      Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
      FocusControl = DBEdit7
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 570
      Top = 3
      Width = 134
      Height = 21
      BevelWidth = 0
      DataField = 'Item_Code'
      DataSource = DataSource1
      KeyField = 'Item_Code'
      ListField = 'Item_Name'
      ListSource = dsItem
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object DBEdit12: TDBEdit
      Left = 224
      Top = 3
      Width = 50
      Height = 21
      Color = 16776176
      DataField = 'Conf_Amount'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit14: TDBEdit
      Left = 0
      Top = 3
      Width = 54
      Height = 21
      Color = 16776176
      DataField = 'Recieve_Amount'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 392
      Top = 3
      Width = 65
      Height = 21
      Color = clInfoBk
      DataField = 'Req_Amount'
      DataSource = DataSource1
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 709
      Top = 3
      Width = 52
      Height = 21
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      TabOrder = 4
    end
  end
  object dstRequestItemMaster: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 'select * from Item_Request'#13#10'order by Req_no'
    Parameters = <>
    Left = 672
    Top = 48
    object dstRequestItemMasterReq_no: TIntegerField
      FieldName = 'Req_no'
    end
    object dstRequestItemMasterCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object dstRequestItemMasterCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object dstRequestItemMasterOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object dstRequestItemMasterOrg_Unit_Code: TSmallintField
      FieldName = 'Org_Unit_Code'
    end
    object dstRequestItemMasterConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 10
    end
    object dstRequestItemMasterConfirm_date: TStringField
      FieldName = 'Confirm_date'
      FixedChar = True
      Size = 8
    end
    object dstRequestItemMasterVerifier: TStringField
      FieldName = 'Verifier'
      FixedChar = True
      Size = 10
    end
    object dstRequestItemMasterVerify_date: TStringField
      FieldName = 'Verify_date'
      FixedChar = True
      Size = 8
    end
    object dstRequestItemMasterState: TSmallintField
      FieldName = 'State'
    end
    object dstRequestItemMasterReq_Type: TSmallintField
      FieldName = 'Req_Type'
    end
    object dstRequestItemMasterGoods_code: TStringField
      FieldName = 'Goods_code'
      FixedChar = True
      Size = 12
    end
    object dstRequestItemMasterLoc_Code: TSmallintField
      FieldName = 'Loc_Code'
    end
  end
  object DataSource2: TDataSource
    DataSet = dstRequestItemMaster
    Left = 704
    Top = 48
  end
  object dstRequestItemDetail: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 
      'select  dbo.GetCatName(r_State,'#39'requested_item'#39','#39'r_State'#39') as St' +
      'ateName'#13#10' ,dbo.GetCatName(Item_Type,'#39'Goods_Class'#39','#39'Class_Type'#39') ' +
      'as nItem'#10',* from requested_item'
    DataSource = DataSource2
    IndexFieldNames = 'Req_No'
    MasterFields = 'Req_no'
    Parameters = <>
    Left = 560
    Top = 240
    object dstRequestItemDetailReq_No: TIntegerField
      FieldName = 'Req_No'
    end
    object dstRequestItemDetailItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object dstRequestItemDetailReq_Amount: TIntegerField
      FieldName = 'Req_Amount'
    end
    object dstRequestItemDetailConf_Amount: TIntegerField
      FieldName = 'Conf_Amount'
    end
    object dstRequestItemDetailRecieve_Amount: TIntegerField
      FieldName = 'Recieve_Amount'
    end
    object dstRequestItemDetailr_state: TSmallintField
      FieldName = 'r_state'
    end
    object dstRequestItemDetailitem_type: TSmallintField
      FieldName = 'item_type'
    end
    object dstRequestItemDetailReq_type: TSmallintField
      FieldName = 'Req_type'
    end
    object dstRequestItemDetailReq_number: TStringField
      FieldName = 'Req_number'
      FixedChar = True
      Size = 8
    end
    object dstRequestItemDetailStateName: TStringField
      FieldName = 'StateName'
      ReadOnly = True
      Size = 100
    end
    object dstRequestItemDetailnItem: TStringField
      FieldName = 'nItem'
      ReadOnly = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = dstRequestItemDetail
    Left = 592
    Top = 240
  end
  object DataSource3: TDataSource
    DataSet = dstState
    Left = 520
    Top = 80
  end
  object DataSource4: TDataSource
    DataSet = dstReqType
    Left = 288
    Top = 80
  end
  object dstState: TADODataSet
    Connection = DabData.ADOC
    CommandText = 'GetCatNames;1'
    CommandType = cmdStoredProc
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
        Value = 'Item_Request'
      end
      item
        Name = '@Col'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'State'
      end>
    Left = 488
    Top = 80
    object dstStateID: TIntegerField
      FieldName = 'ID'
    end
    object dstStatedesc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
  object dstReqType: TADODataSet
    Active = True
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 'GetCatNames;1'
    CommandType = cmdStoredProc
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
        Value = 'Item_Request'
      end
      item
        Name = '@Col'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'Req_Type'
      end>
    Left = 264
    Top = 88
    object dstReqTypeID: TIntegerField
      FieldName = 'ID'
    end
    object dstReqTypedesc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
  object dsItem: TDataSource
    DataSet = dstItem
    Left = 640
    Top = 376
  end
  object dstItem: TADODataSet
    Connection = DabData.ADOC
    CommandText = 'select * from Vw_Item'
    Parameters = <>
    Left = 616
    Top = 376
    object dstItemItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object dstItemItem_Name: TStringField
      FieldName = 'Item_Name'
      Size = 30
    end
    object dstItemClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
  end
  object dsOrgUnit: TDataSource
    DataSet = dstOrgUnit
    Left = 272
    Top = 56
  end
  object dstOrgUnit: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = dstOrgUnitAfterScroll
    CommandText = 'select * from Org_Unit where Ut_Org_Code=:Ut_Org_Code'
    Parameters = <
      item
        Name = 'Ut_Org_Code'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 240
    Top = 56
    object dstOrgUnitUt_Code: TSmallintField
      FieldName = 'Ut_Code'
    end
    object dstOrgUnitUt_Name: TStringField
      FieldName = 'Ut_Name'
      Size = 80
    end
  end
  object dstLoc: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 
      'select * from Deploy_Location where Org_code=:Org_code and Unit_' +
      'Code=:Unit_Code'
    Parameters = <
      item
        Name = 'Org_code'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Unit_Code'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    Left = 32
    Top = 56
    object dstLocloc_code: TSmallintField
      FieldName = 'loc_code'
    end
    object dstLocdescr: TStringField
      FieldName = 'descr'
      Size = 100
    end
  end
  object dsLoc: TDataSource
    DataSet = dstLoc
    Left = 64
    Top = 56
  end
end
