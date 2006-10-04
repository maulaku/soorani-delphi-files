unit fmElamDel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, RSqlEdit, XPMenu,RadForms;

type
  TElamDel = class(TRadForm)
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    RadioGroup1: TRadioGroup;
    edLNumber: TRSqlEdit;
    edFNumber: TRSqlEdit;
    procedure bbOkClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure edLNumberChange(Sender: TObject);
    procedure edFNumberChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edLNumberExit(Sender: TObject);
    procedure edFNumberExit(Sender: TObject);
  private
    { Private declarations }
  public
     CurrRec:Boolean;
    { Public declarations }
  end;

var
  ElamDel: TElamDel;

implementation

{$R *.DFM}

procedure TElamDel.bbOkClick(Sender: TObject);
begin
   bbok.ModalResult :=mrOk;
end;

procedure TElamDel.bbCancelClick(Sender: TObject);
begin
  bbok.ModalResult :=mrCancel;
end;

procedure TElamDel.edLNumberChange(Sender: TObject);
begin

 if (trim(edFNumber.Text) <> '') and (trim(edLNumber.Text)<>'')
    then bbOk.Enabled :=true else bbOk.Enabled :=false;


end;

procedure TElamDel.edFNumberChange(Sender: TObject);
begin
    if (trim(edFNumber.Text) <> '') and (trim(edLNumber.Text)<>'')
       then bbOk.Enabled :=true else bbOk.Enabled :=false;
end;

procedure TElamDel.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex :=0;
  edLNumber.Enabled :=false;
  edFNumber.Enabled :=false ;
  bbOk.Enabled :=true;
  CurrRec:=true;
 //  bbOk.Enabled :=false;
end;

procedure TElamDel.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then
     begin
       edLNumber.Enabled :=true;
       edFNumber.Enabled :=true;
       CurrRec:=false;
       bbOk.Enabled :=false;
       edFNumber.setfocus;
     end
        else if RadioGroup1.ItemIndex = 0 then
         begin
           edLNumber.Enabled :=false;
           edFNumber.Enabled :=false;
           CurrRec:=true;
           bbOk.Enabled :=true;
         end;
    //showmessage('');
end;

procedure TElamDel.edLNumberExit(Sender: TObject);
begin
   if (edLNumber.Text <>'') and (edfNumber.Text <>'') then
    if strtoint(edlNumber.text)< strtoint(edfnumber.text) then
      begin
        edLNumber.Text :='';
        bbok.enabled:=false;
        edLNumber.SetFocus;
      end;
end;

procedure TElamDel.edFNumberExit(Sender: TObject);
begin
 if (edLNumber.Text <>'') and (edfNumber.Text <>'') then
    if strtoint(edlNumber.text)< strtoint(edfnumber.text) then
      begin
        edfNumber.Text :='';
        bbok.enabled:=false;
        edfNumber.SetFocus;
      end;
end;

end.
