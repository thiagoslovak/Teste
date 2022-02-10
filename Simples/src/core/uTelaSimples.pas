unit uTelaSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uISubstitui, uSubstitui,
  Vcl.ExtCtrls;

type
  TFSimples = class(TForm)
    btnSubstituirStr: TBitBtn;
    lblNovaLetra: TLabel;
    edtNovo: TEdit;
    edtVelho: TEdit;
    lblAntigaLetra: TLabel;
    lblFrase: TLabel;
    edtStr: TEdit;
    pnlSimples: TPanel;
    procedure btnSubstituirStrClick(Sender: TObject);
  end;

var
  FSimples: TFSimples;
  vgSubstitui: ISubstitui;

implementation

{$R *.dfm}

procedure TFSimples.btnSubstituirStrClick(Sender: TObject);
begin
  vgSubstitui := TSubstitui.Create();
  vgSubstitui.Substituir(edtStr.Text, edtVelho.Text, edtNovo.Text);
end;

end.
