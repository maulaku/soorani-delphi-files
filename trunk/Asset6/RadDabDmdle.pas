
unit RadDabDmdle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,DBTables, Db, ImgList,define, ADODB,inifiles,FARD,MSNPopUp;
type
  TRadDabData = class(TDataModule)
    ADOC: TADOConnection ;
    MSNPopUp1: TMSNPopUp;
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
    dcCat: TDataSource;
    quOrg: TADOQuery;
    quOrgOrg_Code: TIntegerField;
    quOrgOrg_Name: TStringField;
    quOrgOrg_Addr: TStringField;
    quOrgOrg_Mast_Code: TIntegerField;
    dsOrg: TDataSource;
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
    quCat: TADOQuery;
    quCatId: TIntegerField;
    quCatCatStr: TStringField;
    procedure DabDataCreate(Sender: TObject);
    procedure quDAB1AfterScroll(DataSet: TDataSet);
    procedure quLnoteAfterScroll(DataSet: TDataSet);
    procedure DabDataDestroy(Sender: TObject);
    procedure quTrnIntLet1AfterScroll(DataSet: TDataSet);
    procedure quGetIntLetAfterScroll(DataSet: TDataSet);
    procedure quGetIntErAfterScroll(DataSet: TDataSet);
    procedure quDabAfterScroll(DataSet: TDataSet);
    procedure quTrnIntLetAfterScroll(DataSet: TDataSet);
    procedure quLnoteIntAfterScroll(DataSet: TDataSet);
    procedure quGetErjaAfterScroll(DataSet: TDataSet);
    procedure quGetLetOwnAfterScroll(DataSet: TDataSet);
    procedure quPersnAfterScroll(DataSet: TDataSet);
    procedure quGroupAfterScroll(DataSet: TDataSet);
    procedure qudocAfterScroll(DataSet: TDataSet);
    procedure qubillAfterScroll(DataSet: TDataSet);
    procedure qumovementAfterScroll(DataSet: TDataSet);
    procedure qudocsendAfterScroll(DataSet: TDataSet);
    procedure qugoodsAfterScroll(DataSet: TDataSet);
    procedure qugoods_recAfterScroll(DataSet: TDataSet);
    procedure quMbillAfterScroll(DataSet: TDataSet);
    procedure qurec_detPriceGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
