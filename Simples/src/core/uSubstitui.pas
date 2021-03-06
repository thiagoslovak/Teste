unit uSubstitui;

interface

uses
  Classes,
  SysUtils,
  Dialogs,
  uISubstitui;

type
  TSubstitui = class(TInterfacedObject,ISubstitui)
    function Substituir(Str, Velho, Novo: String): String;
  end;

implementation

function TSubstitui.Substituir(Str, Velho, Novo: String): String;
var
  vIndexadorS: Integer;
  vTrechosDaString: String[1];
  vStringAuxiliar: String;

begin
  for vIndexadorS := 1 to Length(Str) do
  begin
    vTrechosDaString := Copy(Str, vIndexadorS, 1);
    if vTrechosDaString = Velho then
      vTrechosDaString := Novo;

    vStringAuxiliar := vStringAuxiliar + vTrechosDaString;
  end;

  Str := vStringAuxiliar;

  ShowMessage('Frase: ' + Str + sLineBreak
             +'Letra substituida: ' + Velho + sLineBreak
             +'Letra escolhida: ' + Novo);
end;

end.
