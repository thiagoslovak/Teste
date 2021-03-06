object FTelaNetwork: TFTelaNetwork
  Left = 390
  Top = 219
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Network'
  ClientHeight = 322
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlNetwork: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 322
    Align = alClient
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    object lblNumeroElementos: TLabel
      Left = 203
      Top = 122
      Width = 202
      Height = 16
      Caption = 'N'#250'mero de elementos do conjunto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblConjElementos: TLabel
      Left = 16
      Top = 57
      Width = 136
      Height = 16
      Caption = 'Conjunto de Elementos '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 40
      Top = 79
      Width = 10
      Height = 23
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 104
      Top = 79
      Width = 10
      Height = 23
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblSegundoNumConexao: TLabel
      Left = 203
      Top = 205
      Width = 244
      Height = 16
      Caption = 'Digite outro numero para fazer a conex'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPrimeiroNumConexao: TLabel
      Left = 203
      Top = 163
      Width = 232
      Height = 16
      Caption = 'Digite um numero para fazer a conex'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object mmRecebeSegundoVlrElementos: TMemo
      Left = 88
      Top = 104
      Width = 49
      Height = 196
      ReadOnly = True
      TabOrder = 0
    end
    object mmRecebePrimeiroVlrElementos: TMemo
      Left = 24
      Top = 104
      Width = 49
      Height = 196
      ReadOnly = True
      TabOrder = 1
    end
    object edtQtdNumeroElementos: TEdit
      Left = 465
      Top = 117
      Width = 80
      Height = 21
      TabOrder = 2
      OnExit = edtQtdNumeroElementosExit
      OnKeyPress = edtQtdNumeroElementosKeyPress
    end
    object edtSegundoNumConexao: TEdit
      Left = 465
      Top = 204
      Width = 80
      Height = 21
      TabOrder = 3
      OnKeyPress = edtSegundoNumConexaoKeyPress
    end
    object edtPrimeiroNumConexao: TEdit
      Left = 465
      Top = 162
      Width = 80
      Height = 21
      TabOrder = 4
      OnKeyPress = edtPrimeiroNumConexaoKeyPress
    end
    object btnElemConec: TButton
      Left = 370
      Top = 275
      Width = 144
      Height = 25
      Caption = 'Elementos Conectados ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnElemConecClick
    end
    object btnAddElemento: TButton
      Left = 188
      Top = 275
      Width = 144
      Height = 25
      Caption = 'Adicionar Elemento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnAddElementoClick
    end
    object pnlCabecalho: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 41
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 7
      object lblCabecalho: TLabel
        Left = 158
        Top = 4
        Width = 282
        Height = 25
        Alignment = taCenter
        Caption = 'CONECTANDO ELEMENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
