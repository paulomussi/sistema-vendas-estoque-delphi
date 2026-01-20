unit uPai;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Controls;

type
  TfrmPai = class(TForm)
    pnlBotoes: TPanel;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnFechar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  public
    procedure Novo; virtual;
    procedure Salvar; virtual;
    procedure Excluir; virtual;
  end;

implementation

{$R *.dfm}

procedure TfrmPai.btnNovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TfrmPai.btnSalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TfrmPai.btnExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TfrmPai.btnFecharClick(Sender: TObject);
begin
  Close;;
end;

procedure TfrmPai.Novo;
begin
  // vazio de propósito
end;

procedure TfrmPai.Salvar;
begin
  // vazio de propósito
end;

procedure TfrmPai.Excluir;
begin
  // vazio de propósito
end;

end.

