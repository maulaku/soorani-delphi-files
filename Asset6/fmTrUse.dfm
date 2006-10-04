object TrUse: TTrUse
  Left = 4
  Top = 106
  HelpContext = 14
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '               '#1589#1608#1585#1578#1580#1604#1587#1607' '#1605#1589#1585#1601
  ClientHeight = 454
  ClientWidth = 789
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
  object dbgUseTrans: TDBGrid
    Left = 0
    Top = 0
    Width = 789
    Height = 221
    Align = alTop
    DataSource = dsUseTrans
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgUseTransEnter
    OnExit = dbgUseTransExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Use_Tr_No'
        Title.Caption = #1588#1605#1575#1585#1607' '#1589#1608#1585#1578#1580#1604#1587#1607
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc'
        Title.Caption = #1588#1585#1581' '#1605#1582#1578#1589#1585' '#1589#1608#1585#1578#1580#1604#1587#1607
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ST'
        Title.Caption = #1608#1590#1593#1610#1578
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_name'
        Title.Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order_No'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583
        Width = 148
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 789
    Height = 29
    Align = alTop
    BevelInner = bvLowered
    Caption = #1603#1575#1604#1575#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1588#1583#1607
    TabOrder = 1
  end
  object dbgDetUseTrans: TDBGrid
    Left = 0
    Top = 250
    Width = 789
    Height = 204
    Align = alClient
    Color = cl3DLight
    DataSource = dsDetUseTrans
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnEnter = dbgDetUseTransEnter
    OnExit = dbgDetUseTransExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Row'
        Title.Caption = #1585#1583#1610#1601
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit_Item_Desc'
        Title.Caption = #1608#1575#1581#1583' '#1603#1575#1604#1575
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item_Amount'
        Title.Caption = #1605#1602#1583#1575#1585' '#1603#1575#1604#1575
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item_Cast'
        Title.Caption = #1605#1576#1604#1594' '#1608#1575#1581#1583' '#1603#1575#1604#1575
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Caption = #1580#1605#1593' '#1603#1604
        Width = 135
        Visible = True
      end>
  end
  object dsUseTrans: TDataSource
    DataSet = DabData.quUseTrans
    Left = 6
    Top = 32
  end
  object dsDetUseTrans: TDataSource
    DataSet = DabData.quDetUseTrans
    Left = 8
    Top = 264
  end
  object quDelete: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM Use_Trans '
      'WHERE Use_Tr_No = :p1 ')
    Left = 6
    Top = 64
  end
end
