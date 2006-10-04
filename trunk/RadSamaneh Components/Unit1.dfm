object Form1: TForm1
  Left = 253
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RSqlDbStringGrid1: TRSqlDbStringGrid
    Left = 184
    Top = 112
    Width = 320
    Height = 120
    BiDiMode = bdRightToLeft
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentBiDiMode = False
    TabOrder = 0
    TitleExpand = False
    Columns = <
      item
        DefaultValue = Null
        Caption = 'Al'
        Width = 64
        Name = 'Column0'
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        ColumnFont.Charset = DEFAULT_CHARSET
        ColumnFont.Color = clWindowText
        ColumnFont.Height = -11
        ColumnFont.Name = 'MS Sans Serif'
        ColumnFont.Style = []
        Color = clWhite
        TitleColor = clSilver
        Visible = True
        RadSamanehComps.Edit.EditType = etAlphaNumeric
        RadSamanehComps.Edit.FieldType = ftRequired
        RadSamanehComps.Edit.MaxLength = 0
        RadSamanehComps.ComboBox.FieldType = ftRequired
        RadSamanehComps.DbLookup.FieldType = ftRequired
        RadSamanehComps.MaskEdit.MaskEditType = metNone
        RadSamanehComps.MaskEdit.FieldType = ftRequired
        RadSamanehComps.Memo.FieldType = ftRequired
        RadSamanehComps.Memo.MultiLine = False
        RadSamanehComps.Memo.WantReturns = False
        MainTableField = False
        Enabled = True
        MaxWidth = 0
        Alignment = taLeftJustify
      end>
    ScrollData = False
    ColWidths = (
      64)
  end
end
