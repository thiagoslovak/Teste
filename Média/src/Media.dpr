program Media;

uses
  Vcl.Forms,
  uTelaMedia in 'core\uTelaMedia.pas' {FGeraTroco},
  uTroco in 'core\uTroco.pas',
  uMaquina in 'core\uMaquina.pas',
  uIMaquina in 'core\uIMaquina.pas',
  uFacedeMaquina in 'core\uFacedeMaquina.pas',
  uTipoItensType in 'core\uTipoItensType.pas',
  uFactoryMedia in 'core\uFactoryMedia.pas',
  uIItens in 'core\uIItens.pas',
  uComputador in 'core\uComputador.pas',
  uCelular in 'core\uCelular.pas',
  uNotebook in 'core\uNotebook.pas',
  uMouse in 'core\uMouse.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFGeraTroco, FGeraTroco);
  Application.Run;
end.
