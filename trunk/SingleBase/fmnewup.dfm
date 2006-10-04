object newup: Tnewup
  Left = 142
  Top = 91
  Width = 497
  Height = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 380
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object Label1: TLabel
      Left = 291
      Top = 11
      Width = 51
      Height = 16
      Caption = #1587#1610#1587#1578#1605
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RSqlDbLookup1: TRSqlDbLookup
      Left = 224
      Top = 344
      Width = 185
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ListSource = dssystem
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftRequired
    end
    object RSqlButton1: TRSqlButton
      Left = 112
      Top = 296
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
    object RSqlButton2: TRSqlButton
      Left = 192
      Top = 296
      Width = 75
      Height = 25
      Caption = #1604#1594#1608
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
  end
  object dssystem: TDataSource
    Left = 184
    Top = 344
  end
  object QuMenu: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
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
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select Menues.MCode,Menues.MDesc from Menues,Masters where Maste' +
        'rs.Emp_No=:p0 and Masters.SysCode=:p1 and MAsters.MCode=Menues.M' +
        'Code')
    Left = 80
    Top = 345
    object QuMenuMCode: TIntegerField
      FieldName = 'MCode'
    end
    object QuMenuMDesc: TStringField
      FieldName = 'MDesc'
      Size = 100
    end
  end
  object DsMenu: TDataSource
    DataSet = QuMenu
    Left = 64
    Top = 393
  end
  object QuNSystem: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select distinct syscode , Descr = case syscode '
      'when 1 then '#39#1603#1575#1585#1711#1586#1610#1606#1610#39
      'when 4 then '#39#1581#1587#1575#1576#1583#1575#1585#1610#39
      'when 2 then '#39#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583#39
      'when 3 then '#39#1578#1588#1603#1610#1604#1575#1578#39
      'when 5 then '#39#1575#1605#1608#1575#1604#39
      'when 7 then '#39#1570#1605#1608#1586#1588#39
      'when 6 then '#39#1585#1601#1575#1607#39
      'when 8 then '#39#1576#1608#1583#1580#1607#39
      'when 9 then '#39#1583#1587#1578#1585#1587#1610#39
      'end'
      
        'from menues where syscode not in (Select distinct syscode from m' +
        'asters where Emp_No=:p1)'
      '')
    Left = 112
    Top = 345
    object QuNSystemsyscode: TIntegerField
      FieldName = 'syscode'
    end
    object QuNSystemDescr: TStringField
      FieldName = 'Descr'
      ReadOnly = True
      Size = 13
    end
  end
  object QuNMenu: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'p1'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'p2'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'p3'
        DataType = ftString
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select distinct menues.MCode,Menues.MDesc from Menues,Masters wh' +
        'ere Masters.Emp_No=:p0 and Menues.SysCode=:p1  '
      
        'and menues.MCode not in (Select Menues.MCode from Menues,Masters' +
        ' where Masters.Emp_No=:p2 and Masters.SysCode=:p3 and masters.mc' +
        'ode=menues.mcode)')
    Left = 152
    Top = 345
    object QuNMenuMCode: TIntegerField
      FieldName = 'MCode'
    end
    object QuNMenuMDesc: TStringField
      FieldName = 'MDesc'
      Size = 100
    end
  end
  object FormInitializer1: TFormInitializer
    FieldMode = fmInsert
    SearchFocusables = False
    Left = 8
    Top = 344
  end
  object quinssys: TADOQuery
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
      'insert into masters (emp_no,syscode,mcode ) values(:p0,:p1,:p2)')
    Left = 40
    Top = 344
  end
end
