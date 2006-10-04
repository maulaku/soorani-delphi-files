object timeZone: TtimeZone
  Left = 202
  Top = 204
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '„ÕœÊœÂ “„«‰Ì'
  ClientHeight = 128
  ClientWidth = 432
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 432
    Height = 91
    Align = alTop
  end
  object Label1: TLabel
    Left = 286
    Top = 16
    Width = 128
    Height = 16
    Caption = '«Ì‰ ê“«—‘    «“  «—ÌŒ :'
  end
  object Label2: TLabel
    Left = 109
    Top = 16
    Width = 57
    Height = 16
    Caption = ' «  «—ÌŒ : '
  end
  object Bevel2: TBevel
    Left = 0
    Top = 91
    Width = 432
    Height = 37
    Align = alClient
  end
  object Label3: TLabel
    Left = 319
    Top = 49
    Width = 95
    Height = 16
    Caption = '‰„«Ì‘ œ«œÂ ‘Êœ.'
  end
  object meFrom: TRSqlMaskEdit
    Left = 190
    Top = 12
    Width = 90
    Height = 24
    BiDiMode = bdLeftToRight
    EditMask = '00/00/00;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    Text = '  /  /  '
    MaskEditType = metDate
    FieldType = ftRequired
  end
  object meTo: TRSqlMaskEdit
    Left = 18
    Top = 12
    Width = 90
    Height = 24
    BiDiMode = bdLeftToRight
    EditMask = '00/00/00;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    Text = '  /  /  '
    MaskEditType = metDate
    FieldType = ftRequired
  end
  object btnOk: TRSqlButton
    Left = 18
    Top = 97
    Width = 75
    Height = 25
    Caption = ' «∆Ìœ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnOkClick
    ButtonType = btOk
  end
  object btnCancel: TRSqlButton
    Left = 93
    Top = 97
    Width = 75
    Height = 25
    Cancel = True
    Caption = '·€Ê'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnCancelClick
    ButtonType = btCancel
  end
end
