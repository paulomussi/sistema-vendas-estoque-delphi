unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCidades, uClientes;

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

end.
