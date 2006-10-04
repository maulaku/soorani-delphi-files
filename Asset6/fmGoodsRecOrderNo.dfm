object GoodsRecOrderNo: TGoodsRecOrderNo
  Left = 21
  Top = 152
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'œ—ŒÊ«”  Â«Ì Œ—Ìœ ﬂ«·«'
  ClientHeight = 285
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 16
  object dbgOrderReq: TDBGrid
    Left = 0
    Top = 0
    Width = 752
    Height = 249
    Align = alTop
    DataSource = dsGoodsRecOrderNo
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgOrderReqDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Order_Req_No'
        Title.Caption = '‘„«—Â œ—ŒÊ«” '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ItemType'
        Title.Caption = '‰Ê⁄ ﬂ«·«'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class_name'
        Title.Caption = 'ÿ»ﬁÂ ﬂ«·«'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DealKind'
        Title.Caption = '‰Ê⁄ «‰Ã«„ „⁄«„·Â'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inquiry_Date_Rec'
        Title.Caption = ' «—ÌŒ À»  «” ⁄·«„'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 249
    Width = 752
    Height = 36
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object RSqlButton1: TRSqlButton
      Left = 6
      Top = 5
      Width = 75
      Height = 25
      Caption = ' «∆Ìœ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      OnClick = RSqlButton1Click
      ButtonType = btOk
    end
    object RSqlButton2: TRSqlButton
      Left = 81
      Top = 5
      Width = 75
      Height = 25
      Caption = '·€Ê'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = RSqlButton2Click
      ButtonType = btCancel
    end
  end
  object dsGoodsRecOrderNo: TDataSource
    DataSet = DabData.quGoodsRecOrderNo
    Left = 16
    Top = 24
  end
end
