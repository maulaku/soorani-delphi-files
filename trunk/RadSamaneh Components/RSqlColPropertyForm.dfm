object ColForm: TColForm
  Left = 361
  Top = 141
  Width = 179
  Height = 232
  Caption = 'Columns'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 171
    Height = 29
    ButtonHeight = 24
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object RSqlEdit1: TRSqlEdit
      Left = 23
      Top = 2
      Width = 112
      Height = 24
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      FieldType = ftRequired
      EditType = etAlphaNumeric
    end
  end
  object LbCols: TListBox
    Left = 0
    Top = 29
    Width = 171
    Height = 176
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
  end
  object ImageList1: TImageList
    Left = 141
    Top = 2
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000548075805480434054804340548
      E71C0C7F5146302960001000200001020000CF0CC07FFF7F00008613C0020000
      CF0C040000020000460D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF7F
      FF7F0000000000000000000000000000000000000000EF3D3F323F323F32AD35
      E71CB17EEF3D0800000060000000100000000100040000000000000300000000
      00000000000010000000000000000000000000000000000000000000007C0000
      00000000000000000000000000000000000000000000000000000000EF3DEF3D
      FF7FFF7F000000000000000000000000000000000000AD353F323F328B2DE71C
      E71CE0598B2DAD353F324A2907580758075800000000AD353F323F32E71CE71C
      8B2D0C7FAD35AD353F324A290000317E05480000000000000000007C007C007C
      0000000000000000000000000000000000000000000000000000EF3DEF3DEF3D
      EF3DFF7F000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7F10002C0000000E0DFF7FFF7FFF7F827F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007C007C007C
      0000000000000000000000000000000000000000000000000000EF3DEF3DEF3D
      EF3DFF7FFF7F000000000000000000000000272EB230A429AF3AB231252EB230
      A429A136213725348021AF36B037AE322E3AB3068A24B432AD181D231A2EA431
      B5390D05293AA536921E241DBC068A060A00000000000000007C007C007C007C
      007C00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3D
      EF3DEF3DFF7F0000000000000000000000002431A9223239B31E2222A51D0D05
      0D053B24A939B437B23CAC34333A332E2836AF3A3438353AA434B232233A2F39
      B23CBD068A21AF3A2E3A9D180D05293AA53600000000007C007C007C007C007C
      007C0000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DFF7FFF7F00000000000000000000CC00D4010800CC00D40100000000
      0000000000000000000000000000000000000000000000000000CD00D4010A00
      CC00D401BD06FE7F000000000000000000000000EF3D007C007C00000000007C
      007C007C00000000000000000000000000000000EF3DEF3DEF3DEF3D0000EF3D
      EF3DEF3DEF3DFF7F00000000000000000000AC3AA4322410B030A335A133A539
      BD060A12082225263024A9143C28B237AA32233A332E22382C2EA431AC3A3339
      15180E3130361D212F39AC302E32802AB332EF3D007C00000000000000000000
      007C007C0000000000000000000000000000EF3DEF3DEF3D0000000000000000
      EF3DEF3DEF3DFF7FFF7F00000000000000000E180D052937B43232372136AE30
      AD329D060A26A5332136A337B03CB2342734B41E0D05AC32A7302C2AB230A432
      AD30B235B31E0D052F39A93329372136A6340000000000000000000000000000
      007C007C007C0000000000000000000000000000000000000000000000000000
      EF3DEF3DEF3DEF3DFF7F0000000000000000B032A33421361D180D053039293B
      213AA51E90060A222C261D180D05AC37A330AC329D18101995068A212F322528
      A133A51E1119151B0D050D053B2B2539B3340000000000000000000000000000
      0000007C007C0000000000000000000000000000000000000000000000000000
      0000EF3DEF3DEF3DFF7FFF7F000000000000FF7FB200FF7FB600FF7FBA00FF7F
      BE00FF7FC200FF7FC600FF7F0000FF7F00008400D40108013C00D4010D05A13A
      B43729372321B5342C321D180D05AD30AA370000000000000000000000000000
      00000000007C007C000000000000000000000000000000000000000000000000
      00000000EF3DEF3DEF3DFF7FFF7F000000000000000000000000000000000029
      B4230000002E030000003D00CC0000008E00FF7F9200FF7F9600FF7F9A00FF7F
      9E00FF7F8200FF7F8600FF7F8A00FF7F8E000000000000000000000000000000
      000000000000EF3D007C00000000000000000000000000000000000000000000
      000000000000EF3DEF3DEF3DFF7FFF7F00000000171ABF00000000015E002C24
      00002C00840048002000CC000200830004000100000000000000000000000000
      000000000000D83A02000300010062000E000000000000000000000000000000
      0000000000000000EF3D007C0000000000000000000000000000000000000000
      0000000000000000EF3DEF3DEF3DFF7FFF7F0000000000000000000000000000
      0000000000000000000000003000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000007C007C00000000000000000000000000000000
      000000000000000000000000EF3DEF3DEF3DFF7FFF7FFF7FFF7FEF3DEF3DEF3D
      EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3DEF3D
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FEF3DEF3DEF3DEF3DFF7FEF3D
      EF3DEF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7F424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFF
      F9FFF87FFFFFFFFFF0FFF07FFFFFEF7BF0FFF03FFFFFFFFFE07FE03FFFFFFFFF
      C07FC01FFFFFFFFF843F841FFFFFFFFF1E3F1E0FFFFFFFFFFE1FFE0FFFFFFFFF
      FF1FFF07FFFFFFFFFF8FFF837F7F7F00FFC7FFC110004C00FFE3FFE000808000
      FFF8FFF800000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
