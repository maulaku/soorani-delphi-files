unit fmListF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, StdCtrls, Buttons;

type
  TListF = class(TForm)
    Label1: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FilterComboBox1: TFilterComboBox;
    FileListBox1: TFileListBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
      sf :string;
    { Public declarations }
  end;

var
  ListF: TListF;

implementation

{$R *.DFM}

procedure TListF.BitBtn1Click(Sender: TObject);
begin
//  sf:=filelistbox1.filename;
  close;
end;

procedure TListF.BitBtn2Click(Sender: TObject);
begin
  sf:='';
  close;
end;

procedure TListF.FormActivate(Sender: TObject);
begin
 FileListBox1.Visible:=true;
end;

end.
