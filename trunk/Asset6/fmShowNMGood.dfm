object ShowNonMGood: TShowNonMGood
  Left = 55
  Top = 118
  Width = 729
  Height = 411
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = 
    '                                                          '#1604#1610#1587#1578' '#1575 +
    #1605#1608#1575#1604' '#1594#1610#1585#1605#1606#1602#1608#1604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object grItem: TDBGrid
    Left = 0
    Top = 27
    Width = 721
    Height = 350
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 11075583
    DataSource = DabData.dsnonmgood
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = grItemDblClick
    OnKeyPress = grItemKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'plaque_no'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1662#1604#1575#1603
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1605#1600#1600#1575#1604
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1603#1575#1604#1575
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'price_unit'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'reg_no'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' '
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StateName'
        Title.Alignment = taCenter
        Title.Caption = #1608#1590#1593#1610#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 123
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 27
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 525
      Top = 6
      Width = 70
      Height = 15
      BiDiMode = bdLeftToRight
      Caption = ': '#1606#1600#1600#1575#1605' '#1605#1600#1600#1600#1575#1604
      ParentBiDiMode = False
    end
    object edSearch: TEdit
      Left = 388
      Top = 3
      Width = 135
      Height = 23
      Color = clInfoBk
      TabOrder = 0
      OnChange = edSearchChange
    end
  end
end
