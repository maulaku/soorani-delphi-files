object cost: Tcost
  Left = 144
  Top = 110
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                               „—ﬂ“ Â“Ì‰Â'
  ClientHeight = 310
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 310
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object DbSg: TRSqlDbStringGrid
      Left = 3
      Top = 3
      Width = 410
      Height = 304
      Align = alClient
      ColCount = 2
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      TabOrder = 0
      TitleExpand = False
      DataSource = dsBType
      Columns = <
        item
          DefaultValue = Null
          Caption = 'ﬂœ '
          Width = 110
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
          Field = 'Uc_Code'
          Visible = True
          RadSamanehComps.Edit.EditType = etAlphaNumeric
          RadSamanehComps.Edit.FieldType = ftKeyGm
          RadSamanehComps.Edit.MaxLength = 0
          RadSamanehComps.ComboBox.FieldType = ftRequired
          RadSamanehComps.DbLookup.FieldType = ftRequired
          RadSamanehComps.MaskEdit.MaskEditType = metNone
          RadSamanehComps.MaskEdit.FieldType = ftRequired
          RadSamanehComps.Memo.FieldType = ftRequired
          RadSamanehComps.Memo.MultiLine = False
          RadSamanehComps.Memo.WantReturns = False
          InPlaceComponent = 'Edit'
          MainTableField = True
          Enabled = True
          MaxWidth = 200
          Alignment = taLeftJustify
        end
        item
          DefaultValue = Null
          Caption = '„—ﬂ“ Â“Ì‰Â'
          Width = 275
          Name = 'Column1'
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
          Field = 'Uc_Desc'
          Visible = True
          RadSamanehComps.Edit.EditType = etAlphaNumeric
          RadSamanehComps.Edit.FieldType = ftRequired
          RadSamanehComps.Edit.MaxLength = 20
          RadSamanehComps.ComboBox.FieldType = ftRequired
          RadSamanehComps.DbLookup.FieldType = ftRequired
          RadSamanehComps.MaskEdit.MaskEditType = metNone
          RadSamanehComps.MaskEdit.FieldType = ftRequired
          RadSamanehComps.Memo.FieldType = ftRequired
          RadSamanehComps.Memo.MultiLine = False
          RadSamanehComps.Memo.WantReturns = False
          InPlaceComponent = 'Edit'
          MainTableField = True
          Enabled = True
          MaxWidth = 300
          Alignment = taLeftJustify
        end>
      Messages.NewMessage = 'Wm_User+1'
      Messages.EditMessage = 'Wm_User'
      Messages.DeleteMessage = 'Wm_User+2'
      MainTableName = 'unit_cost'
      ScrollData = False
      ColWidths = (
        110
        275)
    end
  end
  object dsBType: TDataSource
    DataSet = quBType
    Left = 136
    Top = 104
  end
  object quBType: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From unit_cost'
      '')
    Left = 137
    Top = 157
    object quBTypeUc_Code: TIntegerField
      FieldName = 'Uc_Code'
    end
    object quBTypeUc_Desc: TStringField
      FieldName = 'Uc_Desc'
      Size = 100
    end
  end
end
