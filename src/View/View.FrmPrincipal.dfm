object FrmPrincipal: TFrmPrincipal
  Left = 343
  Top = 231
  Caption = 'Sistema de Vendas POO-Interface'
  ClientHeight = 639
  ClientWidth = 1270
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1270
    Height = 620
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 620
    Width = 1270
    Height = 19
    Panels = <
      item
        Text = 'Empresa:'
        Width = 200
      end>
  end
  object MainMenu: TMainMenu
    Left = 6
    Top = 3
    object mCompras: TMenuItem
      Caption = 'Compras'
      object mComprasCadastros: TMenuItem
        Caption = 'Cadastros'
        object mComprasCadastros_Unidades: TMenuItem
          Caption = 'Unidades'
          OnClick = mComprasCadastros_UnidadesClick
        end
        object mComprasCadastros_Fornecedores: TMenuItem
          Caption = 'Fornecedores'
          OnClick = mComprasCadastros_FornecedoresClick
        end
        object mComprasCadastros_Fabricantes: TMenuItem
          Caption = 'Fabricantes'
          OnClick = mComprasCadastros_FabricantesClick
        end
        object mComprasCadastros_Grupos: TMenuItem
          Caption = 'Grupos'
          OnClick = mComprasCadastros_GruposClick
        end
        object mComprasCadastros_SubGrupos: TMenuItem
          Caption = 'Sub Grupos'
          OnClick = mComprasCadastros_SubGruposClick
        end
        object mComprasCadastros_Produtos: TMenuItem
          Caption = 'Produtos'
          OnClick = mComprasCadastros_ProdutosClick
        end
      end
    end
    object mVendas: TMenuItem
      Caption = 'Vendas'
      object mVendasCadastros: TMenuItem
        Caption = 'Cadastro'
        object mVendasCadastros_Clientes: TMenuItem
          Caption = 'Clientes'
          OnClick = mVendasCadastros_ClientesClick
        end
      end
    end
    object mFinanceiro: TMenuItem
      Caption = 'Financeiro'
      object mFinanceiroCadastro: TMenuItem
        Caption = 'Cadastro'
        object mFinanceiroCadastros_Bancos: TMenuItem
          Caption = 'Bancos'
          OnClick = mFinanceiroCadastros_BancosClick
        end
      end
    end
    object mRH: TMenuItem
      Caption = 'Recursos Humanos'
      object mRHCadastros: TMenuItem
        Caption = 'Cadastros'
        object mRHCadastros_Funcionarios: TMenuItem
          Caption = 'Funcion'#225'rios'
          OnClick = mRHCadastros_FuncionariosClick
        end
      end
    end
    object mUtilitarios: TMenuItem
      Caption = 'Utilit'#225'rios'
      object mUtilitariosCadastros: TMenuItem
        Caption = 'Cadastros'
        object mUtilitariosCadastros_Empresa: TMenuItem
          Caption = 'Empresas'
          OnClick = mUtilitariosCadastros_EmpresaClick
        end
        object mUtilitariosCadastros_Usuarios: TMenuItem
          Caption = 'Usu'#225'rios'
          OnClick = mUtilitariosCadastros_UsuariosClick
        end
      end
    end
  end
  object DataSource: TDataSource
    Left = 37
    Top = 3
  end
end
