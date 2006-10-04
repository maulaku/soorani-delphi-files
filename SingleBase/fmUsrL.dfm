object UsrL: TUsrL
  Left = 248
  Top = 146
  Width = 274
  Height = 375
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = '         ·Ì”  ﬂ«—»—«‰ ›⁄«·'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 266
    Height = 348
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USRDESC'
        Visible = True
      end>
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 13000
    OnTimer = Timer1Timer
    Left = 16
    Top = 24
  end
end
