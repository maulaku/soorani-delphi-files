unit DabDmdle;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,DBTables, Db, ImgList,define,filectrl, ADODB,inifiles,
  stdctrls, MSNPopUp,FormCommon,fard;


type
  TDabData = class(TDataModule)
    dsqUsers: TDataSource;
    ADOC: TADOConnection;
    quUsers: TADOQuery;
    quUsersEmp_No: TStringField;
    quUsersSTar: TStringField;
    quUsersETar: TStringField;
    quUsersPwrd: TStringField;
    quUsersFm: TSmallintField;
    quUsersPTag: TSmallintField;
    quUsersSysCode: TIntegerField;
    quUsersemp_photo: TBlobField;
    quUsersname: TStringField;
    quUsersfamily: TStringField;
    quaccessf: TADOQuery;
    quaccessfEmp_NO: TStringField;
    quaccessfMCode: TIntegerField;
    quaccessfextag: TSmallintField;
    quaccessfnewtag: TSmallintField;
    quaccessfedittag: TSmallintField;
    quaccessfdeltag: TSmallintField;
    quaccessfprinttag: TSmallintField;
    quaccessfsrchtag: TSmallintField;
    quaccessfprevtag: TSmallintField;
    quaccessfnexttag: TSmallintField;
    quaccessfruntag: TSmallintField;
    quaccessflisttag: TSmallintField;
    quaccessfmnum: TStringField;
    qulocal: TADOQuery;
    qulocalorg_code: TIntegerField;
    qulocalmar_per: TFloatField;
    qulocalchild_per: TFloatField;
    qulocalchild_ac: TSmallintField;
    qulocals_boy_age: TSmallintField;
    qulocaln_boy_age: TSmallintField;
    qulocalDoc_no: TStringField;
    qulocalusr_date: TStringField;
    qulocalusr: TStringField;
    qulocalM_per: TFloatField;
    qulocalstate: TSmallintField;
    qulocalorg_name: TStringField;
    qulocalformstate: TStringField;
    qulocalNM_L_sal: TFloatField;
    qulocalM_l_sal: TFloatField;
    qulocalloc_per: TFloatField;
    qulocalu_evl: TSmallintField;
    qulocall_evl: TSmallintField;
    quCountry: TADOQuery;
    quCountrydegree: TStringField;
    quCountryBad_Weather_Degree: TStringField;
    quCountryCountry_code: TSmallintField;
    quCountryCountry_name: TStringField;
    quprovince: TADOQuery;
    quprovincecountry_code: TSmallintField;
    quprovinceprovince_code: TSmallintField;
    quprovinceprovince_name: TStringField;
    quprovinceCountry_name: TStringField;
    quprovince1: TADOQuery;
    quprovince1country_code: TSmallintField;
    quprovince1province_code: TSmallintField;
    quprovince1province_name: TStringField;
    qucounty1: TADOQuery;
    qucounty1country_code: TSmallintField;
    qucounty1province_code: TSmallintField;
    qucounty1county_code: TSmallintField;
    qucounty1county_name: TStringField;
    qucounty1M_pay: TSmallintField;
    qucounty1grade: TSmallintField;
    qucounty1grp: TSmallintField;
    qucounty1j_pay: TFloatField;
    qusection1: TADOQuery;
    qusection1country_code: TSmallintField;
    qusection1province_code: TSmallintField;
    qusection1county_code: TSmallintField;
    qusection1section_code: TSmallintField;
    qusection1section_name: TStringField;
    qusection1grade: TSmallintField;
    qusection1grp: TSmallintField;
    qusection1m_pay: TSmallintField;
    qusection1j_pay: TFloatField;
    quvillage1: TADOQuery;
    quvillage1country_code: TSmallintField;
    quvillage1province_code: TSmallintField;
    quvillage1county_code: TSmallintField;
    quvillage1section_code: TSmallintField;
    quvillage1village_code: TSmallintField;
    quvillage1village_name: TStringField;
    quvillage1m_pay: TSmallintField;
    quvillage1grade: TSmallintField;
    quvillage1grp: TSmallintField;
    quvillage1j_pay: TFloatField;
    quemp: TADOQuery;
    quempemp_no: TStringField;
    quempname: TStringField;
    quempfamily: TStringField;
    quempfather_name: TStringField;
    quempbirth_certificate_no: TStringField;
    quempbirth_date: TStringField;
    quempsex: TSmallintField;
    quempnationality_code: TSmallintField;
    quempbirth_loc_code: TStringField;
    quempcer_loc_code: TStringField;
    quempnational_card_no: TStringField;
    quempis_married: TSmallintField;
    quempnum_of_child: TSmallintField;
    quempreligion: TSmallintField;
    quemphealth_state: TStringField;
    quempsoldiery: TSmallintField;
    quempedu_degree: TIntegerField;
    quempimmunity_reason: TStringField;
    quemplast_school_name: TStringField;
    quemplast_school_loc_code: TStringField;
    quemplast_diploma_date: TStringField;
    quempwriting: TStringField;
    quempemp_type: TSmallintField;
    quemporg_code: TIntegerField;
    quempunit_code: TSmallintField;
    quempisargary_state: TSmallintField;
    quempemployed_emp_law: TSmallintField;
    quempemp_state: TSmallintField;
    quempcomment: TStringField;
    quempemp_photo: TBlobField;
    quempdiploma_name: TStringField;
    quemppost_no: TIntegerField;
    quempjob_lev: TSmallintField;
    quempIn_First: TFloatField;
    quempemp_code: TStringField;
    quempfield_no: TSmallintField;
    quempfield_name: TStringField;
    quempCode: TIntegerField;
    quempDescr: TStringField;
    quempfield_name_1: TStringField;
    quempdescr_1: TStringField;
    quempisarstate: TStringField;
    quempempstate: TStringField;
    quempemptype: TStringField;
    quempsoldsatate: TStringField;
    quempnum: TIntegerField;
    quOrg: TADOQuery;
    quOrgRowNumber: TSmallintField;
    quOrgOrg_Code: TIntegerField;
    quOrgOrg_Name: TStringField;
    quOrgOrg_Addr: TStringField;
    quOrgOrg_Mast_Code: TIntegerField;
    quOrgMast_Name: TStringField;
    quUnit: TADOQuery;
    quUnitRowNumber: TSmallintField;
    quUnitUt_Org_Code: TIntegerField;
    quUnitUt_Code: TSmallintField;
    quUnitUt_Name: TStringField;
    quUnitUt_Mast_Code: TSmallintField;
    quUnitMast_Name: TStringField;
    quPost: TADOQuery;
    quPostRowNumber: TSmallintField;
    quPostPt_Org_Code: TIntegerField;
    quPostPt_Ut_code: TSmallintField;
    quPostPt_Code: TIntegerField;
    quPostPt_Category_Code: TSmallintField;
    quPostPt_Sub_Code: TSmallintField;
    quPostPt_Job_Code: TSmallintField;
    quPostpost_name: TStringField;
    quPostpost_type: TSmallintField;
    quPostpost_state: TSmallintField;
    quPostpost_code: TStringField;
    quPostPt_Mast_Code: TIntegerField;
    quPostMast_Name: TStringField;
    quPostType: TStringField;
    quPostState: TStringField;
    quCat: TADOQuery;
    quCatRowNumber: TSmallintField;
    quCatctg_code: TSmallintField;
    quCatctg_name: TStringField;
    quSubCat: TADOQuery;
    quSubCatRowNumber: TSmallintField;
    quSubCatsub_ctg_code: TSmallintField;
    quSubCatsub_ctg_name: TStringField;
    quSubCatctg_code: TSmallintField;
    quJob: TADOQuery;
    quJobRowNumber: TSmallintField;
    quJobctg_code: TSmallintField;
    quJobsub_ctg_code: TSmallintField;
    quJobjob_code: TSmallintField;
    quJobjob_name: TStringField;
    quCourse: TADOQuery;
    quCourseRowNumber: TSmallintField;
    quCoursefield_no: TSmallintField;
    quCoursefield_name: TStringField;
    qudegree: TADOQuery;
    qudegreeCode: TIntegerField;
    qudegreeDescr: TStringField;
    qudegreeRow: TIntegerField;
    FontDialog1: TFontDialog;
    quInsertUser: TADOQuery;
    SmallintField2: TSmallintField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    LargeintField2: TLargeintField;
    MSNPopUp1: TMSNPopUp;
    procedure DabDataCreate(Sender: TObject);
    procedure DabDataDestroy(Sender: TObject);
    procedure quMbillAfterScroll(DataSet: TDataSet);
    procedure quCSTypeAfterScroll(DataSet: TDataSet);
    procedure quTrAidAfterScroll(DataSet: TDataSet);
    procedure quLawAfterScroll(DataSet: TDataSet);
    procedure SmallintField2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QuProceduresAfterScroll(DataSet: TDataSet);
    procedure quDetInstAfterScroll(DataSet: TDataSet);
    procedure quSubByLawAfterScroll(DataSet: TDataSet);

    {procedure quDetInstVRowGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);}

    procedure quInstAfterScroll(DataSet: TDataSet);

   // procedure quDetInstAfterScroll(DataSet: TDataSet);

    procedure quSubProcAfterScroll(DataSet: TDataSet);
    procedure quempAfterScroll(DataSet: TDataSet);
    procedure quCountryAfterScroll(DataSet: TDataSet);
