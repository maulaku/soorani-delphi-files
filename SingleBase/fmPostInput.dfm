object PostInput: TPostInput
  Left = 144
  Top = 238
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                            '#1580#1575#1610#1711 +
    #1575#1607' '#1587#1575#1586#1605#1575#1606#1610
  ClientHeight = 145
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
    Align = alTop
    TabOrder = 0
    object Bevel7: TBevel
      Left = 106
      Top = 29
      Width = 31
      Height = 24
    end
    object Bevel1: TBevel
      Left = 459
      Top = 3
      Width = 156
      Height = 24
    end
    object Label1: TLabel
      Left = 454
      Top = 7
      Width = 127
      Height = 16
      Caption = #1606#1575#1605' '#1580#1575#1610#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1610' :'
    end
    object Bevel2: TBevel
      Left = 459
      Top = 29
      Width = 156
      Height = 24
    end
    object Label2: TLabel
      Left = 453
      Top = 33
      Width = 155
      Height = 16
      Caption = #1580#1575#1610#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1610' '#1576#1575#1604#1575#1583#1587#1578' :'
    end
    object Label7: TLabel
      Left = 107
      Top = 33
      Width = 24
      Height = 16
      Caption = #1603#1583' :'
    end
    object edPostName: TRSqlEdit
      Left = 4
      Top = 3
      Width = 454
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 60
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edPostNameKeyPress
      FieldType = ftRequired
    end
    object lcMaster: TRSqlDbLookup
      Left = 138
      Top = 29
      Width = 320
      Height = 24
      KeyField = 'Pt_Code'
      ListField = 'post_name'
      ListSource = dslcPost
      TabOrder = 1
      OnKeyPress = edPostNameKeyPress
      FieldType = ftNonRequired
    end
    object edCode: TRSqlEdit
      Left = 4
      Top = 29
      Width = 100
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edPostNameKeyPress
      FieldType = ftRequired
    end
  end
  object paButtons: TPanel
    Left = 0
    Top = 112
    Width = 618
    Height = 33
    Align = alBottom
    TabOrder = 2
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
  object paFields2: TPanel
    Left = 0
    Top = 56
    Width = 618
    Height = 56
    Align = alClient
    TabOrder = 1
    object Bevel6: TBevel
      Left = 138
      Top = 29
      Width = 81
      Height = 24
    end
    object Bevel5: TBevel
      Left = 138
      Top = 3
      Width = 81
      Height = 24
      Visible = False
    end
    object Bevel4: TBevel
      Left = 534
      Top = 29
      Width = 81
      Height = 24
    end
    object Bevel3: TBevel
      Left = 534
      Top = 3
      Width = 81
      Height = 24
    end
    object Label3: TLabel
      Left = 536
      Top = 7
      Width = 73
      Height = 16
      Caption = #1585#1587#1578#1607' '#1588#1594#1604#1610' :'
    end
    object Label4: TLabel
      Left = 536
      Top = 32
      Width = 73
      Height = 16
      Caption = #1585#1588#1578#1607' '#1588#1594#1604#1610' :'
    end
    object Label5: TLabel
      Left = 143
      Top = 7
      Width = 70
      Height = 16
      Caption = #1591#1576#1602#1607' '#1588#1594#1604#1610' :'
      Visible = False
    end
    object Label6: TLabel
      Left = 138
      Top = 33
      Width = 75
      Height = 16
      Caption = #1606#1608#1593' '#1580#1575#1610#1711#1575#1607' :'
    end
    object lcJob: TRSqlDbLookup
      Left = 4
      Top = 3
      Width = 133
      Height = 24
      KeyField = 'job_code'
      ListField = 'job_name'
      ListSource = dsJob
      TabOrder = 2
      Visible = False
      OnKeyPress = edPostNameKeyPress
      FieldType = ftNonRequired
    end
    object lcCat: TRSqlDbLookup
      Left = 5
      Top = 3
      Width = 528
      Height = 24
      KeyField = 'ctg_code'
      ListField = 'ctg_name'
      ListSource = dsCat
      TabOrder = 0
      OnClick = lcCatClick
      OnKeyPress = edPostNameKeyPress
      FieldType = ftNonRequired
    end
    object lcSub: TRSqlDbLookup
      Left = 220
      Top = 29
      Width = 313
      Height = 24
      KeyField = 'sub_ctg_code'
      ListField = 'sub_ctg_name'
      ListSource = dsSub
      TabOrder = 1
      OnClick = lcSubClick
      OnKeyPress = edPostNameKeyPress
      FieldType = ftNonRequired
    end
    object cbType: TRSqlComboBox
      Left = 4
      Top = 29
      Width = 133
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
      OnKeyPress = edPostNameKeyPress
      Items.Strings = (
        #1583#1575#1574#1605
        #1605#1608#1602#1578)
      FieldType = ftRequired
    end
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 168
    Top = 114
  end
  object dslcPost: TDataSource
    DataSet = qulcMaster
    Left = 208
    Top = 114
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
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Execute FindPosts :p1,:p2,:p3')
    Left = 240
    Top = 114
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
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'insert into Post'
      '(Pt_Org_Code,Pt_Ut_Code,Pt_Code,Post_Name,'
      'Pt_Category_Code,Pt_Sub_Code,Pt_Job_Code,'
      'Post_Type,Post_State,Post_Code,Pt_Mast_Code) '
      'Values(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)')
    Left = 524
    Top = 115
  end
  object quEdit: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
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
      end
      item
        Name = 'p4'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p6'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Update Post Set '
      
        'Post_Name=:p1,Pt_Category_Code=:p2,Pt_Sub_Code=:p3,Pt_Job_Code=:' +
        'p4,'
      'Post_Type=:p5,Post_Code=:p6,Pt_Mast_Code=:p7'
      'where Pt_Org_code=:p8 and Pt_Ut_Code=:p9 and Pt_Code=:p10')
    Left = 556
    Top = 115
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
      'select Max(Pt_Code) as NewRow from Post where Pt_Org_Code=:p1')
    Left = 588
    Top = 115
    object quGetMaxNewRow: TIntegerField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
  object dsCat: TDataSource
    DataSet = DabData.qudegree
    Left = 280
    Top = 114
  end
  object dsSub: TDataSource
    DataSet = DabData.quCourse
    Left = 312
    Top = 114
  end
  object dsJob: TDataSource
    Left = 344
    Top = 114
  end
  object quPostOrg: TADOQuery
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
      'select * from Post'
      'where Pt_Org_Code=:p1')
    Left = 384
    Top = 114
  end
end
