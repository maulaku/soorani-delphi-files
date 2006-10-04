object ElamDel: TElamDel
  Left = 301
  Top = 180
  Width = 305
  Height = 115
  ActiveControl = bbOk
  BorderIcons = []
  Caption = '                               «⁄·«„'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object bbOk: TBitBtn
    Left = 3
    Top = 61
    Width = 75
    Height = 25
    Caption = ' «ÌÌœ'
    ModalResult = 1
    TabOrder = 3
    OnClick = bbOkClick
  end
  object bbCancel: TBitBtn
    Left = 81
    Top = 61
    Width = 75
    Height = 25
    Caption = '·€Ê'
    ModalResult = 2
    TabOrder = 4
    OnClick = bbCancelClick
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = -7
    Width = 295
    Height = 64
    BiDiMode = bdRightToLeft
    Items.Strings = (
      'Õ–› —ﬂÊ—œ Ã«—Ì'
      'Õ–› —ﬂÊ—œ Â«Ì «“ ﬂœ                  « ')
    ParentBiDiMode = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object edLNumber: TRSqlEdit
    Left = 14
    Top = 29
    Width = 52
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = edLNumberChange
    OnExit = edLNumberExit
    FieldType = ftRequired
    EditType = etNumeric
  end
  object edFNumber: TRSqlEdit
    Left = 88
    Top = 29
    Width = 56
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = edFNumberChange
    OnExit = edFNumberExit
    FieldType = ftRequired
    EditType = etNumeric
  end
end
