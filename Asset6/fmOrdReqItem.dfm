object OrdReqItem: TOrdReqItem
  Left = 126
  Top = 386
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '                                       '#1603#1575#1604#1575#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583' '#1588#1583#1607
  ClientHeight = 115
  ClientWidth = 537
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
    Width = 537
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 417
      Top = 42
      Width = 106
      Height = 16
      Caption = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578':'
    end
    object Label3: TLabel
      Left = 182
      Top = 42
      Width = 79
      Height = 16
      Caption = #1576#1585#1570#1608#1585#1583' '#1602#1610#1605#1578':'
    end
    object SpeedButton1: TSpeedButton
      Left = 439
      Top = 9
      Width = 63
      Height = 21
      Hint = #1588#1605#1575#1585' '#1583#1585' '#1575#1610#1606' '#1602#1587#1605#1578' '#1605#1610' '#1578#1608#1575#1606#1606#1610#1583' '#1603#1575#1604#1575#1610' '#1580#1583#1610#1583#1610' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object lkpItem: TRSqlDbLookup
      Left = 9
      Top = 9
      Width = 423
      Height = 24
      KeyField = 'item_code'
      ListField = 'item_name'
      ListSource = dsItem
      TabOrder = 0
      FieldType = ftKeyGo
    end
    object edAmNumber: TRSqlEdit
      Left = 313
      Top = 38
      Width = 119
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      FieldType = ftRequired
    end
    object edPrEstimate: TRSqlEdit
      Left = 9
      Top = 38
      Width = 176
      Height = 22
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 537
    Height = 42
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Action: TRSqlButton
      Left = 9
      Top = 9
      Width = 74
      Height = 24
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = ActionClick
      ButtonType = btOk
    end
    object Cancel: TRSqlButton
      Left = 83
      Top = 9
      Width = 75
      Height = 24
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = CancelClick
      ButtonType = btCancel
    end
  end
  object Main_FormInitializer: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 168
    Top = 80
  end
  object quItem: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Item'
      'WHERE item_code NOT IN '
      '(SELECT Item_Code From Ordered_Request_Item'
      'WHERE '
      'Order_Type = 1 AND Order_Req_No = :p1)')
    Left = 240
    Top = 8
  end
  object dsItem: TDataSource
    DataSet = quItem
    Left = 208
    Top = 8
  end
  object quInsert: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
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
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Ordered_Request_Item '
      'VALUES(1 , :p1,:p2,:p3,:p4)')
    Left = 208
    Top = 80
  end
  object quUpdate: TADOQuery
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
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
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
      'UPDATE Ordered_Request_Item'
      'SET'
      'Amount_Number = :p1 , '
      'Price_Estimate_Number = :p2 '
      'WHERE '
      'Order_Type = 1 AND '
      'Order_Req_No = :p3 AND '
      'Item_Code = :p4')
    Left = 240
    Top = 80
  end
end
