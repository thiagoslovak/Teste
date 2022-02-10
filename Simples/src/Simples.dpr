program Simples;

uses
  Vcl.Forms,
  uTelaSimples in 'core\uTelaSimples.pas' {FSimples},
  uISubstitui in 'core\uISubstitui.pas',
  uSubstitui in 'core\uSubstitui.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFSimples, FSimples);
  Application.Run;
end.
