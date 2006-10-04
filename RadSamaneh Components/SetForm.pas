unit SetForm;

interface

uses
  Windows,Dialogs,StdCtrls, Messages, SysUtils, Classes, Graphics, Controls, Forms, UnAllChange,RSqlButton
  ,Variants;
type
  TFieldMode = (fmInsert,fmEdit,fmNone);
  TFieldType = (ftRequired,ftNonRequired,ftDisplay,ftSelective,ftNone,ftKeyGm,ftKeyGo);

  TFormInitializer = class(TComponent)
  private
    { Private declarations }
   FSelectiveColor,FRequiredColor,FNonRequiredColor,FDisplayColor : TColor;
   FSearchFocusables : boolean;
   FParent : TWinControl;
   FFieldMode : TFieldMode;
   RCount,SRcount : integer;
   procedure SetFieldMode (FMode : TFieldMode);
   procedure SetSf(Value : Boolean);
   function GetColor(CType : TFieldType;Mode : TFieldMode) : TColor;
   function GetEnable_Disable (CType : TFieldType;Mode : TFieldMode) : Boolean;
   function GetButtonEnable_Disable (ButtonType : TButtonType;Mode : TFieldMode) : Boolean;
  protected
    { Protected declarations }
   procedure ChkReqEmpty(var Mes: TMessage);message Empty;
   procedure ChkReqFull(var Mes: TMessage);message Full;
  public
    { Public declarations }
   Counter: integer;
   Ready : Boolean;
   ButtonOK : TRSqlButton;
  constructor Create (AOwner : TComponent);override;
   procedure Execute();
  published
//     property SelectiveColor : TColor read FSelectiveColor write FSelectiveColor default clBlue;
//     property RequiredColor : TColor read FRequiredColor write FRequiredColor;
//     property NonRequiredColor : TColor read FNonRequiredColor write FNonRequiredColor;
//     property DisplayColor : TColor read FDisplayColor write FDisplayColor;
     property FieldMode : TFieldMode read FFieldMode write SetFieldMode;
     property SearchFocusables : Boolean read FSearchFocusables write SetSF stored True;
     property Parent : TWinControl read FParent write FParent;
    { Published declarations }
  end;

procedure Register;

implementation



uses
  RsqlEdit,RsqlComboBox,RSqlLookup,RSqlMaskEdit,RSqlMemo;

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TFormInitializer]);
end;

{ TSetForm }

{ TSetForm }




constructor TFormInitializer.Create(AOwner: TComponent);
begin
  inherited;
//  if csDesigning in ComponentState then
//   begin
//    SelectiveColor:=$00F4E1EF;
//    RequiredColor:=Rgb(255,255,225);
//    NonRequiredColor:=Rgb(255,255,255);
//    DisplayColor:=$00fdd6bd;
//  end;
  FSelectiveColor:=SelectiveColor;
  FRequiredColor:=RequiredColor;
  FDisplayColor:=displayColor;
  FNonRequiredColor:=NonRequiredColor;
  RCount:=0;
  SRcount:=0;
  ButtonOk:=TRSqlbutton.Create(Self);
  Ready:=True;
end;

procedure TFormInitializer.Execute;
Var
 i : integer;
 Temp : TComponent;
