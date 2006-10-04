object InRecItem: TInRecItem
  Left = 151
  Top = 211
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                  '#1603#1575#1604#1575#1607#1575#1610' '#1585#1587#1610#1583#1607' ' +
    #1588#1583#1607
  ClientHeight = 152
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 124
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 143
      Top = 9
      Width = 66
      Height = 16
      Caption = #1602#1610#1605#1578' '#1603#1575#1604#1575':'
    end
    object Label3: TLabel
      Left = 451
      Top = 37
      Width = 66
      Height = 16
      Caption = #1605#1602#1583#1575#1585' '#1603#1575#1604#1575':'
    end
    object SpeedButton1: TSpeedButton
      Left = 454
      Top = 9
      Width = 63
      Height = 21
      Hint = #1575#1711#1585' '#1583#1585' '#1575#1606#1578#1582#1575#1576' '#1603#1575#1604#1575' '#1605#1588#1603#1604' '#1583#1575#1585#1610#1583' '#1585#1608#1610' '#1575#1610#1606' '#1583#1603#1605#1607' '#1601#1588#1575#1585' '#1583#1607#1610#1583
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 143
      Top = 36
      Width = 94
      Height = 16
      Hint = #1588#1605#1575#1585#1607' '#1576#1585#1670#1587#1576' '#1588#1585#1608#1593' '#1576#1585#1575#1610' '#1603#1575#1604#1575#1607#1575#1610' '#1594#1610#1585' '#1605#1589#1585#1601#1610
      Caption = ' '#1576#1585#1670#1587#1576' '#1588#1585#1608#1593
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 453
      Top = 68
      Width = 62
      Height = 16
      Hint = #1578#1608#1590#1610#1582#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1575#1610#1606' '#1603#1575#1604#1575#1610' '#1582#1575#1589' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1610#1606#1580#1575' '#1583#1585#1580' '#1606#1605#1575#1610#1610#1583
      Caption = #1605#1604#1575#1581#1590#1575#1578':'
      ParentShowHint = False
      ShowHint = True
    end
    object lkpItem: TRSqlDbLookup
      Left = 224
      Top = 7
      Width = 229
      Height = 24
      KeyField = 'item_code'
      ListField = 'item_name'
      ListSource = DabData.dsJustItem
      TabOrder = 0
      OnClick = lkpItemCloseUp
      OnCloseUp = lkpItemCloseUp
      FieldType = ftKeyGo
    end
    object edPrice: TRSqlEdit
      Left = 4
      Top = 5
      Width = 140
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftNonRequired
      EditType = etFloat
    end
    object edAmount: TRSqlEdit
      Left = 240
      Top = 33
      Width = 210
      Height = 24
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
      EditType = etFloat
    end
    object edLabel: TRSqlEdit
      Left = 4
      Top = 32
      Width = 140
      Height = 24
      Hint = #1588#1605#1575#1585#1607' '#1576#1585#1670#1587#1576' '#1588#1585#1608#1593' '#1576#1585#1575#1610' '#1603#1575#1604#1575#1607#1575#1610' '#1594#1610#1585' '#1605#1589#1585#1601#1610
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      FieldType = ftNonRequired
      EditType = etFloat
    end
    object edNote: TRSqlMemo
      Left = 5
      Top = 63
      Width = 447
      Height = 46
      Hint = #1578#1608#1590#1610#1582#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1575#1610#1606' '#1603#1575#1604#1575#1610' '#1582#1575#1589' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1610#1606#1580#1575' '#1583#1585#1580' '#1606#1605#1575#1610#1610#1583
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 250
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      FieldType = ftNonRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 124
    Width = 521
    Height = 28
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object btnOK: TRSqlButton
      Left = 7
      Top = 3
      Width = 75
      Height = 25
      Hint = 
        #1576#1575#1610#1583' '#1578#1608#1580#1607' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1610#1583' '#1576#1585#1575#1610' '#1603#1575#1604#1575#1607#1575#1610' '#1594#1610#1585' '#1605#1589#1585#1601#1610' '#1603#1607' '#1576#1607' '#1575#1586#1575#1610' '#1608#1585#1608#1583' '#1607#1585' ' +
        #1578#1593#1583#1575#1583' '#1603#1575#1604#1575' '#1576#1607' '#1607#1605#1575#1606' '#1578#1593#1583#1575#1583' '#1603#1575#1604#1575' '#1583#1585' '#1575#1605#1608#1575#1604' '#1594#1610#1585' '#1605#1589#1585#1601#1610' '#1583#1585#1580' '#1605#1610' '#1711#1585#1583#1583' '
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnOKClick
      ButtonType = btOk
    end
    object btnCancel: TRSqlButton
      Left = 82
      Top = 3
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
      OnClick = btnCancelClick
      ButtonType = btCancel
    end
  end
  object quInsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Rec_No'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Item_Code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'BuyPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'exPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Amount'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Note'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Rec_Item '
      'VALUES(:Rec_No,:Item_Code,:BuyPrice,:exPrice,:Amount,:Note)')
    Left = 168
    Top = 92
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
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
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE Rec_Item '
      'SET '
      'buy_price = :p0 ,'
      'Amount = :p1 ,'
      'Notes = :p2'
      'WHERE '
      'Rec_no = :p3 AND '
      'item_code = :p4 ')
    Left = 208
    Top = 92
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
    Left = 58
    Top = 58
    object quMaxLabelLastLabel: TIntegerField
      FieldName = 'LastLabel'
      ReadOnly = True
    end
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
    Left = 89
    Top = 60
    object quLabelCheckCount: TIntegerField
      FieldName = 'Count'
      ReadOnly = True
    end
  end
end
