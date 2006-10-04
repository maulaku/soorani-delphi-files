object AppUpdater: TAppUpdater
  Left = 134
  Top = 146
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610' '#1576#1585#1606#1575#1605#1607
  ClientHeight = 266
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Visible = True
  DesignSize = (
    404
    266)
  PixelsPerInch = 96
  TextHeight = 13
  object AdvProgressBar1: TAdvProgressBar
    Left = 8
    Top = 221
    Width = 265
    Height = 18
    Animated = True
    CompletionSmooth = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Level0ColorTo = 14811105
    Level1ColorTo = 13303807
    Level2Color = 5483007
    Level2ColorTo = 11064319
    Level3ColorTo = 13290239
    Level1Perc = 70
    Level2Perc = 90
    Position = 0
    ShowBorder = True
    Steps = 1
    Version = '1.1.0.0'
  end
  object Button1: TButton
    Left = 291
    Top = 216
    Width = 107
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1580#1587#1578#1580#1608#1610' '#1606#1587#1582#1607' '#1580#1583#1610#1583
    TabOrder = 0
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 247
    Width = 404
    Height = 19
    Panels = <>
  end
  object Memo1: TMemo
    Left = -25
    Top = 0
    Width = 429
    Height = 209
    Anchors = [akTop, akRight]
    Lines.Strings = (
      #1605#1575' '#1583#1585' '#1587#1575#1610#1578' '#1582#1608#1583' '#1580#1587#1578#1580#1608' '#1605#1610' '#1603#1606#1610#1605' '#1575#1711#1585' '#1606#1587#1582#1607' '#1580#1583#1610#1583#1610' '#1575#1586' '#1576#1585#1606#1575#1605#1607' '#1576#1575#1588#1583' '
      #1606#1587#1582#1607' '#1588#1605#1575' '#1585#1575' '#1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1605#1610' '#1603#1606#1610#1605' '
      #1608#1604#1610' '#1575#1610#1606' '#1605#1606#1608#1591' '#1576#1607' '#1575#1578#1589#1575#1604' '#1576#1607' '#1575#1610#1606#1578#1585#1606#1578' '#1605#1610' '#1576#1575#1588#1583)
    TabOrder = 1
  end
  object AdvProgress1: TAdvProgress
    Left = 11
    Top = 213
    Width = 265
    Height = 17
    Anchors = [akTop, akRight]
    ParentShowHint = False
    Smooth = True
    Step = 1
    ShowHint = True
    TabOrder = 2
    Visible = False
    BarColor = clHighlight
    BkColor = clWindow
    Version = '1.2.0.0'
  end
  object WebUpdater1: TWebUpdater
    About = 'Application Updater by bsalsa : bsalsa@bsalsa.no-ip.info'
    AbortMessage = #1576#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1603#1575#1585#1576#1585' '#1604#1594#1608' '#1711#1585#1583#1610#1583
    AppCurrentVer = 0.001000000000000000
    ApplicationName = 'name'
    Author = 'majid soorani'
    BackupFolder = 'Backup\'
    Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610' '#1576#1585#1606#1575#1605#1607' '#1604#1591#1601#1575' '#1605#1606#1578#1592#1585' '#1576#1605#1575#1606#1610#1583
    Company = 'soorani-co'
    EMail = 'soorani@gmail.com'
    ErrorMessage = #1605#1588#1603#1604#1610' '#1583#1585' '#1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1608#1580#1608#1583' '#1570#1605#1583
    LogAddTime = True
    LogFileName = 'Updater.txt'
    MailErrorReport = False
    OnProgress = WebUpdater1Progress
    ProgressBar = AdvProgress1
    StatusBar = StatusBar1
    SuccessMessageText = #1576#1585#1608#1586#1585#1587#1575#1606#1610' '#1575#1606#1580#1575#1605' '#1588#1583
    UpdatesFolder = 'Updates\'
    WebInfoFileName = 'Updates.xml'
    WebURL = 'http://localhost/delphi-exec'
    Left = 8
    Top = 176
  end
end
