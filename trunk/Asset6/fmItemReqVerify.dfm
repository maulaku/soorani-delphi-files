object ItemReqVerify: TItemReqVerify
  Left = 0
  Top = 81
  HelpContext = 7
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '       '#1576#1585#1585#1587#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575
  ClientHeight = 454
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 483
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbgDetail: TDBGrid
      Left = 2
      Top = 236
      Width = 800
      Height = 245
      Align = alClient
      DataSource = dsDetailSelect
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnEnter = dbgDetailEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'item_name'
          Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Req_Amount'
          Title.Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Conf_Amount'
          Title.Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Recieve_Amount'
          Title.Caption = #1605#1602#1583#1575#1585' '#1578#1581#1608#1610#1604' '#1601#1593#1604#1610
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StateName'
          Title.Caption = #1608#1590#1593#1610#1578' '#1603#1575#1604#1575#1610' '#1583#1585#1582#1608#1575#1587#1578#1610
          Width = 147
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
    object dbgMaster: TDBGrid
      Left = 2
      Top = 2
      Width = 800
      Height = 204
      Align = alTop
      DataSource = dsMasterSelect
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnEnter = dbgMasterEnter
      OnExit = dbgMasterExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Req_no'
          Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Org_Name'
          Title.Caption = #1587#1575#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ut_Name'
          Title.Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StateDesc'
          Title.Caption = #1608#1590#1593#1610#1578
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Req_TypeName'
          Title.Caption = #1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578
          Width = 138
          Visible = True
        end>
    end
    object paButton: TPanel
      Left = 2
      Top = 206
      Width = 800
      Height = 30
      Align = alTop
      TabOrder = 2
      object btVerify: TRSqlButton
        Left = 2
        Top = 2
        Width = 75
        Height = 25
        Caption = #1576#1585#1585#1587#1610' '#1588#1583
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btVerifyClick
        ButtonType = btNone
      end
    end
  end
  object dsDetailSelect: TDataSource
    DataSet = DabData.quReq_Item
    Left = 56
    Top = 280
  end
  object dsMasterSelect: TDataSource
    DataSet = DabData.quItem_ReqVer
    Left = 184
    Top = 48
  end
  object QuDetailDel: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Delete From Requested_Item '
      'Where Req_No=:p0 and Item_Code=:p1'
      '')
    Left = 56
    Top = 316
  end
  object quMasterDel: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    OnCalcFields = quMasterSelectCalcFields
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
      'Delete From Item_Request '
      'Where Req_No=:p0  '
      '')
    Left = 216
    Top = 48
  end
  object quCascadeDel: TADOQuery
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
      'Delete From Requested_Item '
      'Where Req_No=:p0 ')
    Left = 248
    Top = 48
  end
  object quMastUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paNullable]
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
        Size = 8
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paSigned, paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Update Item_Request '
      'Set'
      'Creator=:p0,'
      'Create_Date=:p1,'
      'Org_Code=:p2,'
      'org_unit_code=:p3,'
      'confirmer=:p4,'
      'confirm_date=:p5,'
      'verifier=:p6,'
      'verify_date=:p7,'
      'state=:p8,'
      'Req_Type=:p9,'
      'Goods_Code=:p10'
      'Where Req_No=:p11 ')
    Left = 680
    Top = 160
  end
  object quUpdateDet: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Update Requested_Item '
      'Set'
      'r_State=:p0'
      'where Req_No=:p1')
    Left = 680
    Top = 312
  end
end
