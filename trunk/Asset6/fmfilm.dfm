object film: Tfilm
  Left = 1
  Top = 109
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                          '#1605#1588#1582#1589#1575#1578 +
    ' '#1606#1608#1575#1585' '#1601#1610#1604#1605' '#1608' '#1583#1610#1587#1603#1578' '
  ClientHeight = 419
  ClientWidth = 783
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
    Width = 783
    Height = 419
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 16567596
    DataSource = dsfilm
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
    TitleFont.Color = clPurple
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
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subject'
        Title.Alignment = taCenter
        Title.Caption = #1605#1608#1590#1608#1593
        Title.Color = clInfoBk
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typecase'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'good_size'
        Title.Alignment = taCenter
        Title.Caption = #1575#1606#1583#1575#1586#1607
        Title.Color = clInfoBk
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sizecase'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607
        Title.Color = clInfoBk
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mecase'
        Title.Alignment = taCenter
        Title.Caption = #1608#1575#1581#1583' '#1587#1606#1580#1588
        Title.Color = clInfoBk
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'specification'
        Title.Alignment = taCenter
        Title.Caption = #1605#1588#1582#1589#1575#1578
        Title.Color = clInfoBk
        Width = 177
        Visible = True
      end>
  end
  object dsfilm: TDataSource
    DataSet = DabData.qufilm
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
      'Delete from diskette_film_spec'
      'Where goods_code= :p1')
    Left = 43
    Top = 149
  end
end
