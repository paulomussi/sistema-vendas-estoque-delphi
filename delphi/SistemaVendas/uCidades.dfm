inherited frmCidades: TfrmCidades
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cidades'
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 232
    Top = 350
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 392
    Top = 350
    Width = 89
    Height = 15
    Caption = 'Nome da Cidade'
  end
  object Label3: TLabel [2]
    Left = 232
    Top = 393
    Width = 60
    Height = 15
    Caption = 'Estado (UF)'
  end
  object Label4: TLabel [3]
    Left = 392
    Top = 393
    Width = 55
    Height = 15
    Caption = 'CEP Inicial'
  end
  object Label5: TLabel [4]
    Left = 560
    Top = 393
    Width = 49
    Height = 15
    Caption = 'CEP Final'
  end
  object Label6: TLabel [5]
    Left = 400
    Top = 448
    Width = 28
    Height = 15
    Caption = 'Ativo'
  end
  inherited pnlBotoes: TPanel
    TabOrder = 7
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 550
    ExplicitWidth = 1068
  end
  object dbgCidades: TDBGrid
    Left = 0
    Top = 0
    Width = 1068
    Height = 297
    Align = alTop
    DataSource = dmConexao.dsCidades
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep_final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ativo'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 312
    Top = 347
    Width = 41
    Height = 23
    DataField = 'id_cidade'
    DataSource = dmConexao.dsCidades
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 495
    Top = 347
    Width = 210
    Height = 23
    DataField = 'nome'
    DataSource = dmConexao.dsCidades
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 312
    Top = 390
    Width = 41
    Height = 23
    CharCase = ecUpperCase
    DataField = 'estado'
    DataSource = dmConexao.dsCidades
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 463
    Top = 390
    Width = 81
    Height = 23
    DataField = 'cep_inicial'
    DataSource = dmConexao.dsCidades
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 624
    Top = 390
    Width = 81
    Height = 23
    DataField = 'cep_final'
    DataSource = dmConexao.dsCidades
    TabOrder = 5
  end
  object DBCheckBox1: TDBCheckBox
    Left = 447
    Top = 448
    Width = 97
    Height = 17
    Caption = 'DBCheckBox1'
    DataField = 'ativo'
    DataSource = dmConexao.dsCidades
    TabOrder = 6
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
end
