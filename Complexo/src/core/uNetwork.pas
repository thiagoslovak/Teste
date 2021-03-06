unit uNetwork;

interface

uses
  Dialogs,
  System.SysUtils;

type
  TNetwork = class
  public
    procedure Connect(const APrimeiroElementosCnct, ASegundoElementosCnct: Integer);
    procedure Query(const APrimeiroElementosCnct, ASegundoElementosCnct: Integer);

    constructor CreateQtdElementos(const AQtdElementosConjunto: Integer);
  end;

  EExecaoElementos = Class(Exception);

var
  vgElementos: array of Integer;
  vgQtdElementos: Integer;
  vgContador: Integer;
  vgContadorQtdElementos: Integer;


implementation

constructor TNetwork.CreateQtdElementos(const AQtdElementosConjunto: Integer);
begin
  //Criando Quantidade de elementos do conjunto

  SetLength(vgElementos, AQtdElementosConjunto + 1);
  vgQtdElementos := AQtdElementosConjunto;
  vgContador := 0;
  vgContadorQtdElementos := AQtdElementosConjunto;
end;

procedure TNetwork.Connect(const APrimeiroElementosCnct, ASegundoElementosCnct: Integer);
begin
  //Recebendo os Elementos
  vgContadorQtdElementos := vgContadorQtdElementos - 1;

  if vgContadorQtdElementos <= 0 then
  begin
    raise EExecaoElementos.Create(('N?o ? possivel adcionar mais elementos no conjunto'));
  end;

  if vgContador < vgQtdElementos then
  begin
    vgElementos[vgContador] := APrimeiroElementosCnct;
    ShowMessage('N?mero: ' + IntToStr(vgElementos[vgContador]) + ', adcionado no conjunto.');
    vgContador := vgContador + 1;
  end;

  if vgContador <= vgQtdElementos then
  begin
    vgElementos[vgContador] := ASegundoElementosCnct;
    ShowMessage('N?mero: ' + IntToStr(vgElementos[vgContador]) + ', adcionado no conjunto.');

    if vgContadorQtdElementos > 1 then
      ShowMessage('Digite mais n?meros para completar a quantidade de elementos do conjunto.');

    vgContador := vgContador + 1;
  end;
end;

procedure TNetwork.Query(const APrimeiroElementosCnct, ASegundoElementosCnct: Integer);
begin
  try
    if APrimeiroElementosCnct = ASegundoElementosCnct then
      raise EExecaoElementos.Create(('Elementos Conectados'));

    if APrimeiroElementosCnct <> ASegundoElementosCnct then
      raise EExecaoElementos.Create(('Elementos n?o Conectados'));

  except
   On E:EExecaoElementos do
      ShowMessage(E.Message);
  end;
end;

end.

