unit uCelular;

interface

uses
  uIItens;

type
  TCelular = class (TInterfacedObject, IItens)
    function RetornaValor: Double;
  end;

implementation

function TCelular.RetornaValor: Double;
begin
  Result := 2990.99;
end;

end.