//    procedure QuProcedureVCodeGetText(Sender: TField; var Text: String;
 //     DisplayText: Boolean);
  private
    { Private declarations }
  public
     SysVersion : integer;
     lastsys:integer;
     LetCd,empno :string;
     emp_no : String ;
     IsInXpMode,IsInDebug : Boolean;
     FName,Lname  :String[20];
     LetPic   :Timage;
     AppPath  :string;
     SerVerName :string;
     DataBaseN  :string;
     SalVar,MahVar     :integer;
     master:boolean;
     ini:boolean;
     function checkkey(key : char) : char;
     procedure SetDataBase(Dbn,SrvN:string);
     function checkDate(str : string):boolean;
     function DelSpace(tempStr: string): String;
     function CorrectStr(tempStr: string): String;
     Procedure SetServer;
     Procedure DelServer;
   //  procedure setcolors(a: tform);
     procedure ShowPopupMessage(Msg : string);
     procedure ShowPopupMessageSmall(Msg : string);
     function  disp_date:String;

    { Public declarations }
  end;

procedure ShowMessage2(s:string);

var
  DabData : TDabData;
  fDate:TFar_date;

implementation

uses fmGsnFrm, fmCrl, fmemp;

{$R *.DFM}


procedure ShowMessage2(s:string);
begin
 DabData.MSNPoPup1.Text:=s;
 DabData.MSNPopUp1.ShowPopUp;
