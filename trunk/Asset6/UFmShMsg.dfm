object FmShowMessage: TFmShowMessage
  Left = 249
  Top = 217
  BiDiMode = bdRightToLeft
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = ' '#1575#1593#1604#1575#1605' 2'
  ClientHeight = 92
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 386
    Height = 92
    Align = alClient
    TabOrder = 0
    object LblMsg: TLabel
      Left = 281
      Top = 22
      Width = 97
      Height = 16
      Caption = #1570#1610#1575' '#1579#1576#1578' '#1605#1610#1603#1606#1610#1583#1567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LblTitle: TLabel
      Left = 280
      Top = 1
      Width = 97
      Height = 16
      Caption = #1570#1610#1575' '#1579#1576#1578' '#1605#1610#1603#1606#1610#1583#1567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtOK: TBitBtn
      Left = 8
      Top = 61
      Width = 75
      Height = 25
      Caption = #1575#1593#1605#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtCancel: TBitBtn
      Left = 87
      Top = 61
      Width = 75
      Height = 25
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
