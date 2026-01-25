inherited frmVendas: TfrmVendas
  Caption = 'frmVendas'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  object Cliente: TLabel [0]
    Left = 112
    Top = 59
    Width = 37
    Height = 15
    Caption = 'Cliente'
  end
  object Data: TLabel [1]
    Left = 352
    Top = 59
    Width = 24
    Height = 15
    Caption = 'Data'
  end
  object Total: TLabel [2]
    Left = 544
    Top = 59
    Width = 25
    Height = 15
    Caption = 'Total'
  end
  inherited pnlBotoes: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 550
    ExplicitWidth = 1068
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 155
    Top = 56
    Width = 166
    Height = 23
    DataField = 'id_cliente'
    DataSource = dmConexao.dsVendas
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 392
    Top = 56
    Width = 121
    Height = 23
    DataField = 'data_venda'
    DataSource = dmConexao.dsVendas
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 584
    Top = 56
    Width = 121
    Height = 23
    DataField = 'total'
    DataSource = dmConexao.dsVendas
    TabOrder = 3
  end
  object dbgItens: TDBGrid
    Left = -8
    Top = 120
    Width = 1076
    Height = 193
    DataSource = dmConexao.dsVendas
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 808
    Top = 563
    Width = 75
    Height = 25
    Caption = 'Novo Item'
    TabOrder = 5
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 155
    Top = 336
    Width = 145
    Height = 23
    KeyField = 'id_cliente'
    ListField = 'nome'
    ListSource = dmConexao.dsClientes
    TabOrder = 6
  end
end
