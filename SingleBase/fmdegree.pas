unit fmdegree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ComCtrls,define,db,dbTables, StdCtrls, ADODB, ExtCtrls,
  SetForm, RSqlButton, RSqlEdit;
type
  TDegre = class(TForm)
    dbgrid1: TDBGrid;
    quUpdate: TADOQuery;
    quInsert: TADOQuery;
    dsdegree: TDataSource;
    Panel1: TPanel;
    quDelete: TADOQuery;
    edLName:TRSqlEdit;
    edLCode:TRSqlEdit;
    btOK:TRSqlButton;
    btCancle:TRSqlButton;
FormInitializer1 : TFormInitializer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrid1Enter(Sender: TObject);
    procedure btCancleClick(Sender: TObject);
    procedure edLCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edLCodeChange(Sender: TObject);
    procedure edLNameChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
     function checkNull(tempstr : string):boolean;
     procedure ClearFields;
     procedure EnableFields(f:boolean);
     procedure Delete();
     procedure check();
     function  CheckNoDuplicate(tempStr : string):Boolean;
     function  PassPreCondition: Boolean;
   { Private declarations }
  PROTECTED
    procedure DoNew(var mes :TMessage);message F_NEW;
    procedure DoEdit(var mes :TMessage);message F_EDIT;
    procedure Doscroll(var mes :TMessage);message F_scroll;
    procedure DoDelete(var mes :TMessage);message F_DEL;
  public
    mde       :integer;
    { Public declarations }
  end;

var
  Degre: TDegre;
    bm:tbookmark;

implementation

uses DabDmdle,fmElam;

{$R *.DFM}



procedure TDegre.EnableFields(f:boolean);
 begin
   panel1.Enabled:=f ;
   panel1.Refresh;
   btok.Enabled:=f;
 end;

 procedure TDegre.DoNew(var mes :TMessage);
begin
if mde=0 then
 mde:=1;
 panel1.visible := true;
 //edLName.Color:=clrequiredfield;
 //edLCode.Color:=cldisabledfield;
 ClearFields;
 EnableFields(True);
 edLCode.enabled:= false;
 edLName.SetFocus;
 edLCode.text := '*'   ;
 btOK.Enabled:=false;
 end;

procedure TDegre.DoEdit(var mes :TMessage);
begin
if (mde=0) and (edLCode.text<>'') and (dabdata.quDegree.RecordCount <> 0)  then
begin
 mde:=2;
 panel1.Visible := true;
 //edLName.Color:=clrequiredfield;
 //edLCode.Color:=cldisabledfield;
 edLCode.enabled:=false;
 EnableFields(True);
 edLName.enabled:=true;
 edLName.SetFocus;
 btOK.Enabled:=true;
 end;
end;

procedure TDegre.DoScroll(var mes :TMessage);
begin
if (mde=0) then
   begin
     edLCode.text := inttostr(DabData.qudegreeCode.asinteger);
     edLName.text:=DabData.qudegreeDescr.asstring;
   end;
end;


procedure TDegre.DoDelete(var mes :TMessage);
begin
  if (Mde=0)  and (not(DabData.qudegree.eof )) and (edLCode.Text<>'')then
  begin
    Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
    Elam.showmodal;
    if Elam.bbOk.modalResult=mrOk then
    begin
      mde:=3;
      Delete();
    end;
  end;
end;



procedure TDegre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormDeactivate(nil);
  Action:=caFree;
end;

procedure TDegre.FormActivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_STATE;
   mes.Lparam:=86;
   Application.MainForm.Dispatch(mes);
end;

procedure TDegre.FormDeactivate(Sender: TObject);
var mes:TMessage;
begin
   mes.Msg:=FORM_DEACT;
   Application.MainForm.Dispatch(mes);
end;

procedure TDegre.dbgrid1KeyPress(Sender: TObject; var Key: Char);
var mes:TMessage;
begin
  if key='+' then
   begin
      mes.Msg:=F_NEW;
      DisPatch(mes);
   end;
if key='-' then
begin
  mes.Msg:=F_Del;
  DisPatch(mes);
end;
end;

procedure TDegre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var mes:Tmessage;
begin
  if (Shift=[ssShift]) then
   begin
    if key=117 then
     begin
       mes.Msg:=F_DEL;
       Dispatch(mes);
     end
   end
  else
    if key=117 then
      begin
        mes.Msg:=F_NEW;
        Dispatch(mes);
      end;
  if (Shift=[ssCtrl]) and (key=69) then
   begin
     mes.Msg:=F_EDIT;
     Dispatch(mes);
   end;
end;

procedure TDegre.btOKClick(Sender: TObject);
var
  bkm:Tbookmark;
