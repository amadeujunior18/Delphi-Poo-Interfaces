unit Interfaces.Formularios;

interface

uses
  Vcl.Forms,
  View.Utilitarios.Cadastros.Usuarios,
  View.Compras.Cadastros.Produtos,
  View.Vendas.Cadastros.Pessoas,
  View.Financeiro.Cadastros.Bancos,
  View.Compras.Cadastros.Unidades,
  View.Compras.Cadastros.Grupos,
  View.Compras.Cadastros.SubGrupos,
  View.Consulta;

  type
    iFormularios = interface
      ['{E053B5B1-AD92-46AF-B439-2DCAC6F0129F}']
      function CadastroProdutos(Owner : TForm) : TFrmCadProdutos;
      function CadastroPessoas(Owner : TForm; aCaption : String) : TFrmCadPessoas;
      function CadastroBanco(Owner : TForm) : TFrmCadBancos;
      function CadastroUsuarios(Owner : TForm) : TFrmCadUsuarios;
      function CadastroUnidades(Owner : TForm) : TFrmCadUnidade;
      function CadastroGrupos(Owner : TForm) : TFrmCadGrupos;
      function CadastroSubGrupos(Owner : TForm) : TFrmCadSubGrupos;
      function Consulta(Owner : TForm; aTabela : string; aCaptionForm : string = '') : TFrmConsultaPadrao;

      function TipoFormulario(aValue : String) : iFormularios;
    end;

implementation

end.
