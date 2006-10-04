object specific: Tspecific
  Left = 0
  Top = 68
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1575#1588#1610#1575' '#1608' '#1604#1608#1575#1586#1605' '#1606#1601#1610#1587' '#1608' '#1593#1578#1610#1602#1607
  ClientHeight = 426
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dbgdetail: TDBGrid
    Left = 0
    Top = 0
    Width = 787
    Height = 426
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 16567596
    DataSource = dsant
    FixedColor = clBlack
    Font.Charset = DEFAULT_CHARSET
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
    TitleFont.Pitch = fpVariable
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Ant_gcode'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1575#1604
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ant_Hprd'
        Title.Alignment = taCenter
        Title.Caption = #1583#1608#1585#1607' '#1578#1575#1585#1610#1582#1610
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ant_dloc'
        Title.Alignment = taCenter
        Title.Caption = #1605#1581#1604' '#1575#1603#1578#1588#1575#1601
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ant_ddate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1603#1588#1601
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ant_color'
        Title.Alignment = taCenter
        Title.Caption = #1585#1606#1711
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ant_weight'
        Title.Alignment = taCenter
        Title.Caption = #1608#1586#1606
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ant_Pdate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1593#1603#1587
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsant: TDataSource
    DataSet = DabData.quant
    Left = 42
    Top = 114
  end
  object qudelete: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Delete from antique'
      ''
      'Where ant_gcode=:p1'
      '')
    Left = 43
    Top = 149
  end
end
