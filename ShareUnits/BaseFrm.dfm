object BaseForm: TBaseForm
  Left = 246
  Top = 189
  Width = 262
  Height = 70
  Caption = 'BaseForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object XpRadMenu: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Color = 16699834
    DrawMenuBar = False
    IconBackColor = 16562584
    MenuBarColor = 16705498
    SelectColor = 12615808
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = False
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = True
    FlatMenu = False
    AutoDetect = False
    Active = True
    Left = 3
  end
  object RadDanHint: TDanHint
    HintRadius = 18
    HintWidth = 250
    HintFont.Charset = DEFAULT_CHARSET
    HintFont.Color = clBlack
    HintFont.Height = -11
    HintFont.Name = 'Arial'
    HintFont.Style = [fsItalic]
    HintPauseTime = 2000
    Left = 32
  end
end
