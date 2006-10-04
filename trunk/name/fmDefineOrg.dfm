object DefineOrg: TDefineOrg
  Left = 309
  Top = 173
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1593#1610#1610#1606' '#1587#1575#1586#1605#1575#1606' '
  ClientHeight = 98
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 53
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 195
      Top = 17
      Width = 73
      Height = 15
      Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606' :'
    end
    object dblOrg: TRSqlDbLookup
      Left = 8
      Top = 13
      Width = 188
      Height = 23
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = DabData.dsOrg
      TabOrder = 0
      FieldType = ftRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 281
    Height = 45
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object RSqlButton1: TRSqlButton
      Left = 8
      Top = 7
      Width = 70
      Height = 23
      Caption = #1578#1575#1574#1610#1583
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
    object RSqlButton2: TRSqlButton
      Left = 78
      Top = 7
      Width = 70
      Height = 23
      Cancel = True
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
  end
end
