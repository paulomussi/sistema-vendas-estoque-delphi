inherited frmClientes: TfrmClientes
  BorderStyle = bsSingle
  Caption = 'frmClientes'
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 62
    Top = 336
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel [1]
    Left = 62
    Top = 384
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label3: TLabel [2]
    Left = 306
    Top = 384
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label4: TLabel [3]
    Left = 649
    Top = 336
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Label5: TLabel [4]
    Left = 449
    Top = 336
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object CPF: TLabel [5]
    Left = 305
    Top = 336
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label7: TLabel [6]
    Left = 489
    Top = 384
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Label8: TLabel [7]
    Left = 678
    Top = 387
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Ativo: TLabel [8]
    Left = 324
    Top = 461
    Width = 28
    Height = 15
    Caption = 'Ativo'
  end
  inherited pnlBotoes: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 550
    ExplicitWidth = 1068
  end
  object DBEdit1: TDBEdit
    Left = 106
    Top = 333
    Width = 175
    Height = 23
    DataField = 'nome'
    DataSource = dmConexao.dsClientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 332
    Top = 333
    Width = 95
    Height = 23
    DataField = 'cpf'
    DataSource = dmConexao.dsClientes
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 499
    Top = 333
    Width = 106
    Height = 23
    DataField = 'telefone'
    DataSource = dmConexao.dsClientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 106
    Top = 381
    Width = 175
    Height = 23
    DataField = 'email'
    DataSource = dmConexao.dsClientes
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 704
    Top = 333
    Width = 245
    Height = 23
    DataField = 'endereco'
    DataSource = dmConexao.dsClientes
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 346
    Top = 381
    Width = 121
    Height = 23
    DataField = 'bairro'
    DataSource = dmConexao.dsClientes
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 528
    Top = 381
    Width = 121
    Height = 23
    DataField = 'cep'
    DataSource = dmConexao.dsClientes
    TabOrder = 7
  end
  object dbgClientes: TDBGrid
    Left = 0
    Top = 0
    Width = 1068
    Height = 273
    Align = alTop
    DataSource = dmConexao.dsClientes
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 731
    Top = 384
    Width = 106
    Height = 23
    DataField = 'id_cidade'
    DataSource = dmConexao.dsClientes
    KeyField = 'id_cidade'
    ListField = 'nome'
    ListSource = dmConexao.dsCidades
    TabOrder = 9
  end
  object DBCheckBox1: TDBCheckBox
    Left = 370
    Top = 461
    Width = 97
    Height = 17
    Caption = 'DBCheckBox1'
    DataField = 'ativo'
    DataSource = dmConexao.dsClientes
    TabOrder = 10
  end
end
