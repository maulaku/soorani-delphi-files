object Back: TBack
  Left = 279
  Top = 180
  Width = 317
  Height = 193
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = '                         –ŒÌ—Â «ÿ·«⁄« '
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
  object Label1: TLabel
    Left = 213
    Top = 59
    Width = 83
    Height = 16
    Caption = '„”Ì— Ê Å—Ê‰œÂ '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 214
    Top = 27
    Width = 46
    Height = 16
    Caption = '‰«„ »«‰ﬂ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 128
    Width = 108
    Height = 25
    Caption = '‘—Ê⁄ –ŒÌ—Â ”«“Ì'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 139
    Top = 128
    Width = 75
    Height = 25
    Caption = '·€Ê'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 33
    Top = 56
    Width = 169
    Height = 24
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnChange = Edit2Change
  end
  object dbsal: TDBLookupComboBox
    Left = 33
    Top = 20
    Width = 172
    Height = 24
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'SAL'
    ListField = 'DataBaseName'
    ListSource = DabData.dsqConf
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = dbsalClick
  end
  object quBack: TQuery
    DatabaseName = 'DabirDatabase'
    SQL.Strings = (
      'backup DataBase DabirDataBase to disk = '#39'c:\mybank.bak'#39)
    Left = 32
    Top = 88
  end
end
