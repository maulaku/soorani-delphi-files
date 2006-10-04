unit fmRnama;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls,define, ImgList;

type
  TRnama = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    HtView: TTreeView;
    Panel1: TPanel;
    mmDesc: TMemo;
    Panel2: TPanel;
    Button1: TButton;
    ImageList1: TImageList;
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure HtViewChange(Sender: TObject; Node: TTreeNode);
    procedure HtViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure HtViewCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
  private
     Function BackResult(Fnode:TTreeNode;Stext:string):TTreeNode;
    { Private declarations }
  public
     Indx:integer;
     procedure GetNodeHelp(ntext1,ntext2,ntext3:string);
    { Public declarations }
  end;

var
  Rnama: TRnama;

implementation

uses DabDmdle;

{$R *.DFM}

procedure TRnama.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=0;
   Application.MainForm.Dispatch(mes);
   left:=1;
   top:=2;
end;

procedure TRnama.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
  mes.Msg:=FORM_DEACT;
  Application.MainForm.Dispatch(mes);
end;

procedure TRnama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRnama.Button1Click(Sender: TObject);
begin
  mmDesc.Lines.SaveToFile(DabData.AppPath+'\'+HtView.Selected.Text+'.txt');
  mmDesc.Lines.SaveToFile(DabData.AppPath+'\'+inttostr(Indx)+'.txt');
end;

procedure TRnama.HtViewChange(Sender: TObject; Node: TTreeNode);
begin
  if fileexists(HtView.Selected.Text+'.txt') then
    mmdesc.lines.loadfromfile(HtView.Selected.Text+'.txt')
  else
    mmdesc.clear;
end;

procedure TRnama.HtViewExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
  Node.ImageIndex:=1;
  Node.SelectedIndex:=1
end;

procedure TRnama.HtViewCollapsing(Sender: TObject; Node: TTreeNode;
  var AllowCollapse: Boolean);
begin
   node.ImageIndex:=0;
    Node.SelectedIndex:=0;
end;

procedure TRnama.GetNodeHelp(ntext1,ntext2,ntext3:string);
var
  Node1:TTreeNode;
begin
  Node1:=BackResult(HtView.Items.GetFirstNode,ntext1);
  HtView.Selected:=node1;
  Htview.SetFocus;
  if HtView.Selected.haschildren then HtView.Selected.Expand(true);
  if ntext2<>'' then
   begin
    Node1:=BackResult(node1,ntext2);
    HtView.Selected:=node1;
    Htview.SetFocus;
    if HtView.Selected.haschildren then HtView.Selected.Expand(true);
   end;
  if ntext3<>'' then
   begin
    Node1:=BackResult(node1,ntext3);
    HtView.Selected:=node1;
    Htview.SetFocus;
    if HtView.Selected.haschildren then HtView.Selected.Expand(true);
   end;
end;

Function TRnama.BackResult(Fnode:TTreeNode;Stext:string):TTreeNode;
var  CurItem: TTreeNode;
begin
  CurItem :=Fnode;
  while  CurItem <>  nil   do
   begin
    if CurItem.Text=stext then break;
    CurItem := CurItem.GetNext;
   end;
  BackResult:=CurItem;
end;
end.
