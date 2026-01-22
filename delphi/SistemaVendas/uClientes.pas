unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPai, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmClientes = class(TfrmPai)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CPF: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dbgClientes: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Ativo: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    procedure Novo; override;
    procedure Salvar; override;
    procedure Excluir; override;
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses uDataModule;


procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if MessageBox(Application.Handle, 'Você deseja sair do sistema?','Sair',
    MB_ICONQUESTION + MB_YESNO) = IDYES then
  begin
    if dmConexao.qryCidades.Active and dmConexao.qryClientes.Active then
      dmConexao.qryCidades.Close;
      dmConexao.qryClientes.Close;

    Action := caFree;
  end
  else
  begin
    Action := caNone;
  end;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  inherited;
  if not dmConexao.qryClientes.Active then
    dmConexao.qryClientes.Open;

  if not dmConexao.qryCidades.Active then
    dmConexao.qryCidades.Open;
end;

procedure TfrmClientes.Novo;
begin
  dmConexao.qryClientes.Append;
end;

procedure TfrmClientes.Salvar;
begin
  if dmConexao.qryClientes.State in [dsInsert, dsEdit] then
    dmConexao.qryClientes.Post;
end;

procedure TfrmClientes.Excluir;
begin
  if not dmConexao.qryClientes.IsEmpty then
    dmConexao.qryClientes.Delete;
end;

end.
