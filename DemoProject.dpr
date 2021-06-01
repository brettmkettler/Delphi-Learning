program DemoProject;

uses
  Vcl.Forms,
  Demo in '\\GalaxyNAS\KettlerHome\Projects\Demo.pas' {Home};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THome, Home);
  Application.Run;
end.
