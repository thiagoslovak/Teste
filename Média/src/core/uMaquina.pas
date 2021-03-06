unit uMaquina;

interface

uses
  System.SysUtils, Dialogs, uIMaquina, Classes, uTroco;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(Troco: Double): TList;
  end;

implementation

uses
  math;

function TMaquina.MontarTroco(Troco: Double): TList;
var
  FCedulas: TList;
  vContador: TCedula;
  vQuantidade: integer;

begin
  FCedulas := TList.Create;

  for vContador := Low(CValorCedula) to High(CValorCedula) do
  begin
    if (Troco > CValorCedula[vContador]) then
    begin
      vQuantidade := Trunc(Troco / CValorCedula[vContador]);
      Troco := Troco - (CValorCedula[vContador] * vQuantidade);
      FCedulas.Add(TTroco.Create(vContador, vQuantidade));

      //NOTAS
      if vContador = TCedula.ceNota100 then
        ShowMessage(IntToStr(vQuantidade) + ' notas de: ' + FloatToStr(CValorCedula[vContador]));

      if vContador = TCedula.ceNota50 then
        ShowMessage(IntToStr(vQuantidade) + ' notas de: ' + FloatToStr(CValorCedula[TCedula.ceNota50]));

      if vContador = TCedula.ceNota20 then
        ShowMessage(IntToStr(vQuantidade) + ' notas de: ' + FloatToStr(CValorCedula[TCedula.ceNota20]));

      if vContador = TCedula.ceNota10 then
        ShowMessage(IntToStr(vQuantidade) + ' notas de: ' + FloatToStr(CValorCedula[TCedula.ceNota10]));

      if vContador = TCedula.ceNota5 then
        ShowMessage(IntToStr(vQuantidade) + ' notas de: ' + FloatToStr(CValorCedula[TCedula.ceNota5]));

      if vContador = TCedula.ceNota2 then
        ShowMessage(IntToStr(vQuantidade) + ' notas de: ' + FloatToStr(CValorCedula[TCedula.ceNota2]));

      //MOEDAS
      if vContador = TCedula.ceMoeda100 then
        ShowMessage(IntToStr(vQuantidade) + ' moedas de: ' + FloatToStr(CValorCedula[vContador]));

      if vContador = TCedula.ceMoeda50 then
        ShowMessage(IntToStr(vQuantidade) + ' moedas de: ' + FloatToStr(CValorCedula[TCedula.ceMoeda50]));

      if vContador = TCedula.ceMoeda25 then
        ShowMessage(IntToStr(vQuantidade) + ' moedas de: ' + FloatToStr(CValorCedula[TCedula.ceMoeda25]));

      if vContador = TCedula.ceMoeda10 then
        ShowMessage(IntToStr(vQuantidade) + ' moedas de: ' + FloatToStr(CValorCedula[TCedula.ceMoeda10]));

      if vContador = TCedula.ceMoeda5 then
       ShowMessage(IntToStr(vQuantidade) + ' moedas de: ' + FloatToStr(CValorCedula[TCedula.ceMoeda5]));

      if vContador = TCedula.ceMoeda1 then
         ShowMessage(IntToStr(vQuantidade) + ' moedas de: ' + FloatToStr(CValorCedula[TCedula.ceMoeda1]));
    end;
  end;

  Result := FCedulas;
end;

end.


