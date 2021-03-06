unit uTelaMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFGeraTroco = class(TForm)
    btnGerarTroco: TButton;
    edtValor: TEdit;
    rdgItens: TRadioGroup;
    pnlGeraTroco: TPanel;
    procedure btnGerarTrocoClick(Sender: TObject);
    procedure rdgItensClick(Sender: TObject);
  end;

var
  FGeraTroco: TFGeraTroco;

implementation

uses
  uTipoItensType,
  uFacedeMaquina;

{$R *.dfm}

procedure TFGeraTroco.btnGerarTrocoClick(Sender: TObject);
var
  vPassaValor: TFacedeMaquina;
  vValorGenerico: Double;
  vGerarTroco: Double;

begin
  vValorGenerico := 59.90;
  vGerarTroco := StrToFloat(edtValor.Text) - vValorGenerico;

  vPassaValor := TFacedeMaquina.CreateCedula(vGerarTroco);

  try
    vPassavalor.GetCedula;
  finally
    vPassaValor.Free;
  end;
end;

procedure TFGeraTroco.rdgItensClick(Sender: TObject);
var
  vPassaValor: TFacedeMaquina;
begin
  vPassaValor := TFacedeMaquina.CreateItens(TTipoItensType(rdgItens.ItemIndex));

  try
    edtValor.Text := FloatToStr(vPassaValor.GetValorIten());
  finally
    vPassaValor.Free;
  end;
end;

end.