begin
 if FieldMode<>fmNone then
 Begin
 SRCount:=0;
 RCount:=0;
 for i:=0 to Owner.ComponentCount-1 do
  begin
   Temp:=Owner.FindComponent((Owner.Components[i].Name));

   // RSqlEdit Component //
   if Temp is TRSqlEdit then
     begin
       if TRSqlEdit(Temp).Text='' then
         TRSqlEdit(Temp).Flag:=True
        else
         TRSqlEdit(Temp).Flag:=False;

       TRSqlEdit(Temp).Provider:=Self;

       if ((TRSqlEdit(Temp).CanFocus) or (Not(FSearchFocusables)) or ((FSearchFocusables) and (TRSqlEdit(Temp).Enabled=False)) ) then
       Begin
        if FFieldMode=fmInsert then
        if ((TRSqlEdit(Temp).FieldType=ftRequired) or (TRSqlEdit(Temp).FieldType=ftKeyGo)) then
         begin
          SRcount:=SRcount+1;
          if TRSqlEdit(Temp).Text<>'' then RCount:=RCount+1;
         end;
        if FFieldMode=fmEdit then
         begin
          if (TRSqlEdit(Temp).FieldType=ftRequired) then
          begin
           SRcount:=SRcount+1;
           if TRSqlEdit(Temp).Text<>'' then RCount:=RCount+1;
          end;
         end;
        if GetColor(TRSqlEdit(Temp).FieldType,FFieldMode)<>-1 then TRSqlEdit(Temp).Color:=GetColor(TRSqlEdit(Temp).FieldType,FFieldMode);
        TRSqlEdit(Temp).Enabled:=Getenable_Disable(TRSqlEdit(Temp).FieldType,FFieldMode);
       end;
     end;

   // RSqlMemo Component
   if Temp is TRSqlMemo then
     begin
       if TRSqlMemo(Temp).Lines.Text='' then
         TRSqlMemo(Temp).Flag:=True
        else
         TRSqlMemo(Temp).Flag:=False;

       TRSqlMemo(Temp).Provider:=Self;

       if (TRSqlMemo(Temp).CanFocus or (Not(FSearchFocusables)) or ((FSearchFocusables) and (TRSqlMemo(Temp).Enabled=False))) then
       Begin
        if FFieldMode=fmInsert then
        if ((TRSqlMemo(Temp).FieldType=ftRequired) or (TRSqlMemo(Temp).FieldType=ftKeyGo)) then
         begin
          SRcount:=SRcount+1;
          if TRSqlMemo(Temp).Lines.Text<>'' then RCount:=RCount+1;
         end;
        if FFieldMode=fmEdit then
         begin
          if (TRSqlMemo(Temp).FieldType=ftRequired) then
          begin
           SRcount:=SRcount+1;
           if TRSqlMemo(Temp).Lines.Text<>'' then RCount:=RCount+1;
          end;
         end;
        if GetColor(TRSqlMemo(Temp).FieldType,FFieldMode)<>-1 then TRSqlMemo(Temp).Color:=GetColor(TRSqlMemo(Temp).FieldType,FFieldMode);
        TRSqlMemo(Temp).Enabled:=Getenable_Disable(TRSqlMemo(Temp).FieldType,FFieldMode);
       end;
     end;

   // RSqlButton Component //
   if Temp is TRSqlButton then
    begin
//      TRSqlbutton(Temp).Enabled:=GetButtonEnable_Disable(TRSqlButton(Temp).ButtonType,FFieldMode);
     if FSearchFocusables then
      begin
       if ((TRSqlbutton(Temp).CanFocus) and (TRSqlbutton(Temp).ButtonType=btOk)) then
         ButtonOK:=TRSqlbutton(Temp);
      end
       else
        if TRSqlbutton(Temp).ButtonType=btOk then
         ButtonOK:=TRSqlbutton(Temp);
    end;

   // RSqlComboBox Component //
   if Temp is TRsqlComboBox then
     begin
       TRsqlComboBox(Temp).Style:=csDropDownList;
       TRsqlComboBox(Temp).Provider:=Self;

       if TRsqlComboBox(Temp).ItemIndex<0 then
         TRsqlComboBox(Temp).Flag:=True
        else
         TRsqlComboBox(Temp).Flag:=False;

       if (TRsqlComboBox(Temp).CanFocus or (Not(FSearchFocusables)) or ((FSearchFocusables) and (TRSqlComboBox(Temp).Enabled=False))) then
       begin
        if FFieldMode=fmInsert then
         begin
          if ((TRsqlComboBox(Temp).FieldType=ftRequired) or (TRsqlComboBox(Temp).FieldType=ftKeyGo)) then
          begin
           SRcount:=SRcount+1;
           if TRsqlComboBox(Temp).ItemIndex>=0 then RCount:=RCount+1;
          end;
          TRsqlComboBox(Temp).Enabled:=Getenable_Disable(TRsqlComboBox(Temp).FieldType,FFieldMode);
         end;

        if FFieldMode=fmEdit then
         begin
          if (TRsqlComboBox(Temp).FieldType=ftRequired) then
          begin
           SRcount:=SRcount+1;
           if TRsqlComboBox(Temp).ItemIndex>=0 then RCount:=RCount+1;
          end;
          TRsqlComboBox(Temp).Enabled:=Getenable_Disable(TRsqlComboBox(Temp).FieldType,FFieldMode);
         end;
         if GetColor(TRsqlComboBox(Temp).FieldType,FFieldMode)<>-1 then TRsqlComboBox(Temp).color:=GetColor(TRsqlComboBox(Temp).FieldType,FFieldMode);
       end;
     end;



   // RSqlDbLookup Component //
   if Temp is TRSqlDblookup then
     begin
       TRSqlDblookup(Temp).Provider:=Self;

       if TRSqlDblookup(Temp).KeyValue=Null then
         TRSqlDblookup(Temp).Flag:=True
        else
         TRSqlDblookup(Temp).Flag:=False;

       if (TRSqlDblookup(Temp).CanFocus or (Not(FSearchFocusables)) or ((FSearchFocusables) and (TRSqlDbLookup(Temp).Enabled=False))) then
       begin
        if FFieldMode=fmInsert then
         Begin
          if ((TRSqlDblookup(Temp).FieldType=ftRequired) or (TRSqlDblookup(Temp).FieldType=ftKeyGo)) then
          begin
           SRcount:=SRcount+1;
           if (TRSqlDblookup(Temp).KeyValue<>Null)
            then RCount:=RCount+1;
          end;
