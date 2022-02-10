unit uFacedeMaquina;

interface

uses
  Classes,
  uTipoItensType,
  uIItens,
  uIMaquina,
  uMaquina;

type
  TFacedeMaquina = class
    private
     FIItens: IItens;
     FIMaquina: IMaquina;
    public
      constructor CreateItens(const ATipoIten: TTipoItensType);
      constructor CreateCedula(const AValor: Double);
      function GetValorIten: Double;
      function GetCedula: TList;
  end;

var
  vgGuardaValorTroco: Double;

implementation

uses
  uFactoryMedia;

constructor TFacedeMaquina.CreateCedula(const AValor: Double);
begin
  Self.FIMaquina := TMaquina.Create;
  vgGuardaValorTroco := AValor;
end;

constructor TFacedeMaquina.CreateItens(const ATipoIten: TTipoItensType);
begin
  Self.FIItens := TFactoryMedia.GetInstance(ATipoIten);
end;

function TFacedeMaquina.GetCedula: TList;
begin
  Result := FIMaquina.MontarTroco(vgGuardaValorTroco);
end;

function TFacedeMaquina.GetValorIten: Double;
begin
  Result := Self.FIItens.RetornaValor();
end;

end.
