unit ColDesigner;

interface

uses
   DbSgEditor;

Type
  TColDesigner = class (TObject)
  private
   FSgEditor : TFmEditCols;
  public
   destructor Destroy; override;
  end;


implementation

{ TColDesigner }

destructor TColDesigner.Destroy;
begin
{  if FSgEditor <> nil then
  begin
    FSgEditor.FDSDesigner := nil;
    FSgEditor.Release;
  end;
  inherited Destroy;}
end;

end.
