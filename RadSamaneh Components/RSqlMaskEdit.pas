unit RSqlMaskEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,SetForm,UnAllChange;

type
  TMaskEditType = (metNone,metDate,metTime);

  TRSqlMaskEdit = class(TMaskEdit)
  private
   FProvider : TFormInitializer;
   FMaskEditType : TMaskEditTYpe;
   FFieldType : TFieldType;
   procedure SetType (EType : TMaskEditType);
   procedure SetExit(sender:Tobject);
   procedure SetReqsArray(s : string);

  protected
   procedure WmChar (Var Mes : TWmChar);message Wm_Char;
   function CheckDate(Date :string) : string;
   function CheckTime(Ti : string) : string;
   procedure Change;override;

  public
   Mes : TMessage;
   Flag : Boolean;
   Reqs : array of integer;
   BlankChar : char;
   constructor Create (AOwner : TComponent);override;
   function IsTextValid : Boolean;
   procedure ValidateEdit; override;

  published
   property MaskEditType : TMaskEditType read FMaskEditType write SetType ;
   property FieldType  : TFieldType read FFieldType write FFieldType;
   property Provider : TFormInitializer read FProvider write FProvider;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TRSqlMAskEdit]);
end;

{ TRSqlMAskEdit }

procedure TRSqlMAskEdit.WmChar(var Mes: TWmChar);
begin
 if Mes.CharCode=13 then
  NextControl(TForm(Owner).Handle);

 inherited;

 if FMaskEditType=metDate then
  Text:=CheckDate(Text);

 if FMaskEditType=metTime then
  Text:=CheckTime(Text);
end;



function TRSqlMAskEdit.CheckDate(Date :string):string;
Var
 vtemp  : string;
begin
   if Date='' then
    begin
      Date:='';
      exit;
    end;
      vtemp:=Date;
      if   (copy(Date,1,1)<>' ') and (copy(Date,2,1)<>' ')
       and (copy(Date,4,1)<>' ') and (copy(Date,5,1)<>' ') then
         if (strtoint(copy(Date,4,2))>12) or (strtoint(copy(Date,4,2))<1)  then vtemp:='';

      if  (copy(Date,1,1)<>' ') and (copy(Date,2,1)<>' ')
         and (copy(Date,4,1)<>' ') and (copy(Date,5,1)<>' ')
         and (copy(Date,7,1)<>' ') and (copy(Date,8,1)<>' ') then
        case strtoint(copy(Date,4,2)) of
         1..6 :if (strtoint(copy(Date,7,2))>31) or (strtoint(copy(Date,7,2))<1) then vtemp:='';
         7..11:if (strtoint(copy(Date,7,2))>30) or (strtoint(copy(Date,7,2))<1) then vtemp:='';
           12 :if (strtoint(copy(Date,7,2))>29) or (strtoint(copy(Date,7,2))<1) then vtemp:='';
        end;
      CheckDate:=vtemp;
end;

procedure TRSqlMAskEdit.SetType(EType: TMaskEditType);
begin
if EType=metDate then
 begin
  EditMask:='00/00/00;1; ';
  BiDiMode:=bdLeftToRight;
 end;
{if EType=metNone then
 begin
  EditMask:='';
 end;}
if EType=metTime then
 begin
  EditMask:='!90:00;1; ';
 end;
SetReqsArray(EditMask);
FMaskEditType:=EType;
end;



constructor TRSqlMAskEdit.Create(AOwner: TComponent);
Var
 i : integer;
begin
  inherited;
  Flag:=False;
  Font.Name:='MS Sans Serif';
  Font.Size:=10;
  Font.Style:=[fsBold];
  OnExit:=SetExit;
  Width:=90;
end;



procedure TRSqlMAskEdit.Change;
begin
  inherited;
// if Pos(' ',Text)>0 then

 if Not IsTextValid then
 if Not(Flag) then
  begin
  Flag:=True;
  Mes.Msg:=Empty;
//  Text:='';
  end
   else Mes.Msg:=None;

// if Pos(' ',Text)=0 then
  if IsTextValid then
  if Flag then
  begin
  Flag:=False;
  Mes.Msg:=Full;
  end
   else Mes.Msg:=None;

 if FProvider<>nil then
   if ((FieldType=ftRequired) or (FieldType=ftKeyGo))then
    Provider.Dispatch(Mes);

 if FMaskEditType=metDate then
  Text:=CheckDate(Text);

 if FMaskEditType=metTime then
  Text:=CheckTime(Text);
end;

procedure TRSqlMAskEdit.SetExit(sender:Tobject);
begin
  if Not(IsTextValid) then
   begin
    Text:='';
    Change;
   end;
end;


procedure TRSqlMaskEdit.SetReqsArray(s: string);
Var
 i,Sum,j,Le :integer;
begin
 SetLength(Reqs,0);
 if s<>'' then
 begin
 BlankChar:=s[Length(s)];
 Sum:=0;
 j:=0;
 Le:=0;
 for i:=1 to Length(s)-1 do
  begin
   if Not(s[i] in ['!','\','<','>',';']) then
    begin
     j:=j+1;
     if s[i] in ['L','A','C','0'] then
      begin
       Le:=Le+1;
       SetLength(Reqs,Le);
       Reqs[Le-1]:=j;
      end;
    end;
  end;
 end;//Empty
end;

function TRSqlMaskEdit.IsTextValid: Boolean;
Var
 i : integer;
 r : boolean;
begin
 r:=True;
 for i:=0 to Length(Reqs)-1 do
  begin
//   if Text[Reqs[i]]=BlankChar then
   if Text[Reqs[i]]=' ' then
    begin
     r:=False;
     break;
    end;
  end;
 Result:=r;
end;


procedure TRSqlMaskEdit.ValidateEdit;
Begin
// Nothing To Do // Disabling Raising Exception //
end;

function TRSqlMaskEdit.CheckTime(Ti: string): string;
Var
 Tmp : string;
begin
 if Ti='' then
  begin
   Result:='';
   Exit;
  end;
 Tmp:=Ti;

 if (Copy(Ti,1,1)<>' ') and (Copy(Ti,2,1)<>' ') then
  if (StrToInt(Copy(Ti,1,2))>23) or (StrToInt(Copy(Ti,1,2))<1) then
   Tmp:='';

 if (Copy(Ti,1,1)<>' ') and (Copy(Ti,2,1)<>' ') and
  (Copy(Ti,4,1)<>' ') and (Copy(Ti,5,1)<>' ') then
    if (StrToInt(Copy(Ti,4,2))>59) or (StrToInt(Copy(Ti,4,2))<0) then
     Tmp:='';

 Result:=Tmp;
end;

end.
