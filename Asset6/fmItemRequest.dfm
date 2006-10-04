object ItemReq: TItemReq
  Left = 0
  Top = 80
  Cursor = crArrow
  HelpContext = 7
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '    '#1578#1606#1592#1610#1605' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1604#1575' '
  ClientHeight = 423
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefaultPosOnly
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 428
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object dbgDetail: TDBGrid
      Left = 2
      Top = 203
      Width = 747
      Height = 223
      Align = alClient
      Color = cl3DLight
      DataSource = dsDetailSelect
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnEnter = dbgDetailEnter
      OnExit = dbgMasterExit
      Columns = <
        item
          Expanded = False
          FieldName = 'nItem'
          Title.Caption = #1606#1608#1593' '#1603#1575#1604#1575
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item_name'
          Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
          Width = 287
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
          FieldName = 'StateName'
          Title.Caption = #1608#1590#1593#1610#1578' '#1603#1575#1604#1575#1610' '#1583#1585#1582#1608#1575#1587#1578#1610
          Width = 170
          Visible = True
        end>
    end
    object dbgMaster: TDBGrid
      Left = 2
      Top = 2
      Width = 747
      Height = 201
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
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Org_Name'
          Title.Caption = #1587#1575#1586#1605#1575#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ut_Name'
          Title.Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StateDesc'
          Title.Caption = #1608#1590#1593#1610#1578
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Req_TypeName'
          Title.Caption = #1606#1608#1593' '#1583#1585#1582#1608#1575#1587#1578
          Width = 168
          Visible = True
        end>
    end
  end
  object dsDetailSelect: TDataSource
    DataSet = DabData.quReq_Item
    Left = 56
    Top = 280
  end
  object dsMasterSelect: TDataSource
    DataSet = DabData.quItem_Req
    Left = 184
    Top = 48
  end
  object QuDetailDel: TADOQuery
    CursorType = ctStatic
    OnCalcFields = quDetailSelectCalcFields
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
    AfterScroll = quMasterSelectAfterScroll
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
end
