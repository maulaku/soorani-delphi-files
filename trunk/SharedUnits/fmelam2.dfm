object elam2: Telam2
  Left = 216
  Top = 240
  Width = 567
  Height = 201
  Caption = 
    '                                                '#1575#1593#1604#1575#1605'           ' +
    '                 '
  Color = 14663101
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbfirst: TcxLabel
    Left = 428
    Top = 18
    Width = 54
    Height = 23
    Caption = 'label1'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
  end
  object lbsecond: TcxLabel
    Left = 428
    Top = 51
    Width = 54
    Height = 23
    Caption = 'label2'
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
  end
  object btok: TcxButton
    Left = 13
    Top = 79
    Width = 75
    Height = 22
    Caption = #1578#1575#1574#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = btokClick
  end
  object btca: TcxButton
    Left = 89
    Top = 79
    Width = 75
    Height = 22
    Caption = #1604#1594#1608
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 1
    OnClick = btcaClick
  end
end
