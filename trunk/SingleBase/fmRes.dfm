object Res: TRes
  Left = 292
  Top = 203
  BiDiMode = bdRightToLeft
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '       À»  Ê «’·«Õ „‰«»⁄'
  ClientHeight = 95
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 228
    Top = 13
    Width = 54
    Height = 13
    Caption = ' Œ’Ì’ »Â'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 228
    Top = 38
    Width = 24
    Height = 13
    Caption = '»Œ‘'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 228
    Top = 66
    Width = 62
    Height = 13
    Caption = '‰Ê⁄  Œ’Ì’'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dblUser: TDBLookupComboBox
    Left = 8
    Top = 8
    Width = 217
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'DEFUSR'
    ListField = 'FAMIL'
    ListSource = DabData.dsqUsers
    ParentFont = False
    TabOrder = 0
    OnClick = dblUserClick
  end
  object cbList: TComboBox
    Left = 8
    Top = 36
    Width = 217
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnChange = dblUserClick
    Items.Strings = (
      'À»  „ﬂ«·„«   ·›‰Ì'
      '«⁄·«„ ﬁ—«— Ê Ã·”« '
      'çﬂ ·Ì”  ﬂ«—Ì'
      'œ› —çÂ  ·›‰')
  end
  object Button1: TButton
    Left = 64
    Top = 63
    Width = 52
    Height = 22
    Caption = '·€Ê'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 9
    Top = 63
    Width = 55
    Height = 22
    Caption = ' «∆Ìœ'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object cbAss: TComboBox
    Left = 133
    Top = 63
    Width = 92
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
    OnChange = dblUserClick
    Items.Strings = (
      'ŒÊ«‰œ‰Ì'
      ' €ÌÌ‹‹‹—')
  end
  object quInsertRes: TQuery
    DatabaseName = 'DabirDatabase'
    SQL.Strings = (
      
        'Insert into AsnRes  (DefUsr,itm,DAssign,AsnTag)  values (:p1,:p2' +
        ',:p3,:p4)')
    Left = 151
    Top = 46
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'p2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p3'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'p4'
        ParamType = ptInput
      end>
  end
  object quUpdateRes: TQuery
    DatabaseName = 'DabirDatabase'
    SQL.Strings = (
      'Update AsnRes'
      'Set'
      '  DAssign=:p1,'
      '  AsnTag=:p2'
      'Where'
      '    (Itm=:p3)  and  (DefUsr=:p4)'
      '  ')
    Left = 189
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'p2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'p3'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p4'
        ParamType = ptInput
      end>
  end
end
