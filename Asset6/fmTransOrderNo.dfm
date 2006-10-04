object TransOrderNo: TTransOrderNo
  Left = 38
  Top = 204
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1583#1585#1582#1608#1575#1587#1578' '#1607#1575#1610' '#1582#1585#1610#1583' '#1603#1575#1604#1575
  ClientHeight = 267
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 15
  object dbgOrderReq: TDBGrid
    Left = 0
    Top = 0
    Width = 705
    Height = 233
    Align = alTop
    DataSource = dsTransRecOrderNo
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgOrderReqDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Order_Req_No'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ItemType'
        Title.Caption = #1606#1608#1593' '#1603#1575#1604#1575
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_name'
        Title.Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DealKind'
        Title.Caption = #1606#1608#1593' '#1575#1606#1580#1575#1605' '#1605#1593#1575#1605#1604#1607
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inquiry_Date_Rec'
        Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1575#1587#1578#1593#1604#1575#1605
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 233
    Width = 705
    Height = 34
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object RSqlButton1: TRSqlButton
      Left = 6
      Top = 5
      Width = 70
      Height = 23
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
    object RSqlButton2: TRSqlButton
      Left = 76
      Top = 5
      Width = 70
      Height = 23
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
  end
  object dsTransRecOrderNo: TDataSource
    DataSet = DabData.qubtnOrderNo
    Left = 16
    Top = 24
  end
end
