object InNameMain: TInNameMain
  Left = 149
  Top = 158
  Width = 587
  Height = 321
  ActiveControl = RadBtOk
  BiDiMode = bdRightToLeft
  Caption = #1583#1585#1582#1608#1575#1587#1578' '#1578#1594#1610#1610#1585' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 248
    Top = 70
    Width = 94
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607':'
  end
  object gbOkCancel: TGroupBox
    Left = 0
    Top = 259
    Width = 579
    Height = 28
    Align = alBottom
    Caption = #1575#1593#1605#1575#1604' '#1578#1593#1610#1610#1585#1575#1578
    Constraints.MaxHeight = 28
    Constraints.MinHeight = 28
    TabOrder = 3
    object RadBtOk: TBitBtn
      Left = 14
      Top = 7
      Width = 50
      Height = 21
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = RadBtOkClick
    end
    object RadBtCancel: TBitBtn
      Left = 70
      Top = 7
      Width = 50
      Height = 21
      Caption = #1604#1594#1608
      TabOrder = 1
      OnClick = RadBtCancelClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 579
    Height = 183
    Align = alClient
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 1
      Top = 138
      Width = 577
      Height = 44
      Align = alBottom
      TabOrder = 1
      object Label12: TLabel
        Left = 471
        Top = 13
        Width = 87
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578' :'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 225
        Top = 15
        Width = 133
        Height = 13
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1583#1585#1582#1608#1575#1587#1578#1610':'
      end
      object DBEdit10: TDBEdit
        Left = 367
        Top = 11
        Width = 97
        Height = 21
        DataField = 'v11'
        DataSource = dtsNames
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 93
        Top = 11
        Width = 124
        Height = 21
        DataField = 'v01_cnt'
        DataSource = dtsNames
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 577
      Height = 137
      Align = alClient
      Caption = #1605#1588#1582#1589#1575#1578' '#1601#1585#1583#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 256
        Top = 24
        Width = 16
        Height = 13
        Caption = #1606#1575#1605':'
        FocusControl = DBEdit15
      end
      object Label2: TLabel
        Left = 92
        Top = 24
        Width = 36
        Height = 13
        Caption = #1606#1575#1605' '#1662#1583#1585':'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 482
        Top = 54
        Width = 79
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607':'
        FocusControl = DBEdit3
      end
      object Label6: TLabel
        Left = 296
        Top = 53
        Width = 33
        Height = 13
        Caption = #1603#1583' '#1605#1604#1610
        FocusControl = DBEdit3
      end
      object Label9: TLabel
        Left = 288
        Top = 81
        Width = 50
        Height = 13
        Caption = #1605#1581#1604' '#1589#1583#1608#1585':'
      end
      object Label1: TLabel
        Left = 495
        Top = 24
        Width = 65
        Height = 13
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'
        FocusControl = DBEdit15
      end
      object Label8: TLabel
        Left = 500
        Top = 81
        Width = 56
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585':'
        FocusControl = DBEdit6
      end
      object Label10: TLabel
        Left = 141
        Top = 79
        Width = 23
        Height = 13
        Caption = #1576#1582#1588':'
        FocusControl = DBEdit8
      end
      object Label7: TLabel
        Left = 90
        Top = 50
        Width = 49
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583':'
        FocusControl = DBEdit5
      end
      object DBEdit15: TDBEdit
        Left = 139
        Top = 22
        Width = 110
        Height = 21
        DataField = 'v02_cnt'
        DataSource = dtsNames
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 9
        Top = 22
        Width = 79
        Height = 21
        DataField = 'v03_cnt'
        DataSource = dtsNames
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 336
        Top = 51
        Width = 123
        Height = 21
        DataField = 'v04'
        DataSource = dtsNames
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 144
        Top = 48
        Width = 146
        Height = 21
        DataField = 'v05'
        DataSource = dtsNames
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 178
        Top = 75
        Width = 97
        Height = 21
        DataField = 'v09_cnt'
        DataSource = dtsNames
        TabOrder = 7
      end
      object DBEdit1: TDBEdit
        Left = 288
        Top = 22
        Width = 194
        Height = 21
        DataField = 'v10_cnt'
        DataSource = dtsNames
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 352
        Top = 77
        Width = 139
        Height = 21
        DataField = 'v07'
        DataSource = dtsNames
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 9
        Top = 74
        Width = 124
        Height = 21
        DataField = 'v08'
        DataSource = dtsNames
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 9
        Top = 47
        Width = 76
        Height = 21
        DataField = 'v06'
        DataSource = dtsNames
        TabOrder = 5
      end
      object DBEdit11: TDBEdit
        Left = 72
        Top = 136
        Width = 50
        Height = 21
        DataField = 'v01_cnt'
        DataSource = dtsNames
        TabOrder = 9
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 0
    Width = 579
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label20: TLabel
      Left = 451
      Top = 11
      Width = 114
      Height = 13
      Caption = #1603#1583' '#1578#1594#1610#1610#1585' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'
      FocusControl = DBEdit18
    end
    object Label19: TLabel
      Left = 239
      Top = 11
      Width = 138
      Height = 13
      Caption = #1581#1585#1608#1601' '#1605#1602#1591#1593' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'
      FocusControl = DBEdit17
    end
    object DBEdit18: TDBEdit
      Left = 384
      Top = 8
      Width = 64
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object DBEdit17: TDBEdit
      Left = 8
      Top = 8
      Width = 225
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 216
    Width = 579
    Height = 43
    Align = alBottom
    TabOrder = 2
    object Label14: TLabel
      Left = 490
      Top = 12
      Width = 68
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1578#1589#1608#1610#1576':'
      FocusControl = DBEdit12
    end
    object Label15: TLabel
      Left = 281
      Top = 14
      Width = 79
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1578#1589#1608#1610#1576' :'
    end
    object DBEdit12: TDBEdit
      Left = 367
      Top = 10
      Width = 97
      Height = 21
      DataField = 'v12'
      DataSource = dtsNames
      TabOrder = 0
    end
    object DBEdit13: TDBEdit
      Left = 151
      Top = 10
      Width = 124
      Height = 21
      DataField = 'v13'
      DataSource = dtsNames
      TabOrder = 1
    end
  end
  object dsuShiftType: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 'exec GetCatNames '#39'AMP_SHIFT'#39','#39'SHIFT_TYPE'#39
    Parameters = <>
    Left = 175
    Top = 248
  end
  object dsShiftType: TDataSource
    DataSet = dsuShiftType
    Left = 224
    Top = 264
  end
  object ADODataSet1: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 'exec GetCatNames '#39'AMP_SHIFT'#39','#39'CALENDAR_SRL'#39
    Parameters = <>
    Left = 351
    Top = 256
  end
  object DataSource1: TDataSource
    Left = 376
    Top = 264
  end
  object dtsNames: TDataSource
    DataSet = NameMain.dsoNames
    Left = 280
    Top = 160
  end
end
