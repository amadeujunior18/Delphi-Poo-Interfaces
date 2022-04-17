program Sistema;

uses
  Vcl.Forms,
  View.FrmPrincipal in 'View\View.FrmPrincipal.pas' {FrmPrincipal},
  uFrmPadrao in 'View\FormPadrao\uFrmPadrao.pas' {FrmPadrao},
  Interfaces.Formularios in 'Interfaces\Interfaces.Formularios.pas',
  Interfaces.Controller.Formularios in 'Interfaces\Interfaces.Controller.Formularios.pas',
  Controller.Formularios in 'Controller\Controller.Formularios.pas',
  Model.Formularios in 'Model\Model.Formularios.Pas',
  View.Utilitarios.Cadastros.Usuarios in 'View\Utilitarios\View.Utilitarios.Cadastros.Usuarios.pas' {FrmCadUsuarios},
  View.Compras.Cadastros.Produtos in 'View\Compras\View.Compras.Cadastros.Produtos.pas' {FrmCadProdutos},
  View.Vendas.Cadastros.Clientes in 'View\Vendas\View.Vendas.Cadastros.Clientes.pas' {FrmCadClientes},
  View.Financeiro.Cadastros.Bancos in 'View\Financeiro\View.Financeiro.Cadastros.Bancos.pas' {FrmCadBancos},
  View.RH.Cadastros.Funcionarios in 'View\RH\View.RH.Cadastros.Funcionarios.pas' {FrmCadFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadProdutos, FrmCadProdutos);
  Application.CreateForm(TFrmCadProdutos, FrmCadProdutos);
  Application.CreateForm(TFrmCadClientes, FrmCadClientes);
  Application.CreateForm(TFrmCadBancos, FrmCadBancos);
  Application.CreateForm(TFrmCadFuncionarios, FrmCadFuncionarios);
  Application.Run;
end.