//          TRSqlDblookup(Temp).LastValue:=Null;
//          TRSqlDblookup(Temp).KeyValue:=Null;
         end;

        if FFieldMode=fmEdit then
         Begin
          if (TRSqlDblookup(Temp).FieldType=ftRequired) then
          begin
           SRcount:=SRcount+1;
           if TRSqlDblookup(Temp).KeyValue<>Null then RCount:=RCount+1;
          TRSqlDblookup(Temp).LastValue:=1;
          end;
         end;

        TRSqlDblookup(Temp).Enabled:=Getenable_Disable(TRSqlDblookup(Temp).FieldType,FFieldMode);
        if GetColor(TRSqlDblookup(Temp).FieldType,FFieldMode)<>-1 then TRSqlDblookup(Temp).color:=GetColor(TRSqlDblookup(Temp).FieldType,FFieldMode);
       end;
     end;


   // RSqlMaskEdit Component //
   if Temp is TRSqlMaskEdit then
     begin
      TRSqlMaskEdit(Temp).Provider:=Self;

//      if Pos(' ',TRSqlMaskEdit(Temp).Text)>0 then

      if Not(TRSqlMaskEdit(Temp).IsTextValid) then
       TRSqlMaskEdit(Temp).Flag:=True
      else
       TRSqlMaskEdit(Temp).Flag:=False;

      if (TRSqlMaskEdit(Temp).CanFocus or (Not(FSearchFocusables)) or ((FSearchFocusables) and (TRSqlMaskEdit(Temp).Enabled=False))) then
       begin
        if FieldMode=fmInsert then
         begin
          if ((TRSqlMaskEdit(Temp).FieldType=ftRequired) or (TRSqlMaskEdit(Temp).FieldType=ftKeyGo)) then
           begin
            SRcount:=SRcount+1;
            if TRSqlMaskEdit(Temp).IsTextValid then
             RCount:=RCount+1;
           end;
         end;

        if FieldMode=fmEdit then
         begin
          if ((TRSqlMaskEdit(Temp).FieldType=ftRequired)) then
          begin
           SRcount:=SRcount+1;
           if TRSqlMaskEdit(Temp).IsTextValid then
            RCount:=RCount+1;
          end;
       end;

        TRSqlMAskEdit(Temp).Enabled:=Getenable_Disable(TRSqlMAskEdit(Temp).FieldType,FFieldMode);
        if GetColor(TRSqlMAskEdit(Temp).FieldType,FFieldMode)<>-1 then TRSqlMAskEdit(Temp).color:=GetColor(TRSqlMAskEdit(Temp).FieldType,FFieldMode);
       end;

     end;

 end;
 ButtonOK.Enabled:=GetButtonEnable_Disable(ButtonOk.ButtonType,FFieldMode);
