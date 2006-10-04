inherited PrintSetting: TPrintSetting
  Left = 36
  Top = 146
  Width = 796
  Height = 405
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1589#1601#1581#1607
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel [0]
    Left = 0
    Top = 0
    Width = 788
    Height = 343
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 369
      Top = 1
      Width = 418
      Height = 341
      Align = alRight
      Color = 14663101
      TabOrder = 0
      OnMouseMove = Panel1MouseMove
      object RadioGroup1: TRadioGroup
        Left = 230
        Top = 30
        Width = 187
        Height = 119
        Align = alRight
        Caption = #1575#1606#1583#1575#1586#1607' '#1589#1601#1581#1607
        Color = 14663101
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'A4'
          'A5'
          'A3'
          #1594#1610#1585#1607)
        ParentColor = False
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 149
        Width = 416
        Height = 191
        Align = alBottom
        Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1582#1591' '#1575#1605#1590#1575#8204#1569
        Color = 14663101
        ParentColor = False
        TabOrder = 1
        object ActiveDBGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 412
          Height = 132
          Align = alClient
          DataSource = DataSource1
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = #1578#1585#1578#1610#1576
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormID'
              Title.Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SystemID'
              Title.Caption = #1588#1605#1575#1585#1607' '#1587#1610#1587#1578#1605
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Emp_ID'
              Title.Caption = #1603#1575#1585#1605#1606#1583
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Post'
              Title.Caption = #1662#1587#1578
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ToLine'
              Title.Caption = #1583#1585' '#1587#1591#1585
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Top'
              Title.Caption = #1576#1575#1604#1575
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Left'
              Title.Caption = #1670#1662
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Height'
              Title.Caption = #1585#1578#1601#1575#1593
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'width'
              Title.Caption = #1593#1585#1590
              Width = 32
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 2
          Top = 147
          Width = 412
          Height = 42
          Align = alBottom
          Color = 14663101
          TabOrder = 1
          object Label1: TLabel
            Left = 335
            Top = 25
            Width = 14
            Height = 13
            Caption = #1576#1575#1604#1575
            FocusControl = DBEdit2
          end
          object Label2: TLabel
            Left = 285
            Top = 24
            Width = 14
            Height = 13
            Caption = #1670#1662
            FocusControl = DBEdit3
          end
          object Label3: TLabel
            Left = 218
            Top = 24
            Width = 28
            Height = 13
            Caption = #1575#1585#1578#1601#1575#1593
            FocusControl = DBEdit4
          end
          object Label4: TLabel
            Left = 161
            Top = 24
            Width = 23
            Height = 13
            Caption = #1593#1585#1590
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 337
            Top = 7
            Width = 29
            Height = 13
            Caption = #1588#1605#1575#1585#1607
            OnMouseMove = Panel1MouseMove
          end
          object Label7: TLabel
            Left = 163
            Top = 4
            Width = 24
            Height = 13
            Caption = #1662#1587#1578
          end
          object DBEdit1: TDBEdit
            Left = 310
            Top = 2
            Width = 19
            Height = 24
            Hint = #1578#1585#1578#1610#1576' '#1583#1585' '#1670#1575#1662
            DataField = 'ID'
            DataSource = DataSource1
            TabOrder = 0
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 273
            Top = -76
            Width = 118
            Height = 21
            Hint = #1606#1575#1605' '#1575#1605#1590#1575#1569' '#1603#1606#1606#1583#1607
            DataField = 'Emp_ID'
            DataSource = DataSource1
            KeyField = 'emp_no'
            ListField = 'FLName'
            ListSource = DataSource2
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 13
            Top = 24
            Width = 92
            Height = 13
            Caption = #1670#1575#1662' '#1583#1585' '#1610#1603' '#1582#1591
            DataField = 'ToLine'
            DataSource = DataSource1
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdit2: TDBEdit
            Left = 299
            Top = 22
            Width = 32
            Height = 24
            Hint = #1576#1575#1604#1575' '#1582#1591' '#1575#1605#1590#1575#1569
            DataField = 'Top'
            DataSource = DataSource1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnExit = DBEdit2Exit
          end
          object DBEdit3: TDBEdit
            Left = 247
            Top = 21
            Width = 31
            Height = 24
            Hint = #1670#1662' '#1582#1591' '#1575#1605#1590#1575#1569
            DataField = 'Left'
            DataSource = DataSource1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnExit = DBEdit2Exit
          end
          object DBEdit4: TDBEdit
            Left = 186
            Top = 21
            Width = 29
            Height = 24
            Hint = #1575#1585#1578#1601#1575#1593' '#1582#1591' '#1575#1605#1590#1575#1569
            DataField = 'Height'
            DataSource = DataSource1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnExit = DBEdit2Exit
          end
          object DBEdit5: TDBEdit
            Left = 117
            Top = 21
            Width = 40
            Height = 24
            Hint = #1593#1585#1590' '#1582#1591' '#1575#1605#1590#1575#1569
            DataField = 'width'
            DataSource = DataSource1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnExit = DBEdit2Exit
          end
          object DBEdit6: TDBEdit
            Left = 4
            Top = 2
            Width = 153
            Height = 24
            Hint = #1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1610
            DataField = 'Post'
            DataSource = DataSource1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 416
        Height = 29
        Align = alTop
        Color = 14663101
        TabOrder = 2
        object Label5: TLabel
          Left = 303
          Top = 5
          Width = 61
          Height = 13
          Caption = #1605#1585#1576#1608#1591' '#1576#1607' '#1601#1585#1605':'
        end
        object dbFormName: TDBLookupComboBox
          Left = 182
          Top = 2
          Width = 111
          Height = 21
          Hint = #1605#1585#1576#1608#1591' '#1576#1607' '#1601#1585#1605
          DataField = 'FormID'
          DataSource = DataSource1
          KeyField = 'ID'
          ListField = 'desc'
          ListSource = DataSource3
          TabOrder = 0
          OnClick = dbFormNameClick
          OnCloseUp = dbFormNameClick
        end
        object RadioGroup3: TRadioGroup
          Left = 1
          Top = 1
          Width = 177
          Height = 27
          Hint = #1605#1579#1604#1575' '#1583#1585' '#1601#1585#1605' '#1602#1576#1590' '#1575#1606#1576#1575#1585' '#1576#1580#1575#1610' '#1602#1576#1590' '#1575#1606#1576#1575#1585' '#1601#1585#1605' '#1593#1605#1608#1605#1610' '#1585#1575' '#1670#1575#1662'  '#1605#1610' '#1711#1610#1585#1583
          Align = alLeft
          Caption = #1670#1575#1662' '#1606#1605#1608#1606#1607' '#1593#1605#1608#1605#1610
          Color = 14663101
          Columns = 2
          Items.Strings = (
            #1576#1604#1610
            #1582#1610#1585)
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
      object thereRoundLine: TRadioGroup
        Left = 1
        Top = 30
        Width = 177
        Height = 119
        Align = alLeft
        Caption = #1606#1605#1575#1610#1588' '#1603#1575#1583#1585' '#1583#1608#1585' '#1589#1601#1581#1607
        Color = 14663101
        Columns = 2
        Items.Strings = (
          #1576#1604#1610
          #1582#1610#1585)
        ParentColor = False
        TabOrder = 3
        OnClick = SignatureAssetClick
      end
      object SignatureAsset: TRadioGroup
        Left = 178
        Top = 30
        Width = 141
        Height = 119
        Align = alLeft
        Caption = #1575#1605#1590#1575' '#1575#1606#1576#1575#1585#1583#1575#1585' '#1576#1575#1588#1583
        Color = 14663101
        Columns = 2
        Items.Strings = (
          #1576#1604#1610
          #1582#1610#1585)
        ParentColor = False
        TabOrder = 4
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 368
      Height = 341
      Align = alClient
      Color = 14663101
      TabOrder = 1
      OnMouseMove = Panel3MouseMove
      object shPage: TShape
        Left = 33
        Top = 2
        Width = 157
        Height = 223
        OnMouseMove = shPageMouseMove
      end
      object Shape2: TShape
        Left = 41
        Top = 7
        Width = 142
        Height = 214
        Hint = #1582#1591' '#1603#1575#1583#1585
        ParentShowHint = False
        Shape = stRoundRect
        ShowHint = True
      end
      object Shape1: TShape
        Left = 144
        Top = 189
        Width = 26
        Height = 13
        OnMouseMove = Shape1MouseMove
      end
    end
  end
  inherited gbOkCancel: TGroupBox
    Top = 343
    Width = 788
    Visible = True
  end
  inherited ppRadReport: TppReport
    Left = 328
    Top = 304
    DataPipelineName = 'ppRadDBRadFrom'
  end
  inherited ppRadDBRadFrom: TppDBPipeline
    Left = 304
    Top = 304
  end
  inherited ppRadDesigner: TppDesigner
    Left = 352
    Top = 304
  end
  inherited RadPopupMenu: TPopupMenu
    Left = 383
    Top = 304
  end
  object ActiveDataSet: TADODataSet
    Connection = DabData.ADOC
    AfterScroll = ActiveDataSetAfterScroll
    CommandText = 'Select * from Tbl_Signature'#13#10'where FormID=:FormID'
    IndexFieldNames = 'FormID'
    Parameters = <
      item
        Name = 'FormID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 368
    Top = 109
    object ActiveDataSetID: TSmallintField
      FieldName = 'ID'
    end
    object ActiveDataSetFormID: TStringField
      FieldName = 'FormID'
      FixedChar = True
      Size = 10
    end
    object ActiveDataSetSystemID: TSmallintField
      FieldName = 'SystemID'
    end
    object ActiveDataSetEmp_ID: TStringField
      FieldName = 'Emp_ID'
      FixedChar = True
      Size = 10
    end
    object ActiveDataSetPost: TStringField
      FieldName = 'Post'
      Size = 200
    end
    object ActiveDataSetToLine: TBooleanField
      FieldName = 'ToLine'
    end
    object ActiveDataSetTop: TFloatField
      FieldName = 'Top'
    end
    object ActiveDataSetLeft: TFloatField
      FieldName = 'Left'
    end
    object ActiveDataSetHeight: TFloatField
      FieldName = 'Height'
    end
    object ActiveDataSetwidth: TFloatField
      FieldName = 'width'
    end
  end
  object DataSource1: TDataSource
    DataSet = ActiveDataSet
    Left = 368
    Top = 136
  end
  object ADODataSet2: TADODataSet
    Connection = DabData.ADOC
    CommandText = 'GetFLNames;1'
    CommandType = cmdStoredProc
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
        Value = True
      end>
    Left = 256
    Top = 189
    object ADODataSet2emp_no: TStringField
      FieldName = 'emp_no'
      FixedChar = True
      Size = 10
    end
    object ADODataSet2FLName: TStringField
      FieldName = 'FLName'
      ReadOnly = True
      Size = 71
    end
    object ADODataSet2org_name: TStringField
      FieldName = 'org_name'
      Size = 80
    end
    object ADODataSet2ut_name: TStringField
      FieldName = 'ut_name'
      Size = 80
    end
    object ADODataSet2post_name: TStringField
      FieldName = 'post_name'
      Size = 60
    end
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 284
    Top = 189
  end
  object ADODataSet3: TADODataSet
    Connection = DabData.ADOC
    CommandText = 'GetCatNames;1'
    CommandType = cmdStoredProc
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
        Value = 'Tbl_Signature'
      end
      item
        Name = '@Col'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'FormID'
      end>
    Left = 520
    Top = 65533
    object ADODataSet3ID: TIntegerField
      FieldName = 'ID'
    end
    object ADODataSet3desc: TStringField
      FieldName = 'desc'
      Size = 100
    end
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet3
    Left = 556
    Top = 5
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 512
    Top = 280
    Version = '9.01'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1583#1610#1585' '#1605#1587#1610#1608#1604' '#1605#1575#1604#1610' '#1575#1583#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 265
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 5821
        mmWidth = 7408
        BandType = 8
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1583#1610#1585' '#1605#1587#1610#1608#1604' '#1605#1575#1604#1610' '#1575#1583#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 86784
        mmTop = 265
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 97367
        mmTop = 5821
        mmWidth = 7408
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1605#1583#1610#1585' '#1605#1587#1610#1608#1604' '#1605#1575#1604#1610' '#1575#1583#1575#1585#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 23283
        mmTop = 265
        mmWidth = 27781
        BandType = 8
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = #1575#1605#1590#1575#1569
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 5821
        mmWidth = 7408
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
    end
  end
  object dxfDesigner1: TdxfDesigner
    StepToGrid = 1
    Active = True
    Left = 272
    Top = 48
  end
end
