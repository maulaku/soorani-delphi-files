object mgdet: Tmgdet
  Left = 122
  Top = 148
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                                  '#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1605#1608#1575#1604' '#1605#1606#1602#1608#1604
  ClientHeight = 275
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label12: TLabel
    Left = 316
    Top = 13
    Width = 48
    Height = 16
    Caption = ':'#1603#1583' '#1605#1575#1604
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object panel2: TPanel
    Left = 0
    Top = 245
    Width = 528
    Height = 30
    Align = alBottom
    TabOrder = 1
    object btok: TRSqlButton
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btokClick
      ButtonType = btOk
    end
    object btca: TRSqlButton
      Left = 82
      Top = 4
      Width = 75
      Height = 25
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btcaClick
      ButtonType = btCancel
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 245
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    object Label3: TLabel
      Left = 435
      Top = 34
      Width = 86
      Height = 16
      Caption = ' '#1606#1600#1608#1593' '#1605#1575#1604#1603#1610#1578':'
    end
    object Label4: TLabel
      Left = 379
      Top = 111
      Width = 141
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = ':'#1588#1605#1575#1585#1607' '#1576#1585#1670#1587#1576' '#1588#1585#1608#1593
      ParentBiDiMode = False
    end
    object Label8: TLabel
      Left = 438
      Top = 169
      Width = 83
      Height = 16
      Caption = #1602#1610#1605#1578' '#1582#1600#1585#1610#1583' :'
    end
    object Label9: TLabel
      Left = 128
      Top = 167
      Width = 121
      Height = 16
      Caption = ' '#1602#1610#1605#1578' '#1603#1575#1585#1588#1606#1575#1587#1610':'
      Transparent = True
    end
    object Label6: TLabel
      Left = 357
      Top = 89
      Width = 164
      Height = 16
      BiDiMode = bdRightToLeft
      Caption = #1587#1575#1586#1605#1575#1606' '#1605#1575#1604#1603'/'#1575#1607#1583#1575' '#1603#1606#1606#1583#1607' :'
      ParentBiDiMode = False
    end
    object Label7: TLabel
      Left = 267
      Top = 169
      Width = 25
      Height = 16
      BiDiMode = bdRightToLeft
      Caption = #1585#1610#1575#1604
      ParentBiDiMode = False
    end
    object Label10: TLabel
      Left = 8
      Top = 169
      Width = 25
      Height = 16
      BiDiMode = bdRightToLeft
      Caption = #1585#1610#1575#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object TLabel
      Left = 196
      Top = 35
      Width = 53
      Height = 16
      Caption = #1606#1608#1593' '#1603#1575#1604#1575':'
    end
    object Label1: TLabel
      Left = 71
      Top = 84
      Width = 79
      Height = 16
      Caption = #1578#1600#1600#1593#1583#1575#1583' '#1603#1600#1600#1575#1604#1575':'
    end
    object Label11: TLabel
      Left = 445
      Top = 138
      Width = 76
      Height = 16
      Caption = #1608#1590#1610#1593#1578' '#1605#1575#1604':'
    end
    object SpeedButton1: TSpeedButton
      Left = 453
      Top = 57
      Width = 66
      Height = 22
      Caption = #1591#1576#1602#1607' '#1603#1575#1604#1575
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 127
      Top = 6
      Width = 130
      Height = 22
      Caption = ' '#1588#1605#1575#1585#1607' '#1602#1576#1590' '#1575#1606#1600#1576#1600#1600#1575#1585':'
      Flat = True
      OnClick = RSqlButton1Click
    end
    object lbctg: TLabel
      Left = 449
      Top = 9
      Width = 72
      Height = 16
      Caption = #1603#1600#1600#1600#1583' '#1605#1600#1600#1600#1575#1604':'
    end
    object SpeedButton3: TSpeedButton
      Left = 192
      Top = 57
      Width = 62
      Height = 21
      Hint = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1603#1575#1604#1575
      Caption = #1606#1575#1605' '#1603#1575#1604#1575' :'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 6
      Top = 57
      Width = 24
      Height = 21
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object TLabel
      Left = 455
      Top = 193
      Width = 62
      Height = 16
      Caption = #1605#1604#1575#1581#1590#1575#1578':'
    end
    object edlable: TRSqlEdit
      Left = 235
      Top = 108
      Width = 142
      Height = 24
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edlableKeyPress
      FieldType = ftNonRequired
      EditType = etNumeric
    end
    object edeprice: TRSqlEdit
      Left = 32
      Top = 164
      Width = 95
      Height = 24
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      OnKeyPress = edepriceKeyPress
      FieldType = ftNonRequired
      EditType = etNumeric
    end
    object edbprice: TRSqlEdit
      Left = 293
      Top = 164
      Width = 140
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edbpriceKeyPress
      FieldType = ftNonRequired
      EditType = etNumeric
    end
    object dblitem: TRSqlDbLookup
      Left = 31
      Top = 57
      Width = 158
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'item_code'
      ListField = 'item_name'
      ListSource = dsrec1
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = dblitemCloseUp
      OnCloseUp = dblitemCloseUp
      FieldType = ftRequired
    end
    object edclass: TRSqlDbLookup
      Left = 256
      Top = 57
      Width = 193
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'class_code'
      ListField = 'class_name'
      ListSource = dsClass
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = edclassClick
      OnKeyPress = edbpriceKeyPress
      FieldType = ftRequired
    end
    object cbGetType: TRSqlComboBox
      Left = 256
      Top = 31
      Width = 177
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
      TabOrder = 0
      Items.Strings = (
        #1605#1575#1604' '#1605#1608#1587#1587#1607
        #1605#1575#1604' '#1575#1605#1575#1606#1610
        #1605#1575#1604' '#1605#1608#1587#1587#1607' '#1575#1607#1583#1575#1610#1610)
      FieldType = ftRequired
    end
    object lkpOrg: TRSqlDbLookup
      Left = 172
      Top = 83
      Width = 181
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'Org_Code'
      ListField = 'Org_Name'
      ListSource = dsOrg
      ParentBiDiMode = False
      TabOrder = 3
      FieldType = ftNonRequired
    end
    object edAmount: TRSqlEdit
      Left = 9
      Top = 81
      Width = 56
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftRequired
      EditType = etNumeric
    end
    object dblrec: TRSqlDbLookup
      Left = 7
      Top = 6
      Width = 118
      Height = 24
      BiDiMode = bdRightToLeft
      KeyField = 'rec_no'
      ListField = 'rec_no'
      ListSource = dsRecno
      ParentBiDiMode = False
      TabOrder = 9
      OnCloseUp = dblrecCloseUp
      OnKeyUp = dblrecKeyUp
      FieldType = ftNonRequired
    end
    object edcode: TRSqlEdit
      Left = 256
      Top = 5
      Width = 185
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 10
      OnKeyPress = edcodeKeyPress
      FieldType = ftDisplay
      EditType = etNumeric
    end
    object cbOldLabel: TCheckBox
      Left = 115
      Top = 112
      Width = 115
      Height = 17
      Caption = #1576#1585#1670#1587#1576' '#1602#1583#1610#1605#1610
      TabOrder = 11
    end
    object mmNote: TRSqlMemo
      Left = 9
      Top = 191
      Width = 444
      Height = 47
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      FieldType = ftNonRequired
    end
    object cbState: TRSqlDbLookup
      Left = 235
      Top = 135
      Width = 206
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ID'
      ListField = 'desc'
      ListSource = DataSource1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      FieldType = ftRequired
    end
    object cbItemType: TRSqlDbLookup
      Left = 9
      Top = 31
      Width = 183
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ID'
      ListField = 'desc'
      ListSource = dsCat
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 13
      FieldType = ftRequired
    end
  end
  object quinsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
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
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'p7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Insert into moveable_goods'
      '(item_code,receipt_no,label,bprice,eprice, type, state,Note)'
      '   values(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)')
    Left = 216
    Top = 244
  end
  object quupdate: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p1'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Update moveable_goods'
      'Set  label=:p0,'
      '       eprice=:p1,'
      '       bprice=:p2,'
      '       type=:p3,    '
      '       Note=:p4    '
      'where '
      '      goods_code=:p5')
    Left = 245
    Top = 245
  end
  object dsrec1: TDataSource
    DataSet = quitem
    Left = 126
    Top = 59
  end
  object quitem: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
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
      
        'Select rec_item.*,item.item_name,goods_class.class_name,Item.cla' +
        'ss_code'
      'from rec_item,item,goods_class'
      'where'
      '     rec_no=:p1                                        and'
      '     item.item_code=rec_item.item_code  and'
      '     item.class_code=goods_class.class_code'
      '')
    Left = 154
    Top = 59
    object quitemrec_no: TIntegerField
      FieldName = 'rec_no'
    end
    object quitemitem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 8
    end
    object quitembuy_price: TFloatField
      FieldName = 'buy_price'
    end
    object quitemex_price: TFloatField
      FieldName = 'ex_price'
    end
    object quitemamount2: TIntegerField
      FieldName = 'amount'
    end
    object quitemitem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object quitemclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quitemclass_code: TSmallintField
      FieldName = 'class_code'
    end
  end
  object quMaxLabel: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select Max(abs(label))+1 as LastLabel from moveable_goods Mg'
      'left Outer Join item I'
      ' on Mg.Item_code=I.Item_code'
      'where class_code=:p0')
    Left = 330
    Top = 106
    object quMaxLabelLastLabel: TIntegerField
      FieldName = 'LastLabel'
      ReadOnly = True
    end
  end
  object dsRecno: TDataSource
    DataSet = DabData.quMgdetRecNo
    Left = 310
    Top = 8
  end
  object dsClass: TDataSource
    DataSet = quAllClass
    Left = 306
    Top = 60
  end
  object quAllClass: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    AfterScroll = quAllClassAfterScroll
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Goods_Class '
      'WHERE Class_Type = :p1')
    Left = 338
    Top = 60
    object quAllClassclass_code: TSmallintField
      FieldName = 'class_code'
    end
    object quAllClassclass_desc: TStringField
      FieldName = 'class_desc'
      Size = 100
    end
    object quAllClassclass_name: TStringField
      FieldName = 'class_name'
      Size = 50
    end
    object quAllClassClass_Type: TSmallintField
      FieldName = 'Class_Type'
    end
    object quAllClassppc_code: TStringField
      FieldName = 'ppc_code'
      FixedChar = True
      Size = 5
    end
    object quAllClasspc_code: TStringField
      FieldName = 'pc_code'
      FixedChar = True
      Size = 5
    end
    object quAllClassps_code: TStringField
      FieldName = 'ps_code'
      FixedChar = True
      Size = 5
    end
  end
  object quSetOrg: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Organization ')
    Left = 301
    Top = 106
  end
  object dsOrg: TDataSource
    DataSet = quSetOrg
    Left = 269
    Top = 106
  end
  object dsItemClass: TDataSource
    DataSet = quItemClass
    Left = 47
    Top = 63
  end
  object quItemClass: TADOQuery
    Connection = DabData.ADOC
    BeforeOpen = quItemClassBeforeOpen
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'p4'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'p5'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT RI.Item_Code , IT.Item_Name  FROM Rec_Item RI'
      'LEFT OUTER JOIN Item IT ON '
      'RI.Item_Code = IT.Item_Code '
      'WHERE'
      'Rec_No = :p1 AND IT.Class_Code = :p2 and 1= :p3'
      'union'
      'select IT.Item_Code , IT.Item_Name FROM Item IT '
      'WHERE IT.Class_Code = :p4 and 1= :p5')
    Left = 76
    Top = 62
  end
  object quLabelCheck: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
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
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select Count(*) as Count'
      'from moveable_Goods'
      'left outer join Item '
      '  on Item.item_code=moveable_Goods.item_code'
      'where   '
      '       label >=:p0  '
      '     and'
      '       label <=:p1'
      '     and '
      '        item.class_code=:p2')
    Left = 185
    Top = 244
    object quLabelCheckCount: TIntegerField
      FieldName = 'Count'
      ReadOnly = True
    end
  end
  object quItemAmount: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'select Amount -T1.itmcount as DefCount,Amount,T1.itmcount'
      'from rec_item,'
      '          ('
      '             select count(*) as ItmCount'
      '             from moveable_Goods'
      '             where  receipt_no=:p0     and'
      '                    item_code=:p1'
      '           ) T1'
      'where rec_no=:p2  and  item_code=:p3')
    Left = 152
    Top = 243
    object quItemAmountDefCount: TIntegerField
      FieldName = 'DefCount'
      ReadOnly = True
    end
    object quItemAmountAmount: TIntegerField
      FieldName = 'Amount'
    end
    object quItemAmountitmcount: TIntegerField
      FieldName = 'itmcount'
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DabData.ADOC
    CursorType = ctStatic
    ProcedureName = 'GetCatNames;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Tbl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'Moveable_Goods'
      end
      item
        Name = '@Col'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'State'
      end>
    Left = 256
    Top = 136
    object ADOStoredProc1ID: TIntegerField
      FieldName = 'ID'
    end
    object ADOStoredProc1desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 304
    Top = 136
  end
  object dsCat: TDataSource
    DataSet = spCat1
    Left = 88
    Top = 32
  end
  object spCat1: TADOStoredProc
    Connection = DabData.ADOC
    ProcedureName = 'GetCatNames;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Tbl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'Moveable_Goods'
      end
      item
        Name = '@Col'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'Type'
      end>
    Left = 64
    Top = 32
    object spCat1ID: TIntegerField
      FieldName = 'ID'
    end
    object spCat1desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
end
