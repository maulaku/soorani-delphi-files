unit fmTreeTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ComCtrls, StdCtrls, DB,
  ADODB, ImgList, Buttons, Mask, DBCtrls, ExtCtrls;

type
  TTreeTest = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    Edit1: TEdit;
    Label1: TLabel;
    ADODataSet1: TADODataSet;
    ADODataSet1PROGRAM_CODE: TStringField;
    ADODataSet1PROGRAM_DESC: TStringField;
    ADODataSet1LVL: TIntegerField;
    ADODataSet1PARENT_PROGRAM_CODE: TStringField;
    ADODataSet2: TADODataSet;
    ADODataSet3: TADODataSet;
    ADODataSet4: TADODataSet;
    ADODataSet2PROGRAM_CODE: TStringField;
    ADODataSet2PROGRAM_DESC: TStringField;
    ADODataSet2LVL: TIntegerField;
    ADODataSet2PARENT_PROGRAM_CODE: TStringField;
    ADODataSet3PROGRAM_CODE: TStringField;
    ADODataSet3PROGRAM_DESC: TStringField;
    ADODataSet3LVL: TIntegerField;
    ADODataSet3PARENT_PROGRAM_CODE: TStringField;
    ADODataSet4PROGRAM_CODE: TStringField;
    ADODataSet4PROGRAM_DESC: TStringField;
    ADODataSet4LVL: TIntegerField;
    ADODataSet4PARENT_PROGRAM_CODE: TStringField;
    ImageList1: TImageList;
    paUpdate: TPanel;
    prCode: TDBEdit;
    DataSource1: TDataSource;
    prDesc: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var             
  TreeTest: TTreeTest;

implementation


{$R *.dfm}


end.
