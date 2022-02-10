unit uComputador;

interface

uses
  uIItens;

type
  TComputador = class (TInterfacedObject, IItens)
    function RetornaValor: Double;
  end;

implementation

function TComputador.RetornaValor: Double;
begin
  Result := 999.99;
end;

end.
