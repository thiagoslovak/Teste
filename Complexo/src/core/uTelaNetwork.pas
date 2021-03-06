unit uTelaNetwork;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFTelaNetwork = class(TForm)
    edtQtdNumeroElementos: TEdit;
    lblNumeroElementos: TLabel;
    edtSegundoNumConexao: TEdit;
    lblPrimeiroNumConexao: TLabel;
    lblSegundoNumConexao: TLabel;
    edtPrimeiroNumConexao: TEdit;
    btnAddElemento: TButton;
    mmRecebePrimeiroVlrElementos: TMemo;
    mmRecebeSegundoVlrElementos: TMemo;
    lblConjElementos: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    btnElemConec: TButton;
    pnlNetwork: TPanel;
    pnlCabecalho: TPanel;
    lblCabecalho: TLabel;
    procedure edtQtdNumeroElementosExit(Sender: TObject);
    procedure edtQtdNumeroElementosKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddElementoClick(Sender: TObject);
    procedure edtPrimeiroNumConexaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSegundoNumConexaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnElemConecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  EExecaoNumeros = class(Exception);

var
  FTelaNetwork: TFTelaNetwork;
  vgElementosParaConexao: array of Integer;
  vgQtdElementosConjunto: Integer;
  vgContador: Integer;

implementation

uses
  uNetwork;

{$R *.dfm}

procedure TFTelaNetwork.btnAddElementoClick(Sender: TObject);
var
  vElementosConexao: TNetwork;
begin
  if (edtPrimeiroNumConexao.Text = '') or (edtSegundoNumConexao.Text = '') then
  begin
    raise EExecaoNumeros.Create(('N?o ? possivel adicionar elementos,'
                                +' sem os elementos.'));
  end;


  vElementosConexao := TNetWork.Create;

  SetLength(vgElementosParaConexao, vgQtdElementosConjunto + 1);

  if vgContador < vgQtdElementos then
  begin
    vgElementosParaConexao[vgContador] := StrToInt(edtPrimeiroNumConexao.Text);
    mmRecebePrimeiroVlrElementos.Lines.Add(IntToStr(vgElementosParaConexao[vgContador]));
    vgContador := vgContador + 1;
  end;

  if vgContador <= vgQtdElementos then
  begin
    vgElementosParaConexao[vgContador] := StrToInt(edtSegundoNumConexao.Text);
    mmRecebeSegundoVlrElementos.Lines.Add(IntToStr(vgElementosParaConexao[vgContador]));
    vgContador := vgContador + 1
  end;

  vElementosConexao.Connect(StrToInt(edtPrimeiroNumConexao.Text), StrToInt(edtSegundoNumConexao.Text));
  vElementosConexao.Free;
end;

procedure TFTelaNetwork.btnElemConecClick(Sender: TObject);
var
  vElementosConexao: TNetwork;
begin
  if (edtPrimeiroNumConexao.Text = '') or (edtSegundoNumConexao.Text = '') then
  begin
    raise EExecaoNumeros.Create(('N?o ? possivel conectar elementos,'
                                +' sem os elementos.'));
  end;

  vElementosConexao := TNetwork.Create;

  vElementosConexao.Query(StrToInt(edtPrimeiroNumConexao.Text), StrToInt(edtSegundoNumConexao.Text));

  vElementosConexao.Free;
end;

procedure TFTelaNetwork.edtPrimeiroNumConexaoKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (not(KEY in ['0'..'9'])) AND (Key<>#9) AND (KEY<>#13)
    AND (KEY<>#8) THEN
      raise EExecaoNumeros.Create(('Campo s? permite valores inteiros.'));

  except
    On E:EExecaoNumeros do
      Raise Exception.Create(E.Message);
  end;
end;

procedure TFTelaNetwork.edtSegundoNumConexaoKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (not(KEY in ['0'..'9'])) AND (Key<>#9) AND (KEY<>#13)
    AND (KEY<>#8) THEN
      raise EExecaoNumeros.Create(('Campo s? permite valores inteiros.'));

  except
    On E:EExecaoNumeros do
      Raise Exception.Create(E.Message);
  end;
end;

procedure TFTelaNetwork.edtQtdNumeroElementosExit(Sender: TObject);
var
  vValorElementos: TNetwork;
begin
  if edtQtdNumeroElementos.Text = '' then
  begin
    raise EExecaoNumeros.Create(('N?o ? possivel come?ar, sem adcionar a'
                                +' quantidade de elementos.'));
  end;

  vgQtdElementosConjunto := StrToInt(edtQtdNumeroElementos.Text);

  vValorElementos := TNetwork.CreateQtdElementos(StrToInt(edtQtdNumeroElementos.Text));
  vValorElementos.Free;
end;

procedure TFTelaNetwork.edtQtdNumeroElementosKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (not(KEY in ['1', '3', '5', '7', '9'])) AND (Key<>#9) AND (KEY<>#13)
    AND (KEY<>#8) THEN
      raise EExecaoNumeros.Create(('Campo s? permite valores inteiros,'
                                  +' e valores impares.'));
  except
    On E:EExecaoNumeros do
      Raise Exception.Create(E.Message);
  end;
end;

procedure TFTelaNetwork.FormCreate(Sender: TObject);
begin
  vgContador := 0;
end;

end.
