object Catalog: TCatalog
  Left = 152
  Top = 158
  Width = 588
  Height = 302
  BiDiMode = bdRightToLeft
  Caption = #1580#1583#1575#1608#1604' '#1608' '#1578#1608#1590#1610#1581#1575#1578' '#1605#1585#1576#1608#1591#1607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid3: TDBGrid
    Left = 0
    Top = 81
    Width = 580
    Height = 133
    Align = alClient
    DataSource = DataSource3
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGrid3KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = #1605#1602#1583#1575#1585' '#1579#1576#1578' '#1588#1583#1607' '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desc'
        Title.Caption = #1605#1602#1583#1575#1585' '#1606#1605#1575#1610#1588' '#1583#1575#1583#1607' '#1588#1583#1607' '
        Width = 423
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 81
    Align = alTop
    TabOrder = 1
    OnDblClick = Panel1DblClick
    object Label1: TLabel
      Left = 536
      Top = 32
      Width = 33
      Height = 16
      Caption = #1580#1583#1608#1604
    end
    object Label2: TLabel
      Left = 266
      Top = 32
      Width = 37
      Height = 16
      Caption = #1587#1578#1608#1606
    end
    object Label3: TLabel
      Left = 161
      Top = 7
      Width = 138
      Height = 16
      Caption = #1606#1575#1605' '#1580#1583#1608#1604' '#1576#1607' '#1575#1606#1711#1604#1610#1587#1610
    end
    object Label4: TLabel
      Left = 445
      Top = 7
      Width = 125
      Height = 16
      Caption = #1606#1575#1605' '#1580#1583#1608#1604' '#1576#1607' '#1601#1575#1585#1587#1610
    end
    object RSqlDbLookup2: TRSqlDbLookup
      Left = 16
      Top = 28
      Width = 241
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Col'
      ListField = 'Description'
      ListSource = DataSource2
      ParentFont = False
      TabOrder = 0
      FieldType = ftRequired
    end
    object lkpReciever: TRSqlDbLookup
      Left = 308
      Top = 28
      Width = 222
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Tbl'
      ListField = 'Description'
      ListSource = DataSource1
      ParentFont = False
      TabOrder = 1
      FieldType = ftNonRequired
    end
    object RSqlEdit1: TRSqlEdit
      Left = 16
      Top = 3
      Width = 140
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = RSqlEdit1Change
      FieldType = ftRequired
    end
    object DBEdit5: TDBEdit
      Left = 308
      Top = 54
      Width = 222
      Height = 24
      DataField = 'Tbl'
      DataSource = DataSource1
      TabOrder = 3
      Visible = False
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 53
      Width = 241
      Height = 24
      DataField = 'Col'
      DataSource = DataSource2
      TabOrder = 4
      Visible = False
    end
    object RSqlEdit2: TRSqlEdit
      Left = 308
      Top = 3
      Width = 134
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnChange = RSqlEdit1Change
      FieldType = ftRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 214
    Width = 580
    Height = 54
    Align = alBottom
    TabOrder = 2
    object DBEdit1: TDBEdit
      Left = 511
      Top = 2
      Width = 64
      Height = 24
      DataField = 'ID'
      DataSource = DataSource3
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 23
      Top = 2
      Width = 473
      Height = 24
      DataField = 'desc'
      DataSource = DataSource3
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 357
      Top = 27
      Width = 116
      Height = 24
      DataField = 'col'
      DataSource = DataSource3
      TabOrder = 2
      Visible = False
    end
    object DBEdit3: TDBEdit
      Left = 477
      Top = 28
      Width = 100
      Height = 24
      DataField = 'tbl'
      DataSource = DataSource3
      TabOrder = 3
      Visible = False
    end
  end
  object ADODataSet1: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = ADODataSet1AfterScroll
    CommandText = 
      'Declare @Tbl varchar(100),@Descri varchar(1000)'#13#10'Set @Tbl=Upper(' +
      ':p0)'#13#10'if IsNull(@Tbl,'#39#39')='#39#39'  '#13#10'    Set @Tbl='#39'%%'#39#13#10'else  '#13#10'    se' +
      't @Tbl='#39'%'#39'+@Tbl+'#39'%'#39#13#10'Set @Descri=:p1'#13#10'if IsNull(@Descri,'#39#39')='#39#39' '#13 +
      #10'   set @Descri='#39'%%'#39#13#10'else  '#13#10'   set @Descri='#39'%'#39'+@Descri+'#39'%'#39#13#10'se' +
      'lect Value as Description,OBJECT_NAME(Sp.id) as Tbl from sysprop' +
      'erties Sp,sysobjects'#13#10'where Sp.name ='#39'MS_Description'#39#13#10'  and  xt' +
      'ype='#39'U'#39#13#10'  and sysobjects.name=Upper(OBJECT_NAME(Sp.id))'#13#10'  and ' +
      'smallid=0'#13#10'  and Upper(OBJECT_NAME(Sp.id)) like @tbl'#13#10'  and Cast' +
      '(Value as Varchar(1000)) like @Descri'#13#10'order by Value'
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1000
        Value = Null
      end>
    Left = 408
    Top = 24
    object ADODataSet1Description: TVariantField
      FieldName = 'Description'
    end
    object ADODataSet1Tbl: TWideStringField
      FieldName = 'Tbl'
      ReadOnly = True
      Size = 128
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 376
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 176
    Top = 16
  end
  object ADODataSet2: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = ADODataSet2AfterScroll
    CommandText = 
      'select Value as Description,OBJECT_NAME(Sp.id) as Tbl,COL_NAME(S' +
      'p.id,smallid ) as  Col from sysproperties Sp,sysobjects'#13#10'where S' +
      'p.name ='#39'MS_Description'#39#13#10'  and  xtype='#39'U'#39#13#10'  and sysobjects.nam' +
      'e=Upper(OBJECT_NAME(Sp.id))'#13#10'  and smallid<>0'#13#10'  and Upper(OBJEC' +
      'T_NAME(Sp.id)) like Upper(:p0)'#13#10'order by Value'
    IndexFieldNames = 'col'
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    Left = 152
    Top = 16
    object ADODataSet2Description: TVariantField
      FieldName = 'Description'
    end
    object ADODataSet2Col: TWideStringField
      FieldName = 'Col'
      ReadOnly = True
      Size = 128
    end
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet3
    Left = 192
    Top = 56
  end
  object ADODataSet3: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 
      'Declare @Tbl varchar(100),@Col varchar(100)'#13#10'Set @Tbl=Upper(:p0)' +
      #13#10'if IsNull(@Tbl,'#39#39')='#39#39'  '#13#10'    Set @Tbl='#39'%%'#39#13#10'else  '#13#10'    set @T' +
      'bl='#39'%'#39'+@Tbl+'#39'%'#39#13#10'Set @Col=:p1'#13#10'if IsNull(@Col,'#39#39')='#39#39' '#13#10'   set @C' +
      'ol='#39'%%'#39#13#10'else  '#13#10'   set @Col='#39'%'#39'+@Col+'#39'%'#39#13#10'Select * from Tbl_cat' +
      #13#10' where Upper(Tbl) like @tbl'#13#10'    and  Upper(Col) like @Col'#13#10'  ' +
      '    '
    IndexFieldNames = 'col'
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    Left = 152
    Top = 56
    object ADODataSet3ID: TIntegerField
      FieldName = 'ID'
    end
    object ADODataSet3tbl: TStringField
      FieldName = 'tbl'
      Size = 100
    end
    object ADODataSet3col: TStringField
      FieldName = 'col'
      Size = 100
    end
    object ADODataSet3desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
end
