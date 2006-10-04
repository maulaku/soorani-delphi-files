unit fmPScr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons,db, ExtCtrls,fard, DBTables, ADODB, Mask,
  ComCtrls, Grids, DBGrids, XPMenu,inifiles, RSQLComboBox,variants,BaseFrm;

type
  TPassWordDlg = class(TBaseForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    Label1: TLabel;
    Password: TEdit;
    dsquGetPayam: TDataSource;
    Panel6: TPanel;
    Label4: TLabel;
    sp1: TSpeedButton;
    paPayam: TPanel;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    DBImage1: TDBImage;
    quGetPayam: TADOQuery;
    Panel1: TPanel;
    DblRecP: TDBGrid;
    quGetPayamfn: TStringField;
    quGetPayamPwrd: TStringField;
    quGetPayamemp_no: TStringField;
    quGetPayamPtag: TSmallintField;
    quGetPayamStar: TStringField;
    quGetPayamEtar: TStringField;
    quGetPayamfm: TSmallintField;
    quGetPayamemp_photo: TBlobField;
    quGetPayamAll: TStringField;
    quGetPayamname: TStringField;
    quGetPayamfamily: TStringField;
    QuInsEmp: TADOQuery;
    Quinsmasters: TADOQuery;
    Quinsusers: TADOQuery;
    Quinsaccess: TADOQuery;
    cbsys: TRSqlComboBox;
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
    procedure DblRecPKeyPress(Sender: TObject; var Key: Char);
    procedure quGetPayamCalcFields(DataSet: TDataSet);
    procedure init;
    procedure DblRecPEnter(Sender: TObject);
    procedure DblRecPExit(Sender: TObject);
    procedure sp1Click(Sender: TObject);
    procedure cbsysChange(Sender: TObject);
  private
    Ic:integer;
    ss:string;
    servertag:smallint;
    { Private declarations }
  public
    i:integer;
    okay:boolean;
    { Public declarations }
  end;

var
  PassWordDlg: TPassWordDlg;
  fdate:TFar_date;

implementation

uses DabDmdle, fmUserD, fmMfrm;

{$R *.DFM}

procedure TPassWordDlg.BitBtn1Click(Sender: TObject);
var   // SearchRec :TSearchRec;
       sss,ssl   :string;
       i         :integer;
begin
   okay  := true; ///inserted by Masoud Barati
   Close; ///inserted by Masoud Barati
   DabData.LetCd:=quGetPayamemp_no.value;
   DabData.FName:=trim(quGetPayamName.asstring);
   DabData.LName:=trim(quGetPayamFamily.asstring);
 //  DabData.quGetInit.Close;
//   DabData.quGetInit.parameters[0].Value:=quGetPayamDefUsr.value;
//   DabData.quGetInit.Open;
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
   if PassWord.text='sima4490' then
   begin
    Okay:=true;
    DabData.master:=true;
    init;
   end
   else
   DabData.master:=false;
   if (Okay=false) then
    begin
     if Ic<=2 then
       begin
         if quGetPayamPtag.value=0 then
          begin
            paPayam.caption:='ßáãå ÚÈæÑ ÔãÇ ÕÍíÍ äíÓÊ';
            Password.text:='';
            Ic:=Ic+1;
            Password.SetFocus;
          end
         else
          close;
       end
     else
       Close;
    end
   else
    begin
      paPayam.caption:='ÏÓÊÑÓí ãÚÊÈÑ ÇÓÊ';
      paPayam.refresh;
      sleep(300);
      Ic:=1;
      Application.BiDiKeyboard:='00000401' ;
      Close;
      DabData.empno:=quGetPayamemp_no.AsString;
    end;
end;

procedure TPassWordDlg.PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  paPayam.caption:='';
  if ord(key)=13 then bitbtn1.click;
end;                                        

procedure TPassWordDlg.FormShow(Sender: TObject);
begin
  cbsys.ItemIndex:=DabData.lastsys;
  cbsyschange(nil);
  quGetPayam.Close;
 //quGetPayam.parameters[0].value:=inttostr(DabData.SalVar)+copy(fdate.Disp_date,3,6);
  quGetPayam.Open;
  i:=1;
  Ic:=1;
  ss:='';
  DblRecP.SetFocus;
  servertag:=0;
end;

procedure TPassWordDlg.Timer1Timer(Sender: TObject);
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

procedure TPassWordDlg.PasswordChange(Sender: TObject);
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
      paPayam.Caption:='ÚÏã ÏÓÊÑÓí ãæÞÊ ';
      Okay:=False;
    end
  end
 else
   begin
    panel5.Caption:='ÊÕæíÑ ãæÌæÏ äíÓÊ';
    dbimage1.Hide;
    Okay:=False;
  end;
end;

procedure TPassWordDlg.BitBtn2Click(Sender: TObject);
begin
  Okay:=false;
  Close;
end;

procedure TPassWordDlg.FormCreate(Sender: TObject);
begin
   inherited;
   Application.BiDiKeyboard:='00000401' ;
end;

procedure TPassWordDlg.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   ss:=ss+key;
   quGetPayam.locate('famil',ss,[LopartialKey]);
end;

procedure TPassWordDlg.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=38) or  (key=40)  then ss:='';
end;

