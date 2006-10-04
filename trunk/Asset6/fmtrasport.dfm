object Transport: TTransport
  Left = 0
  Top = 105
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1582#1608#1583#1585#1608#1607#1575#1610' '#1581#1605#1604' '#1608' '#1606#1602#1604' '#1587#1608#1575#1585#1610
  ClientHeight = 419
  ClientWidth = 788
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
    Top = 30
    Width = 788
    Height = 389
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 16567596
    DataSource = dstrans
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
    OnKeyPress = dbgdetailKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Tra_gcode'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1575#1604
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typecase'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1608#1587#1610#1604#1607
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tra_mcou'
        Title.Alignment = taCenter
        Title.Caption = #1603#1588#1608#1585' '#1587#1575#1586#1606#1583#1607
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tra_mfac'
        Title.Alignment = taCenter
        Title.Caption = #1603#1575#1585#1582#1575#1606#1607' '#1587#1575#1586#1606#1583#1607
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tra_eno'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1605#1608#1578#1608#1585
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tra_cno'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1588#1575#1587#1610
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tra_pno'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1588#1607#1585#1576#1575#1606#1610
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
        FieldName = 'Tra_color'
        Title.Alignment = taCenter
        Title.Caption = #1585#1606#1711
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Pitch = fpVariable
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object erSearch: TRadioGroup
    Left = 0
    Top = 0
    Width = 788
    Height = 30
    Align = alTop
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
    Columns = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      #1603#1583#1605#1575#1604
      #1606#1608#1593' '#1608#1587#1610#1604#1607
      #1603#1588#1608#1585' '#1587#1575#1586#1606#1583#1607
      #1588#1605#1575#1585#1607' '#1605#1608#1578#1608#1585
      #1588#1605#1575#1585#1607' '#1588#1575#1587#1610
      #1588#1605#1575#1585#1607' '#1588#1607#1585#1576#1575#1606#1610
      #1585#1606#1711)
    ParentFont = False
    TabOrder = 1
  end
  object dstrans: TDataSource
    DataSet = DabData.qutrans
    Left = 42
    Top = 114
  end
  object qudelete: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      ' Delete from transport'
      ' Where'
      '    tra_gcode=:p1')
    Left = 43
    Top = 149
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 64
    Top = 8
  end
end
