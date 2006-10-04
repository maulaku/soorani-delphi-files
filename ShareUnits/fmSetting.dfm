object Setting: TSetting
  Left = 201
  Top = 178
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605
  ClientHeight = 147
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 112
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 349
      Top = 62
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = #1587#1575#1604' '#1580#1575#1585#1610':'
    end
    object Label2: TLabel
      Left = 358
      Top = 10
      Width = 62
      Height = 16
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1587#1585#1608#1585':'
    end
    object Label4: TLabel
      Left = 112
      Top = 10
      Width = 103
      Height = 16
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607#1575':'
    end
    object Label1: TLabel
      Left = 345
      Top = 37
      Width = 78
      Height = 16
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606':'
    end
    object Label5: TLabel
      Left = 111
      Top = 36
      Width = 103
      Height = 16
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1587#1610#1587#1578#1605':'
    end
    object Label6: TLabel
      Left = 112
      Top = 62
      Width = 98
      Height = 16
      Alignment = taRightJustify
      Caption = #1581#1575#1604#1578' '#1662#1606#1580#1585#1607' '#1607#1575':'
    end
    object Label7: TLabel
      Left = 236
      Top = 87
      Width = 188
      Height = 16
      Alignment = taRightJustify
      Caption = #1581#1575#1604#1578' '#1662#1606#1580#1585#1607' '#1608#1585#1608#1583#1610' '#1603#1604#1605#1607' '#1593#1576#1608#1585':'
    end
    object dblOrg: TRSqlDbLookup
      Left = 229
      Top = 32
      Width = 112
      Height = 24
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = dsOrg
      TabOrder = 0
      FieldType = ftRequired
    end
    object edYear: TRSqlEdit
      Left = 229
      Top = 58
      Width = 112
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '82'
      FieldType = ftRequired
    end
    object edRunID: TRSqlEdit
      Left = 9
      Top = 32
      Width = 96
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '5'
      FieldType = ftRequired
    end
    object cbServer: TComboBox
      Left = 229
      Top = 6
      Width = 130
      Height = 24
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnExit = cbServerExit
    end
    object cbDataBase: TRSqlDbLookup
      Left = 9
      Top = 6
      Width = 96
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'name'
      ListField = 'name'
      ListSource = dsDataBases
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnExit = cbDataBaseExit
      FieldType = ftRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 112
    Width = 430
    Height = 35
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object RSqlButton1: TRSqlButton
      Left = 9
      Top = 5
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
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
    object RSqlButton2: TRSqlButton
      Left = 84
      Top = 5
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
  end
  object cbXPMode: TRSqlComboBox
    Left = 9
    Top = 58
    Width = 96
    Height = 24
    Style = csDropDownList
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'XP'
      #1605#1593#1605#1608#1604#1610)
    FieldType = ftRequired
  end
  object cbXPLogin: TRSqlComboBox
    Left = 133
    Top = 84
    Width = 97
    Height = 24
    Style = csDropDownList
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'XP'
      #1605#1593#1605#1608#1604#1610)
    FieldType = ftRequired
  end
  object quOrg: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Organization')
    Left = 264
    Top = 28
    object quOrgOrg_Code: TIntegerField
      FieldName = 'Org_Code'
    end
    object quOrgOrg_Name: TStringField
      FieldName = 'Org_Name'
      Size = 80
    end
    object quOrgOrg_Addr: TStringField
      FieldName = 'Org_Addr'
      FixedChar = True
      Size = 14
    end
    object quOrgOrg_Mast_Code: TIntegerField
      FieldName = 'Org_Mast_Code'
    end
  end
  object dsOrg: TDataSource
    DataSet = quOrg
    Left = 288
    Top = 28
  end
  object dsDataBases: TDataSource
    DataSet = quDataBases
    Left = 24
    Top = 8
  end
  object quDataBases: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      #13'Select * from Master..sysdatabases')
    Left = 56
    Top = 8
    object quDataBasesname: TWideStringField
      FieldName = 'name'
      Size = 128
    end
  end
end
