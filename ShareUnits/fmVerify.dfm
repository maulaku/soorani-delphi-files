inherited Verify: TVerify
  Left = 320
  Top = 212
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsSingle
  Caption = #1662#1610#1575#1605
  ClientHeight = 173
  ClientWidth = 292
  Constraints.MaxHeight = 247
  Constraints.MaxWidth = 367
  Constraints.MinHeight = 200
  Constraints.MinWidth = 300
  DefaultMonitor = dmMainForm
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object meMessage: TMemo [0]
    Left = 24
    Top = 40
    Width = 249
    Height = 73
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object Panel2: TPanel [1]
    Left = 277
    Top = 33
    Width = 15
    Height = 112
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 33
    Width = 15
    Height = 112
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 0
    Width = 292
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lbRemark: TLabel
      Left = 124
      Top = 9
      Width = 157
      Height = 16
      Caption = #1570#1610#1575' '#1605#1575#1610#1604' '#1576#1607' '#1581#1584#1601' '#1607#1587#1578#1610#1583#1567
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited gbOkCancel: TGroupBox
    Top = 145
    Width = 292
    Visible = True
  end
  inherited ppRadReport: TppReport
    DataPipelineName = 'ppRadDBRadFrom'
    inherited ppRadDetailBand1: TppDetailBand
      inherited ppRadVariable1: TppVariable
        OnGetText = nil
      end
    end
  end
end