begin
if PassPreCondition then
 case mde of
 1: begin      //begin 1
      if (edLName.text <> '') then
      begin
         DabData.qudegree.Last;
         quinsert.parameters[0].value:=inttostr((dabdata.qudegree.fieldbyname('Code').asinteger + 1));
         quinsert.parameters[1].value:=edLName.text;
         DabData.ADOC.BeginTrans;
         try
         begin
            quinsert.ExecSql;
            DabData.qudegree.close;
            DabData.qudegree.Open;
            EnableFields(false);
            mde:=0;
            DabData.ADOC.CommitTrans;
         end;
         except
            showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
            DabData.ADOC.RollbackTrans;
         end; //exception..
      end  //if..
      else
      begin
            showmessage2('„ﬁœ«—  ﬂ—«—Ì Ê«—œ ﬂ—œÂ «Ìœ');
            edLCode.text:='';
            edLName.text:='';
      end; //else..
      DabData.qudegree.close;
      DabData.qudegree.Open;
      EnableFields(false);
      panel1.visible := false;
      mde:=0;
   end;      //end 1
 2:begin
       bkm:=DabData.qudegree.GetBookmark;
       if (not(DabData.qudegree.IsEmpty)) then
       begin
              quUpdate.parameters[0].value:=edLName.text;
              quUpdate.parameters[1].value:=edLCode.text;
              DabData.ADOC.BeginTrans;
              try
                 begin
                  quUpdate.ExecSql;
                  mde:=0;
                  DabData.ADOC.CommitTrans;
                 end;
              except
                 showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
                 DabData.ADOC.RollbackTrans;
              end;
       end;  //if..
       EnableFields(false);
       DabData.qudegree.close;
       DabData.qudegree.open;
       DabData.qudegree.GotoBookmark(bkm);
       DabData.qudegree.freeBookmark(bkm);
       mde:=0;
   end; //2
 end;  //case..

     if mde=0 then
     begin
     end;
    panel1.visible := false;
end;

procedure TDegre.ClearFields;
 begin
   edLName.Clear;
   edLCode.Clear;
 end;

procedure TDegre.FormShow(Sender: TObject);
begin
   Top:=50;
   Left:=180;
  DabData.qudegree.close;
  DabData.qudegree.open;
  panel1.visible := false;
  mde:=0;
FormInitializer1.Execute;
end;



procedure TDegre.dbgrid1Enter(Sender: TObject);
begin
      mde:=0;
      btOk.Enabled:=false;
      panel1.visible:=false;
end;

procedure TDegre.btCancleClick(Sender: TObject);
begin
  btOk.enabled:=false;
  panel1.visible := false;
  mde:=0;
end;

procedure TDegre.edLCodeKeyPress(Sender: TObject; var Key: Char);
begin
 key:=DabData.CheckKey(key);

end;
(*This procedure Delete the choosen row*)
procedure TDegre.Delete();
begin
 if not(DabData.qudegree.IsEmpty) then
   begin
     DabData.ADOC.BeginTrans;
     try
     begin
       quDelete.parameters[0].value:= DabData.qudegreeCode.asstring;
       quDelete.ExecSql;
       DabData.qudegree.close;
       Dabdata.qudegree.open;
       DabData.ADOC.CommitTrans;
      end;
     except
       showmessage2('·ÿ›« œÊ»«—Â «„ Õ«‰ ﬂ‰Ìœ');
       DabData.ADOC.RollbackTrans;
     end;
   end;
  mde:=0;
 end;

 (*This procedure checks fields
 if they werenot empty the button willbe active*)

function TDegre.checkNull(tempstr : string):boolean;
var
 ch : char;
 flag : boolean;
begin
flag := false;
 if tempstr <> '' then
   for ch := tempstr[1] to tempstr[Length(tempstr)] do
     if ch <> char(ord(' ')) then
       flag := true;
  checkNull := flag;

end;


procedure TDegre.check();
begin
  if (edLCode.Text <> '') and (edLName.Text <> '') and (checknull(edlname.text)) then
      btOK.Enabled:=true
  else
    btOK.Enabled:=false;
  end;

procedure TDegre.edLCodeChange(Sender: TObject);
begin
 if (mde in [1,2])then
 check();
end;

procedure TDegre.edLNameChange(Sender: TObject);
begin

// if (mde in [1,2]) and  checknull(edLName.text) then
// check();
 if (edlcode.text <> '') and (edlname.text <> '') then
    btok.Enabled := true
  else
    btok.Enabled := false;
end;
//****************************************************************************
function  TDegre.CheckNoDuplicate(tempStr : string):Boolean;
var  i :integer;
     StText,StTableField :String;
begin
   if DabData.qudegree.RecordCount = 0 then CheckNoDuplicate := True
   else
   begin
      DabData.qudegree.First;
      StText := DabData.DelSpace(tempStr);
      for i:=1 to DabData.qudegree.RecordCount do
      begin
         StTableField := DabData.DelSpace(DabData.qudegreeDescr.AsString);
         if (StText = StTableField) and
            (not(mde=2)) then
         begin
            CheckNoDuplicate := False;
            exit;
         end;
         DabData.qudegree.Next;
      end;
      CheckNoDuplicate := True;
   end;
end;

//****************************************************************************
function TDegre.PassPreCondition: Boolean;
begin
   PassPreCondition := True;
   if not(CheckNoDuplicate(edLName.Text)) then
   begin
     showmessage2('«ÿ·«⁄«   ﬂ—«—Ì Ê«—œ ﬂ—œÂ «Ìœ');
     PassPreCondition := false;
  end
end;




procedure TDegre.Button1Click(Sender: TObject);
begin
if mde=0 then
 mde:=1;
 panel1.visible := true;
// edLName.Color:=clrequiredfield;
// edLCode.Color:=cldisabledfield;
 ClearFields;
 EnableFields(True);
 edLCode.enabled:= false;
 edLName.SetFocus;
 edLCode.text := '*'   ;
 btOK.Enabled:=false;
 end;


procedure TDegre.Button2Click(Sender: TObject);
begin
  if (Mde=0)  and (not(DabData.qudegree.eof )) and (edLCode.Text<>'')then
  begin
    Elam.lbstr.caption:='¬Ì« „«Ì· »Â Õ–› „Ì »«‘Ìœø';
    Elam.showmodal;
    if Elam.bbOk.modalResult=mrOk then
    begin
      mde:=3;
      Delete();
    end;
  end;

end;

end.
