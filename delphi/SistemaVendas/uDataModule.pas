unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmConexao = class(TDataModule)
    conexao: TADOConnection;
    qryCidades: TADOQuery;
    dsCidades: TDataSource;
    qryClientes: TADOQuery;
    dsClientes: TDataSource;
    qryProdutos: TADOQuery;
    dsProdutos: TDataSource;
    qryCompras: TADOQuery;
    dsCompras: TDataSource;
    qryItensCompra: TADOQuery;
    dsItensCompra: TDataSource;
    qryAtualizaEstoque: TADOQuery;
    qryVendas: TADOQuery;
    qryItensVendas: TADOQuery;
    qryAtualizaEstoqueVenda: TADOQuery;
    dsVendas: TDataSource;
    dsItensVendas: TDataSource;
    qryTotalVenda: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryComprasAfterScroll(DataSet: TDataSet);
    procedure qryItensCompraBeforePost(DataSet: TDataSet);
    procedure qryItensCompraBeforeInsert(DataSet: TDataSet);
    procedure qryItensCompraAfterPost(DataSet: TDataSet);
    procedure qryItensCompraBeforeDelete(DataSet: TDataSet);
    procedure qryItensCompraBeforeEdit(DataSet: TDataSet);
    procedure qryVendasAfterScroll(DataSet: TDataSet);
    procedure qryItensVendasAfterPost(DataSet: TDataSet);
    procedure qryItensVendasAfterCancel(DataSet: TDataSet);
    procedure qryItensVendasBeforePost(DataSet: TDataSet);
  private
    FQtdAntiga: Integer;
    FAtualizarEstoque: Boolean;
  public
    procedure AtualizarEstoqueCompra;
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  conexao.Connected := True;
  qryCidades.Open;
end;

procedure TdmConexao.qryComprasAfterScroll(DataSet: TDataSet);
begin
  if not qryItensCompra.Active then
    qryItensCompra.Close;

  qryItensCompra.Parameters.ParamByName('id_compra').Value :=
    qryCompras.FieldByName('id_compra').AsInteger;

  qryItensCompra.Open;
end;

procedure TdmConexao.qryItensCompraAfterPost(DataSet: TDataSet);
var
  Dif: Integer;
begin
  Dif := qryItensCompra.FieldByName('quantidade').AsInteger - FQtdAntiga;

  if Dif <> 0 then
  begin
    qryAtualizaEstoque.Close;
    qryAtualizaEstoque.Parameters.ParamByName('id_produto').Value :=
      qryItensCompra.FieldByName('id_produto').AsInteger;

    qryAtualizaEstoque.Parameters.ParamByName('quantidade').Value := Dif;
    qryAtualizaEstoque.ExecSQL;
  end;
end;

procedure TdmConexao.qryItensCompraBeforeDelete(DataSet: TDataSet);
begin
  qryAtualizaEstoque.Close;

  qryAtualizaEstoque.Parameters.ParamByName('id_produto').Value :=
    qryItensCompra.FieldByName('id_produto').AsInteger;

  qryAtualizaEstoque.Parameters.ParamByName('quantidade').Value :=
    - qryItensCompra.FieldByName('quantidade').AsInteger;

  qryAtualizaEstoque.ExecSQL;
end;

procedure TdmConexao.qryItensCompraBeforeEdit(DataSet: TDataSet);
begin
  FQtdAntiga := qryItensCompra.FieldByName('quantidade').AsInteger;
end;

procedure TdmConexao.qryItensCompraBeforeInsert(DataSet: TDataSet);
begin
  if qryCompras.State in [dsInsert, dsEdit] then
    raise Exception.Create('Salve a compra antes de inserir itens.');
end;

procedure TdmConexao.qryItensCompraBeforePost(DataSet: TDataSet);
begin
  if qryItensCompra.State = dsInsert then
    qryItensCompra.FieldByName('id_compra').AsInteger :=
    qryCompras.FieldByName('id_compra').AsInteger;
end;




procedure TdmConexao.qryItensVendasAfterCancel(DataSet: TDataSet);
begin
  qryItensVendas.Close;
  qryItensVendas.Open;
end;

procedure TdmConexao.qryItensVendasAfterPost(DataSet: TDataSet);
begin

    if not FAtualizarEstoque then
    Exit;

    qryAtualizaEstoque.Close;
  qryAtualizaEstoque.Parameters.ParamByName('id_produto').Value :=
    DataSet.FieldByName('id_produto').AsInteger;

  qryAtualizaEstoque.Parameters.ParamByName('quantidade').Value :=
    DataSet.FieldByName('quantidade').AsInteger;


    qryAtualizaEstoque.ExecSQL;

    qryTotalVenda.Close;
    qryTotalVenda.Parameters.ParamByName('id_venda').Value :=
      qryVendas.FieldByName('id_venda').AsInteger;
    qryTotalVenda.Open;

    qryVendas.Edit;
    qryVendas.FieldByName('total').AsFloat :=
      qryTotalVenda.FieldByName('total').AsFloat;
    qryVendas.Post;
end;

procedure TdmConexao.qryItensVendasBeforePost(DataSet: TDataSet);
begin
  // só permite estoque se for INSERT
  FAtualizarEstoque := DataSet.State = dsInsert;
end;

procedure TdmConexao.qryVendasAfterScroll(DataSet: TDataSet);
begin
  qryItensVendas.Close;
  qryItensVendas.Parameters.ParamByName('id_venda').Value :=
    qryVendas.FieldByName('id_venda').AsInteger;
  qryItensVendas.Open;
end;

procedure TdmConexao.AtualizarEstoqueCompra;
begin
  qryAtualizaEstoque.Parameters.ParamByName('quantidade').Value :=
    qryItensCompra.FieldByName('quantidade').AsInteger;

  qryAtualizaEstoque.Parameters.ParamByName('id_produto').Value :=
    qryItensCompra.FieldByName('id_produto').AsInteger;

  qryAtualizaEstoque.ExecSQL;
end;

end.
