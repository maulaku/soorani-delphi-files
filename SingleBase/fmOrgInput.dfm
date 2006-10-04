object OrgInput: TOrgInput
  Left = 113
  Top = 179
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    #1587#1575#1586#1605#1575#1606
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
    object Bevel3: TBevel
      Left = 155
      Top = 29
      Width = 70
      Height = 24
    end
    object Bevel1: TBevel
      Left = 506
      Top = 3
      Width = 109
      Height = 24
    end
    object Label1: TLabel
      Left = 507
      Top = 7
      Width = 74
      Height = 16
      Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606' :'
    end
    object Bevel2: TBevel
      Left = 506
      Top = 29
      Width = 109
      Height = 24
    end
    object Label2: TLabel
      Left = 506
      Top = 33
      Width = 102
      Height = 16
      Caption = #1587#1575#1586#1605#1575#1606' '#1576#1575#1604#1575#1583#1587#1578' :'
    end
    object Label3: TLabel
      Left = 158
      Top = 33
      Width = 62
      Height = 16
      Caption = #1588#1607#1585#1587#1578#1575#1606' :'
    end
    object edOrgName: TRSqlEdit
      Left = 4
      Top = 3
      Width = 501
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 80
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edOrgNameKeyPress
      FieldType = ftRequired
    end
    object lcMaster: TRSqlDbLookup
      Left = 226
      Top = 29
      Width = 279
      Height = 24
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = dslcOrg
      TabOrder = 1
      OnKeyPress = edOrgNameKeyPress
      FieldType = ftNonRequired
    end
    object edAddress: TRSqlEdit
      Left = 32
      Top = 29
      Width = 122
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftDisplay
    end
    object btAddress: TButton
      Left = 4
      Top = 29
      Width = 26
      Height = 24
      Hint = #1576#1585#1575#1610' '#1581#1584#1601' '#1583#1603#1605#1607' '#1587#1605#1578' '#1585#1575#1587#1578' '#1585#1575' '#1603#1604#1610#1603' '#1603#1606#1610#1583' '#1610#1575' '#1583#1603#1605#1607' Delete '#1585#1575' '#1601#1588#1575#1585' '#1583#1607#1610#1583'.'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btAddressClick
      OnKeyDown = btAddressKeyDown
      OnMouseDown = btAddressMouseDown
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
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Execute FindOrgs :p1')
    Left = 240
    Top = 58
  end
  object quCity: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
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
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select County_Name from County'
      'where Country_Code=:p1 and Province_Code=:p2 and County_Code=:p3')
    Left = 272
    Top = 58
    object quCityCounty_Name: TStringField
      FieldName = 'County_Name'
      Size = 40
    end
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Organization (Org_Code,Org_Name,Org_Addr,Org_Mast_Co' +
        'de) '
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Update Organization Set Org_name=:p1, Org_Addr=:p2, Org_Mast_Cod' +
        'e=:p3'
      'where Org_code=:p4')
    Left = 356
    Top = 59
  end
  object quGetMax: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select Max(Org_Code) as NewRow from Organization')
    Left = 388
    Top = 59
    object quGetMaxNewRow: TIntegerField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
end
