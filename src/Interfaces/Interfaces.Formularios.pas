unit Interfaces.Formularios;

interface

uses
  Vcl.Forms,
  View.Utilitarios.Cadastros.Usuarios,
  View.Compras.Cadastros.Produtos,
  View.Vendas.Cadastros.Pessoas,
  View.Financeiro.Cadastros.Bancos,
  View.RH.Cadastros.Funcionarios,
  View.Compras.Cadastros.Unidades;

  type
    iFormularios = interface
      ['{E053B5B1-AD92-46AF-B439-2DCAC6F0129F}']
      function CadastroProdutos(Owner : TForm) : TFrmCadProdutos;
      function CadastroPessoas(Owner : TForm; aCaption : String) : TFrmCadPessoas;
      function CadastroBanco(Owner : TForm) : TFrmCadBancos;
      function CadastroFuncionarios(Owner : TForm) : TFrmCadFuncionarios;
      function CadastroUsuarios(Owner : TForm) : TFrmCadUsuarios;
      function CadastroUnidades(Owner : TForm) : TFrmCadUnidade;
    end;

implementation

end.
