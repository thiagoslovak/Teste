unit uFactoryMedia;

interface

uses
  uTipoItensType,
  uIItens;

type
  TFactoryMedia = class
    class function GetInstance(const AItem: TTipoItensType): IItens;
  end;

implementation

uses
  uComputador,
  uCelular,
  uNotebook,
  uMouse;

class function TFactoryMedia.GetInstance(const AItem: TTipoItensType): IItens;
begin
  case AItem of
    tiComputador: Result := TComputador.Create;
    tiCelular: Result := TCelular.Create;
    tiNotebook: Result := TNotebook.Create;
    tiMouse: Result := TMouse.Create;
  end;
end;

end.
