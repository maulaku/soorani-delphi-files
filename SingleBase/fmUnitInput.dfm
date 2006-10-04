object UnitInput: TUnitInput
  Left = 129
  Top = 134
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                             '#1608#1575#1581 +
    #1583' '#1587#1575#1586#1605#1575#1606#1610
  ClientHeight = 89
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object paFields: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 56
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 469
      Top = 3
      Width = 146
      Height = 24
    end
    object Label1: TLabel
      Left = 456
      Top = 7
      Width = 125
      Height = 16
      Caption = #1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' :'
    end
    object Bevel2: TBevel
      Left = 469
      Top = 29
      Width = 146
      Height = 24
    end
    object Label2: TLabel
      Left = 449
      Top = 33
      Width = 159
      Height = 16
      Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575#1604#1575#1583#1587#1578' :'
    end
    object edUnitName: TRSqlEdit
      Left = 4
      Top = 3
      Width = 464
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 80
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edUnitNameKeyPress
      FieldType = ftRequired
    end
    object lcMaster: TRSqlDbLookup
      Left = 4
      Top = 29
      Width = 464
      Height = 24
      KeyField = 'Ut_Code'
      ListField = 'Ut_Name'
      ListSource = dslcOrg
      TabOrder = 1
      OnKeyPress = edUnitNameKeyPress
      FieldType = ftNonRequired
    end
  end
  object paButtons: TPanel
    Left = 0
    Top = 56
    Width = 618
    Height = 33
    Align = alBottom
    TabOrder = 1
    object btOk: TRSqlButton
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
      ButtonType = btOk
    end
    object btCancel: TRSqlButton
      Left = 80
      Top = 4
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      ButtonType = btCancel
    end
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 168
    Top = 58
  end
  object dslcOrg: TDataSource
    DataSet = qulcMaster
    Left = 208
    Top = 58
  end
  object qulcMaster: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Execute FindUnits :p1,:p2')
    Left = 240
    Top = 58
  end
  object quNew: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'insert into Org_Unit (Ut_Org_Code,Ut_Code,Ut_Name,Ut_Mast_Code) '
      'Values(:p1,:p2,:p3,:p4)')
    Left = 324
    Top = 59
  end
  object quEdit: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Update Org_Unit Set Ut_name=:p1, Ut_Mast_Code=:p2'
      'where Ut_Org_code=:p3 and Ut_Code=:p4')
    Left = 356
    Top = 59
  end
  object quGetMax: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select Max(Ut_Code) as NewRow from Org_Unit where Ut_Org_Code=:p' +
        '1')
    Left = 388
    Top = 59
    object quGetMaxNewRow: TIntegerField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
end
