object Goodinfo: TGoodinfo
  Left = 308
  Top = 170
  Width = 256
  Height = 293
  BorderIcons = [biSystemMenu]
  Caption = '                   «„Ê«· „ÊÃÊœ'
  Color = clBtnFace
  Constraints.MaxHeight = 293
  Constraints.MaxWidth = 256
  Constraints.MinHeight = 293
  Constraints.MinWidth = 256
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 248
    Height = 234
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 11075583
    DataSource = DabData.dsMoveable
    FixedColor = 12615808
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnEnter = DBGrid1Enter
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'goods_code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'ﬂœ „«·'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = '‰«„ „«·'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'label'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = '»—ç”» «„Ê«·Ì'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 248
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 200
      Top = 4
      Width = 46
      Height = 16
      Caption = '‰«„ „«·'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edFind: TRSqlEdit
      Left = 9
      Top = 0
      Width = 184
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = edFindChange
      FieldType = ftRequired
    end
  end
end
