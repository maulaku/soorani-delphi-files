object QGEditor: TQGEditor
  Left = 361
  Top = 109
  Width = 215
  Height = 287
  Caption = 'Field Selector'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 8
    Width = 199
    Height = 217
  end
  object Label1: TLabel
    Left = 11
    Top = 19
    Width = 35
    Height = 13
    Caption = 'Tables:'
  end
  object LBField: TListBox
    Left = 11
    Top = 40
    Width = 183
    Height = 177
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnClick = LBFieldClick
    OnDblClick = LBFieldDblClick
  end
  object btok: TButton
    Left = 129
    Top = 230
    Width = 65
    Height = 25
    Caption = '&Ok'
    Default = True
    Enabled = False
    TabOrder = 1
    OnClick = btokClick
  end
  object cmbTable: TComboBox
    Left = 49
    Top = 16
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
    OnChange = cmbTableChange
  end
  object chkPk: TCheckBox
    Left = 11
    Top = 232
    Width = 97
    Height = 17
    Caption = 'Primery Key'
    TabOrder = 3
  end
  object QuFields: TADOQuery
    Parameters = <>
    Left = 152
    Top = 160
  end
end
