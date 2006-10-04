program name;

uses
  Forms,
  fmNameMain in 'fmNameMain.pas' {c};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tc, c);
  Application.Run;
end.
