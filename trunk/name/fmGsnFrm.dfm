object GsnFrm: TGsnFrm
  Left = 267
  Top = 216
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 85
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 89
    Top = -2
    Width = 116
    Height = 16
    Caption = #1606#1575#1605' '#1587#1585#1608#1610#1587' '#1583#1607#1606#1583#1607
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 3
    Top = 15
    Width = 192
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object cbTInst: TCheckBox
    Left = 63
    Top = 39
    Width = 128
    Height = 17
    Caption = #1606#1589#1576' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 55
    Top = 62
    Width = 51
    Height = 20
    Caption = #1604#1594#1608
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 3
    Top = 62
    Width = 51
    Height = 20
    Caption = #1578#1575#1574#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
