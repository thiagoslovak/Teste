object FSimples: TFSimples
  Left = 342
  Top = 329
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FSimples'
  ClientHeight = 145
  ClientWidth = 428
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
  object pnlSimples: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 145
    Align = alClient
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    object lblNovaLetra: TLabel
      Left = 16
      Top = 75
      Width = 177
      Height = 13
      Caption = 'Digite por qual letra ser'#225' substituido:'
    end
    object lblFrase: TLabel
      Left = 16
      Top = 12
      Width = 82
      Height = 13
      Caption = 'Digite uma frase:'
    end
    object lblAntigaLetra: TLabel
      Left = 16
      Top = 44
      Width = 194
      Height = 13
      Caption = 'Digite uma letra para substituir na frase:'
    end
    object edtNovo: TEdit
      Left = 216
      Top = 72
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edtVelho: TEdit
      Left = 216
      Top = 40
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object edtStr: TEdit
      Left = 216
      Top = 8
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object btnSubstituirStr: TBitBtn
      Left = 134
      Top = 112
      Width = 147
      Height = 25
      Caption = 'Substituir'
      TabOrder = 3
      OnClick = btnSubstituirStrClick
    end
  end
end
