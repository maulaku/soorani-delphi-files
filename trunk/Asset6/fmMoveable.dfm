object moveable: Tmoveable
  Left = 3
  Top = 76
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '    '#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604
  ClientHeight = 454
  ClientWidth = 789
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel
    Left = 156
    Top = 6
    Width = 77
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = ': '#1606#1600#1600#1575#1605' '#1605#1600#1600#1600#1575#1604
    ParentBiDiMode = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 29
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 692
      Top = 6
      Width = 77
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': '#1606#1600#1600#1575#1605' '#1605#1600#1600#1600#1575#1604
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 436
      Top = 5
      Width = 81
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': '#1608#1590#1610#1593#1578' '#1605#1575#1604
      ParentBiDiMode = False
    end
    object Label4: TLabel
      Left = 172
      Top = 5
      Width = 106
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ': '#1588#1605#1575#1585#1607' '#1576#1585#1670#1587#1576
      ParentBiDiMode = False
    end
    object edSearch: TRSqlEdit
      Left = 537
      Top = 3
      Width = 151
      Height = 22
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edSearchChange
      FieldType = ftRequired
    end
    object cbState: TRSqlComboBox
      Left = 287
      Top = 3
      Width = 145
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
      TabOrder = 1
      OnChange = cbStateClick
      OnClick = cbStateClick
      OnKeyPress = cbStateKeyPress
      Items.Strings = (
        #1583#1585' '#1575#1606#1576#1575#1585' '#1606#1608
        #1583#1585' '#1581#1575#1604' '#1575#1587#1578#1601#1575#1583#1607
        #1605#1578#1585#1608#1603
        #1608#1575#1711#1584#1575#1585' '#1588#1583#1607' '#1583#1575#1574#1605
        #1608#1575#1711#1584#1575#1585' '#1588#1583#1607' '#1605#1608#1602#1578
        #1582#1575#1585#1580' '#1588#1583#1607' '#1605#1608#1602#1578
        #1583#1585' '#1575#1606#1576#1575#1585' '#1605#1587#1578#1593#1605#1604
        #1601#1585#1608#1582#1578#1607' '#1588#1583#1607
        #1581#1584#1601' '#1588#1583#1607
        #1605#1601#1602#1608#1583' '#1588#1583#1607
        #1575#1587#1602#1575#1591' '#1588#1583#1607)
      FieldType = ftRequired
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 789
    Height = 371
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 11075583
    DataSource = dsmoveable
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = DBGrid1ColEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'Row'
        Title.Caption = #1585#1583#1610#1601
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_code'
        Title.Caption = #1603#1583' '#1603#1575#1604#1575
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'goods_code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1575#1604
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'receipt_no'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1602#1576#1590
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Labelstr'
        Title.Alignment = taCenter
        Title.Caption = ' '#1576#1585#1670#1587#1576
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BpriceStr'
        Title.Alignment = taCenter
        Title.Caption = #1602#1610#1605#1578' '#1582#1585#1610#1583
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object edSearchLabel: TRSqlEdit
    Left = 16
    Top = 3
    Width = 153
    Height = 22
    BiDiMode = bdLeftToRight
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnChange = edSearchChange
    FieldType = ftRequired
    EditType = etNumeric
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 789
    Height = 54
    Align = alBottom
    TabOrder = 3
    object Label5: TLabel
      Left = 728
      Top = 9
      Width = 49
      Height = 16
      Caption = #1608#1590#1610#1593#1578':'
      FocusControl = DBEdit1
    end
    object Label6: TLabel
      Left = 496
      Top = 9
      Width = 71
      Height = 16
      Caption = #1606#1608#1593' '#1605#1575#1604#1603#1610#1578
      FocusControl = DBEdit2
    end
    object SpeedButton1: TSpeedButton
      Left = 255
      Top = 4
      Width = 93
      Height = 22
      Caption = #1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607':'
      Flat = True
      OnClick = SetUserClick
    end
    object SpeedButton2: TSpeedButton
      Left = 306
      Top = 29
      Width = 93
      Height = 22
      Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585':'
      Flat = True
      OnClick = SetUserClick
    end
    object SpeedButton3: TSpeedButton
      Left = 715
      Top = 31
      Width = 71
      Height = 22
      Caption = #1605#1585#1603#1586#1607#1586#1610#1606#1607':'
      Flat = True
      OnClick = SetUserClick
    end
    object DBEdit1: TDBEdit
      Left = 582
      Top = 4
      Width = 142
      Height = 24
      Color = 16635581
      DataField = 'State_Name'
      DataSource = dsmoveable
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 352
      Top = 4
      Width = 137
      Height = 24
      Color = 16635581
      DataField = 'ctype'
      DataSource = dsmoveable
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 5
      Top = 4
      Width = 249
      Height = 24
      Color = 16635581
      DataField = 'userName'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 400
      Top = 31
      Width = 317
      Height = 24
      Color = 16635581
      DataField = 'Ut_Name'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 4
      Top = 29
      Width = 301
      Height = 24
      Color = 16635581
      DataField = 'Descr'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object dsmoveable: TDataSource
    DataSet = qumoveable
    Left = 91
    Top = 123
  end
  object quDelete: TADOQuery
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
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete  From moveable_goods'
      'Where (goods_code>=:p1 and  goods_code<=:p2)')
    Left = 90
    Top = 182
  end
  object qumoveable: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterOpen = qumoveableAfterScroll
    AfterScroll = qumoveableAfterScroll
    Parameters = <
      item
        Name = 'p0'
        DataType = ftSmallint
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 255
      end
      item
        Name = 'p1'
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = 255
      end
      item
        Name = 'p2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = 'NULL'
      end>
    SQL.Strings = (
      'Declare @StateNull bit'
      'Declare @State smallint'
      'Declare @LabelNull bit'
      'Declare @Label int'
      'set @State=:p0'
      'if @State=-1 set @StateNull=0'
      'set @Label=:p1'
      'if @Label=-1 set @LabelNull=0'
      'select A.*,'
      '       B.item_name,'
      '       C.Class_code,'
      '       C.Class_Type,'
      '       cast(Goods_Code as char(10)) as GoodS_CodeStr,'
      '  DBO.GetCatName(State,'#39'moveable_goods'#39','#39'State'#39') as State_Name,'
      '  DBO.GetCatName(A.Type,'#39'moveable_goods'#39','#39'Type'#39') as ctype,'
      '  Labelstr='
      '    Case SIGN(Label)'
      
        '      when -1 then CAST(CAST(abs(Label) AS int) AS varchar(12))+' +
        #39#1602#1583#1610#1605#1610#39
      '      else  CAST(CAST(abs(Label) AS int) AS char(12))'
      '    end,  CAST(CAST(Bprice AS bigint) AS char(12)) BpriceStr,'
      '  A.Note MoveableNote'
      'from  moveable_goods A,item B,Goods_Class C'
      'where ( A.item_code=B.item_code )'
      '  and'
      '      (B.Class_Code=C.Class_code)'
      '  and (B.item_name  like :p2 )'
      '  and (State=@State or @StateNull=0)'
      '  and (AbS(Label)=@Label or @LabelNull=0)'
      ' ')
    Left = 170
    Top = 137
    object qumoveableitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 8
    end
    object qumoveablereceipt_no: TIntegerField
      DisplayWidth = 20
      FieldName = 'receipt_no'
    end
    object qumoveablelabel: TIntegerField
      FieldName = 'label'
    end
    object qumoveableBprice: TFloatField
      FieldName = 'Bprice'
    end
    object qumoveableEprice: TFloatField
      FieldName = 'Eprice'
    end
    object qumoveableType: TSmallintField
      FieldName = 'Type'
    end
    object qumoveableState: TSmallintField
      FieldName = 'State'
    end
    object qumoveableitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object qumoveableGoodS_CodeStr: TStringField
      FieldName = 'GoodS_CodeStr'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qumoveableState_Name: TStringField
      FieldName = 'State_Name'
      ReadOnly = True
      Size = 15
    end
    object qumoveablectype: TStringField
      FieldName = 'ctype'
      ReadOnly = True
      Size = 9
    end
    object qumoveableLabelstr: TStringField
      FieldName = 'Labelstr'
      ReadOnly = True
      FixedChar = True
      Size = 12
    end
    object qumoveableBpriceStr: TStringField
      FieldName = 'BpriceStr'
      ReadOnly = True
      FixedChar = True
      Size = 12
    end
    object qumoveableClass_code: TSmallintField
      FieldName = 'Class_code'
    end
    object qumoveableClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object qumoveableRow: TStringField
      FieldKind = fkCalculated
      FieldName = 'Row'
      OnGetText = qumoveableRowGetText
      Calculated = True
    end
    object qumoveablegoods_code: TStringField
      FieldName = 'goods_code'
      FixedChar = True
      Size = 12
    end
    object qumoveableUser: TStringField
      FieldKind = fkCalculated
      FieldName = 'User'
      Size = 50
      Calculated = True
    end
    object qumoveableMoveableNote: TStringField
      FieldName = 'MoveableNote'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = DabData.quGoodsUser
    Left = 160
    Top = 400
  end
end
