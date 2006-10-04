object InRadForm: TInRadForm
  Left = 347
  Top = 255
  Width = 428
  Height = 268
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = #1601#1585#1605
  Color = 14663101
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RadDataSchema: TADODataSet
    Connection = DabData.ADOC
    Filtered = True
    Parameters = <>
    Top = 32
    object RadDataSchemaCOLUMN_NAME: TStringField
      FieldName = 'COLUMN_NAME'
      Size = 100
    end
    object RadDataSchemaIS_NULLABLE: TBooleanField
      FieldName = 'IS_NULLABLE'
    end
  end
end
