unit UCommon;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  filectrl,inifiles,fard,Variants,DBCtrls,Menus,buttons,ppCtrls,ppReport;
//---------------------------------------------------------
//---------------------------------------------------------
// To cenralize the child forms
type
  TComponents= array of TComponent;
  TmpStrings=array of String;
const

  XX_MainForm_ClientHeight  = 481 ;
  XX_MainForm_ClientWidth   = 710 ;

  clActiveGridColor    = $00FFE8F8;//$00FCCD2C;
  clDeactiveGridColor  = CL3DLIGHT;//$00AAF9A4;

  clDeactiveFieldColor = $00FDD6BD;//$00EEEEEE;
  clActiveFieldColor   = CLinfobk;//clYellow;
  clOptionalFieldColor = clWHITE;

  //OrganizCode           = 1;
   ArshadPass          = 'poiuuiop';//bah4490
   tempExcp=' «‘ﬂ«·'+
             '<-%Message%->'+
             ' œ— ›—„ '+
             '"%Caption%"'+
             ' !„‘«ÂœÂ ‘œ '+
             '"%Name%"';
   tempForm=' ›—„:'+
             '<-%Caption%->'+
             ' »« ‰«„'+
             '"%Name%"';
   tempIns='œ—Ã';
   tempEdt='ÊÌ—«Ì‘';
   tempDel='Õ–›';
Const
  HelpPath = '..\Help\';
  logFileName           ='.log';
  iniFileName           ='.ini';
  imageFileName         ='.jpg';
  logExceptFileName     ='Except.Log';
  FkExceptionErrorCode  = -2147217873;
//---------------------------------------------------------
   Antique_Code     = 1 ;
   Museum_Code      = 2 ;
   Stamp_Code       = 3 ;
   Transport_Code   = 4 ;
   Medical_Code     = 5 ;
   Machin_Code      = 6 ;
   Book_Code        = 7 ;
   Textile_Code     = 8 ;
   Lens_Code        = 9 ;
   Taxidermy_Code   = 10;
   Diskette_Code    = 11;
   Animal_Code      = 12;
   Inconsum_Code    = 13 ;
