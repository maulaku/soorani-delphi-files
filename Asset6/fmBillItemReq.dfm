object BillItemReq: TBillItemReq
  Left = 40
  Top = 127
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '            œ—ŒÊ«”  Â«Ì ﬂ«·«'
  ClientHeight = 339
  ClientWidth = 729
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
  TextHeight = 16
  object dbgItemReq: TDBGrid
    Left = 0
    Top = 0
    Width = 729
    Height = 137
    Align = alTop
    DataSource = dsItemReq
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgItemReqDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Req_no'
        Title.Caption = '‘„«—Â œ—ŒÊ«” '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Org_Name'
        Title.Caption = '‰«„ ”«“„«‰'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ut_Name'
        Title.Caption = 'Ê«Õœ ”«“„«‰Ì'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReqType'
        Title.Caption = '‰Ê⁄ œ—ŒÊ«” '
        Width = 150
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 729
    Height = 23
    Align = alTop
    BevelInner = bvLowered
    Caption = 'ﬂ«·«Â«Ì œ—ŒÊ«”  ‘œÂ'
    TabOrder = 1
  end
  object dbgReqItem: TDBGrid
    Left = 0
    Top = 160
    Width = 729
    Height = 127
    Align = alTop
    Color = cl3DLight
    DataSource = dsReqItem
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgReqItemDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Caption = '‰«„ ﬂ«·«'
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Req_Amount'
        Title.Caption = '„ﬁœ«— œ—ŒÊ«” Ì'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conf_Amount'
        Title.Caption = '„ﬁœ«—  «ÌÌœ ‘œÂ'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Recieve_Amount'
        Title.Caption = '„ﬁœ«—  ÕÊÌ· ›⁄·Ì'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RState'
        Title.Caption = 'Ê÷⁄Ì  ﬂ«·«Ì œ—ŒÊ«” Ì'
        Width = 184
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 287
    Width = 729
    Height = 52
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 3
    object btnOK: TRSqlButton
      Left = 7
      Top = 9
      Width = 75
      Height = 24
      Caption = ' «∆Ìœ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnOKClick
      ButtonType = btOk
    end
    object btnCancel: TRSqlButton
      Left = 82
      Top = 9
      Width = 75
      Height = 24
      Caption = '·€Ê'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
      ButtonType = btCancel
    end
  end
  object quItemReq: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = quItemReqAfterScroll
    OnCalcFields = quItemReqCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT IR.* , Org.Org_Name , OU.Ut_Name  FROM Item_Request IR '
      'LEFT OUTER JOIN Organization Org ON '
      'IR.Org_Code = Org.Org_Code '
      'LEFT OUTER JOIN Org_Unit OU ON '
      'IR.Org_Code = OU.Ut_Org_Code AND '
      'IR.Org_Unit_Code = OU.Ut_Code '
      'WHERE '
      'IR.State = 3 '
      
        'and IR.Req_No in(Select Requested_item.Req_no From Requested_ite' +
        'm Where R_State<>3)'
      'order by  Ir.Create_Date Desc')
    Left = 24
    Top = 16
    object quItemReqReq_no: TIntegerField
      FieldName = 'Req_no'
    end
    object quItemReqCreator: TStringField
      FieldName = 'Creator'
      FixedChar = True
      Size = 10
    end
    object quItemReqCreate_Date: TStringField
      FieldName = 'Create_Date'
      FixedChar = True
      Size = 8
    end
    object quItemReqOrg_Code: TSmallintField
      FieldName = 'Org_Code'
    end
    object quItemReqOrg_Unit_Code: TSmallintField
      FieldName = 'Org_Unit_Code'
    end
    object quItemReqConfirmer: TStringField
      FieldName = 'Confirmer'
      FixedChar = True
      Size = 8
    end
    object quItemReqConfirm_date: TStringField
      FieldName = 'Confirm_date'
      FixedChar = True
      Size = 8
    end
    object quItemReqVerifier: TStringField
      FieldName = 'Verifier'
      FixedChar = True
      Size = 10
    end
    object quItemReqVerify_date: TStringField
      FieldName = 'Verify_date'
      FixedChar = True
      Size = 8
    end
    object quItemReqState: TSmallintField
      FieldName = 'State'
    end
    object quItemReqReq_Type: TSmallintField
      FieldName = 'Req_Type'
    end
    object quItemReqOrg_Name: TStringField
      FieldName = 'Org_Name'
      Size = 80
    end
    object quItemReqUt_Name: TStringField
      FieldName = 'Ut_Name'
      Size = 80
    end
    object quItemReqReqType: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReqType'
      Size = 30
      Calculated = True
    end
    object quItemReqGoods_Code: TStringField
      FieldName = 'Goods_Code'
      FixedChar = True
      Size = 12
    end
    object quItemReqLoc_Code: TSmallintField
      FieldName = 'Loc_Code'
    end
  end
  object quReqItem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    OnCalcFields = quReqItemCalcFields
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT RI.* , IT.item_name  FROM Requested_Item RI'
      'LEFT OUTER JOIN Item IT ON '
      'RI.Item_Code = IT.Item_Code '
      'WHERE '
      'RI.Req_No = :p1 ')
    Left = 24
    Top = 176
    object quReqItemItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 8
    end
    object quReqItemReq_Amount: TIntegerField
      FieldName = 'Req_Amount'
    end
    object quReqItemConf_Amount: TIntegerField
      FieldName = 'Conf_Amount'
    end
    object quReqItemRecieve_Amount: TIntegerField
      FieldName = 'Recieve_Amount'
    end
    object quReqItemr_state: TSmallintField
      FieldName = 'r_state'
    end
    object quReqItemitem_type: TSmallintField
      FieldName = 'item_type'
    end
    object quReqItemReq_type: TSmallintField
      FieldName = 'Req_type'
    end
    object quReqItemReq_number: TStringField
      FieldName = 'Req_number'
      FixedChar = True
      Size = 8
    end
    object quReqItemitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quReqItemRState: TStringField
      FieldKind = fkCalculated
      FieldName = 'RState'
      Size = 30
      Calculated = True
    end
    object quReqItemReq_No: TIntegerField
      FieldName = 'Req_No'
    end
  end
  object dsItemReq: TDataSource
    DataSet = quItemReq
    Left = 56
    Top = 16
  end
  object dsReqItem: TDataSource
    DataSet = quReqItem
    Left = 64
    Top = 176
  end
end