end;

function TDabData.checkkey(key : char) : char;
 begin
  if (ord(key) < 48) or (ord(key) > 57) then
   if(ord(key) <> 8) then
       key := #0;
    checkkey := key;
 end;


function TDabData.checkDate(str : string):boolean;
var
//  i : integer;
  y, m, d : string[5];
begin
   y := str[1] + str[2];
   m := str[4] + str[5];
   d := str[7] + str[8];
 if (length(str) <> 8) then
   checkDate := false
 else if ( y = '00' ) or (m = '00') or (d = '00') then
   CheckDate := false
 else if(ord(str[1]) < 48) or (ord(str[1]) > 57) then
   checkDate := false
 else if(ord(str[2]) < 48) or (ord(str[2]) > 57) then
   checkDate := false
 else if(ord(str[4]) < 48) or (ord(str[4]) > 57) then
   checkDate := false
 else if(ord(str[5]) < 48) or (ord(str[5]) > 57) then
   checkDate := false
 else if(ord(str[7]) < 48) or (ord(str[7]) > 57) then
   checkDate := false
 else if(ord(str[8]) < 48) or (ord(str[8]) > 57) then
   checkDate := false
 else
   checkDate := true;
end;


procedure TDabData.DabDataCreate(Sender: TObject);
var Myd                    :TDirectoryListBox;
    GenFile    :TiniFile;
    db:string;

//    InstQry :TADOQuery;
//    ss,ss1,ss2 :string;
    label 12;
