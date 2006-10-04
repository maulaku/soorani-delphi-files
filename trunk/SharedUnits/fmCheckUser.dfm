object Form1: TForm1
  Left = 192
  Top = 114
  Width = 544
  Height = 375
  BiDiMode = bdRightToLeft
  Caption = #1603#1575#1585' '#1576#1585#1575#1606#1610' '#1603#1607' '#1607#1605' '#1575#1603#1606#1608#1606' '#1576#1575' '#1587#1610#1587#1578#1605' '#1603#1575#1585' '#1605#1610' '#1603#1606#1606#1583' '
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 536
    Height = 268
    Align = alLeft
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'spid'
        Title.Caption = #1603#1583' '#1588#1606#1575#1587#1575#1610#1610' '#1603#1575#1585#1576#1585
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login_time'
        Title.Caption = #1588#1585#1608#1593' '#1575#1578#1589#1575#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_batch'
        Title.Caption = ' '#1586#1605#1575#1606' '#1570#1582#1585#1610#1606' '#1593#1605#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #1608#1590#1610#1593#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hostname'
        Title.Caption = #1606#1575#1605' Client'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'program_name'
        Title.Caption = #1606#1575#1605' '#1576#1585#1606#1575#1605#1607' '#1575#1610' '#1603#1607' '#1583#1587#1578#1608#1585#1575#1578' '#1585#1575' '#1605#1610' '#1583#1607#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cmd'
        Title.Caption = #1606#1608#1593' '#1583#1587#1578#1608#1585
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'net_address'
        Title.Caption = #1570#1583#1585#1587' Mac'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'loginame'
        Title.Caption = #1606#1575#1605' User '#1603#1575#1606#1603' '#1588#1583#1607' '
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 360
      Top = 8
      Width = 167
      Height = 13
      Caption = #1605#1583#1578' '#1586#1605#1575#1606#1610' '#1603#1607' '#1576#1575#1610#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1585#1608#1586' '#1588#1608#1583
    end
    object Edit1: TEdit
      Left = 234
      Top = 5
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '1000'
    end
    object Button1: TButton
      Left = 153
      Top = 3
      Width = 75
      Height = 25
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 8
    Top = 48
  end
  object ADODataSet1: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select spid,login_time,last_batch,status,hostname,program_name,c' +
      'md,net_address,loginame from sysprocesses'#13#10'where Program_name li' +
      'ke '#39'%SQL Query Analyzer%'#39' or Program_name like '#39'%Enterprise%'#39
    Parameters = <>
    Top = 32
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 56
  end
end
