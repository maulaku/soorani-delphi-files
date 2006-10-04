object FallInput: TFallInput
  Left = 155
  Top = 103
  Anchors = [akTop, akRight]
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                             ‘—«' +
    'Ìÿ «Õ—«“'
  ClientHeight = 89
  ClientWidth = 615
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
  object paFields: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 56
    Align = alClient
    TabOrder = 0
    object Bevel3: TBevel
      Left = 519
      Top = 3
      Width = 93
      Height = 24
    end
    object Bevel2: TBevel
      Left = 111
      Top = 3
      Width = 96
      Height = 24
    end
    object Bevel1: TBevel
      Left = 519
      Top = 29
      Width = 93
      Height = 24
    end
    object Bevel4: TBevel
      Left = 399
      Top = 29
      Width = 71
      Height = 24
    end
    object Label1: TLabel
      Left = 523
      Top = 6
      Width = 84
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '—‘ Â  Õ’Ì·Ì :'
    end
    object Label2: TLabel
      Left = 114
      Top = 6
      Width = 87
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '„ﬁÿ⁄  Õ’Ì·Ì :'
    end
    object Label3: TLabel
      Left = 523
      Top = 32
      Width = 40
      Height = 16
      Anchors = [akTop, akRight]
      Caption = ' Ã—»Â :'
    end
    object Label4: TLabel
      Left = 404
      Top = 33
      Width = 60
      Height = 16
      Anchors = [akTop, akRight]
      Caption = ' Ê÷ÌÕ«  :'
    end
    object cbDegree: TComboBox
      Left = 3
      Top = 3
      Width = 106
      Height = 24
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemHeight = 16
      TabOrder = 1
      OnChange = lcFieldClick
      OnKeyPress = lcFieldKeyPress
      Items.Strings = (
        '»Ì ”Ê«œ'
        '«» œ«ÌÌ'
        '”Ìﬂ·'
        'œÌÅ·„'
        '›Êﬁ œÌÅ·„'
        '·Ì”«‰”'
        '›Êﬁ ·Ì”«‰”'
        'œﬂ —«')
    end
    object lcField: TDBLookupComboBox
      Left = 208
      Top = 3
      Width = 310
      Height = 24
      Anchors = [akTop, akRight]
      KeyField = 'field_no'
      ListField = 'field_name'
      ListSource = dslcField
      TabOrder = 0
      OnClick = lcFieldClick
      OnKeyPress = lcFieldKeyPress
    end
    object edExprience: TEdit
      Left = 471
      Top = 29
      Width = 47
      Height = 24
      Anchors = [akTop, akRight]
      MaxLength = 2
      TabOrder = 2
      OnChange = lcFieldClick
      OnKeyPress = edExprienceKeyPress
    end
    object edDesc: TEdit
      Left = 3
      Top = 29
      Width = 395
      Height = 24
      Anchors = [akTop, akRight]
      MaxLength = 100
      TabOrder = 3
      OnChange = lcFieldClick
      OnKeyPress = lcFieldKeyPress
    end
  end
  object paButtons: TPanel
    Left = 0
    Top = 56
    Width = 615
    Height = 33
    Align = alBottom
    TabOrder = 1
    object btOk: TButton
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = ' «∆Ìœ'
      Default = True
      TabOrder = 0
      OnKeyPress = lcFieldKeyPress
    end
    object btCancel: TButton
      Left = 79
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '·€Ê'
      ModalResult = 2
      TabOrder = 1
      OnKeyPress = lcFieldKeyPress
    end
  end
  object dslcField: TDataSource
    DataSet = qulcField
    Left = 328
    Top = 72
  end
  object qulcField: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'select * from field')
    Left = 360
    Top = 72
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
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into Fall_Situation (Row,Org_Code,Post_Code,Unit_Code,Fie' +
        'ld_no,Edu_Degree,Experience,[Desc]) '
      'Values(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)')
    Left = 184
    Top = 72
  end
  object quEdit: TADOQuery
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
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'p5'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p6'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'p7'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Update Fall_Situation set Field_no=:p1, Edu_Degree=:p2, Experien' +
        'ce=:p3, [Desc]=:p4'
      'where Row=:p5 and Org_Code=:p6 and Post_Code=:p7')
    Left = 216
    Top = 72
  end
  object quCheck: TADOQuery
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
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select Row from Fall_Situation '
      'where Org_Code=:p1 and Post_Code=:p2 '
      'and Field_no=:p3 and Edu_Degree=:p4 and Row<>:p5')
    Left = 248
    Top = 72
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
      'select Max(Row) as NewRow from Fall_Situation '
      'where Org_Code=:p1 and Post_Code=:p2')
    Left = 280
    Top = 72
    object quGetMaxNewRow: TIntegerField
      FieldName = 'NewRow'
      ReadOnly = True
    end
  end
end