begin
12:
  myd:=TDirectoryListBox.Create(self);
  AppPath:=myd.directory;
  GenFile:=TiniFile.Create('singleBase.ini');
  SalVar:=strtoint(GenFile.ReadString('Sal','CurrentSal',copy(disp_date,1,2)));
  MahVar:=GenFile.Readinteger('Mah','CurrentMah',0);
  if not GsnFrm.cbTInst.Checked then
  SerVerName:=GenFile.ReadString('SerVerName','SERVER','');
  lastsys:=genfile.readinteger('last','last',0);
  db:=GenFile.ReadString('Db','Db','');
  GenFile.Free;
  SetDataBase(db,SerVerName);
  myd.free;
{  if GsnFrm.cbTInst.Checked then
    begin
      InstQry:=TADOQuery.Create(Application);
      ss:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;';
      ss1:='Initial Catalog='+'NorthWind'+';';
      ss2:='Data Source='+SerVerName;
      ss:=ss+ss1+ss2;
      InstQry.ConnectionString:=ss;
      InstQry.Sql.Text:='Restore Database SalDataBase79 From Disk='+''''+AppPath+'\Data.bak'+'''';
      InstQry.ExecSql;
      InstQry.Free;
      GsnFrm.cbTInst.checked:=false;
      GsnFrm.cbTInst.refresh;
      GsnFrm.BitBtn2Click(Nil);
      Goto 12;
    end;}
  LetPic:=Timage.Create(self);
end;

procedure TDabData.DabDataDestroy(Sender: TObject);
begin
   LetPic.free;
end;

procedure TDabData.SetDataBase(Dbn,SrvN:string);
var ss,ss1,ss2  :string;
begin
  ADoc.Connected:=false;
  ss:='Provider=SQLOLEDB.1;password=ladyofrings;Persist Security Info=true;User ID=sima2;';
  ss1:='Initial Catalog='+DbN+';';
  ss2:='Data Source='+SrVN;
  ss:=ss+ss1+ss2;
  ADoc.ConnectionString:=ss;
end;
procedure TDabData.quMbillAfterScroll(DataSet: TDataSet);
begin
end;


//----------------------------------By Mahdy Merry :BEGIN-----------------------
procedure TDabData.quCSTypeAfterScroll(DataSet: TDataSet);
begin
end;
//----------------------------------By Mahdy Merry :End ------------------------



//----------------------------------By Mahdy Merry :BEGIN-----------------------
procedure TDabData.quTrAidAfterScroll(DataSet: TDataSet);
begin
end;
//-----------------------------------By Mahdy Merry :END -----------------------


procedure TDabData.quLawAfterScroll(DataSet: TDataSet);
var
 Msg : TMessage;
begin
 Msg.Msg:=F_SCROLL;
 Msg.LParam:=1;
 Application.MainForm.Dispatch(Msg);
end;

function TDabData.DelSpace(tempStr: string): String;
var  i,j:integer;
     St :String;
begin
   St:= Trim(tempStr);
   j := Length(St);
   i :=1;
   While i < j do
   begin
     if St[i] =' ' then
     begin
        Delete(St,i,1);
        i:= i-1;
        j:= Length(St);
     end;
     i:= i+1;
   end;
   DelSpace := St;
end;

function TDabData.CorrectStr(tempStr: string): String;
var  i,j:integer;
     St :String;
begin
   St:= Trim(tempStr);
   j := Length(St);
   i :=1;
   While i < j do
   begin
     if St[i] =' ' then
        begin
           if St[i+1]= ' '
             then
             begin
                Delete(St,i,1);
                i:=i-1;
                j:= Length(St);
             end;
        end;
     i:= i+1;
   end;
   CorrectStr := St;
end;

procedure TDabData.SmallintField2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
end;

{procedure TDabData.QuProcedureVCodeGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if quProcedures.RecNo<1 then
            Text:=''
          else
     Text := IntToStr(quProcedures.RecNo);

end;}

procedure TDabData.QuProceduresAfterScroll(DataSet: TDataSet);
var
  Mes: TMessage;
begin
   Mes.Msg := F_Scroll;
   Application.MainForm.Dispatch(Mes);
end;

{procedure TDabData.quDetInstVRowGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if quDetInst.RecNo < 1 then
            Text := ''
          else
     Text := 'ÈäÏ  ' + IntToStr(quDetInst.RecNo);
end;}

