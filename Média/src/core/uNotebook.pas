unit uNotebook;

interface

uses
  uIItens;

type
  TNotebook = class (TInterfacedObject, IItens)
    function RetornaValor: Double;
  end;

implementation

function TNotebook.RetornaValor: Double;
begin
  Result := 5390.99;
end;

end.

