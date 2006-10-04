object SelAvailableGoods: TSelAvailableGoods
  Left = 230
  Top = 91
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1575#1606#1578#1582#1575#1576' '#1603#1575#1604#1575' '#1576#1585#1575#1610' '#1578#1581#1608#1610#1604
  ClientHeight = 444
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 396
    Height = 444
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 392
      Height = 440
      Align = alClient
      Caption = #1603#1575#1604#1575#1607#1575#1610' '#1602#1575#1576#1604' '#1578#1581#1608#1610#1604
      TabOrder = 0
      object aveList: TCheckListBox
        Left = 2
        Top = 77
        Width = 388
        Height = 299
        Align = alClient
        ItemHeight = 16
        TabOrder = 0
        OnClick = aveListClick
      end
      object Panel2: TPanel
        Left = 2
        Top = 18
        Width = 388
        Height = 59
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 306
          Top = 9
          Width = 56
          Height = 16
          Caption = #1606#1575#1605' '#1603#1575#1604#1575' :'
        end
        object Label2: TLabel
          Left = 126
          Top = 7
          Width = 52
          Height = 16
          Caption = #1603#1583' '#1603#1575#1604#1575' :'
        end
        object Label3: TLabel
          Left = 276
          Top = 34
          Width = 86
          Height = 16
          Caption = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607':'
        end
        object Label4: TLabel
          Left = 57
          Top = 32
          Width = 89
          Height = 16
          Caption = #1578#1593#1583#1575#1583' '#1578#1581#1608#1610#1604#1610':'
        end
        object edName: TRSqlEdit
          Left = 181
          Top = 5
          Width = 121
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'edName'
          FieldType = ftDisplay
        end
        object edItemCode: TRSqlEdit
          Left = 3
          Top = 3
          Width = 121
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = 'edName'
          FieldType = ftDisplay
        end
        object edBillNo: TRSqlEdit
          Left = 149
          Top = 31
          Width = 121
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = 'edName'
          FieldType = ftDisplay
        end
        object edCount: TRSqlEdit
          Left = 4
          Top = 28
          Width = 51
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'edCount'
          FieldType = ftDisplay
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 376
        Width = 388
        Height = 62
        Align = alBottom
        TabOrder = 2
        object Label5: TLabel
          Left = 291
          Top = 10
          Width = 95
          Height = 16
          Caption = #1588#1605#1575#1585#1607' '#1576#1585#1670#1587#1576
        end
        object Label6: TLabel
          Left = 358
          Top = 32
          Width = 29
          Height = 16
          Caption = #1588#1585#1581
          FocusControl = DBEdit2
        end
        object RSqlButton1: TRSqlButton
          Left = 1
          Top = 5
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
          OnClick = RSqlButton1Click
          ButtonType = btOk
        end
        object RSqlButton2: TRSqlButton
          Left = 80
          Top = 5
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
          OnClick = RSqlButton2Click
          ButtonType = btCancel
        end
        object DBEdit1: TDBEdit
          Left = 167
          Top = 5
          Width = 121
          Height = 24
          DataField = 'Label'
          DataSource = dsAvaPerson
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 0
          Top = 32
          Width = 353
          Height = 24
          DataField = 'Note'
          DataSource = dsAvaPerson
          TabOrder = 3
        end
      end
    end
  end
  object quAvaGoods: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Item_code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  '#39#1603#1583' '#1603#1575#1604#1575' ='#39'+Goods_code+'#39' '#1576#1585#1670#1587#1576#39'+IsNull(Str(Label),'#39#39')  a' +
        's GoodItem,Label,Goods_Code,Note From    Moveable_Goods'
      
        '     WHERE  Item_Code =:Item_code  and    state =0  and  Goods_c' +
        'ode '
      '   NOT IN ( SELECT Goods_Code  from Bill_Goods )')
    Left = 156
    Top = 21
    object quAvaGoodsGoodItem: TStringField
      FieldName = 'GoodItem'
      ReadOnly = True
      Size = 37
    end
    object quAvaGoodsLabel: TIntegerField
      FieldName = 'Label'
    end
    object quAvaGoodsGoods_Code: TStringField
      FieldName = 'Goods_Code'
      FixedChar = True
      Size = 12
    end
    object quAvaGoodsNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
  end
  object dsAvaPerson: TDataSource
    DataSet = quAvaGoods
    Left = 180
    Top = 37
  end
  object quIn2BillGoods: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Bill_No'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Bill_Type'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'Goods_code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Insert Into Bill_Goods(Bill_No,Bill_Type,Goods_code) '
      '  values(:Bill_No,:Bill_Type,:Goods_code)')
    Left = 162
    Top = 378
  end
  object quAvaBilledGoods: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Item_code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  '#39#1603#1583' '#1603#1575#1604#1575' ='#39'+Goods_code+'#39' '#1576#1585#1670#1587#1576#39'+IsNull(Str(Label),'#39#39')  a' +
        's GoodItem,Label,Goods_Code,Note From    Moveable_Goods'
      '     WHERE  Item_Code =:Item_code  and    state =1 '
      '')
    Left = 148
    Top = 77
    object quAvaBilledGoodsGoodItem: TStringField
      FieldName = 'GoodItem'
      ReadOnly = True
      Size = 37
    end
    object quAvaBilledGoodsLabel: TIntegerField
      FieldName = 'Label'
    end
    object quAvaBilledGoodsGoods_Code: TStringField
      FieldName = 'Goods_Code'
      FixedChar = True
      Size = 12
    end
    object quAvaBilledGoodsNote: TStringField
      FieldName = 'Note'
      Size = 200
    end
  end
  object quUpdateItem_requested: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'goods_code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'Update Requested_Item Set'
      'R_State='#10
      ' '#9' Case'
      #9'         When IsNull(R.R_State,0)=2 then 3'
      
        '                 when ((IsNull(R.Recieve_Amount,0)-IsNull(R.Conf' +
        '_Amount,0)<0)'
      '                    and (IsNull(R.R_State,0)=2)) then 2'
      #9'         else'
      '                          3'
      '     '#9'        end'
      '  from'
      '   Requested_Item R'
      '   Left Outer Join Bill B'
      '   On Req_No=Item_Req_No'
      '   Left Outer Join Bill_Goods BG'
      '   On B.Bill_No=BG.Bill_No'
      '   Left Outer Join Moveable_Goods M'
      '   On BG.Goods_Code=M.Goods_Code'
      'Where'
      '  BG.Goods_Code=:goods_code')
    Left = 220
    Top = 378
  end
  object quUpdateGoodsState: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Goods_Code'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      '  Update Moveable_Goods Set State=1 where Goods_Code=:Goods_Code')
    Left = 190
    Top = 378
  end
end
