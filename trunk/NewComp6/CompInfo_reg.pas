{$INCLUDE rr.inc}
(************************************************************************
 Author:	Robert Rossmair

	mailto:Robert.Rossmair@t-online.de
	http://home.t-online.de/home/Robert.Rossmair/

 Module:        CmpInfEd

 Version:	1.0.3, 07-Jan-2000

 Description:   Design time unit for module CompInfo
                Implements component info class property editors

 History:

 Compatibility:	Delphi 2-5

 Copyright © 1998-1999  Robert Rossmair

 Use, modification and distribution is allowed without limitation,
 warranty, or liability of any kind.
 ************************************************************************)
unit CompInfo_reg;

interface

uses CompInfo, mUrlLabel;

procedure Register;

implementation

uses Classes, DsgnIntf;

type
  TReadOnlyStrProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
  end;

  TComponentInfoProperty = class(TClassProperty)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
  end;

function TReadOnlyStrProperty.GetAttributes: TPropertyAttributes;
begin
  Result := inherited GetAttributes + [paReadOnly];
end;

procedure TComponentInfoProperty.Edit;
begin
  TComponentInfo(GetOrdValue).Display;
end;

function TComponentInfoProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paMultiSelect, paSubProperties, paDialog, paReadOnly];
end;

procedure Register;
begin
  RegisterComponents('Majid', [TmUrlLabel]);
  RegisterPropertyEditor(TypeInfo(TReadOnlyStr), nil, '', TReadOnlyStrProperty);
{$IFDEF VER100_up
 (this $IFDEF avoids image list problems with D2) }
  RegisterPropertyEditor(TypeInfo(TComponentInfo), nil, '', TComponentInfoProperty);
{$ENDIF}
end;

end.
