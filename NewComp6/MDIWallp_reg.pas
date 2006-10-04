{$INCLUDE rr.inc}
(************************************************************************
 Author:	Robert Rossmair

	mailto:Robert.Rossmair@t-online.de
	http://home.t-online.de/home/Robert.Rossmair/

 Module:	MDIWallp_reg

 Version:	1.1.2, 21-Dez-1999

 Description:	Design time code from module MDIWallp

 Copyright © 1999  Robert Rossmair

 Use, modification and distribution is allowed without limitation,
 warranty, or liability of any kind.
************************************************************************)
unit MDIWallp_reg;

interface

uses Classes, MDIWallp;

procedure Register;

implementation

uses
  SysUtils,
  Consts,
  Controls,
  TypInfo;

{ TWinControlProperty }

type
  TWinControlProperty = class(TComponentProperty)
  public
    procedure GetValues(Proc: TGetStrProc); override;
    procedure SetValue(const Value: string); override;
  end;

procedure TWinControlProperty.GetValues(Proc: TGetStrProc);
begin
  inherited GetValues(Proc);
  if (Designer.Form is GetTypeData(GetPropType)^.ClassType) and
    (Designer.Form.Name <> '') then Proc(Designer.Form.Name);
end;

procedure TWinControlProperty.SetValue(const Value: string);
var
  Component: TComponent;
begin
{$IFDEF WIN32}
  Component := Designer.GetComponent(Value);
{$ELSE}
  Component := Designer.Form.FindComponent(Value);
{$ENDIF}
  if ((Component = nil) or not (Component is GetTypeData(GetPropType)^.ClassType))
    and (CompareText(Designer.Form.Name, Value) = 0) then
  begin
    if not (Designer.Form is GetTypeData(GetPropType)^.ClassType) then
    {$IFDEF VER90}
      raise EPropertyError.CreateRes(SInvalidPropertyValue);
    {$ELSE}
      raise EPropertyError.Create(SInvalidPropertyValue);
    {$ENDIF}
    SetOrdValue(Longint(Designer.Form));
  end
  else inherited SetValue(Value);
end;

const
{$IFDEF Bilch}
  PalettePage = 'Majid';
{$ELSE}
  PalettePage = 'Majid';
{$ENDIF}
procedure Register;
begin
  RegisterComponents(PalettePage, [TMDIWallpaper]);
  RegisterPropertyEditor(TypeInfo(TWinControl), TMDIWallpaper,
    'Client', TWinControlProperty);
{$IFNDEF RR_PicEditBroken}
  RegisterComponentEditor(TMDIWallpaper, TDefaultEditor);
{$ENDIF}
end;

end.
