object ShowMvGood: TShowMvGood
  Left = 65
  Top = 125
  Width = 690
  Height = 412
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = 
    '                                                          ·Ì”  «' +
    '„Ê«· „‰ﬁÊ·'
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
  object Label2: TLabel
    Left = 248
    Top = 6
    Width = 77
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = ': ‰‹‹«„ „‹‹‹«·'
    ParentBiDiMode = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 560
      Top = 6
      Width = 77
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': ‰‹‹«„ „‹‹‹«·'
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 248
      Top = 5
      Width = 106
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': ‘„«—Â »—ç”»'
      ParentBiDiMode = False
    end
    object edSearch: TEdit
      Left = 406
      Top = 3
      Width = 152
      Height = 24
      Color = clInfoBk
      TabOrder = 0
      OnChange = edSearchChange
    end
  end
  object grItem: TDBGrid
    Left = 0
    Top = 29
    Width = 682
    Height = 356
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 11075583
    DataSource = DabData.dsMoveable
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
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
        Title.Caption = 'ﬂœ „«·'
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Alignment = taCenter
        Title.Caption = '‰«„ „‹«·'
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_code'
        Title.Alignment = taCenter
        Title.Caption = 'ﬂœ ﬂ«·«'
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bprice'
        Title.Alignment = taCenter
        Title.Caption = 'ﬁÌ„  Œ—Ìœ'
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'label'
        Title.Alignment = taCenter
        Title.Caption = '‘„«—Â »—ç”» '
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StateName'
        Title.Alignment = taCenter
        Title.Caption = 'Ê÷⁄Ì '
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 133
        Visible = True
      end>
  end
  object edLabel: TRSqlEdit
    Left = 94
    Top = 3
    Width = 152
    Height = 24
    BiDiMode = bdLeftToRight
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnChange = edSearchChange
    FieldType = ftRequired
    EditType = etNumeric
  end
end
