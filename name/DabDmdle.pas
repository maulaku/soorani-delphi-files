unit DabDmdle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,DBTables, Db, ImgList,define,filectrl, ADODB,inifiles,Fard,
  MSNPopUp;
type
  TDabData = class(TDataModule)
    ADOC: TADOConnection;
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
    MSNPopUp1: TMSNPopUp;
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
    quInsertLog: TADOQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    LargeintField1: TLargeintField;
    spEmp: TADOStoredProc;
    spEmpEmp_no: TStringField;
    spEmpFlName: TStringField;
    dsEmp: TDataSource;
    dsOrgSearch: TADODataSet;
    dsOrgSearchOrg_Code: TIntegerField;
    dsOrgSearchOrg_Name: TStringField;
    daParameters: TADODataSet;
    daParametersPk_Key: TIntegerField;
    daParametersvertion: TStringField;
    daParametersCurrentYear: TSmallintField;
    daParametersMasterGroupLen: TSmallintField;
    daParametersDetailGroupLen: TSmallintField;
    daParametersItemLen: TSmallintField;
    daParametersOrganizCode: TSmallintField;
    daParametersMasterOrgName: TStringField;
    daParametersDetailOrgName: TStringField;
    dsOrg: TDataSource;
    quOrg: TADOQuery;
    quOrgOrg_Code: TIntegerField;
    quOrgOrg_Name: TStringField;
    quOrgOrg_Addr: TStringField;
    quOrgOrg_Mast_Code: TIntegerField;
    FontDialog1: TFontDialog;
    procedure DabDataCreate(Sender: TObject);
    procedure DabDataDestroy(Sender: TObject);
    procedure ADOCAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
     SysVersion : integer;
     MasterOrgName,DetailOrgName:String;
     LetCd :string;
     FName,Lname  :String[20];
     LetPic   :Timage;
     AppPath  :string;
     SerVerName :string;
     IsInXpMode,IsInDebug : Boolean;
     DataBaseN  :string;
     SalVar,MahVar     :integer;
     emp_no : String ;
     function checkkey(key : char) : char;
     procedure SetDataBase(Dbn,SrvN:string);
     function checkDate(str : string):boolean;
     procedure ShowPopupMessage(Msg : string);
     procedure ShowPopupMessageSmall(Msg : string);
     function  disp_date:String;

     { Public declarations }
  end;

var
  OrganizCode : string;
  OrganizName : string;
  MasterOrganizName : string;
  DabData : TDabData;
  fDate:TFar_date;
implementation

uses fmGsnFrm, UCommon;

{$R *.DFM}

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
    GenDataFile,GenFile    :TiniFile;
begin
  IsInDebug:=True;
  myd:=TDirectoryListBox.Create(self);
  AppPath:=myd.directory;
  GenFile:=TiniFile.Create(fullIniPath);
  SalVar:=strtoint(GenFile.ReadString('Year','CurrentYear',copy(fDate.disp_date(ADOC),1,2)));
  GenFile.Free;
  GenDataFile:=TiniFile.Create(fullIniPath);
  SerVerName:=GenDataFile.ReadString('Connection','SERVER','');
  DataBaseN:=GenDataFile.ReadString('Connection','DB','HRS');
  OrganizCode:=GenDataFile.ReadString('Organization','AmvOrg','1');
  MasterOrganizName:=GenDataFile.ReadString('Organization','MasterOrganizName','Ê“«—  ﬂ‘Ê—');
  GenDataFile.Free;
  SetDataBase(DataBaseN,SerVerName);
  myd.free;
  LetPic:=Timage.Create(self);
  dsOrgSearch.Close;
  dsOrgSearch.Open;
end;

procedure TDabData.DabDataDestroy(Sender: TObject);
begin
   LetPic.free;
end;

procedure TDabData.SetDataBase(Dbn,SrvN:string);
var ss,ss1,ss2  :string;
begin
  ADoc.Connected:=false;
  ss:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;';
  ss1:='Initial Catalog='+DbN+';';
  ss2:='Data Source='+SrVN;
  ss:=ss+ss1+ss2;
  ADoc.ConnectionString:=ss;
end;
procedure TDabData.ShowPopupMessage(Msg : string);
begin
   MSNPopUp1.Text:=Msg;
   MSNPopUp1.ShowPopUp;
end;
procedure TDabData.ShowPopupMessageSmall(Msg : string);
begin
   if(IsInDebug) then
   begin
     DabData.MSNPopUp1.Font.Size:=8;
     DabData.MSNPopUp1.Font.Style:=[];
     ShowPopupMessage(MSg);
     DabData.MSNPopUp1.Font.Style:=[fsBold];
     DabData.MSNPopUp1.Font.Size:=10;
   end;
   AddLog(Msg);
end;

procedure TDabData.ADOCAfterConnect(Sender: TObject);
begin
  spEmp.Close;
  spEmp.Open;
  daParameters.Close;
  daParameters.Open;
  MasterOrgName:=daParametersMasterOrgName.Value;
  DetailOrgName:=daParametersDetailOrgName.Value;
end;
function  TDabData.disp_date:String;
begin
// if ADOC<>nil then
 //   result:=Far_date.disp_date(ADOC);
end;

end.