procedure TDabData.quDetInstAfterScroll(DataSet: TDataSet);
var
  Mes: TMessage;
begin
   Mes.Msg := F_Scroll;
   Application.MainForm.Dispatch(Mes);

end;

procedure TDabData.quSubByLawAfterScroll(DataSet: TDataSet);
var
 Msg : TMessage;
begin
 Msg.Msg:=F_SCROLL;
 Msg.LParam:=2;
 Application.MainForm.Dispatch(Msg);
end;

procedure TDabData.quInstAfterScroll(DataSet: TDataSet);
var
  Mes: TMessage;
begin
   Mes.Msg := F_Scroll;
   Application.MainForm.Dispatch(Mes);

end;

{procedure TDabData.quDetInstAfterScroll(DataSet: TDataSet);
var
  Mes: TMessage;
begin
   Mes.Msg := F_Scroll;
   Application.MainForm.Dispatch(Mes);

end;}

procedure TDabData.quSubProcAfterScroll(DataSet: TDataSet);
var
 Mes: TMessage;
begin
   Mes.Msg := F_Scroll;
   Application.MainForm.Dispatch(Mes);

end;


procedure TDabData.SetServer;
var
  Qu:TAdoQuery;
  Wd:Cardinal;
  S:Pchar;
begin
    wd:=20;
    GetMem(S,20);
    GetComputerName(S,Wd);
    qu:=TADOQuery.Create(self);
    qu.Connection:=DabData.ADOC;
    Qu.Close;
    Qu.SQL.Text:='insert into tvhost values('''+ s+''')';
    Qu.ExecSQL;
    Qu.Free;
    freemem(S);
end;
procedure TDabData.DelServer;
var
  Qu:TAdoQuery;
  Wd:Cardinal;
  S:Pchar;
begin
    wd:=20;
    GetMem(S,20);
    GetComputerName(S,Wd);
    qu:=TADOQuery.Create(self);
    qu.Connection:=DabData.ADOC;
    Qu.Close;
    Qu.SQL.Text:='Delete From tvhost where Hostname='''+s+'''';
    Qu.ExecSQL;
    Qu.Free;
    freemem(S);
end;

procedure TDabData.quempAfterScroll(DataSet: TDataSet);
var
  Ms : TMessage;
begin
      Ms.Msg := F_SCROLL;
      Application.MainForm.Dispatch(Ms);

end;

procedure TDabData.quCountryAfterScroll(DataSet: TDataSet);
var
  Ms : TMessage;
begin
      Ms.Msg := F_SCROLL;
      Application.MainForm.Dispatch(Ms);

end;
   {
procedure TDabData.setcolors(a: tform);
var
i:integer;
begin
 for i:=0 to a.ComponentCount-1 do
  begin
//   if (a.Components[i] is TRSlButton).Caption ='áÛæ' then buttonType:=btCancel;
   if (a.Components[i] is tpanel) then
    if (a.Components[i] as TPanel).Tag<>1010 then
      (a.Components[i] as tpanel).Color:=$00DFBDBD;
 {  if (a.Components[i] is tdbgrid) then
   begin
    (a.Components[i] as tdbgrid).FixedColor:=$00C08080;
    (a.Components[i] as tdbgrid).TitleFont.Color := clYellow ;
   end;
  end;
  a.color:=$00dfbdbd;
end;
    }
procedure TDabData.ShowPopupMessageSmall(Msg: string);
begin
//   if(IsInDebug) then
   begin
     DabData.MSNPopUp1.Font.Size:=8;
     DabData.MSNPopUp1.Font.Style:=[];
     ShowPopupMessage(MSg);
     DabData.MSNPopUp1.Font.Style:=[fsBold];
     DabData.MSNPopUp1.Font.Size:=10;
   end;
  // AddLog(Msg);
end;
procedure TDabData.ShowPopupMessage(Msg : string);
begin
   MSNPopUp1.Text:=Msg;
   MSNPopUp1.ShowPopUp;
end;
function  TDabData.disp_date:String;
begin
 if ADOC<>nil then
    result:=fdate.disp_date(ADOC);
end;
end.
