unit uMouse;

interface

uses
  uIItens;

type
  TMouse = class (TInterfacedObject, IItens)
    function RetornaValor: Double;
  end;

implementation

function TMouse.RetornaValor: Double;
begin
  Result := 199.99;
end;

end.

