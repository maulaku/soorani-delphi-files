object DesignShow: TDesignShow
  Left = 141
  Top = 134
  Width = 542
  Height = 373
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605#1607#1575#1610' '#1591#1585#1581#1610' '#1588#1583#1607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 405
    Top = 0
    Width = 129
    Height = 339
    Hint = #1606#1575#1605' '#1601#1585#1605#1607#1575#1610#1610' '#1603#1607' '#1588#1605#1575' '#1591#1585#1575#1581#1610' '#1603#1585#1583#1607' '#1575#1610#1583
    Align = alRight
    DataSource = dsuDesignForm
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Form_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Left'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Top'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Width'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Height'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FormName'
        Title.Caption = #1606#1575#1605' '#1601#1585#1605
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Table_Name'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FormCaption'
        Title.Caption = #1606#1575#1605' '#1601#1585#1605
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SystemID'
        Visible = False
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 405
    Height = 339
    Hint = #1585#1603#1608#1585#1583' '#1607#1575#1610' '#1601#1585#1605#1607#1575#1610#1610' '#1603#1607' '#1591#1585#1575#1581#1610' '#1603#1585#1583#1607' '#1575#1610#1583
    Align = alClient
    DataSource = quuDesignTable
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dsuDesignForm: TDataSource
    DataSet = dsDesignForm
    Left = 32
    Top = 88
  end
  object quuDesignTable: TDataSource
    DataSet = quDesignTable
    Left = 184
    Top = 112
  end
  object dsDesignFormField: TADODataSet
    Connection = DabData.ADOC
    CursorType = ctStatic
    CommandText = 'Select * from DesignFormField'
    DataSource = dsuDesignForm
    IndexFieldNames = 'FormID'
    MasterFields = 'Form_ID'
    Parameters = <>
    Left = 128
    Top = 192
    object dsDesignFormFieldFormID: TIntegerField
      FieldName = 'FormID'
    end
    object dsDesignFormFieldField_ID: TIntegerField
      FieldName = 'Field_ID'
    end
    object dsDesignFormFieldType: TIntegerField
      FieldName = 'Type'
    end
    object dsDesignFormFieldLeft: TIntegerField
      FieldName = 'Left'
    end
    object dsDesignFormFieldTop: TIntegerField
      FieldName = 'Top'
    end
    object dsDesignFormFieldWidth: TIntegerField
      FieldName = 'Width'
    end
    object dsDesignFormFieldHeight: TIntegerField
      FieldName = 'Height'
    end
    object dsDesignFormFieldCaption: TStringField
      FieldName = 'Caption'
      Size = 200
    end
    object dsDesignFormFieldTable_Field: TStringField
      FieldName = 'Table_Field'
      FixedChar = True
      Size = 50
    end
  end
  object dsuDesignFormField: TDataSource
    DataSet = dsDesignFormField
    Left = 128
    Top = 224
  end
  object dsDesignForm: TADODataSet
    Connection = DabData.ADOC
    AfterScroll = dsDesignFormAfterScroll
    CommandText = 
      'select * from DesignForm '#13#10'where (dbo.GetUser()=CreatorID)'#13#10'    ' +
      '  or (ViewState=2)'#13#10'      or (CreatorID IN (Select Emp_No from U' +
      'sers2 where syscode=SystemID))'
    Parameters = <>
    Left = 32
    Top = 64
    object dsDesignFormForm_ID: TAutoIncField
      FieldName = 'Form_ID'
      ReadOnly = True
    end
    object dsDesignFormLeft: TIntegerField
      FieldName = 'Left'
    end
    object dsDesignFormTop: TIntegerField
      FieldName = 'Top'
    end
    object dsDesignFormWidth: TIntegerField
      FieldName = 'Width'
    end
    object dsDesignFormHeight: TIntegerField
      FieldName = 'Height'
    end
    object dsDesignFormFormName: TStringField
      FieldName = 'FormName'
      Size = 200
    end
    object dsDesignFormTable_Name: TStringField
      FieldName = 'Table_Name'
      Size = 50
    end
    object dsDesignFormItem_Code: TStringField
      FieldName = 'Item_Code'
      FixedChar = True
      Size = 10
    end
    object dsDesignFormFormCaption: TStringField
      FieldName = 'FormCaption'
      FixedChar = True
      Size = 200
    end
    object dsDesignFormSystemID: TSmallintField
      FieldName = 'SystemID'
    end
  end
  object quDesignTable: TADODataSet
    Connection = DabData.ADOC
    Parameters = <>
    Left = 184
    Top = 88
  end
  object dsFlname: TDataSource
    DataSet = spFlname
    Left = 240
    Top = 240
  end
  object spFlname: TADOStoredProc
    Connection = DabData.ADOC
    ProcedureName = 'GetFLNames;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Org_code'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Unit_code'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@Post_code'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FirstFamiliy'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 216
    Top = 240
    object spFlnameemp_no: TStringField
      FieldName = 'emp_no'
      FixedChar = True
      Size = 10
    end
    object spFlnameFLName: TStringField
      FieldName = 'FLName'
      ReadOnly = True
      Size = 71
    end
    object spFlnameorg_name: TStringField
      FieldName = 'org_name'
      Size = 80
    end
    object spFlnameut_name: TStringField
      FieldName = 'ut_name'
      Size = 80
    end
    object spFlnamepost_name: TStringField
      FieldName = 'post_name'
      Size = 60
    end
  end
  object quUpdateFormSize: TADOQuery
    Connection = DabData.ADOC
    Parameters = <
      item
        Name = 'Left'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Top'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'width'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'height'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'update DesignForm set [left]=:Left,[Top]=:Top,width=:width,heigh' +
        't=:height where Form_ID=:FormID')
    Left = 280
    Top = 288
  end
  object dsOrg: TDataSource
    DataSet = quOrg
    Left = 352
    Top = 256
  end
  object quOrg: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select * from Organization')
    Left = 328
    Top = 256
  end
  object dsUnit: TDataSource
    DataSet = quUnit
    Left = 352
    Top = 288
  end
  object quUnit: TADOQuery
    Connection = DabData.ADOC
    Parameters = <>
    SQL.Strings = (
      'Select * from Org_Unit')
    Left = 328
    Top = 288
  end
end