//    procedure InGridKeyPress(Key: Char);
{    procedure qugoodsAfterScroll(DataSet: TDataSet);}
    procedure ADOCBeforeDisconnect(Sender: TObject);
    procedure ADOCInfoMessage(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOCAfterConnect(Sender: TObject);


//******************************************************************************
  private
    { Private declarations }
  public
     SysVersion : integer;
     IsInXpMode,IsInDebug : Boolean;
     FName,Lname  :String[20];
     emp_no : String ;
     LetPic   :Timage;
     AppPath  :string;
     SerVerName :string;
     DataBaseN  :string;
     SalVar,MahVar     :integer;
     function  DelSpace(tempStr: string): String;
     function  checkkey(key : char) : char;
     procedure SetDataBase(Dbn,SrvN:string);
     procedure ShowPopupMessage(Msg:String);
     procedure ShowPopupMessageSmall(Msg:String);
     procedure ShowPopupMessageSelectView(Msg:String);
     procedure SendLog2DB;
     function  checkDate(str : string):boolean;
     function  CheckTime( MyTime : String): boolean ;
     function  disp_date:String ;

    { Public declarations }
  end;


var
  OrganizCode : string;
  OrganizName : string;
  MasterOrganizName : string;
  RadDabData : TRadDabData;
  fDate : TFar_date;
implementation

uses fmGsnFrm,  UCommon, UUserMsg, UFmShMsg;

{$R *.DFM}


function TRadDabData.checkkey(key : char) : char;
 begin
  if (ord(key) < 48) or (ord(key) > 57) then
   if(ord(key) <> 8) then
       key := #0;
    checkkey := key;
 end;




function TRadDabData.checkDate(str : string):boolean;
var
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


procedure TRadDabData.DabDataCreate(Sender: TObject);
var GenDataFile,GenFile    :TiniFile;
    label 12;
begin
  ADOC.Connected:=False;
  ADOC.ConnectionString:='';
12:
  AppPath:=ActivePath;
  GenFile:=TiniFile.Create(fullIniPath);
  SalVar:=strtoint(GenFile.ReadString('Sal','CurrentSal',copy(disp_date,1,2)));
  MahVar:=GenFile.Readinteger('Mah','CurrentMah',0);
  GenFile.Free;
  GenDataFile:=TiniFile.Create(fullIniPath);
  SerVerName:=GenDataFile.ReadString('Connection','SERVER','');
  DataBaseN:=GenDataFile.ReadString('Connection','db','');
  OrganizCode:=GenDataFile.ReadString('Organization','AmvOrg','1');
  MasterOrganizName:=GenDataFile.ReadString('Organization','MasterOrganizName','æÒÇÑÊ ßÔæÑ');
  GenDataFile.Free;
  SetDataBase(DataBaseN,SerVerName);
  if ADOC.ConnectionString='' then
  begin
   AddLog('ConnectionString is Null');
   Exit;
  end;
  ADOC.Connected:=True;
  ADOC.KeepConnection:=True;
  LetPic:=Timage.Create(self);
  quOrg.Close;
  quOrg.Parameters[0].Value:=StrToInt(OrganizCode);
  quOrg.Open;
  OrganizName:=quOrgOrg_Name.Value;
end;

procedure TRadDabData.quDAB1AfterScroll(DataSet: TDataSet);
var  mes :TMessage;
begin
  mes.Msg:=NEXT_LET;
  Application.MainForm.Dispatch(mes);
end;

procedure TRadDabData.quLnoteAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
   mes.Msg:=CHN_FILES;
   mes.LParam:=CHN_SAD;
   Application.MainForm.dispatch(mes);
end;
procedure TRadDabData.DabDataDestroy(Sender: TObject);
begin
   LetPic.free;
end;

procedure TRadDabData.quTrnIntLet1AfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN;
  Application.MainForm.dispatch(mes);
end;

procedure TRadDabData.quGetIntLetAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN1;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quGetIntErAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN2;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.SetDataBase(Dbn,SrvN:string);
var ss,ss1,ss2  :string;
begin
  if((Dbn='') or (SrvN='')) then
  begin
    AddLog('Server Name or database name Is Null ');
    Exit;
  end;
  ADoc.Connected:=false;
//  ss:='Provider=SQLOLEDB.1;password=ladyofrings;Persist Security Info=true;User ID=sima2;';
  ss:='Provider=SQLOLEDB.1;Persist Security Info=false;User ID=sa;';
  ss1:='Initial Catalog='+DbN+';';
  ss2:='Data Source='+SrVN;
  ss:=ss+ss1+ss2;
  ADoc.ConnectionString:=ss;
end;
//*****************************************************************************
procedure TRadDabData.quDabAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=NEXT_LET;
  Application.MainForm.Dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quTrnIntLetAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quLnoteIntAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
   mes.Msg:=CHN_FILES;
   mes.LParam:=CHN_INT;
   Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quGetErjaAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CHN_RN2;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quGetLetOwnAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
  mes.Msg:=CHN_FILES;
  mes.LParam:=CRD_VRD;
  Application.MainForm.dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quPersnAfterScroll(DataSet: TDataSet);
var mes:TMessage;
begin
     mes.Msg:=SCROLL;
     mes.Lparam:=SCROLL_HOKM;
     Application.MainForm.Dispatch(mes);
end;
//*****************************************************************************
procedure TRadDabData.quGroupAfterScroll(DataSet: TDataSet);
begin
{  if quGroup.recordcount>0 then
    begin
      quCategory.close;
      quCategory.params[0].asinteger:=quGroupGrpCode.asinteger;
      quCategory.open;
    end;}
end;
//*****************************************************************************
procedure TRadDabData.qudocAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TRadDabData.qubillAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TRadDabData.qumovementAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TRadDabData.qudocsendAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TRadDabData.qugoodsAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TRadDabData.qugoods_recAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
procedure TRadDabData.quMbillAfterScroll(DataSet: TDataSet);
var Ms:TMessage;
begin
     Ms.Msg:=F_SCROLL;
     Application.MainForm.Dispatch(Ms);
end;
//*****************************************************************************
function TRadDabData.CheckTime( MyTime : String): boolean ;
var
  Hour , Minut:string;
  checkString :String ;
begin
 Hour :=  copy( MyTime,0,2);
 Minut := copy( MyTime,4,2);
 CheckString := copy(MyTime ,5,1);

 if (Hour < '24')and (Minut <'59')and(CheckString <> ' ') then
    CheckTime := True
 else
    CheckTime := false ;
end;
//*****************************************************************************
procedure TRadDabData.qurec_detPriceGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if  Sender.DataSet.Fields[2].AsFloat * sender.DataSet.Fields[4].AsFloat <> 0
       then  Text := FloatToStr(Sender.DataSet.Fields[2].AsFloat
                    * sender.DataSet.Fields[4].AsFloat)
       else   Text :=''
end;
//****************************************************************************
procedure TRadDabData.ShowPopupMessage(Msg: String);
begin
   MSNPopUp1.Text:=Msg;
   MSNPopUp1.ShowPopUp;
end;
procedure TRadDabData.ShowPopupMessageSmall(Msg: String);
begin
   if(IsInDebug) then
   begin
     MSNPopUp1.Font.Size:=8;
     MSNPopUp1.Font.Style:=[];
     MSNPopUp1.Text:=Msg;
     MSNPopUp1.ShowPopUp;
     MSNPopUp1.Font.Style:=[fsBold];
     MSNPopUp1.Font.Size:=10;
   end;
   AddLog(Msg);
end;

procedure TRadDabData.ShowPopupMessageSelectView(Msg: String);

begin
   if(IsInDebug) then
   begin
     MSNPopUp1.Width:=500;
     MSNPopUp1.Height:=150;
     MSNPopUp1.Font.Size:=8;
     MSNPopUp1.Font.Style:=[];
     MSNPopUp1.Text:=Msg;
//     MSNPopUp1.Shod

  end;
end;
function TRadDabData.DelSpace(tempStr: string): String;
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

procedure TRadDabData.SendLog2DB;
var
  fullPath:String;
  tmp:OleVariant;
begin
  if(emp_no='') then exit;

  fullPath:=fullLogPath;
  quInsertLog.Parameters[0].Value:=emp_no;
  if(FileExists(fullPath)) then
  begin
     quInsertLog.Parameters[1].LoadFromFile(fullPath,quInsertLog.Parameters[1].DataType);
  end
  else
   quInsertLog.Parameters[1].value:='File Not exist';
  try
    quInsertLog.Prepared:=True;
    quInsertLog.ExecSQL;
    if(FileExists(fullPath)) then  DeleteFile(fullPath);
  except;
    try
      tmp:='äÔÏ';
      quInsertLog.Parameters[1].ParameterObject.Set_Value(tmp);
      quInsertLog.ExecSQL;
    except
    end;
  end;
end;



procedure TRadDabData.ADOCBeforeDisconnect(Sender: TObject);
var quDelete:TADOQuery;
begin
  quDelete:=TADOQuery.Create(self);
  quDelete.Connection:=ADOC;
  quDelete.SQL.clear;
  quDelete.SQL.Text:='Delete Tbl_AmvalUsers where spid=@@SPID';
  quDelete.ExecSQL;
  quDelete.Destroy;
end;

procedure TRadDabData.ADOCInfoMessage(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  ShowPopupMessageSmall(Error.Description);
end;

procedure TRadDabData.ADOCAfterConnect(Sender: TObject);
begin
  ShowPopupMessageSmall('äÓÎå äÑã ÇÝÒÇÑ ÊãÇÓ ÈÇ ÇíÇå ÏÇÏå ->'+ADOC.Version);
end;
function TRadDabData.disp_date:String;
begin
 if fDate=nil then fdate:=TFar_date.Create(Application);
 result:=fdate.disp_date(ADOC);
end;

end.
