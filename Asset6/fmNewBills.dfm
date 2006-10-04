object NewBills: TNewBills
  Left = 0
  Top = 91
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1581#1608#1575#1604#1607' '#1607#1575
  ClientHeight = 441
  ClientWidth = 793
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 793
    Height = 137
    Align = alTop
    DataSource = dsuBill
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Bill_no'
        Title.Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CreatorFLName'
        Title.Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'create_date'
        Title.Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ConfirmerFLName'
        Title.Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'confirm_date'
        Title.Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Conf_TellerFLName'
        Title.Caption = #1576#1585#1585#1587#1610' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'conf_date'
        Title.Caption = #1578#1575#1585#1610#1582' '#1576#1585#1585#1587#1610
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'item_req_no'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'receiverFLName'
        Title.Caption = #1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Delivery_ManFLName'
        Title.Caption = #1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Org_Code'
        Title.Caption = #1603#1583' '#1587#1575#1586#1605#1575#1606
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Unit_code'
        Title.Caption = #1603#1583' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Loc_code'
        Title.Caption = #1603#1583' '#1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'rec_Org_code'
        Title.Caption = #1603#1583' '#1587#1575#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'rec_Unit_code'
        Title.Caption = #1603#1583' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'rec_Loc_code'
        Title.Caption = #1603#1583' '#1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'StateStr'
        Title.Caption = #1608#1590#1610#1593#1578
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bill_TypeStr'
        Title.Caption = #1606#1608#1593' '#1581#1608#1575#1604#1607
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reason'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Width = 209
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 243
    Width = 793
    Height = 130
    Align = alClient
    DataSource = dsuBillDetail
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemName'
        Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_code'
        Title.Caption = #1603#1583' '#1603#1575#1604#1575
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Caption = #1605#1602#1583#1575#1585'/'#1578#1593#1583#1575#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'label'
        Title.Caption = #1576#1585#1670#1587#1576
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Goods_Code'
        Title.Caption = #1603#1583' '#1605#1575#1604#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MgNote'
        Title.Caption = #1606#1603#1575#1578
        Width = 242
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 190
    Width = 793
    Height = 27
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 488
      Top = 5
      Width = 65
      Height = 16
      Caption = #1578#1575#1585#1610#1582' '#1578#1575#1610#1610#1583
      FocusControl = DBEdit2
    end
    object Label1: TLabel
      Left = 724
      Top = 5
      Width = 64
      Height = 16
      Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
      FocusControl = DBEdit1
    end
    object Label7: TLabel
      Left = 319
      Top = 5
      Width = 77
      Height = 16
      Caption = #1576#1585#1585#1587#1610' '#1603#1606#1606#1583#1607
      FocusControl = DBEdit7
    end
    object Label3: TLabel
      Left = 72
      Top = 5
      Width = 78
      Height = 16
      Caption = #1578#1575#1585#1610#1582' '#1576#1585#1585#1587#1610
      FocusControl = DBEdit3
    end
    object DBEdit2: TDBEdit
      Left = 409
      Top = 1
      Width = 68
      Height = 23
      Color = 16635581
      DataField = 'confirm_date'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 560
      Top = 1
      Width = 153
      Height = 23
      Color = 16635581
      DataField = 'ConfirmerFLName'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 153
      Top = 1
      Width = 152
      Height = 23
      Color = 16635581
      DataField = 'Conf_TellerFLName'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 9
      Top = 1
      Width = 59
      Height = 23
      Color = 16635581
      DataField = 'conf_date'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 793
    Height = 53
    Align = alTop
    TabOrder = 3
    object Label4: TLabel
      Left = 451
      Top = 4
      Width = 67
      Height = 16
      Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 724
      Top = 6
      Width = 66
      Height = 16
      Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 310
      Top = 4
      Width = 54
      Height = 16
      Caption = #1578#1608#1590#1610#1581#1575#1578
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 712
      Top = 31
      Width = 77
      Height = 16
      Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FocusControl = DBEdit5
    end
    object Label9: TLabel
      Left = 415
      Top = 31
      Width = 72
      Height = 16
      Caption = #1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607
      FocusControl = DBEdit9
    end
    object DBEdit4: TDBEdit
      Left = 368
      Top = 2
      Width = 68
      Height = 23
      Color = 16635581
      DataField = 'create_date'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 521
      Top = 2
      Width = 176
      Height = 23
      Color = 16635581
      DataField = 'CreatorFLName'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 7
      Top = 2
      Width = 298
      Height = 23
      Color = 16635581
      DataField = 'Reason'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 521
      Top = 27
      Width = 176
      Height = 23
      Color = 16635581
      DataField = 'receiverFLName'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 7
      Top = 27
      Width = 377
      Height = 23
      Color = 16635581
      DataField = 'Delivery_ManFLName'
      DataSource = dsuBill
      ReadOnly = True
      TabOrder = 4
    end
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 373
    Width = 793
    Height = 68
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'FlName'
        Title.Caption = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Get_Date'
        Title.Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Org_Name'
        Title.Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_Name'
        Title.Caption = #1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Loc_Name'
        Title.Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descr'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Width = 198
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 217
    Width = 793
    Height = 26
    Align = alTop
    TabOrder = 5
    object RSqlButton1: TRSqlButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
    object RSqlButton2: TRSqlButton
      Left = 78
      Top = 1
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RSqlButton1Click
      ButtonType = btCancel
    end
  end
  object dsBill: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = dsBillAfterScroll
    CommandText = 
      'Declare @State int'#13#10'Set @State=:State'#13#10'Select * from Vw_Bill'#13#10'  ' +
      ' where '#13#10'         State=1 '#13#10'   or '#13#10'         IsNull(@State,1)=1'#13 +
      #10'order by bill_no desc'
    Parameters = <
      item
        Name = 'State'
        DataType = ftInteger
        Size = 4
        Value = 1
      end>
    Left = 32
    Top = 16
    object dsBillBill_TypeStr: TStringField
      FieldName = 'Bill_TypeStr'
      ReadOnly = True
      Size = 100
    end
    object dsBillBill_no: TIntegerField
      FieldName = 'Bill_no'
    end
    object dsBillBill_type: TSmallintField
      FieldName = 'Bill_type'
    end
    object dsBillcreator: TStringField
      FieldName = 'creator'
      FixedChar = True
      Size = 10
    end
    object dsBillcreate_date: TStringField
      FieldName = 'create_date'
      FixedChar = True
      Size = 8
    end
    object dsBillconfirmer: TStringField
      FieldName = 'confirmer'
      FixedChar = True
      Size = 10
    end
    object dsBillconfirm_date: TStringField
      FieldName = 'confirm_date'
      FixedChar = True
      Size = 8
    end
    object dsBillconf_teller: TStringField
      FieldName = 'conf_teller'
      FixedChar = True
      Size = 10
    end
    object dsBillconf_date: TStringField
      FieldName = 'conf_date'
      FixedChar = True
      Size = 8
    end
    object dsBillitem_req_no: TIntegerField
      FieldName = 'item_req_no'
    end
    object dsBillreceiver: TStringField
      FieldName = 'receiver'
      FixedChar = True
      Size = 10
    end
    object dsBilldelivery_man: TStringField
      FieldName = 'delivery_man'
      FixedChar = True
      Size = 10
    end
    object dsBillOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object dsBillUnit_code: TSmallintField
      FieldName = 'Unit_code'
    end
    object dsBillLoc_code: TSmallintField
      FieldName = 'Loc_code'
    end
    object dsBillrec_Org_code: TIntegerField
      FieldName = 'rec_Org_code'
    end
    object dsBillrec_Unit_code: TSmallintField
      FieldName = 'rec_Unit_code'
    end
    object dsBillrec_Loc_code: TSmallintField
      FieldName = 'rec_Loc_code'
    end
    object dsBillState: TSmallintField
      FieldName = 'State'
    end
    object dsBillReason: TStringField
      FieldName = 'Reason'
      Size = 100
    end
    object dsBillStateStr: TStringField
      FieldName = 'StateStr'
      ReadOnly = True
      Size = 100
    end
    object dsBillCreatorFLName: TStringField
      FieldName = 'CreatorFLName'
      ReadOnly = True
      Size = 100
    end
    object dsBillConfirmerFLName: TStringField
      FieldName = 'ConfirmerFLName'
      ReadOnly = True
      Size = 100
    end
    object dsBillConf_TellerFLName: TStringField
      FieldName = 'Conf_TellerFLName'
      ReadOnly = True
      Size = 100
    end
    object dsBillreceiverFLName: TStringField
      FieldName = 'receiverFLName'
      ReadOnly = True
      Size = 100
    end
    object dsBillDelivery_ManFLName: TStringField
      FieldName = 'Delivery_ManFLName'
      ReadOnly = True
      Size = 100
    end
  end
  object dsuBill: TDataSource
    DataSet = dsBill
    Left = 72
    Top = 16
  end
  object dsuBillDetail: TDataSource
    DataSet = dsBillDetail
    Left = 104
    Top = 248
  end
  object dsBillDetail: TADODataSet
    Connection = DabData.ADOC
    AfterScroll = dsBillDetailAfterRefresh
    CommandText = 'Vw_BillDetails'
    CommandType = cmdTable
    DataSource = dsuBill
    IndexFieldNames = 'bill_no;Bill_Type'
    MasterFields = 'Bill_no;Bill_type'
    Parameters = <>
    Left = 152
    Top = 240
    object dsBillDetailItemName: TStringField
      FieldName = 'ItemName'
      ReadOnly = True
      Size = 100
    end
    object dsBillDetailitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 10
    end
    object dsBillDetailbill_no: TIntegerField
      FieldName = 'bill_no'
    end
    object dsBillDetailAmount: TIntegerField
      FieldName = 'Amount'
    end
    object dsBillDetaillabel: TIntegerField
      FieldName = 'label'
    end
    object dsBillDetailGoods_Code: TStringField
      FieldName = 'Goods_Code'
      FixedChar = True
      Size = 12
    end
    object dsBillDetailMgNote: TStringField
      FieldName = 'MgNote'
      Size = 200
    end
    object dsBillDetailBill_Type: TSmallintField
      FieldName = 'Bill_Type'
    end
  end
  object spDetailBillStor: TADOStoredProc
    Connection = DabData.ADOC
    CursorType = ctStatic
    LockType = ltReadOnly
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
    object spDetailBillStorCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
  end
  object dsBillItems: TDataSource
    DataSet = spDetailBillStor
    Left = 317
    Top = 280
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
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Bill_no'
      FieldName = 'Bill_no'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Create_Date'
      FieldName = 'Create_Date'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
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
    PrinterSetup.mmMarginTop = 12700
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 372
    Top = 280
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 47890
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 14737632
        mmHeight = 7938
        mmLeft = 10319
        mmTop = 39952
        mmWidth = 176477
        BandType = 0
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
        mmHeight = 7673
        mmLeft = 104511
        mmTop = 40217
        mmWidth = 4763
        BandType = 0
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
        mmHeight = 7673
        mmLeft = 88371
        mmTop = 40217
        mmWidth = 3440
        BandType = 0
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
        mmHeight = 7673
        mmLeft = 70379
        mmTop = 40217
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmTop = 41804
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1593#1583#1575#1583'/'#1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 88900
        mmTop = 41804
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1604#1575#1581#1592#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 33602
        mmTop = 41275
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 142875
        mmTop = 41804
        mmWidth = 10054
        BandType = 0
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
        mmHeight = 7673
        mmLeft = 172773
        mmTop = 40217
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 176213
        mmTop = 41804
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1585#1670#1587#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial (Arabic)'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 105569
        mmTop = 41804
        mmWidth = 10583
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
        mmHeight = 7673
        mmLeft = 120386
        mmTop = 39952
        mmWidth = 4763
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 25929
        mmLeft = 10583
        mmTop = 265
        mmWidth = 176477
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 174096
        mmTop = 10583
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1589#1601#1581#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 176213
        mmTop = 4498
        mmWidth = 9525
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
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 173567
        mmTop = 4498
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 169069
        mmTop = 4498
        mmWidth = 2381
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
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 166423
        mmTop = 4498
        mmWidth = 2910
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
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
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 155046
        mmTop = 10848
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1608#1586#1575#1585#1578' '#1603#1588#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 86519
        mmTop = 8467
        mmWidth = 21696
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmLeft = 93927
        mmTop = 265
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'#1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 176213
        mmTop = 17198
        mmWidth = 8467
        BandType = 0
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
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 149225
        mmTop = 17463
        mmWidth = 24342
        BandType = 0
      end
      object edOrgan: TppLabel
        UserName = 'edOrgan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 50006
        mmTop = 16404
        mmWidth = 97631
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1576#1606#1605#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 29369
        mmTop = 25929
        mmWidth = 11113
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmLeft = 47890
        mmTop = 25929
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1604#1575#1586#1605' '#1575#1587#1578' '#1575#1602#1604#1575#1605' '#1586#1610#1585' '#1585#1575' '#1576#1605#1608#1580#1576' '#1575#1610#1606' '#1581#1608#1575#1604#1607' '#1575#1586' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585'  '#1578#1581#1608#1610#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6879
        mmLeft = 95515
        mmTop = 25929
        mmWidth = 91546
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 168805
        mmTop = 32808
        mmWidth = 18256
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmLeft = 10583
        mmTop = 33073
        mmWidth = 157163
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '('#1581#1608#1575#1604#1607' '#1575#1606#1576#1575#1585')'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8731
        mmLeft = 15610
        mmTop = 10054
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 30956
        mmTop = 3175
        mmWidth = 16404
        BandType = 0
      end
      object ppReportPDate: TppLabel
        UserName = 'lbDate1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 14817
        mmTop = 3440
        mmWidth = 14817
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
        mmLeft = 10583
        mmTop = 0
        mmWidth = 176477
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
        mmHeight = 7673
        mmLeft = 88371
        mmTop = 0
        mmWidth = 13758
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
        mmHeight = 7673
        mmLeft = 70379
        mmTop = 0
        mmWidth = 7673
        BandType = 4
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
        mmHeight = 7673
        mmLeft = 104511
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
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
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmLeft = 88636
        mmTop = 794
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
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
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 120121
        mmTop = 794
        mmWidth = 52652
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
        mmHeight = 7673
        mmLeft = 172773
        mmTop = 0
        mmWidth = 3969
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        OnGetText = ppRadVariable1GetText
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
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MgNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 10319
        mmTop = 1058
        mmWidth = 59796
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
        mmHeight = 7673
        mmLeft = 120386
        mmTop = 0
        mmWidth = 3175
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Label'
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
        mmLeft = 105304
        mmTop = 794
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 63765
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 29633
        mmLeft = 10583
        mmTop = 265
        mmWidth = 176477
        BandType = 8
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 39952
        mmTop = 19050
        mmWidth = 7408
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1583#1610#1585' '#1603#1604' '#1575#1605#1608#1585' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 26458
        mmTop = 10848
        mmWidth = 34660
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1581#1587#1575#1576#1583#1575#1585' '#1608' '#1580#1605#1593#1583#1575#1585' '#1575#1605#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 86519
        mmTop = 10848
        mmWidth = 31221
        BandType = 8
      end
      object ppLabel15: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 100542
        mmTop = 19050
        mmWidth = 7408
        BandType = 8
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 18521
        mmLeft = 10319
        mmTop = 29633
        mmWidth = 176742
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmHeight = 4763
        mmLeft = 65088
        mmTop = 37042
        mmWidth = 121709
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 40481
        mmTop = 36513
        mmWidth = 8996
        BandType = 8
      end
      object ppPartAdminName: TppLabel
        UserName = 'PartAdminName'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1587#1574#1608#1604' '#1602#1587#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 155311
        mmTop = 10848
        mmWidth = 18521
        BandType = 8
      end
      object ppPartAdminConfirm: TppLabel
        UserName = 'PartAdminConfirm'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 161925
        mmTop = 19050
        mmWidth = 7408
        BandType = 8
      end
      object ppSignatureAsset: TppLabel
        UserName = 'SignatureAsset'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1606#1576#1575#1585' '#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 173567
        mmTop = 57415
        mmWidth = 13229
        BandType = 8
      end
      object ppSignatureAssetSign: TppLabel
        UserName = 'SignatureAssetSign'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Nazanin'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 163248
        mmTop = 57415
        mmWidth = 7408
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
    end
  end
  object dsGoodsUser: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 
      'select * from Vw_Goods_User'#13#10'where bill_no=:bill_no'#13#10'    and Bil' +
      'l_type=:bill_type'#13#10'    and Goods_code=:Goods-Code'
    DataSource = dsuBillDetail
    IndexFieldNames = 'Bill_no;Bill_Type;Goods_Code'
    MasterFields = 'bill_no;Bill_Type;Goods_Code'
    Parameters = <
      item
        Name = 'bill_no'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'bill_type'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Goods-Code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    Left = 304
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = dsGoodsUser
    Left = 280
    Top = 392
  end
end
