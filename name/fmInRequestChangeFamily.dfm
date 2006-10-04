object InRequestChangeFamily: TInRequestChangeFamily
  Left = 149
  Top = 158
  Width = 759
  Height = 421
  ActiveControl = RadBtOk
  BiDiMode = bdRightToLeft
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1578#1594#1610#1610#1585' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object gbOkCancel: TGroupBox
    Left = 0
    Top = 359
    Width = 751
    Height = 28
    Align = alBottom
    Caption = #1575#1593#1605#1575#1604' '#1578#1593#1610#1610#1585#1575#1578
    Constraints.MaxHeight = 28
    Constraints.MinHeight = 28
    TabOrder = 0
    DesignSize = (
      751
      28)
    object RadBtOk: TBitBtn
      Left = 14
      Top = 7
      Width = 50
      Height = 21
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = RadBtOkClick
    end
    object RadBtCancel: TBitBtn
      Left = 70
      Top = 7
      Width = 50
      Height = 21
      Caption = #1604#1594#1608
      TabOrder = 1
      OnClick = RadBtCancelClick
    end
    object cxLabel38: TcxLabel
      Left = 210
      Top = 8
      Width = 86
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1585#1583#1610#1601' '#1583#1585#1582#1608#1575#1587#1578
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxDBTextEdit32: TcxDBTextEdit
      Left = 304
      Top = 7
      Width = 26
      Height = 21
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'REQUEST_PAGE'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 3
    end
    object cxLabel39: TcxLabel
      Left = 346
      Top = 11
      Width = 90
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1589#1601#1581#1607' '#1583#1585#1582#1608#1575#1587#1578
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
    end
    object cxDBTextEdit33: TcxDBTextEdit
      Left = 184
      Top = 7
      Width = 26
      Height = 21
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'REQUEST_ROW'
      DataBinding.DataSource = DataSource1
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 5
    end
  end
  object AdvPageControl1: TAdvPageControl
    Left = 0
    Top = 28
    Width = 751
    Height = 331
    ActivePage = AdvTabSheet1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    DefaultTabColor = clBackground
    TabBackGroundColor = clBtnFace
    TabMargin.LeftMargin = 32
    TabMargin.RightMargin = 32
    TabOverlap = 0
    Version = '1.4.0.4'
    TabOrder = 1
    object AdvTabSheet1: TAdvTabSheet
      Caption = #1605#1585#1575#1581#1604' '#1583#1585#1582#1608#1575#1587#1578
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBackground
      TabColorTo = clNone
      DesignSize = (
        743
        303)
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 73
        Width = 743
        Height = 104
        Align = alTop
        Alignment = alTopRight
        BiDiMode = bdRightToLeft
        Caption = #1579#1576#1578' '#1583#1585' '#1575#1583#1575#1585#1607' '#1579#1576#1578' '#1581#1608#1575#1604' '#1575#1587#1578#1575#1606' .....'
        ParentBiDiMode = False
        TabOrder = 0
        DesignSize = (
          743
          104)
        object cxLabel30: TcxLabel
          Left = 713
          Top = 16
          Width = 29
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1578#1575#1585#1610#1582
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 391
          Top = 17
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'OFFICE_REG_NUMBER'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 1
        end
        object cxMaskEdit2: TcxMaskEdit
          Left = 644
          Top = 16
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.EditMask = '!9999/99/00;1;_'
          Properties.MaxLength = 0
          TabOrder = 2
          Text = '1355/01/01'
        end
        object cxLabel26: TcxLabel
          Left = 516
          Top = 18
          Width = 92
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1583#1585' '#1575#1583#1575#1585#1607' '#1579#1576#1578' '
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 88
          Top = 18
          Width = 168
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'OFFICE_REG_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 4
        end
        object cxLabel27: TcxLabel
          Left = 260
          Top = 19
          Width = 63
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1575#1583#1575#1585#1607' '#1579#1576#1578' '
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit25: TcxDBTextEdit
          Left = 89
          Top = 49
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'ARCHVER_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 6
        end
        object cxLabel32: TcxLabel
          Left = 214
          Top = 50
          Width = 138
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1587#1574#1608#1604' '#1576#1575#1610#1711#1575#1606#1610' '#1575#1587#1606#1575#1583' '#1587#1580#1604#1610
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxLabel33: TcxLabel
          Left = 214
          Top = 76
          Width = 123
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1587#1574#1608#1604' '#1583#1601#1575#1578#1585' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit27: TcxDBTextEdit
          Left = 89
          Top = 75
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'DOCUMENTOR_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 9
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 0
        Width = 743
        Height = 73
        Align = alTop
        Alignment = alTopRight
        BiDiMode = bdRightToLeft
        Caption = #1575#1583#1575#1585#1607' '#1579#1576#1578' '#1581#1608#1575#1604' '#1575#1587#1578#1575#1606' .....'
        ParentBiDiMode = False
        TabOrder = 1
        DesignSize = (
          743
          73)
        object cxLabel28: TcxLabel
          Left = 713
          Top = 16
          Width = 29
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1578#1575#1585#1610#1582
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 391
          Top = 17
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'OFFICE_REG_NUMBER'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 1
        end
        object cxMaskEdit3: TcxMaskEdit
          Left = 644
          Top = 16
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.EditMask = '!9999/99/00;1;_'
          Properties.MaxLength = 0
          TabOrder = 2
          Text = '1355/01/01'
        end
        object cxLabel29: TcxLabel
          Left = 516
          Top = 18
          Width = 117
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1583#1585' '#1575#1583#1575#1585#1607' '#1579#1576#1578' '#1575#1581#1608#1575#1604
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit24: TcxDBTextEdit
          Left = 88
          Top = 18
          Width = 168
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'OFFICE_REG_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 4
        end
        object cxLabel31: TcxLabel
          Left = 260
          Top = 19
          Width = 88
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1575#1583#1575#1585#1607' '#1579#1576#1578' '#1575#1581#1608#1575#1604
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 600
        Top = 184
        Width = 139
        Height = 21
        Caption = #1608#1575#1688#1607' '#1576#1604#1575#1605#1593#1575#1585#1590' '#1605#1610' '#1576#1575#1588#1583#1567
        DataBinding.DataField = 'HAVE_OPPONENT'
        DataBinding.DataSource = DataSource1
        Properties.Alignment = taRightJustify
        TabOrder = 2
      end
      object cxLabel34: TcxLabel
        Left = 214
        Top = 188
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1585#1574#1610#1587' '#1575#1583#1585#1607' '#1579#1576#1578' '#1575#1581#1608#1575#1604
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxDBTextEdit28: TcxDBTextEdit
        Left = 89
        Top = 187
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'DIRECTOR_OFFICE_REG_NAME'
        DataBinding.DataSource = DataSource1
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 4
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 568
        Top = 208
        Width = 171
        Height = 21
        Caption = #1602#1576#1604#1575' '#1578#1594#1610#1610#1585' '#1606#1575#1605' '#1575#1586' '#1576#1607' '#1583#1575#1588#1578#1607' '#1575#1587#1578
        DataBinding.DataField = 'HAVE_CHAGE_BEFORE'
        DataBinding.DataSource = DataSource1
        Properties.Alignment = taRightJustify
        TabOrder = 5
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 288
        Top = 208
        Width = 271
        Height = 21
        Caption = #1605#1588#1582#1589#1575#1578' '#1605#1578#1602#1575#1590#1610' '#1576#1575' '#1605#1606#1583#1585#1580#1575#1578' '#1587#1606#1583' '#1605#1591#1575#1576#1602#1578' '#1583#1575#1585#1583#1567
        DataBinding.DataField = 'EQUAL_REQESTOR_WITH_DOCUMENT'
        DataBinding.DataSource = DataSource1
        Properties.Alignment = taRightJustify
        TabOrder = 6
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 40
        Top = 209
        Width = 247
        Height = 21
        Caption = #1606#1575#1605' '#1605#1581#1604' '#1575#1586' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1589#1575#1581#1576' '#1587#1606#1583' '#1581#1584#1601' '#1711#1585#1583#1610#1583
        DataBinding.DataField = 'REMOVED_LOC_FROM_FAMILY'
        DataBinding.DataSource = DataSource1
        Properties.Alignment = taRightJustify
        TabOrder = 7
      end
      object cxLabel35: TcxLabel
        Left = 638
        Top = 244
        Width = 67
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1688#1607' '#1576#1604#1575#1605#1593#1575#1585#1590
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxDBTextEdit29: TcxDBTextEdit
        Left = 513
        Top = 243
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'WORD_NOT_OPPONENT'
        DataBinding.DataSource = DataSource1
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 9
      end
      object cxLabel36: TcxLabel
        Left = 342
        Top = 244
        Width = 137
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1605#1585#1575#1580#1593#1607' '#1576#1607' '#1583#1601#1575#1578#1585' '
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxDBTextEdit30: TcxDBTextEdit
        Left = 201
        Top = 243
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'REFERRAL_REG'
        DataBinding.DataSource = DataSource1
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 11
      end
      object cxLabel37: TcxLabel
        Left = 518
        Top = 268
        Width = 221
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1581#1602' '#1578#1602#1583#1605' '#1608#1575#1688#1607' '#1576#1607' '#1606#1575#1605' '#1583#1585#1582#1575#1608#1587#1578' '#1583#1607#1606#1583#1607' '#1579#1576#1578'  '#1588#1583#1607
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxDBTextEdit31: TcxDBTextEdit
        Left = 385
        Top = 267
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'SET_FIRST_WORD_TO_REQUEST'
        DataBinding.DataSource = DataSource1
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 13
      end
      object cxLabel40: TcxLabel
        Left = 254
        Top = 276
        Width = 136
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1605#1587#1574#1608#1604' '#1602#1587#1605#1578' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
      end
      object cxDBTextEdit34: TcxDBTextEdit
        Left = 129
        Top = 275
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        DataBinding.DataField = 'REQUEST_SET_NAME'
        DataBinding.DataSource = DataSource1
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 15
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = #1605#1588#1582#1589#1575#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBackground
      TabColorTo = clNone
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Width = 743
        Height = 129
        Align = alTop
        Alignment = alTopRight
        Caption = #1605#1588#1582#1589#1575#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
        TabOrder = 0
        DesignSize = (
          743
          129)
        object dmIMPersonImage: TcxDBImage
          Left = 0
          Top = 5
          Width = 73
          Height = 103
          DataBinding.DataField = 'PERSON_IMAGE'
          DataBinding.DataSource = DataSource1
          Properties.Caption = #1578#1589#1608#1610#1585' '#1605#1578#1602#1575#1590#1610
          Properties.GraphicClassName = 'TJPEGImage'
          TabOrder = 0
        end
        object edDate: TcxMaskEdit
          Left = 632
          Top = 15
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.EditMask = '!9999/99/00;1;_'
          Properties.MaxLength = 0
          TabOrder = 1
          Text = '1355/01/01'
        end
        object cxLabel1: TcxLabel
          Left = 709
          Top = 17
          Width = 29
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1578#1575#1585#1610#1582
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 317
          Top = 15
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'FAMILY'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 3
        end
        object cxLabel3: TcxLabel
          Left = 437
          Top = 17
          Width = 66
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object edName: TcxDBTextEdit
          Left = 504
          Top = 15
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 5
        end
        object cxLabel2: TcxLabel
          Left = 605
          Top = 17
          Width = 21
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1606#1575#1605
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxLabel4: TcxLabel
          Left = 229
          Top = 17
          Width = 85
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 120
          Top = 15
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'SSN'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 8
        end
        object cxLabel5: TcxLabel
          Left = 653
          Top = 42
          Width = 79
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1581#1604' '#1578#1606#1592#1610#1605' '#1587#1606#1583
        end
        object edbirth: TcxButtonEdit
          Left = 528
          Top = 41
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
              LeftAlignment = True
            end>
          Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
          TabOrder = 10
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 384
          Top = 42
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'DICTRICT'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 11
        end
        object cxLabel6: TcxLabel
          Left = 493
          Top = 44
          Width = 29
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1581#1608#1586#1607
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxMaskEdit1: TcxMaskEdit
          Left = 88
          Top = 43
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.EditMask = '!9999/99/00;1;_'
          Properties.MaxLength = 0
          TabOrder = 13
          Text = '1355/01/01'
        end
        object cxLabel8: TcxLabel
          Left = 159
          Top = 45
          Width = 83
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1578#1575#1585#1610#1582' '#1578#1606#1592#1610#1605' '#1587#1606#1583
        end
        object cxLabel12: TcxLabel
          Left = 229
          Top = 72
          Width = 36
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1587#1605#1578
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 112
          Top = 68
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'POST'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 16
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 278
          Top = 67
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'JOB_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 17
        end
        object cxLabel11: TcxLabel
          Left = 383
          Top = 69
          Width = 33
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1588#1594#1604
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxLabel9: TcxLabel
          Left = 322
          Top = 44
          Width = 49
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1578#1575#1585#1610#1582' '#1578#1608#1604#1583
        end
        object edirthDate: TcxMaskEdit
          Left = 245
          Top = 42
          Width = 78
          Height = 21
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.EditMask = '!9999/99/00;1;_'
          Properties.MaxLength = 0
          TabOrder = 20
          Text = '1355/01/01'
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 438
          Top = 67
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'MOTHER_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 21
        end
        object cxLabel10: TcxLabel
          Left = 543
          Top = 69
          Width = 42
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1606#1575#1605' '#1605#1575#1583#1585
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 590
          Top = 67
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'FATHER_NAME'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 23
        end
        object cxLabel7: TcxLabel
          Left = 699
          Top = 69
          Width = 37
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1606#1575#1605' '#1662#1583#1585
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxLabel13: TcxLabel
          Left = 664
          Top = 93
          Width = 72
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1570#1583#1585#1587' '#1605#1581#1604' '#1603#1575#1585
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object dAddresswork: TcxDBButtonEdit
          Left = 440
          Top = 91
          Width = 222
          Height = 21
          DataBinding.DataField = 'WORK_ADDRESS'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
              LeftAlignment = True
            end>
          TabOrder = 26
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 88
          Top = 91
          Width = 277
          Height = 21
          DataBinding.DataField = 'HOME_ADDRESS'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
              LeftAlignment = True
            end>
          TabOrder = 27
        end
        object cxLabel14: TcxLabel
          Left = 366
          Top = 93
          Width = 71
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1570#1583#1585#1587' '#1587#1603#1608#1606#1578
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 129
        Width = 743
        Height = 174
        Align = alClient
        Alignment = alTopRight
        Caption = #1605#1583#1575#1585#1603
        TabOrder = 1
        DesignSize = (
          743
          174)
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 700
          Top = 16
          Width = 25
          Height = 21
          DataBinding.DataField = 'HAVE_REQUIREMENT_DOCUMENT1'
          DataBinding.DataSource = DataSource1
          Properties.Alignment = taRightJustify
          TabOrder = 0
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 552
          Top = 15
          Width = 152
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'NAME_REQUIREMENT_DOCUMENT1'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 1
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 516
          Top = 16
          Width = 25
          Height = 21
          DataBinding.DataField = 'HAVE_REQUIREMENT_DOCUMENT2'
          DataBinding.DataSource = DataSource1
          Properties.Alignment = taRightJustify
          TabOrder = 2
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 376
          Top = 15
          Width = 144
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'NAME_REQUIREMENT_DOCUMENT2'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 3
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 330
          Top = 16
          Width = 25
          Height = 21
          DataBinding.DataField = 'HAVE_REQUIREMENT_DOCUMENT3'
          DataBinding.DataSource = DataSource1
          Properties.Alignment = taRightJustify
          TabOrder = 4
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 200
          Top = 15
          Width = 134
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'NAME_REQUIREMENT_DOCUMENT3'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 5
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 24
          Top = 15
          Width = 134
          Height = 21
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'NAME_REQUIREMENT_DOCUMENT4'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 6
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 160
          Top = 16
          Width = 19
          Height = 21
          DataBinding.DataField = 'HAVE_REQUIREMENT_DOCUMENT4'
          DataBinding.DataSource = DataSource1
          Properties.Alignment = taRightJustify
          TabOrder = 7
        end
        object cxDBButtonEdit2: TcxDBButtonEdit
          Left = 24
          Top = 44
          Width = 640
          Height = 21
          DataBinding.DataField = 'CHANGE_REASON'
          DataBinding.DataSource = DataSource1
          Properties.Alignment.Horz = taRightJustify
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
              LeftAlignment = True
            end>
          TabOrder = 8
        end
        object cxLabel15: TcxLabel
          Left = 664
          Top = 45
          Width = 53
          Height = 17
          Anchors = [akTop, akRight]
          Caption = ':'#1583#1604#1610#1604' '#1578#1594#1610#1610#1585
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
        end
        object cxGroupBox3: TcxGroupBox
          Left = 2
          Top = 67
          Width = 739
          Height = 105
          Align = alBottom
          Alignment = alTopRight
          BiDiMode = bdRightToLeft
          Caption = #1608#1575#1688#1607' '#1607#1575#1610' '#1583#1585#1582#1608#1575#1587#1578#1610
          ParentBiDiMode = False
          TabOrder = 10
          DesignSize = (
            739
            105)
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 584
            Top = 14
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME1'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 0
          end
          object cxLabel16: TcxLabel
            Left = 713
            Top = 16
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.1'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxLabel17: TcxLabel
            Left = 569
            Top = 16
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.2'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 440
            Top = 14
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME2'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 3
          end
          object cxLabel18: TcxLabel
            Left = 425
            Top = 16
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.3'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 296
            Top = 14
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME3'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 5
          end
          object cxLabel19: TcxLabel
            Left = 281
            Top = 16
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.4'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 152
            Top = 14
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME4'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 7
          end
          object cxLabel20: TcxLabel
            Left = 137
            Top = 16
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.5'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 16
            Top = 15
            Width = 121
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME5'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 9
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 584
            Top = 41
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME6'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 10
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 440
            Top = 41
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME7'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 11
          end
          object cxLabel21: TcxLabel
            Left = 713
            Top = 43
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.6'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 296
            Top = 41
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME8'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 13
          end
          object cxLabel22: TcxLabel
            Left = 569
            Top = 43
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.7'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 152
            Top = 41
            Width = 126
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME9'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 15
          end
          object cxLabel23: TcxLabel
            Left = 425
            Top = 43
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.8'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 16
            Top = 42
            Width = 121
            Height = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'REQUEST_NAME10'
            DataBinding.DataSource = DataSource1
            Properties.Alignment.Horz = taRightJustify
            TabOrder = 17
          end
          object cxLabel24: TcxLabel
            Left = 281
            Top = 43
            Width = 14
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.9'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
          object cxLabel25: TcxLabel
            Left = 135
            Top = 44
            Width = 20
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '.11'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
          end
        end
      end
    end
  end
  object fcButtonGroup1: TfcButtonGroup
    Left = 0
    Top = 0
    Width = 751
    Height = 28
    Align = alTop
    AutoBold = False
    BevelOuter = bvNone
    ButtonClassName = 'TfcImageBtn'
    ClickStyle = bcsRadioGroup
    ControlSpacing = 1
    Columns = 1
    Layout = loHorizontal
    MaxControlSize = 0
    TabOrder = 2
    Transparent = False
    object fcButtonGroup1fcImageBtn1: TfcImageBtn
      Left = 0
      Top = 0
      Width = 375
      Height = 28
      Caption = #1605#1588#1582#1589#1575#1578' '#1583#1585#1582#1608#1575#1587#1578
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GroupIndex = 1
      Image.Data = {
        424D960600000000000076000000280000006B0000001C000000010004000000
        0000200600000000000000000000100000000000000043434100585858006666
        66007878780088888800909090009E9E9E00ACACAC00BFBFBF00BFBFBF00C2C2
        C200D2D2D200D8D8D700E8E8E800F3F3F2000000FF00F4441000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000F34431000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000F888332111111111111111111111111111111111111111111111
        111111111111111111111111111111111111111111111111110000000000FCCD
        A443333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333332100000000FDEDCA65555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555555555555555543200000000FEEEDBA66666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        655310000000FEEEDCA877777777777777777777777777777777777777777777
        777777777777777777777777777777777777777777777777765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCB8888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCB8888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCB888888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBA8888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        765310000000FEEEDCBA88888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888765310000000FEEE
        DCBA888888888888888888888888888888888888888888888888888888888888
        88888888888888888888888888888888765310000000FEEEDCBA888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888765310000000FEEEDCBAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8AA
        765310000000FEEEDCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB76310000000FEEE
        EDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB6410000000FEEEEEDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDCC521000000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEDB43100000FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDB43100000FEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDC33100000}
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      RegionData = {
        3000000020000000010000000100000010000000040000000000000077010000
        1C0000000400000000000000770100001C000000}
      DownRegionData = {00000000}
    end
    object fcButtonGroup1fcImageBtn2: TfcImageBtn
      Left = 376
      Top = 0
      Width = 375
      Height = 28
      Caption = #1605#1588#1582#1589#1575#1578' '#1601#1585#1583
      Color = 12615808
      DitherColor = clNavy
      DitherStyle = dsFill
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ExtImage = fcButtonGroup1fcImageBtn1
      ExtImageDown = fcButtonGroup1fcImageBtn1
      GroupIndex = 1
      ParentClipping = True
      ParentFont = False
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.HighlightColor = cl3DLight
      TextOptions.VAlignment = vaVCenter
      TransparentColor = clNone
      RegionData = {00000000}
      DownRegionData = {
        3000000020000000010000000100000010000000040000000000000077010000
        1C0000000400000000000000770100001C000000}
    end
  end
  object FormSize1: TFormSize
    MagnetDistance = 32
    SaveUser = False
    SaveMachine = False
    SaveName = '.\FORM.INI'
    SaveKey = 'InRequestChangeFamily'
    Version = '1.1.0.0'
    Left = 136
    Top = 48
  end
  object dsoRequestChangeFamily: TADODataSet
    CursorType = ctStatic
    CommandText = 'select *  from name_REQUEST_CHANGE_FAMILY'
    Parameters = <>
    Left = 80
    Top = 80
    object dsoRequestChangeFamilyID: TBytesField
      FieldName = 'ID'
      ReadOnly = True
      Size = 8
    end
    object dsoRequestChangeFamilyREQUEST_DATE: TDateTimeField
      FieldName = 'REQUEST_DATE'
    end
    object dsoRequestChangeFamilyNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object dsoRequestChangeFamilyFAMILY: TStringField
      FieldName = 'FAMILY'
      Size = 50
    end
    object dsoRequestChangeFamilySSN: TStringField
      FieldName = 'SSN'
      FixedChar = True
      Size = 50
    end
    object dsoRequestChangeFamilyMELI_CODE: TStringField
      FieldName = 'MELI_CODE'
      FixedChar = True
      Size = 10
    end
    object dsoRequestChangeFamilyLOC_CODE: TStringField
      FieldName = 'LOC_CODE'
      FixedChar = True
      Size = 14
    end
    object dsoRequestChangeFamilyDICTRICT: TStringField
      FieldName = 'DICTRICT'
      Size = 50
    end
    object dsoRequestChangeFamilyBIRTH_DATE: TDateTimeField
      FieldName = 'BIRTH_DATE'
    end
    object dsoRequestChangeFamilyDOCUMENT_DATE: TDateTimeField
      FieldName = 'DOCUMENT_DATE'
    end
    object dsoRequestChangeFamilyFATHER_NAME: TStringField
      FieldName = 'FATHER_NAME'
      Size = 50
    end
    object dsoRequestChangeFamilyMOTHER_NAME: TStringField
      FieldName = 'MOTHER_NAME'
      Size = 50
    end
    object dsoRequestChangeFamilyJOB_NAME: TStringField
      FieldName = 'JOB_NAME'
      Size = 50
    end
    object dsoRequestChangeFamilyPOST: TStringField
      FieldName = 'POST'
      Size = 50
    end
    object dsoRequestChangeFamilyWORK_ADDRESS: TStringField
      FieldName = 'WORK_ADDRESS'
      Size = 500
    end
    object dsoRequestChangeFamilyHOME_ADDRESS: TStringField
      FieldName = 'HOME_ADDRESS'
      FixedChar = True
      Size = 10
    end
    object dsoRequestChangeFamilyDESIGNATION: TStringField
      FieldName = 'DESIGNATION'
      Size = 50
    end
    object dsoRequestChangeFamilyRELIGION: TStringField
      FieldName = 'RELIGION'
      Size = 50
    end
    object dsoRequestChangeFamilyWORK_PHONE: TStringField
      FieldName = 'WORK_PHONE'
      FixedChar = True
    end
    object dsoRequestChangeFamilyHOME_PHONE: TStringField
      FieldName = 'HOME_PHONE'
      FixedChar = True
    end
    object dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT1: TBooleanField
      FieldName = 'HAVE_REQUIREMENT_DOCUMENT1'
    end
    object dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT1: TStringField
      FieldName = 'NAME_REQUIREMENT_DOCUMENT1'
      Size = 50
    end
    object dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT2: TBooleanField
      FieldName = 'HAVE_REQUIREMENT_DOCUMENT2'
    end
    object dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT2: TStringField
      FieldName = 'NAME_REQUIREMENT_DOCUMENT2'
      Size = 50
    end
    object dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT3: TBooleanField
      FieldName = 'HAVE_REQUIREMENT_DOCUMENT3'
    end
    object dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT3: TStringField
      FieldName = 'NAME_REQUIREMENT_DOCUMENT3'
      Size = 50
    end
    object dsoRequestChangeFamilyHAVE_REQUIREMENT_DOCUMENT4: TBooleanField
      FieldName = 'HAVE_REQUIREMENT_DOCUMENT4'
    end
    object dsoRequestChangeFamilyNAME_REQUIREMENT_DOCUMENT4: TStringField
      FieldName = 'NAME_REQUIREMENT_DOCUMENT4'
      Size = 50
    end
    object dsoRequestChangeFamilyCHANGE_REASON: TStringField
      FieldName = 'CHANGE_REASON'
      Size = 200
    end
    object dsoRequestChangeFamilyREQUEST_NAME1: TStringField
      FieldName = 'REQUEST_NAME1'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME2: TStringField
      FieldName = 'REQUEST_NAME2'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME3: TStringField
      FieldName = 'REQUEST_NAME3'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME4: TStringField
      FieldName = 'REQUEST_NAME4'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME5: TStringField
      FieldName = 'REQUEST_NAME5'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME6: TStringField
      FieldName = 'REQUEST_NAME6'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME7: TStringField
      FieldName = 'REQUEST_NAME7'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME8: TStringField
      FieldName = 'REQUEST_NAME8'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME9: TStringField
      FieldName = 'REQUEST_NAME9'
      Size = 50
    end
    object dsoRequestChangeFamilyREQUEST_NAME10: TStringField
      FieldName = 'REQUEST_NAME10'
      Size = 50
    end
    object dsoRequestChangeFamilyOFFICE_REG_DATE: TDateTimeField
      FieldName = 'OFFICE_REG_DATE'
    end
    object dsoRequestChangeFamilyOFFICE_REG_NUMBER: TStringField
      FieldName = 'OFFICE_REG_NUMBER'
      FixedChar = True
    end
    object dsoRequestChangeFamilyOFFICE_REG_NAME: TStringField
      FieldName = 'OFFICE_REG_NAME'
      Size = 50
    end
    object dsoRequestChangeFamilyOFFICE_SET_REG_DATE: TDateTimeField
      FieldName = 'OFFICE_SET_REG_DATE'
    end
    object dsoRequestChangeFamilyOFFICE_SET_REG_NUMBER: TStringField
      FieldName = 'OFFICE_SET_REG_NUMBER'
      FixedChar = True
    end
    object dsoRequestChangeFamilyOFFICE_SET_REG_NAME: TStringField
      FieldName = 'OFFICE_SET_REG_NAME'
      Size = 50
    end
    object dsoRequestChangeFamilyARCHVER_NAME: TStringField
      FieldName = 'ARCHVER_NAME'
      Size = 100
    end
    object dsoRequestChangeFamilyDOCUMENTOR_NAME: TStringField
      FieldName = 'DOCUMENTOR_NAME'
      Size = 100
    end
    object dsoRequestChangeFamilyHAVE_OPPONENT: TBooleanField
      FieldName = 'HAVE_OPPONENT'
    end
    object dsoRequestChangeFamilyDIRECTOR_OFFICE_REG_NAME: TStringField
      FieldName = 'DIRECTOR_OFFICE_REG_NAME'
      Size = 100
    end
    object dsoRequestChangeFamilyHAVE_CHAGE_BEFORE: TStringField
      FieldName = 'HAVE_CHAGE_BEFORE'
      Size = 100
    end
    object dsoRequestChangeFamilyEQUAL_REQESTOR_WITH_DOCUMENT: TBooleanField
      FieldName = 'EQUAL_REQESTOR_WITH_DOCUMENT'
    end
    object dsoRequestChangeFamilyREMOVED_LOC_FROM_FAMILY: TBooleanField
      FieldName = 'REMOVED_LOC_FROM_FAMILY'
    end
    object dsoRequestChangeFamilyWORD_NOT_OPPONENT: TStringField
      FieldName = 'WORD_NOT_OPPONENT'
      Size = 50
    end
    object dsoRequestChangeFamilyREFERRAL_REG: TStringField
      FieldName = 'REFERRAL_REG'
      Size = 100
    end
    object dsoRequestChangeFamilySET_FIRST_WORD_TO_REQUEST: TStringField
      FieldName = 'SET_FIRST_WORD_TO_REQUEST'
      FixedChar = True
      Size = 10
    end
    object dsoRequestChangeFamilyREQUEST_PAGE: TIntegerField
      FieldName = 'REQUEST_PAGE'
    end
    object dsoRequestChangeFamilyREQUEST_ROW: TIntegerField
      FieldName = 'REQUEST_ROW'
    end
    object dsoRequestChangeFamilyREQUEST_SET_NAME: TStringField
      FieldName = 'REQUEST_SET_NAME'
      Size = 100
    end
    object dsoRequestChangeFamilyPERSON_IMAGE: TBlobField
      FieldName = 'PERSON_IMAGE'
    end
  end
  object DataSource1: TDataSource
    DataSet = RequestChangeFamily.dsoRequestChangeFamily
    Left = 104
    Top = 80
  end
  object cxDefaultEditStyleController1: TcxDefaultEditStyleController
    Style.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    Left = 512
    Top = 160
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyle.CallOutPosition = cxbpBottomLeft
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -11
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Color = clCream
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -11
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    HintStyle.IconType = cxhiApplication
    HintStyle.RoundRadius = 81
    Left = 488
    Top = 160
  end
end
