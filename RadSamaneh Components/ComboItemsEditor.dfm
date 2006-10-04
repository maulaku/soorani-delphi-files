object FmComboItems: TFmComboItems
  Left = 323
  Top = 145
  Width = 257
  Height = 233
  Caption = 'String List Editor...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 171
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object Memo1: TMemo
      Left = 3
      Top = 3
      Width = 243
      Height = 165
      Align = alClient
      Color = clWhite
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 171
    Width = 249
    Height = 35
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 1
    object Button1: TButton
      Left = 79
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ok && Exit'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