//---------------------------------------------------------
  {
   true if str1 = atleast one char <> space
   else false
unit UCommon;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  filectrl,inifiles,DBCtrls,Menus,ppCtrls,buttons,Variants;
//---------------------------------------------------------
//---------------------------------------------------------
// To cenralize the child forms
type
  TComponents= array of TComponent;
  TmpStrings=array of String;
const

  XX_MainForm_ClientHeight  = 481 ;
  XX_MainForm_ClientWidth   = 710 ;

  clActiveGridColor    = $00FFE8F8;//$00FCCD2C;
  clDeactiveGridColor  = CL3DLIGHT;//$00AAF9A4;

  clDeactiveFieldColor = $00FDD6BD;//$00EEEEEE;
  clActiveFieldColor   = CLinfobk;//clYellow;
  clOptionalFieldColor = clWHITE;

  //OrganizCode           = 1;
   ArshadPass          = 'poiuuiop';//bah4490
   tempExcp=' «‘ﬂ«·'+
             '<-%Message%->'+
             ' œ— ›—„ '+
             '"%Caption%"'+
             ' !„‘«ÂœÂ ‘œ '+
             '"%Name%"';
   tempForm=' ›—„:'+
             '<-%Caption%->'+
             ' »« ‰«„'+
             '"%Name%"';
   tempIns='œ—Ã';
   tempEdt='ÊÌ—«Ì‘';
   tempDel='Õ–›';
  logFileName           ='.log';
  iniFileName           ='.ini';
  imageFileName         ='.jpg';
  logExceptFileName     ='Except.Log';
  FkExceptionErrorCode  = -2147217873;
//---------------------------------------------------------
   Antique_Code     = 1 ;
   Museum_Code      = 2 ;
   Stamp_Code       = 3 ;
   Transport_Code   = 4 ;
   Medical_Code     = 5 ;
   Machin_Code      = 6 ;
   Book_Code        = 7 ;
   Textile_Code     = 8 ;
   Lens_Code        = 9 ;
   Taxidermy_Code   = 10;
   Diskette_Code    = 11;
   Animal_Code      = 12;
   Inconsum_Code    = 13 ;
//---------------------------------------------------------
  {
   true if str1 = atleast one char <> space
   else false
  }
  function  DelSpace(tempStr : string):String;
  function  CorrectStr(tempStr : string):String;
  function  CheckNull(tempstr: string): boolean;
  function  CheckStrNull(const str1 : string):boolean;
  function  activePath:String;
  function  fullLogPath:String;
  function  fullCmdPath:String;
  function  fullImagePath:String;
  function  fullIniPath:String;
  function  fullExceptLogPath:String;
  function  windowsPath:String;
  function  GetFirstDataSoure(MainForm:TForm):TDataSource;
  function  DoException(Parameter: Pointer): Integer;
  function FindComponents(Sender:TComponent;RetType:TClass ):TComponents;
  procedure SetCaption(Sender: TObject);
  procedure CheckEscEnter(sender: TObject; Skey: char ;  Ok ,Cancel : TButton);
  Procedure AddLog(logText:String);
  Procedure AddExceptLog(logText:String);
  Procedure SetFocusNextObject( Sender:TObject ) ;
  Procedure ProcessComponents( Sender:TComponent ) ;
  procedure SetActives(c1:TDBGrid;var c2:TDBGrid;var c3:TADODataSet);
  function GetTableNames(query:String):TmpStrings;
  function GetFirstWord(Pos:Integer; Statement:String):String;
  function CheckRequired(Plan:TWinControl):Boolean;
  function ErrorRequired(Ctrl:TWinControl):Boolean;
  function WriteIntoIniFile(const Section:String;const Ident:String;const value:String):String;
  function ReadFromIniFile(const Section:String;const Ident:String;const Default:String):String;
  function CreateLabel(Sender:TWinControl;Caption:String):TLabel;
  function GetProductInformation(Const variable:String):String;
  function ShowInputDialog(title:String ;Caption:String;Default:String):String;
  procedure LabelOnClick(Sender:TObject);
{  procedure CheckGridKeyPress( Sender: TForm; var Key: Char);}
  procedure ValueToLabels(Frm: TForm;L1,L2,L3:TppLabel;State:integer);
  procedure CheckPrintPage(var ppReport:TppReport);
//---------------------------------------------------------
//---------------------------------------------------------
implementation
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
procedure SetCaption(Sender: TObject);
var CapText:String;
  i:Integer;
  CountSpace:Integer;
  MovingFront:Integer;
  CapTextWidth:Integer;
  MyCanvas:TControlCanvas;
  SenderFrm:TForm;
begin
  if Sender is TForm then
    SenderFrm:= TForm(Sender)
  else
    Exit;
  MyCanvas := TControlCanvas.Create;
  MyCanvas.Control:=SenderFrm;
  MyCanvas.Font.Name:='MS Sans Serif (Arabic)';
//  MyCanvas.Font.Size:=8;
  MyCanvas.Font.Style:=[fsBold];
//  ShowDebugMessage(MyCanvas.Font.Name);
  CapText:=Trim(SenderFrm.Caption);
  CapTextWidth:=MyCanvas.TextWidth(CapText);
  MovingFront:=Trunc((SenderFrm.Width-CapTextWidth)/2);
  CountSpace:=Trunc(MovingFront/MyCanvas.TextWidth(' '));
  for i:=0 to CountSpace do
     CapText:=' '+CapText;
 { while(MyCanvas.TextWidth(CapText)<(Trunc(Width/2)+CapTextWidth)) do
     CapText:=' '+CapText;
//  CapText:='          '+CapText; }
  SenderFrm.Caption:=CapText ;
end;
Procedure SetFocusNextObject( Sender:TObject ) ;
  Var Msg : TWMKeyDown ;
      T:TWinControl ;
Begin T := TWinControl( Sender ) ;
      Msg.Msg := CN_KeyDown ;
      Msg.CharCode := VK_TAB ;
      T.Dispatch( Msg ) ;
End ;
function CheckStrNull(const str1 : string):boolean;
var
  i:integer;
begin
  CheckStrNull := false;

  if str1 = '' then
    exit;

  for i:=1 to length( str1) do
    if str1[i] <> ' ' then
    begin
      CheckStrNull :=True;
      exit;
    end;  // if ch <> ''

end;
//---------------------------------------------------------
function CheckNull(tempstr: string): boolean;
var  i:integer;
begin
   CheckNull := false;
   if tempstr <> '' then
      for i:=1 to length( tempstr) do
         if tempstr[i] <> ' ' then
         begin
            CheckNull :=True;
            exit;
         end;  // if ch <> ''
end;
//---------------------------------------------------------
function  CorrectStr(tempStr : string):String;
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
//---------------------------------------------------------
function DelSpace(tempStr: string): String;
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
//************************************************************************
procedure CheckEscEnter(sender: TObject; Skey: char ;  Ok ,Cancel : TButton);
const
   CodeEnter = #13;
   CodeESC   = #27;
begin
   if  ((SKey = CodeEnter) or (SKey = CodeESC)) then
   begin
      if SKey = CodeEnter then
      begin
         if OK.Enabled = True then  OK.OnClick(Sender);
      end
     else if SKey = CodeESC then  Cancel.OnClick(Sender);
   end;  // Main If
end;
{//**********************************************************************
procedure CheckGridKeyPress( Sender: TForm; var Key: Char);
var  mes : Tmessage;
begin
   Case Key of
     '+' : Begin Mes.Msg:= F_NEW;  Sender.Dispatch(mes); end;
     '-' : Begin Mes.Msg:= F_DEL;  Sender.Dispatch(mes); end;
     '*' : Begin Mes.Msg:= F_EDIT; Sender.Dispatch(mes); end;
   end;
end;}
//******************************************************************
procedure ValueToLabels(Frm: TForm;L1,L2,L3:TppLabel;State:integer);
begin
  case state of
  0: begin //All
       l1.Visible :=false;
       l2.Visible :=false;
       l3.Visible :=false;
     end;
  1 :Begin
       l1.Visible :=true;
       l2.Visible :=false;
       l3.Visible :=false;
     end;
  2 : begin
       l1.Visible :=true;
       l2.Visible :=true;
       l3.Visible :=false;
      end;
  3 : begin
       l1.Visible :=true;
       l2.Visible :=true;
       l3.Visible :=true;
      end;
  end;
end;
//****************************************************************************
Procedure AddLog(logText:String);
var logFile    :TextFile;
    Hour, Min, Sec, MSec: Word;
begin
   DecodeTime(Time, Hour, Min, Sec, MSec);
   AssignFile(logFile, fullLogPath);
   if FileExists(fullLogPath) then
     Append(logFile)
   else
     Rewrite(logFile);
   Writeln(logFile,'['+IntToStr(Hour)+':'+IntToStr(Min)+']->',trim(logText));
   CloseFile(logFile);
end;
//*****************************************************************
Procedure AddExceptLog(logText:String);
var logFile    :TiniFile;
    Hour, Min, Sec, MSec: Word;
begin
   DecodeTime(Time, Hour, Min, Sec, MSec);
   logFile:=TIniFile.Create(fullExceptLogPath);
   logFile.WriteString('«‘ﬂ«·« ','('+IntToStr(Hour)+':'+IntToStr(Min)+':'+IntToStr(Sec)+':'+IntToStr(MSec)+')->',trim(logText));
   logFile.Free;
end;
//*****************************************************************
function activePath:String;
var Myd        :TDirectoryListBox;
begin
   myd:=TDirectoryListBox.Create(nil);
   activePath:=myd.directory;
   myd.free;
end;
function windowsPath:String;
var tmp:PChar;
begin
   tmp:=AllocMem(256);
   GetWindowsDirectory(tmp,255);
   windowsPath:=tmp;
   FreeMem(tmp);
end;
function fullLogPath:String;
begin
   fullLogPath:=windowsPath+'\'+GetProductInformation('ProductName')+logFileName;
end;
function fullCmdPath:String;
begin
   fullCmdPath:=windowsPath+'\'+GetProductInformation('ProductName')+'c.ini';
end;
function fullImagePath:String;
begin
   fullImagePath:=activePath+'\'+GetProductInformation('ProductName')+imageFileName;
end;
function fullExceptLogPath:String;
begin
   fullExceptLogPath:=windowsPath+'\'+GetProductInformation('ProductName')+logExceptFileName;
end;
function GetFirstDataSoure(MainForm:TForm):TDataSource;
var i:integer;
begin
   GetFirstDataSoure:=nil;
   for i:=0 to MainForm.ComponentCount-1 do
   begin
     if(MainForm.Components[i].ClassName='TDataSource') then
     begin
        GetFirstDataSoure:=TDataSource(MainForm.Components[i]);
        break;
     end;
   end;
end;
function  DoException(Parameter: Pointer): Integer;
var x:Cardinal;
  tmpForm:TForm;
  e:Exception;
  msgError:String;
  i:integer;
  tmpScrean:TScreen;
  tmpHnd:HWnd;
  ClassName:PChar;
begin
  tmpHnd:=0;
  if(Parameter=nil) then  exit;
     e:=Exception(Parameter);
  if(Pos('Connection',e.Message)>0) then
  begin
    x:=1;
    ShowMessage('œ” Ê— Œ—ÊÃ «“ »—‰«„Â  Ê”ÿ ﬂ«—»— «’·Ì »—«Ì ‘„«');
    ExitProcess(x);
  end
  else
  begin
     msgError:=StringReplace(msgError,'%Message%',e.Message,[]);
     tmpForm:=Screen.ActiveForm;
     if tmpForm=nil then
         tmpForm:=TScreen.Create(Application).ActiveForm;
     if tmpForm=nil then
         tmpHnd:=GetTopWindow(tmpHnd);
     if tmpHnd<>NULL  then
     begin
       ClassName:=AllocMem(101);
       GetClassName(tmpHnd,ClassName,100);
        msgError:=StringReplace(msgError,'%Name%',ClassName,[]);
       GetWindowText(tmpHnd,ClassName,100);
        msgError:=StringReplace(msgError,'%Caption%',ClassName,[]);
        SysFreeMem(ClassName);
     end
     else if tmpForm=nil then
     begin
        msgError:=StringReplace(msgError,'%Caption%','',[]);
        msgError:=StringReplace(msgError,'%Name%','',[]);
     end
     else if tmpForm.ClassName='TMFrm' then
     begin
       while(tmpForm.ActiveMDIChild=nil) do
       begin
         inc(i);
         ShowMessage(IntToStr(i));
         if i>2000 then
           break;
       end;
       tmpForm:=tmpForm.ActiveMDIChild;
       if tmpForm=nil then
         ShowMessage('tmpForm Is Nil');
     end;
     if tmpForm<>nil then
     begin
        msgError:=StringReplace(msgError,'%Caption%',trim(tmpForm.Caption),[]);
        msgError:=StringReplace(msgError,'%Name%',tmpForm.Name,[]);
     end;
     AddExceptLog(msgError);

  end;
end;

Procedure ProcessComponents( Sender:TComponent ) ;
var
i,j:integer;
begin
 with Sender Do
 begin
   for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TDBLookupComboBox) then
        TDBLookupComboBox(Components[i]).NullValueKey:=TextToShortCut('BkSp');
      if (Components[i] is TComboBox) then
      if (Components[i] as TComboBox).Color=$0080FFFF then
         (Components[i] as TComboBox).Color:=clinfobk;
      if (Components[i] is tpanel) then
      if (Components[i] as TPanel).Tag<>1010 then
         (Components[i] as tpanel).Color:=$00DFBDBD;
      if (Components[i] is TDBGrid) then
      if (Components[i] as tdbgrid).tag<>1010 then
      begin
        (Components[i] as tdbgrid).FixedColor:=$00DFBDBD;
        for j:= 0 to (Components[i] as tdbgrid).Columns.Count-1 do
        begin
          (Components[i] as tdbgrid).Columns.Items[j].Title.Font.Color:= clYellow;
          (Components[i] as tdbgrid).Columns.Items[j].Title.Color:= $00c08080;
        end;
      end;
   end;
   if Sender is TForm then
    if tag<>1010 then TForm(Sender).Color:=$00dfbdbd;
  end
end;
function FindComponents(Sender:TComponent;RetType:TClass ): TComponents;
var
  CountComp:Integer;
  retVal:TComponents;
  retCount:Integer;
begin
  retCount:=0;
  with Sender do
    for CountComp:=0 to  ComponentCount-1 do
      if Components[CountComp] is RetType then
      begin
          SetLength(retVal, retCount+1);
          retVal[retCount]:=Components[CountComp];
          inc(retCount);
      end;
  Result:=retVal;
end;
procedure SetActives(c1:TDBGrid;var c2:TDBGrid;var c3:TADODataSet);
begin
  c3:=nil;
  c2:=c1;
  if c1.DataSource<>nil then
    if c1.DataSource.DataSet<>nil then
       if c1.DataSource.DataSet is TADODataSet then
         c3:=(c1.DataSource.DataSet as TADODataSet);


end;
function GetTableNames(query:String):TmpStrings;
var
 retval:TmpStrings;
 Pos1:Integer;
begin
  Pos1:=Pos(' FROM ',UpperCase(query));
  SetLength(retval,1);
  retval[0]:=GetFirstWord(Pos1+6,query);
  Result:=retval;
end;
function GetFirstWord(Pos:Integer; Statement:String):String ;
var
 i:Integer;
begin
   for i:=Pos+1 to Length(Statement) do
   begin
     if
       (Statement[i]=' ') or
       (Statement[i]='/') or
       (Statement[i]='\') or
       (Statement[i]=';') or
       (Statement[i]='(') or
       (Statement[i]=')') or
       (Statement[i]=',') or
       (Statement[i]=#13)
     then
     begin
      Result:=Trim(Copy(Statement,Pos,i-Pos));
      exit;
     end;
   end;
   Result:=Copy(Statement,Pos,Length(Statement)-Pos+1)
end;
function CheckRequired(Plan:TWinControl):Boolean;
var
 CtrlCount:Integer;
 TmpCtrl:TControl;
begin
 Result:=False;
  For CtrlCount:=0 to Plan.ControlCount-1 do
  begin
    TmpCtrl:=Plan.Controls[CtrlCount];
//    if TmpCtrl is TLabel then Continue;
    if (TmpCtrl is TDBEdit) then
    begin
      if TDBEdit(TmpCtrl).color=clMandatory then
         if TDBEdit(TmpCtrl).IsMasked then
           TDBEdit(TmpCtrl).ValidateEdit
         else
         if TDBEdit(TmpCtrl).Text='' then
            if ErrorRequired(TWinControl(TmpCtrl)) then
            begin
               Result:=True;
               Exit;
            end;
    end
    else if (TmpCtrl is TDBCheckBox) then
    begin
      if TDBCheckBox(TmpCtrl).color=clMandatory then
         if TDBCheckBox(TmpCtrl).Field.IsNull then
            if ErrorRequired(TWinControl(TmpCtrl)) then
            begin
               Result:=True;
               Exit;
            end;
    end
    else if (TmpCtrl is TDBLookupComboBox) then
    begin
      if TDBLookupComboBox(TmpCtrl).color=clMandatory then
         if TDBLookupComboBox(TmpCtrl).KeyValue=NULL then
            if ErrorRequired(TWinControl(TmpCtrl)) then
            begin
               Result:=True;
               Exit;
            end;
    end;
     if TmpCtrl is TWinControl then
//      if TmpCtrl is TPanel then
        if CheckRequired(TWinControl(TmpCtrl)) then
        begin
          Result:=True;
          Exit;
       end;
  end;
end;
function ErrorRequired(Ctrl:TWinControl):Boolean;
var
 Text:String;
begin
  Result:=False;
  if Ctrl.Enabled and Ctrl.Visible then
  begin
    if Ctrl.Parent<>nil then
    begin
      if Ctrl.Parent.Visible=False then
         Exit;
      if Ctrl.Parent.Parent<>nil then
        if Ctrl.Parent.Parent.Visible=False then
          Exit;
    end;
    try
       Ctrl.SetFocus;
       Result:=True;
    except
      Exit;
    end;
  end;
  if Result then
  begin
    if Ctrl is TDBCheckBox then
       Text:=TDBCheckBox(Ctrl).Caption
    else if Ctrl is TDBEdit then
       Text:=TDBEdit(Ctrl).DataField;
    Text:='›Ì·œÂ«Ì “—œ —‰ê —« ﬂ«„·« Å— ‰„«ÌÌœ  ›Ì·œ Œ«·Ì '+'"'+Text+'"';
    if Application.MainForm<>nil then
       SendMessage(Application.MainForm.Handle,RAD_SHOWMESSAGE,WPARAM(Pointer(Text)),1)
    else
      ShowMessage(Text)
  end;
end;
procedure LabelOnClick(Sender:TObject);
var
  LabelEditor:TEdit;
begin
  if Sender=nil then Exit;
  LabelEditor       :=TEdit.Create((Sender as TLabel).Owner);
  LabelEditor.Parent:=(Sender as TLabel).Parent;
  LabelEditor.Top   :=(Sender as TLabel).Top;
  LabelEditor.Left  :=(Sender as TLabel).Left;
  LabelEditor.Width :=(Sender as TLabel).Width;
  LabelEditor.Height:=(Sender as TLabel).Height;
end;
function CreateLabel(Sender:TWinControl;Caption:String):TLabel;
var
  SenderLabel:TLabel;
  TestOnClick :TNotifyEvent;
begin
  SenderLabel:=TLabel.Create(Sender.Owner);
  SenderLabel.Parent:=Sender.Parent;
  SenderLabel.Tag:=Sender.Tag;
  SenderLabel.Top:=Sender.Top;
  SenderLabel.Height:=Sender.Height;
  SenderLabel.Left:=Sender.Left+Sender.Width;
//  SenderLabel.Width:=100;
  @TestOnClick:=@LabelOnClick;
//  SenderLabel.OnClick:= TestOnClick;
  SenderLabel.OnDblClick:= TestOnClick;
  SenderLabel.Caption:=Caption;
end ;
function ShowInputDialog(title:String ;Caption:String;Default:String):String;
var
  tmpForm:TForm;
  tmpEdit:TEdit;
  tmpButton:TBitBtn;
begin
  tmpForm:=TForm.Create(Application);
  tmpForm.Width:=150;
  tmpForm.Height:=120;
  tmpForm.Caption:=title;
  tmpForm.Position:=poOwnerFormCenter ;
  with TLabel.Create(tmpForm) do
  begin
    top:=0;
    Left:=5;
    Caption:=Caption;
    Parent:=tmpForm;
  end;
  tmpEdit:=TEdit.Create(tmpForm);
  tmpEdit.Top:=20;
  tmpEdit.Left:=5;
  tmpEdit.Parent:=tmpForm;
  tmpEdit.Text:=Default;
//  tmpEdit.OnKeyDown:=tmpEditKeyDown;
  tmpButton:=TBitBtn.Create(tmpForm);
  tmpButton.Top:=tmpEdit.Top+tmpEdit.Height+1;
  tmpButton.Left:=5;
  tmpButton.Parent:=tmpForm;
  tmpButton.Kind:=bkOK;
  tmpButton.Caption:=' «ÌÌœ';
  tmpButton.Default:=true;
  tmpForm.ShowModal;
  ShowInputDialog:=tmpEdit.Text;
  tmpForm.Free;
  tmpForm:=nil;
end;
function ReadFromIniFile(const Section:String;const Ident:String;const Default:String):String;
var
    iniFile:TiniFile;
begin
 iniFile:=TiniFile.Create(fullIniPath);
 ReadFromIniFile:=iniFile.ReadString(Section,Ident,Default);
 iniFile.Free
end;
function WriteIntoIniFile(const Section:String;const Ident:String;const value:String):String;
var
    iniFile:TiniFile;
begin
 iniFile:=TiniFile.Create(fullIniPath);
 iniFile.WriteString(Section,Ident,value);
 iniFile.Free
end;
function  GetProductInformation(Const variable:String):String;
var
  S: string;
  n, Len: DWORD;
  Buf,Value: PChar;
begin
  S := Application.ExeName;
  n := GetFileVersionInfoSize(PChar(S), n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    GetFileVersionInfo(PChar(S), 0, n, Buf);
    VerQueryValue(Buf, PChar('\StringFileInfo\042904E8\'+variable), Pointer(Value), Len);
    Result:=Value;
    FreeMem(Buf, n);
  end;
end;
function  fullIniPath:String;
begin
  result:=windowsPath+'\'+GetProductInformation('ProductName')+iniFileName;
end;
procedure CheckPrintPage(var ppReport:TppReport);
var
  BorderRound:TppShape;
begin
  BorderRound:=TppShape.Create(ppReport);
  BorderRound.UserName:='ppChapeBorderRound';
  BorderRound.Pen.Width:=2;
  BorderRound.Shape:=stRoundRect;
  BorderRound.Band:=ppReport.TitleBand;
  BorderRound.Top:=0.01;
  BorderRound.Left:=0.1;
  BorderRound.Width:=7.6;
  BorderRound.SendToBack;
  ppReport.PrinterSetup.PaperWidth:=8.2707996368;
  if MessageDlg(' ç«Å —ÊÌ ﬂ«€– A5 ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ppReport.PrinterSetup.PaperHeight:=5.848949909;
    BorderRound.Height:=5.2;
  end
  else
  begin
    ppReport.PrinterSetup.PaperHeight:=11.697899818;
    BorderRound.Height:=10.75;
  end;
end;
end.  // unit UCommon;


