object PassChanger: TPassChanger
  Left = 257
  Top = 215
  Width = 294
  Height = 135
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = '           €ÌÌ— ﬂ·„Â ⁄»Ê—'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 286
    Height = 108
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 171
      Top = 12
      Width = 92
      Height = 20
      Caption = 'ﬂ·„Â ⁄»Ê— ÃœÌœ '
      TabOrder = 0
    end
    object edPass1: TRSqlEdit
      Left = 20
      Top = 10
      Width = 140
      Height = 23
      BiDiMode = bdRightToLeft
      Color = 11075583
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      PasswordChar = 'l'
      TabOrder = 1
      FieldType = ftRequired
    end
    object StaticText2: TStaticText
      Left = 170
      Top = 39
      Width = 93
      Height = 20
      Caption = ' ﬂ—«— ﬂ·„Â ⁄»Ê— '
      TabOrder = 2
    end
    object edPass2: TRSqlEdit
      Left = 20
      Top = 39
      Width = 140
      Height = 23
      BiDiMode = bdRightToLeft
      Color = 11075583
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      PasswordChar = 'l'
      TabOrder = 3
      FieldType = ftRequired
    end
    object RSqlButton2: TRSqlButton
      Left = 88
      Top = 73
      Width = 75
      Height = 25
      Caption = '·€Ê'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
    object RSqlButton1: TRSqlButton
      Left = 4
      Top = 73
      Width = 75
      Height = 25
      Caption = ' «∆Ìœ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      ''
      'update Users2 '
      'set Pwrd=:p0'
      'where Emp_No=:p1')
    Left = 203
    Top = 10
  end
end
