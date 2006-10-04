object textile: Ttextile
  Left = 3
  Top = 66
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                '#1605#1588#1582#1589#1575#1578' '#1576#1575#1601#1578#1607' '#1607#1575#1610' '#1583#1587#1578#1610' '#1608' '#1605#1575#1588#1610#1606#1610
  ClientHeight = 454
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
  TextHeight = 12
  object dbgdetail: TDBGrid
    Left = 0
    Top = 0
    Width = 785
    Height = 454
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 16567596
    DataSource = dstextile
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
        FieldName = 'goods_code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1575#1604
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typecase'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1576#1575#1601#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'texture_loc'
        Title.Alignment = taCenter
        Title.Caption = #1605#1581#1604' '#1576#1575#1601#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mark'
        Title.Alignment = taCenter
        Title.Caption = #1593#1604#1575#1605#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'texture_date'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1576#1575#1601#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'length'
        Title.Alignment = taCenter
        Title.Caption = #1591#1608#1604
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'width'
        Title.Alignment = taCenter
        Title.Caption = #1593#1585#1590
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'back_color'
        Title.Alignment = taCenter
        Title.Caption = #1585#1606#1711' '#1586#1605#1610#1606#1607
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'border_color'
        Title.Alignment = taCenter
        Title.Caption = #1585#1606#1711' '#1581#1575#1588#1610#1607
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end>
  end
  object dstextile: TDataSource
    DataSet = DabData.qutextile
    Left = 42
    Top = 114
  end
  object qudelete: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Delete from machine_manual_textile_spec'
      ' Where goods_code=:p1'
      '')
    Left = 43
    Top = 150
  end
end
