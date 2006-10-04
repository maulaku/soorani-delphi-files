
unit fmPScrXP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons,db, ExtCtrls, DBTables, ADODB, Mask,
  ComCtrls, Grids, DBGrids, XPMenu,RadForms, RSqlEdit, fcImage, fcImageForm,Variants;

type
  TXPPassWordDlg = class(TRadForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    DBImage1: TDBImage;
    quGetPayam: TADOQuery;
    quGetPayamfn: TStringField;
    quGetPayamPwrd: TStringField;
    quGetPayamemp_no: TStringField;
    quGetPayamPtag: TSmallintField;
    quGetPayamStar: TStringField;
    quGetPayamEtar: TStringField;
    quGetPayamfm: TSmallintField;
    quGetPayamemp_photo: TBlobField;
    quGetPayamname: TStringField;
    quGetPayamfamily: TStringField;
    dsquGetPayam: TDataSource;
    quGetPayamall: TStringField;
    DBGrid1: TDBGrid;
    Password: TRSqlEdit;
    fcImageForm1: TfcImageForm;
    sp1: TSpeedButton;
    paPayam: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PasswordChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure quGetPayamCalcFields(DataSet: TDataSet);
  private
    Ic:integer;
    ss:string;
    { Private declarations }
  public
    i:integer;
    okay:boolean;
    { Public declarations }
  end;

var
  XPPassWordDlg: TXPPassWordDlg;

implementation

uses DabDmdle, UCommon;

{$R *.DFM}

procedure TXPPassWordDlg.BitBtn1Click(Sender: TObject);
var   // SearchRec :TSearchRec;
       sss,ssl   :string;
       i         :integer;
begin
   okay  := true; ///inserted by Masoud Barati
   Close; ///inserted by Masoud Barati
   DabData.FName:=trim(quGetPayamName.asstring);
   DabData.LName:=trim(quGetPayamFamily.asstring);
   DabData.emp_no := TRIM(quGetPayamemp_no.AsString);
   ssl:=quGetPayamFamily.asstring;
   sss:='';
   for i:= length(quGetPayamFamily.asstring) downto 1 do
    if ssl[i]<>' ' then break;
   sss:=copy(ssl,1,i);
   if not quGetPayamemp_photo.IsNull then
      DabData.LetPic.picture.assign(quGetPayam.fieldbyname('emp_photo'))
   else
      DabData.LetPic.picture:=nil;

   PasswordChange(nil);
   if PassWord.text=ArshadPass then Okay:=true; 
   if (Okay=false) then
    begin
     if Ic<=2 then
       begin
         if quGetPayamPtag.value=0 then
          begin
            paPayam.caption:='ﬂ·„Â ⁄»Ê— ‘„« ’ÕÌÕ ‰Ì” ';
            Password.text:='';
            Ic:=Ic+1;
            Password.SetFocus;
          end
         else
         begin
          AddLog(' ﬂ«—»— '+trim(quGetPayamName.asstring)+' '+trim(quGetPayamFamily.asstring)+' «‘ »«Â ﬂ·„Â ⁄»Ê— —« Ê«—œ ﬂ—œ ');
         end;
       end
     else
      begin
          AddLog(' ﬂ«—»— '+trim(quGetPayamName.asstring)+' '+trim(quGetPayamFamily.asstring)+' «‘ »«Â ﬂ·„Â ⁄»Ê— —« Ê«—œ ﬂ—œ ');
          close;
       end;
   end
   else
    begin

      paPayam.caption:='œ” —”Ì „⁄ »— «” ';
      paPayam.refresh;
      sleep(300);
      Ic:=1;
      if DabData.SysVersion > 4 then
        Application.BiDiKeyboard:='00000429'
      else
        Application.BiDiKeyboard:='00000401';
      AddLog(' ﬂ«—»— «” ›«œÂ ﬂ‰‰œÂ '+trim(quGetPayamName.asstring)+' '+trim(quGetPayamFamily.asstring));
      try
        DabData.quInsertUser.Parameters[0].Value:=DabData.emp_no;
        DabData.quInsertUser.ExecSQL;
      except
        DabData.quInsertUser.SQL.Clear;
        DabData.quInsertUser.SQL.Text:='update tbl_AmvalUsers set emp_no='+DabData.emp_no;
        DabData.quInsertUser.ExecSQL;
      end;
      Close;
    end;
end;

procedure TXPPassWordDlg.PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  paPayam.caption:='';
  if ord(key)=13 then bitbtn1.click;
end;

procedure TXPPassWordDlg.FormShow(Sender: TObject);
begin
  quGetPayam.Close;
//  quGetPayam.parameters[0].value:=inttostr(DabData.SalVar)+copy(Dabdata.disp_date,3,6);
  quGetPayam.parameters[0].Value:=GetProductInformation('syscode');
  quGetPayam.Open;
  i:=1;
  Ic:=1;
  ss:='';
end;

procedure TXPPassWordDlg.Timer1Timer(Sender: TObject);
begin
  if i=1 then
   begin
     sp1.visible:=true;
     i:=0;
   end
  else
   if i=0 then
     begin
       sp1.visible:=false;
       i:=1;
     end;
end;

procedure TXPPassWordDlg.PasswordChange(Sender: TObject);
var v1,v2 :variant;
begin
 v1:=quGetPayam.fieldbyname('family').asstring;
 v2:=Password.text;
 if quGetPayam.Locate('FAMILy;PWRD',VarArrayof([v1,v2]),[]) then
  begin
   if quGetPayamPtag.value=0 then
     begin
       dbimage1.show;
       Okay:=true;
     end
   else
    begin
      dbimage1.show;
      paPayam.Caption:='⁄œ„ œ” —”Ì „Êﬁ  ';
      Okay:=False;
    end
  end
 else
   begin
    panel5.Caption:=' ’ÊÌ— „ÊÃÊœ ‰Ì” ';
    dbimage1.Hide;
    Okay:=False;
  end;
end;

procedure TXPPassWordDlg.BitBtn2Click(Sender: TObject);
begin
  Okay:=false;
  Close;
end;

procedure TXPPassWordDlg.FormCreate(Sender: TObject);
begin
   Inherited;
    if DabData.SysVersion > 4 then
      Application.BiDiKeyboard:='00000429'
    else
      Application.BiDiKeyboard:='00000401'
end;

procedure TXPPassWordDlg.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then password.setFocus;
   ss:=ss+key;
   quGetPayam.locate('family',ss,[LopartialKey]);
end;

procedure TXPPassWordDlg.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=38) or  (key=40)  then ss:='';
end;

procedure TXPPassWordDlg.quGetPayamCalcFields(DataSet: TDataSet);
var c:string;
begin
if  quGetPayamfm.AsInteger=0 then c:='¬ﬁ«Ì';
if  quGetPayamfm.AsInteger=1 then c:='Œ«‰„';
if  quGetPayamfm.AsInteger=2 then c:='Õ«Ã ¬ﬁ«';
if  quGetPayamfm.AsInteger=3 then c:='Õ«Ã Œ«‰„';
if  quGetPayamfm.AsInteger=4 then c:='œﬂ —';
if  quGetPayamfm.AsInteger=5 then c:='„Â‰œ”';
quGetPayamAll.Value:=c+' '+quGetPayamname.AsString+' '+quGetPayamfamily.AsString;
end;

end.


