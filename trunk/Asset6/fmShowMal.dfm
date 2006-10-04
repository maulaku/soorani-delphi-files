object ShowMal: TShowMal
  Left = 35
  Top = 80
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                          '#1604#1610#1587#1578' '#1575 +
    #1605#1608#1575#1604' '#1605#1606#1602#1608#1604
  ClientHeight = 402
  ClientWidth = 750
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
  TextHeight = 16
  object grItem: TDBGrid
    Left = 0
    Top = 29
    Width = 750
    Height = 373
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 16705264
    DataSource = DabData.dsMalClass
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
        FieldName = 'goods_code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1575#1604
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'label'
        Title.Alignment = taCenter
        Title.Caption = #1576#1585#1670#1587#1576
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1605#1600#1600#1575#1604
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1603#1575#1604#1575
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bprice'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ctype'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1605#1575#1604#1603#1610#1578
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StateName'
        Title.Alignment = taCenter
        Title.Caption = #1608#1590#1593#1610#1578
        Title.Color = 14663101
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 29
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 560
      Top = 6
      Width = 77
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': '#1606#1600#1600#1575#1605' '#1605#1600#1600#1600#1575#1604
      ParentBiDiMode = False
    end
    object edSearch: TRSqlEdit
      Left = 404
      Top = 3
      Width = 152
      Height = 22
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edSearchChange
      FieldType = ftRequired
    end
  end
end
