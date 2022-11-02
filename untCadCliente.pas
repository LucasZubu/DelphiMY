unit untCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCliente = class(TfrmPadrao)
    Label1: TLabel;
    dbeCod: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeEndereco: TDBEdit;
    Label4: TLabel;
    dbeCpf: TDBEdit;
    Label5: TLabel;
    dbeTelefone: TDBEdit;
    Label6: TLabel;
    dbeCidade: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmCadCliente.btnAdicionarClick(Sender: TObject);
begin
  inherited;
    modulo.qryClienteIDCLIENTE.AsString := modulo.AutoNum('IDCLIENTE', 'CLIENTE');
end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  modulo.qryCidade.Open;
end;

procedure TfrmCadCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  modulo.qryCidade.Close;
end;

end.