end
else
begin
 for i:=0 to Owner.ComponentCount-1 do
  begin
   Temp:=Owner.FindComponent((Owner.Components[i].Name));

   if Temp is TRSqlEdit then
    if GetColor(TRSqlEdit(Temp).FieldType,FFieldMode)<>-1 then
       TRSqlEdit(Temp).color:=GetColor(TRSqlEdit(Temp).FieldType,FFieldMode);

   if Temp is TRSqlMemo then
    if GetColor(TRSqlMemo(Temp).FieldType,FFieldMode)<>-1 then
       TRSqlMemo(Temp).color:=GetColor(TRSqlMemo(Temp).FieldType,FFieldMode);

   if Temp is TRsqlComboBox then
    if GetColor(TRsqlComboBox(Temp).FieldType,FFieldMode)<>-1 then
       TRsqlComboBox(Temp).color:=GetColor(TRsqlComboBox(Temp).FieldType,FFieldMode);

   if Temp is TRSqlDblookup then
    if GetColor(TRSqlDblookup(Temp).FieldType,FFieldMode)<>-1 then
       TRSqlDblookup(Temp).color:=GetColor(TRSqlDblookup(Temp).FieldType,FFieldMode);

   if Temp is TRSqlMaskEdit then
    if GetColor(TRSqlMaskEdit(Temp).FieldType,FFieldMode)<>-1 then
       TRSqlMaskEdit(Temp).color:=GetColor(TRSqlMaskEdit(Temp).FieldType,FFieldMode);
  end;
end;
end;

function TFormInitializer.GetButtonEnable_Disable(ButtonType : TButtonType;Mode: TFieldMode): Boolean;
begin
if ButtonType=btOk then
 begin
  if RCount=SrCount then
   GetButtonEnable_Disable:=True else
    GetButtonEnable_Disable:=False;
 end
else
  GetButtonEnable_Disable:=True;
end;

function TFormInitializer.GetColor(CType: TFieldType;Mode : TFieldMode): TColor;
begin

if CType=ftDisplay then
   GetColor:=FDisplayColor;

if CType=ftRequired then
   GetColor:=FRequiredColor;

if CType=ftNonRequired then
   GetColor:=FNonRequiredColor;

if CType=ftSelective then
   GetColor:=FSelectiveColor;

if CType=ftKeyGm then if ((Mode=fmInsert) or (Mode=fmEdit)) then
   GetColor:=FDisplayColor
 else
   GetColor:=FRequiredColor;

if CType=ftKeyGo then if (Mode=fmEdit) then
   GetColor:=FDisplayColor
 else
    GetColor:=FRequiredColor;
if CType=ftNone then GetColor:=-1;
end;

function TFormInitializer.GetEnable_Disable(CType: TFieldType;
  Mode: TFieldMode): Boolean;
begin
if CType=ftDisplay then
  GetEnable_Disable:=False;

if CType=ftKeyGm then
 if ((Mode=fmInsert) or (Mode=fmEdit)) then
  GetEnable_Disable:=False
 else
  GetEnable_Disable:=True;

if CType=ftKeyGo then if (Mode=fmEdit) then
  GetEnable_Disable:=False
 else
  GetEnable_Disable:=True;

if ((CType=ftSelective) or (CType=ftRequired) or (CType=ftNonRequired)) then
  GetEnable_Disable:=True;



end;

procedure TFormInitializer.ChkReqEmpty(var Mes: TMessage);
begin
  if Rcount>0 then
     Rcount:=Rcount-1;
  if SRCount=Rcount then
     ButtonOk.enabled:=true
  else
     ButtonOk.enabled:=False;
end;

procedure TFormInitializer.ChkReqFull(var Mes: TMessage);
begin
  Rcount:=Rcount+1;
  if SRCount=Rcount then
     ButtonOk.enabled:=true
  else
     ButtonOk.enabled:=False;

end;

procedure TFormInitializer.SetFieldMode(FMode: TFieldMode);
begin
FFieldMode:=FMode;
end;

procedure TFormInitializer.SetSf(Value: Boolean);
begin
 FSearchFocusables:=Value;
end;

end.
