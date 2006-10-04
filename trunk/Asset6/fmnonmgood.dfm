object nonmgood: Tnonmgood
  Left = 3
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    '                                                                ' +
    '                    '#1579#1576#1578' '#1575#1605#1608#1575#1604' '#1594#1610#1585' '#1605#1606#1602#1608#1604
  ClientHeight = 426
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 27
    Width = 740
    Height = 399
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = 11075583
    DataSource = dsnonmgood
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'plaque_no'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1662#1604#1575#1603
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'reg_no'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 74
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
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'State_Name'
        Title.Alignment = taCenter
        Title.Caption = #1608#1590#1593#1610#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'reg_date'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cowner'
        Title.Alignment = taCenter
        Title.Caption = #1587#1606#1583' '#1605#1575#1604#1603#1610#1578
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'County_Name'
        Title.Alignment = taCenter
        Title.Caption = #1605#1581#1604' '#1580#1594#1585#1575#1601#1610#1575#1610#1610
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'buy_price'
        Title.Alignment = taCenter
        Title.Caption = #1576#1607#1575#1610' '#1582#1585#1610#1583
        Title.Color = clInfoBk
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clPurple
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 27
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 641
      Top = 6
      Width = 70
      Height = 15
      BiDiMode = bdLeftToRight
      Caption = ': '#1606#1600#1600#1575#1605' '#1605#1600#1600#1600#1575#1604
      ParentBiDiMode = False
    end
    object edSearch: TRSqlEdit
      Left = 497
      Top = 3
      Width = 142
      Height = 23
      BiDiMode = bdRightToLeft
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnChange = edSearchChange
      FieldType = ftRequired
    end
  end
  object dsnonmgood: TDataSource
    DataSet = qunonmgood
    Left = 46
    Top = 73
  end
  object quDelete: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Delete from '
      'nonmovable_goods'
      'Where plaque_no=:p1')
    Left = 50
    Top = 142
  end
  object qunonmgood: TADOQuery
    Connection = DabData.ADOC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'Select   A. *,C.item_name,cast(A.Plaque_No as char(10)) as Plaqu' +
        'e_NoStr,County.County_Name,Cl.Class_Name,'
      'cowner = case A.owner_doc'
      '   when 0 then '#39#1583#1575#1585#1583#39
      '   when 1 then '#39#1606#1583#1575#1585#1583#39
      '   end'
      ',  case state'
      '   when 0 then '#39#1579#1576#1578' '#1588#1583#1607#39
      '   when 1 then '#39#1583#1585#1581#1575#1604' '#1575#1587#1578#1601#1575#1583#1607#39
      '   when 2 then '#39#1608#1575#1711#1584#1575#1585#1588#1583#1607' '#1605#1608#1602#1578#39
      '   when 3 then '#39#1608#1575#1711#1584#1575#1585#1588#1583#1607' '#1583#1575#1574#1605#39
      '   when 4 then '#39#1576#1583#1608#1606' '#1575#1587#1578#1601#1575#1583#1607#39
      '   when 5 then '#39#1575#1586' '#1576#1610#1606' '#1585#1601#1578#1607#39
      '   when 6 then '#39#1578#1589#1585#1601' '#1588#1583#1607#39
      '   when 7 then '#39#1601#1585#1608#1582#1578#1607' '#1588#1583#1607#39
      '   when 8 then '#39#1581#1584#1601' '#1588#1583#1607#39
      ' end as State_Name'
      'from nonmovable_goods A,County,item C,Goods_Class Cl'
      'where'
      '      ('
      '                A.item_code   = C.item_code'
      '      and   C.class_code = Cl.class_code'
      '      and   Cl.class_Type = 3'
      
        '      and   cast(Left (A.Loc_code,3)as int) = county.Country_Cod' +
        'e'
      
        '      and   cast(SubString(A.Loc_code,4,2)as int) = county.Provi' +
        'nce_Code'
      
        '      and   cast(SubString(A.Loc_code,6,3)as int) = county.Count' +
        'y_Code'
      '      and   C.item_name  like :p0'
      '         )'
      'order by Plaque_no'
      ' ')
    Left = 114
    Top = 73
    object qunonmgoodplaque_no: TStringField
      FieldName = 'plaque_no'
      FixedChar = True
      Size = 10
    end
    object qunonmgoodreg_no: TIntegerField
      FieldName = 'reg_no'
    end
    object qunonmgoodreg_date: TStringField
      FieldName = 'reg_date'
      FixedChar = True
      Size = 8
    end
    object qunonmgoodloc_code: TStringField
      FieldName = 'loc_code'
      FixedChar = True
      Size = 14
    end
    object qunonmgoodground_area: TIntegerField
      FieldName = 'ground_area'
    end
    object qunonmgoodbuilding_area: TIntegerField
      FieldName = 'building_area'
    end
    object qunonmgoodbounds: TStringField
      FieldName = 'bounds'
      Size = 50
    end
    object qunonmgoodaddress: TStringField
      FieldName = 'address'
      Size = 50
    end
    object qunonmgoodlength: TIntegerField
      FieldName = 'length'
    end
    object qunonmgoodwidth: TIntegerField
      FieldName = 'width'
    end
    object qunonmgoodfacility: TStringField
      FieldName = 'facility'
      Size = 50
    end
    object qunonmgoodappendix: TStringField
      FieldName = 'appendix'
      Size = 50
    end
    object qunonmgoodexpert_price: TFloatField
      FieldName = 'expert_price'
    end
    object qunonmgoodbuy_price: TFloatField
      FieldName = 'buy_price'
    end
    object qunonmgoodprice_unit: TSmallintField
      FieldName = 'price_unit'
    end
    object qunonmgoodarea_unit: TSmallintField
      FieldName = 'area_unit'
    end
    object qunonmgoodlength_unit: TSmallintField
      FieldName = 'length_unit'
    end
    object qunonmgoodwidth_unit: TSmallintField
      FieldName = 'width_unit'
    end
    object qunonmgoodowner_doc: TSmallintField
      FieldName = 'owner_doc'
    end
    object qunonmgooditem_code: TStringField
      FieldName = 'item_code'
      FixedChar = True
      Size = 8
    end
    object qunonmgoodstate: TSmallintField
      FieldName = 'state'
    end
    object qunonmgooddoc_no: TStringField
      FieldName = 'doc_no'
      Size = 12
    end
    object qunonmgooddoc_date: TStringField
      FieldName = 'doc_date'
      FixedChar = True
      Size = 8
    end
    object qunonmgoodReciever: TStringField
      FieldName = 'Reciever'
      FixedChar = True
      Size = 10
    end
    object qunonmgoodFile_No: TStringField
      FieldName = 'File_No'
      FixedChar = True
      Size = 10
    end
    object qunonmgooddoc_Type: TSmallintField
      FieldName = 'doc_Type'
    end
    object qunonmgoodReg_Loc: TStringField
      FieldName = 'Reg_Loc'
      Size = 30
    end
    object qunonmgoodOffice_No: TIntegerField
      FieldName = 'Office_No'
    end
    object qunonmgoodPrint_No: TLargeintField
      FieldName = 'Print_No'
    end
    object qunonmgoodReg_Plaque: TStringField
      FieldName = 'Reg_Plaque'
      Size = 15
    end
    object qunonmgoodDoc_Desc: TStringField
      FieldName = 'Doc_Desc'
      Size = 200
    end
    object qunonmgoodOwner_Org: TStringField
      FieldName = 'Owner_Org'
      Size = 100
    end
    object qunonmgoodUser_Org: TStringField
      FieldName = 'User_Org'
      Size = 100
    end
    object qunonmgoodExt_Reciver: TStringField
      FieldName = 'Ext_Reciver'
      Size = 50
    end
    object qunonmgoodExit_Date: TStringField
      FieldName = 'Exit_Date'
      FixedChar = True
      Size = 8
    end
    object qunonmgoodDesc: TStringField
      FieldName = 'Desc'
      Size = 200
    end
    object qunonmgooditem_name: TStringField
      FieldName = 'item_name'
      Size = 30
    end
    object qunonmgoodPlaque_NoStr: TStringField
      FieldName = 'Plaque_NoStr'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qunonmgoodCounty_Name: TStringField
      FieldName = 'County_Name'
      Size = 40
    end
    object qunonmgoodClass_Name: TStringField
      FieldName = 'Class_Name'
      Size = 50
    end
    object qunonmgoodcowner: TStringField
      FieldName = 'cowner'
      ReadOnly = True
      Size = 5
    end
    object qunonmgoodState_Name: TStringField
      FieldName = 'State_Name'
      ReadOnly = True
      Size = 14
    end
  end
end
