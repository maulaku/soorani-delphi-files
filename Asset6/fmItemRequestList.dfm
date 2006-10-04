object ItemRequestList: TItemRequestList
  Left = 81
  Top = 183
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'œ— ŒÊ«”  Â«Ì ﬂ«·«Â«Ì „—»ÊÿÂ'
  ClientHeight = 296
  ClientWidth = 648
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
  TextHeight = 16
  object dbgItems: TDBGrid
    Left = 0
    Top = 0
    Width = 648
    Height = 259
    Align = alTop
    DataSource = dsItems
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ReqType'
        Title.Caption = '‰Ê⁄ œ—ŒÊ«” '
        Width = 191
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item_name'
        Title.Caption = '‰«„ ﬂ«·«'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Req_No'
        Title.Caption = '‘„«—Â œ—ŒÊ«”  ﬂ«·«'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order_Req_Amount'
        Title.Caption = '„ﬁœ«— œ—ŒÊ«”  Œ—Ìœ'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 648
    Height = 37
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object btnDelete: TButton
      Left = 190
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Õ–›'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Caption = ' «ÌÌœ'
      TabOrder = 1
    end
  end
  object quItems: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = quItemsAfterScroll
    OnCalcFields = quItemsCalcFields
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IRL.* , Item.Item_name  FROM Item_Request_List IRL'
      'LEFT OUTER JOIN Item ON '
      'IRL.Item_Code = Item.Item_Code '
      
        'WHERE Order_Req_No = :p1 AND Order_Type = 1 AND IRL.Item_Code = ' +
        ':p2')
    Left = 56
    Top = 8
    object quItemsOrder_Type: TSmallintField
      FieldName = 'Order_Type'
    end
    object quItemsOrder_Req_No: TStringField
      FieldName = 'Order_Req_No'
      FixedChar = True
      Size = 8
    end
    object quItemsRow: TSmallintField
      FieldName = 'Row'
    end
    object quItemsOrder_Req_Amount: TSmallintField
      FieldName = 'Order_Req_Amount'
    end
    object quItemsR_Type: TSmallintField
      FieldName = 'R_Type'
    end
    object quItemsItem_name: TStringField
      FieldName = 'Item_name'
      Size = 30
    end
    object quItemsReqType: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReqType'
      Size = 30
      Calculated = True
    end
    object quItemsReq_No: TIntegerField
      FieldName = 'Req_No'
    end
    object quItemsItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 8
    end
  end
  object dsItems: TDataSource
    DataSet = quItems
    Left = 24
    Top = 8
  end
end
