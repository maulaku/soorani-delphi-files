object Mailto: TMailto
  Left = 197
  Top = 143
  Width = 444
  Height = 354
  BiDiMode = bdRightToLeft
  Caption = '«—”«· «‘ﬂ«·«  »Â »—‰«„Â ‰ÊÌ”'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 340
    Top = 16
    Width = 36
    Height = 12
    Caption = '«“  «—ÌŒ'
  end
  object Label2: TLabel
    Left = 148
    Top = 15
    Width = 36
    Height = 12
    Caption = ' «  «—ÌŒ'
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 0
    Height = 0
    TabStop = False
    TabOrder = 0
    ControlData = {
      4C00000000000000000000000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126200000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object FromDate: TRSqlMaskEdit
    Left = 248
    Top = 8
    Width = 81
    Height = 25
    EditMask = '!99/99/00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 1
    Text = '  /  /  '
    MaskEditType = metNone
    FieldType = ftRequired
  end
  object RSqlMaskEdit1: TRSqlMaskEdit
    Left = 64
    Top = 8
    Width = 81
    Height = 25
    EditMask = '!99/99/00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 2
    Text = '  /  /  '
    MaskEditType = metNone
    FieldType = ftRequired
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 264
    Width = 113
    Height = 25
    Caption = '›—” «œ‰ »—«Ì ﬂ«—»—'
    TabOrder = 3
  end
end
