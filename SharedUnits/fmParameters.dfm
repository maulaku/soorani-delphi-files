inherited ParametersFrm: TParametersFrm
  Left = 142
  Top = 164
  Width = 540
  Height = 118
  Caption = #1662#1575#1585#1575#1605#1578#1585#1607#1575#1610' '#1602#1575#1576#1604' '#1578#1606#1592#1610#1605' '#1587#1610#1587#1578#1605
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object dbgParameters: TDBGrid [0]
    Left = 0
    Top = 0
    Width = 532
    Height = 56
    Align = alClient
    BiDiMode = bdRightToLeft
    DataSource = dsParameters
    ParentBiDiMode = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'vertion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CurrentYear'
        Title.Caption = #1587#1575#1604' '#1601#1593#1575#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MasterGroupLen'
        Title.Caption = #1591#1608#1604' '#1601#1610#1604#1583' '#1583#1585' '#1711#1585#1608#1607' '#1575#1589#1604#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DetailGroupLen'
        Title.Caption = ' '#1591#1608#1604' '#1711#1585#1608#1607' '#1601#1585#1593#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ItemLen'
        Title.Caption = #1591#1608#1604' '#1603#1575#1604#1575
        Visible = True
      end>
  end
  inherited gbOkCancel: TGroupBox
    Top = 56
    Width = 532
  end
  inherited ppRadReport: TppReport
    DataPipelineName = 'ppRadDBRadFrom'
  end
  object dsParameters: TDataSource
    DataSet = quParameters
    Left = 184
    Top = 104
  end
  object quParameters: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    MaxRecords = 1
    Parameters = <>
    SQL.Strings = (
      'Select * from Parameters')
    Left = 168
    Top = 40
    object quParametersPk_Key: TIntegerField
      FieldName = 'Pk_Key'
    end
    object quParametersvertion: TStringField
      FieldName = 'vertion'
      FixedChar = True
      Size = 10
    end
    object quParametersCurrentYear: TSmallintField
      FieldName = 'CurrentYear'
    end
    object quParametersMasterGroupLen: TSmallintField
      FieldName = 'MasterGroupLen'
    end
    object quParametersDetailGroupLen: TSmallintField
      FieldName = 'DetailGroupLen'
    end
    object quParametersItemLen: TSmallintField
      FieldName = 'ItemLen'
    end
  end
end
