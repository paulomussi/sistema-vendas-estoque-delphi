unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCidades, uClientes, uProdutos, uDataModule, uCompras, uVendas;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
frmCidades := TfrmCidades.Create(Self);
frmCidades.ShowModal;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
frmClientes := TfrmClientes.Create(Self);
frmClientes.ShowModal;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
frmProdutos := TfrmProdutos.Create(Self);
frmProdutos.ShowModal;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
frmCompras := TfrmCompras.Create(Self);
frmCompras.ShowModal;
end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
frmVendas := TfrmVendas.Create(Self);
frmVendas.ShowModal;
end;

end.
