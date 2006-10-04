object Search: TSearch
  Left = 187
  Top = 114
  Width = 450
  Height = 76
  BiDiMode = bdRightToLeft
  Caption = #1580#1587#1578#1581#1608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object gbOkCancel: TGroupBox
    Left = 0
    Top = 14
    Width = 442
    Height = 28
    Align = alBottom
    Caption = #1575#1593#1605#1575#1604' '#1578#1593#1610#1610#1585#1575#1578
    Constraints.MaxHeight = 28
    Constraints.MinHeight = 28
    TabOrder = 0
    object bbOk: TBitBtn
      Left = 6
      Top = 6
      Width = 51
      Height = 21
      Caption = #1578#1575#1574#1610#1583
      TabOrder = 0
      OnClick = bbOkClick
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 62
      Top = 7
      Width = 54
      Height = 19
      Cancel = True
      Caption = #1604#1594#1608
      ModalResult = 2
      TabOrder = 1
      OnClick = bbCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
end
