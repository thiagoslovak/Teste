object FGeraTroco: TFGeraTroco
  Left = 439
  Top = 274
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gerar Troco'
  ClientHeight = 134
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeraTroco: TPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 134
    Align = alClient
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object edtValor: TEdit
      Left = 176
      Top = 32
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object btnGerarTroco: TButton
      Left = 200
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Gerar Troco'
      TabOrder = 1
      OnClick = btnGerarTrocoClick
    end
    object rdgItens: TRadioGroup
      Left = 8
      Top = 8
      Width = 113
      Height = 105
      Caption = 'Itens:'
      Items.Strings = (
        'Computador'
        'Celular'
        'Notebook'
        'Mouse')
      TabOrder = 2
      OnClick = rdgItensClick
    end
  end
end
