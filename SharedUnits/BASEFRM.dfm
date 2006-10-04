object BaseForm: TBaseForm
  Left = 317
  Top = 244
  Width = 262
  Height = 70
  Caption = 'BaseForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RadDanHint: TDanHint
    HintRadius = 18
    HintWidth = 250
    HintActive = True
    HintFont.Charset = DEFAULT_CHARSET
    HintFont.Color = clBlack
    HintFont.Height = -11
    HintFont.Name = 'Arial'
    HintFont.Style = [fsItalic]
    HintPauseTime = 2000
    Left = 32
  end
end
