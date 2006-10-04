object DefineOrg: TDefineOrg
  Left = 309
  Top = 173
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1593#1610#1610#1606' '#1587#1575#1586#1605#1575#1606' '
  ClientHeight = 105
  ClientWidth = 300
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 203
      Top = 18
      Width = 83
      Height = 16
      Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606' :'
    end
    object dblOrg: TRSqlDbLookup
      Left = 9
      Top = 14
      Width = 200
      Height = 24
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = DabData.dsOrg
      TabOrder = 0
      FieldType = ftRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 300
    Height = 48
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object RSqlButton1: TRSqlButton
      Left = 9
      Top = 7
      Width = 74
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Default = True
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
      Left = 83
      Top = 7
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
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
  end
end
