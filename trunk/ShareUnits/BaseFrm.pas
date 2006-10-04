{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{       Majid Surany Email soorani@gawab.com          }
{                                                       }
{*******************************************************}

unit BaseFrm;

interface
{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}
{$WARN SYMBOL_PLATFORM OFF}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Define,UCommon, DB, ADODB, Grids, DBGrids, XPMenu, Danhint,
  cxLookAndFeels;

type
  TBaseForm = class(TForm)
    XpRadMenu: TXPMenu;
    RadDanHint: TDanHint;
    procedure FormCreate(Sender: TObject);
    procedure ShowDebugMessage(Text:String);
    procedure ShowAlertMessage(Text:String;AlertType:Integer);
    procedure FormShow(Sender: TObject);
    procedure OpenDataSet;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  public
    { Public declarations }
    FMax :Boolean;
    FOptionalField :TWinControl;
  published
    Property Maximum : Boolean read FMax Write FMax;
    Property OptionalField:TWinControl read  FOptionalField Write FOptionalField;
  private
    { Private declarations }
  public
    ErrorToSetRecord:Boolean;
    ActiveDataSet:TADODataSet;
    ActiveDBGrid:TDBGrid;
    First : Boolean;
    { Public declarations }
  end;

var
  First:Boolean;
  BaseForm: TBaseForm;

implementation

{$R *.dfm}

procedure TBaseForm.FormCreate(Sender: TObject);
begin
  First:=true;
  ProcessComponents(Self);
end;
procedure TBaseForm.ShowDebugMessage(Text: String);
begin
  if Application.MainForm<>nil then
     SendMessage(Application.MainForm.Handle,RAD_SHOWMESSAGE,WPARAM(Pointer(Text)),1)
  else
     ShowMessage(Text)
end;
procedure TBaseForm.ShowAlertMessage(Text: String;AlertType:Integer);
begin
  if Application.MainForm<>nil then
     SendMessage(Application.MainForm.Handle,RAD_SHOWMESSAGE,WPARAM(Pointer(Text)),AlertType)
  else
     ShowMessage(Text)
end;

procedure TBaseForm.FormShow(Sender: TObject);
begin
   OpenDataSet;
end;
procedure TBaseForm.OpenDataSet;
var
   tmpDataset:TComponents;
   var i:Integer;
begin
  tmpDataset:=FindComponents(Self,TCustomADODataSet);
  for i:=0 to Length(tmpDataset)-1 do
    if tmpDataset[i] is TADOQuery then
    begin
      if
        (TADOQuery(tmpDataset[i]).SQL.Text<>'')
       and
        (Pos('INSERT',UpperCase(TADOQuery(tmpDataset[i]).SQL.Text))=0)
       and
        (Pos('UPDATE',UpperCase(TADOQuery(tmpDataset[i]).SQL.Text))=0)
       then
       begin
           try
             TADOQuery(tmpDataset[i]).Close;
             TADOQuery(tmpDataset[i]).Open
           except
             if MessageDlg('œ— —«œ›—„ «„ﬂ«‰ »«“ ﬂ—œ‰ Dataset ‘„« ÊÃÊœ ‰œ«—œ ', mtConfirmation, [mbYes,mbNo,mbIgnore,mbHelp], 0) = mrNone then
                Exit;
           end;
       end
    end
    else if tmpDataset[i] is TADODataSet then
    begin
      if
         (TADODataSet(tmpDataset[i]).CommandType=cmdText)  or
         (TADODataSet(tmpDataset[i]).CommandType=cmdStoredProc)
      then
         if
             (TADODataSet(tmpDataset[i]).CommandText<>'')
            and
             (Pos('INSERT',UpperCase(TADODataSet(tmpDataset[i]).CommandText))=0)
            and
             (Pos('UPDATE',UpperCase(TADODataSet(tmpDataset[i]).CommandText))=0)
         then
         begin
           ActiveDataSet:=TADODataSet(tmpDataset[i]);
           try
             ActiveDataSet.Close;
             ActiveDataSet.Open
           except
             if MessageDlg('œ— —«œ›—„ «„ﬂ«‰ »«“ ﬂ—œ‰ Dataset ‘„« ÊÃÊœ ‰œ«—œ ', mtConfirmation, [mbYes,mbNo,mbIgnore,mbHelp], 0) = mrNone then
                Exit;
           end;
         end;
    end;
end;
procedure TBaseForm.FormActivate(Sender: TObject);
begin
  SetCaption(Sender);
end;

procedure TBaseForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then  SetFocusNextObject(Sender);
  if Key=27 then  Close;
end;

end.
