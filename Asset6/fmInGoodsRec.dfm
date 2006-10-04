object InGoodsRec: TInGoodsRec
  Left = 125
  Top = 116
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                              '#1585#1587 +
    #1610#1583' '#1575#1606#1576#1575#1585
  ClientHeight = 305
  ClientWidth = 555
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
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 273
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 37
      Width = 225
      Height = 22
    end
    object Label1: TLabel
      Left = 416
      Top = 10
      Width = 104
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585':'
    end
    object Label3: TLabel
      Left = 214
      Top = 122
      Width = 74
      Height = 15
      Caption = #1605#1587#1608#1608#1604' '#1575#1606#1576#1575#1585':'
    end
    object Label4: TLabel
      Left = 215
      Top = 95
      Width = 70
      Height = 15
      Caption = #1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605':'
    end
    object lbOrder_No: TLabel
      Left = 416
      Top = 38
      Width = 129
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1610#1583':'
      Enabled = False
    end
    object lbFCode: TLabel
      Left = 415
      Top = 65
      Width = 86
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585':'
      Enabled = False
    end
    object lbFDate: TLabel
      Left = 415
      Top = 93
      Width = 82
      Height = 15
      Caption = #1578#1575#1585#1610#1582' '#1601#1575#1603#1578#1608#1585':'
      Enabled = False
    end
    object lbOrg: TLabel
      Left = 51
      Top = 40
      Width = 123
      Height = 15
      Caption = #1587#1575#1586#1605#1575#1606' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607':'
    end
    object lbMadrak: TLabel
      Left = 420
      Top = 121
      Width = 112
      Height = 15
      Caption = #1588#1605#1575#1585#1607' '#1605#1583#1585#1603' '#1578#1581#1608#1610#1604':'
    end
    object Label2: TLabel
      Left = 235
      Top = 10
      Width = 63
      Height = 15
      Caption = #1606#1608#1593' '#1578#1581#1608#1610#1604':'
    end
    object lbLocation: TLabel
      Left = 424
      Top = 149
      Width = 59
      Height = 15
      Caption = #1605#1581#1604' '#1582#1585#1610#1583':'
      Enabled = False
    end
    object edRec_No: TRSqlEdit
      Left = 323
      Top = 7
      Width = 103
      Height = 23
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = edRec_NoChange
      FieldType = ftRequired
    end
    object cbGetType: TRSqlComboBox
      Left = 8
      Top = 7
      Width = 225
      Height = 22
      Style = csDropDownList
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnChange = cbGetTypeChange
      Items.Strings = (
        #1575#1605#1575#1606#1610
        #1575#1607#1583#1575#1610#1610
        #1582#1585#1610#1583#1575#1585#1610' '#1588#1583#1607)
      FieldType = ftRequired
    end
    object edOrder_No: TRSqlEdit
      Left = 323
      Top = 34
      Width = 103
      Height = 23
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      FieldType = ftDisplay
    end
    object btnOrder_No: TButton
      Left = 293
      Top = 34
      Width = 30
      Height = 23
      Caption = '...'
      Enabled = False
      TabOrder = 3
      OnClick = btnOrder_NoClick
    end
    object edFCode: TRSqlEdit
      Left = 293
      Top = 61
      Width = 133
      Height = 23
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      FieldType = ftNonRequired
    end
    object meFDate: TRSqlMaskEdit
      Left = 293
      Top = 89
      Width = 133
      Height = 23
      BiDiMode = bdLeftToRight
      Enabled = False
      EditMask = '00/00/00;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      Text = '  /  /  '
      MaskEditType = metDate
      FieldType = ftNonRequired
    end
    object edDoc_No: TRSqlEdit
      Left = 293
      Top = 117
      Width = 133
      Height = 23
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      FieldType = ftNonRequired
    end
    object edCreator: TRSqlEdit
      Left = 84
      Top = 118
      Width = 134
      Height = 23
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      FieldType = ftDisplay
    end
    object edCreateDate: TRSqlEdit
      Left = 105
      Top = 91
      Width = 113
      Height = 23
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      FieldType = ftDisplay
    end
    object edOrder_Location: TRSqlEdit
      Left = 8
      Top = 145
      Width = 418
      Height = 23
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 40
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
      FieldType = ftNonRequired
    end
    object reNotes: TRSqlMemo
      Left = 8
      Top = 173
      Width = 529
      Height = 89
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 250
      ParentFont = False
      TabOrder = 10
      FieldType = ftNonRequired
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 273
    Width = 555
    Height = 32
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object btnOK: TRSqlButton
      Left = 7
      Top = 5
      Width = 70
      Height = 23
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnOKClick
      ButtonType = btOk
    end
    object btnCancel: TRSqlButton
      Left = 77
      Top = 5
      Width = 70
      Height = 23
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
      ButtonType = btCancel
    end
  end
  object lkpOrg: TRSqlDbLookup
    Left = 8
    Top = 65
    Width = 225
    Height = 23
    BiDiMode = bdRightToLeft
    KeyField = 'Org_Code'
    ListField = 'Org_Name'
    ListSource = dsOrg
    ParentBiDiMode = False
    TabOrder = 2
    FieldType = ftNonRequired
  end
  object quOrg: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Organization ')
    Left = 112
    Top = 123
  end
  object dsOrg: TDataSource
    DataSet = quOrg
    Left = 80
    Top = 123
  end
  object quGenCode: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Goods_Rec '
      'ORDER BY Rec_No ')
    Left = 168
    Top = 244
    object quGenCoderec_no: TIntegerField
      FieldName = 'rec_no'
    end
  end
  object quInsert: TADOQuery
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'p9'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p10'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p11'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p12'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p13'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p14'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p15'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO Goods_rec (creator,[date],deliver,ddate,confirmer,cd' +
        'ate,order_no,doc_no,org,GetType,Order_Location,Org_Code,F_Code,F' +
        '_Date,Rec_no,Notes)'
      
        'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p' +
        '13,:p14,:p15)'
      ' ')
    Left = 234
    Top = 243
  end
  object quUser: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM emp '
      'WHERE '
      'emp_no = :p1 ')
    Left = 288
    Top = 244
    object quUsername: TStringField
      FieldName = 'name'
      Size = 30
    end
    object quUserfamily: TStringField
      FieldName = 'family'
      Size = 40
    end
  end
  object quUpdate: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'p3'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'p4'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end
      item
        Name = 'p8'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE Goods_Rec '
      'SET '
      ' Order_no = :p0 ,'
      ' doc_no = :p1 ,'
      ' GetType = :p2 ,'
      ' Order_Location = :p3 ,'
      ' Org_Code = :p4 , '
      ' F_Code = :p5 , '
      ' F_Date = :p6 ,'
      ' Notes =:p7'
      'WHERE '
      ' Rec_No =  :p8 ')
    Left = 320
    Top = 244
  end
  object quFillRecItems: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'EXECUTE FillRecItems :p1,:p2')
    Left = 355
    Top = 244
  end
  object quUpdateOrderRequest: TADOQuery
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
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE Order_Request '
      'SET State = :p1 '
      'WHERE '
      'Order_Req_Type = 1 AND '
      'Order_Req_No = :p2 ')
    Left = 392
    Top = 245
  end
  object quCheckKey: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select rec_no from  Goods_rec where rec_no=:p0')
    Left = 440
    Top = 249
    object quCheckKeyrec_no: TIntegerField
      FieldName = 'rec_no'
    end
  end
end
