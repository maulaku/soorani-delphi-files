unit SSReg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DsgnIntf;

type

{ TAboutProperty }

  TAboutProperty = class(TPropertyEditor)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
    function GetValue: string; override;
  end;

{ TTestProperty }

  TTestProperty = class(TPropertyEditor)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
    function GetValue: string; override;
  end;

procedure Register;

implementation

uses
  SmoothShow;

{ TAboutProperty }

procedure TAboutProperty.Edit;
const
  AboutStr = 'TSmoothShow v1.22' + #13#10 +
             'by Kambiz R. Khojasteh' + #13#10#13#10 +
             'mail: khojasteh@mail.com'#13#10 +
             'web: http://www.crosswinds.net/~khojasteh'#13#10#13#10 +
             'This component is freeware.';
begin
  Application.MessageBox(AboutStr, 'About', MB_OK + MB_ICONINFORMATION);
end;

function TAboutProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paMultiSelect, paDialog, paReadOnly];
end;

function TAboutProperty.GetValue: String;
begin
  Result := '(about)';
end;

{ TTestProperty }

procedure TTestProperty.Edit;
begin
  TSmoothShow(GetComponent(0)).Execute;
end;

function TTestProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog, paReadOnly];
end;

function TTestProperty.GetValue: string;
begin
  Result := '(Test)';
end;

procedure Register;
begin
  RegisterComponents('Rad-Samaneh', [TSmoothShow]);
  RegisterpropertyEditor(TypeInfo(TTest), TSmoothShow, 'Test', TTestProperty);
  RegisterpropertyEditor(TypeInfo(TAbout), TSmoothShow, 'About', TAboutProperty);
end;

end.
