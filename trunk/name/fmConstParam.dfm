object ConstParam: TConstParam
  Left = 193
  Top = 136
  Width = 544
  Height = 260
  ActiveControl = Z
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = #1575#1610#1580#1575#1583' '#1608' '#1578#1594#1610#1610#1585' '#1662#1575#1585#1575#1605#1578#1585#1607#1575#1610' '#1579#1575#1576#1578
  Color = clBtnFace
  Constraints.MaxHeight = 260
  Constraints.MaxWidth = 544
  Constraints.MinHeight = 260
  Constraints.MinWidth = 536
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poOwnerFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Z: TDBGrid
    Left = 0
    Top = 0
    Width = 536
    Height = 120
    Align = alTop
    DataSource = dsCONST_PARAM
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONST_SRL'
        Title.Caption = #1603#1583' '#1605#1602#1583#1575#1585' '#1579#1575#1576#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONST_DESC'
        Title.Caption = #1578#1608#1590#1610#1581' '#1605#1602#1583#1575#1585' '#1579#1575#1576#1578
        Width = 437
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 120
    Width = 536
    Height = 106
    Align = alClient
    DataSource = dsConstVal
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APPLY_DATE'
        Title.Caption = #1602#1575#1576#1604' '#1575#1580#1585#1575' '#1575#1586
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONST_VAL'
        Title.Caption = #1605#1602#1583#1575#1585
        Width = 440
        Visible = True
      end>
  end
  object dsuCONST_PARAM: TADODataSet
    Connection = DabData.ADOC
    LockType = ltBatchOptimistic
    CommandText = 'select * from Amp_CONST_PARAM'
    Parameters = <>
    Left = 40
    Top = 64
    object dsuCONST_PARAMCONST_SRL: TStringField
      FieldName = 'CONST_SRL'
      FixedChar = True
      Size = 4
    end
    object dsuCONST_PARAMCONST_DESC: TStringField
      FieldName = 'CONST_DESC'
      Size = 240
    end
  end
  object dsCONST_PARAM: TDataSource
    DataSet = dsuCONST_PARAM
    Left = 80
    Top = 64
  end
  object dsConstVal: TDataSource
    DataSet = dsuCOSTVAL
    Left = 104
    Top = 184
  end
  object dsuCOSTVAL: TADODataSet
    Connection = DabData.ADOC
    LockType = ltBatchOptimistic
    CommandText = 'select * from Amp_CONST_PARAM_VAL'
    DataSource = dsCONST_PARAM
    IndexFieldNames = 'CONST_SRL'
    MasterFields = 'CONST_SRL'
    Parameters = <>
    Left = 72
    Top = 184
    object dsuCOSTVALCONST_SRL: TStringField
      FieldName = 'CONST_SRL'
      FixedChar = True
      Size = 4
    end
    object dsuCOSTVALAPPLY_DATE: TStringField
      FieldName = 'APPLY_DATE'
      FixedChar = True
      Size = 10
    end
    object dsuCOSTVALCONST_VAL: TStringField
      FieldName = 'CONST_VAL'
      Size = 80
    end
  end
end