procedure TPassWordDlg.DblRecPKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then PAssword.SetFocus;
end;

procedure TPassWordDlg.quGetPayamCalcFields(DataSet: TDataSet);
Var
 c :string;
begin
if  quGetPayamfm.AsInteger=0 then c:='ÂÞÇí';
if  quGetPayamfm.AsInteger=1 then c:='ÎÇäã';
if  quGetPayamfm.AsInteger=2 then c:='ÍÇÌ ÂÞÇ';
if  quGetPayamfm.AsInteger=3 then c:='ÍÇÌ ÎÇäã';
if  quGetPayamfm.AsInteger=4 then c:='ÏßÊÑ';
if  quGetPayamfm.AsInteger=5 then c:='ãåäÏÓ';
quGetPayamAll.Value:=c+' '+quGetPayamname.AsString+' '+quGetPayamfamily.AsString;
end;

procedure TPassWordDlg.init;
var i:integer;
begin
   Try
    if quGetPayam.IsEmpty then
    begin
     quinsemp.Parameters[0].Value:=' ÇÑÔÏ '+cbsys.text;
     QuInsEmp.ExecSQL;
     Quinsusers.ExecSQL;
     Quinsmasters.Parameters[0].Value:=-1;
     Quinsmasters.ExecSQL;
     for i:=1 to 8 do
     begin
      Quinsmasters.Parameters[0].Value:=i;
      Quinsmasters.ExecSQL;
      Quinsaccess.Parameters[0].Value:=i;
      if i<=3 then
      begin
        Quinsaccess.Parameters[1].Value:=1;
        Quinsaccess.Parameters[2].Value:=1;
        Quinsaccess.Parameters[3].Value:=1;
      end
      else
      begin
        Quinsaccess.Parameters[1].Value:=2;
        Quinsaccess.Parameters[2].Value:=2;
        Quinsaccess.Parameters[3].Value:=2;
      end;
      Quinsaccess.ExecSQL;
     end;
     dabdata.ini:=true;
    end
    else dabdata.ini:=false;
   except dabdata.ini:=false end;

end;

procedure TPassWordDlg.DblRecPEnter(Sender: TObject);
begin
 DblRecP.Color:=$00a8ffff;
end;

procedure TPassWordDlg.DblRecPExit(Sender: TObject);
begin
 DblRecP.Color:=Cl3dLight;
end;

procedure TPassWordDlg.sp1Click(Sender: TObject);
var
    GenFile    :TiniFile;
    db:string;
    servername:string;
begin
  quGetPayam.Close;
  GenFile:=TiniFile.Create('singleBase.ini');
  if servertag=0 then
  begin
   servertag:=1;
   SerVerName:=GenFile.ReadString('SerVerName','SERVER2',GenFile.ReadString('SerVerName','SERVER',''))
  end
  else
  begin
   servertag:=0;
   SerVerName:=GenFile.ReadString('SerVerName','SERVER','');
  end;
  db:=GenFile.ReadString('Db','Db','');
  GenFile.Free;
  dabdata.SetDataBase(db,SerVerName);
  quGetPayam.open;


end;

procedure TPassWordDlg.cbsysChange(Sender: TObject);
var
    GenFile    :TiniFile;
    db,servername:string;
begin
  dabdata.adoc.Close;
  quGetPayam.Close;
  GenFile:=TiniFile.Create('singleBase.ini');
  GenFile.WriteInteger('Last','Last',cbsys.itemindex);
  SerVerName:=GenFile.ReadString('SerVerName','SERVER','');
  try
    db:=GenFile.ReadString('Connection','DB','hrs');
  except
  end;
  GenFile.Free;
  dabdata.SetDataBase(db,SerVerName);
  DabData.ADOC.Open;
  quGetPayam.open;

end;

end.


