inherited FrmCadProdutos: TFrmCadProdutos
  Caption = 'Cadastro de Produtos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    inherited PageControl: TPageControl
      ActivePage = TabCadastro
      inherited TabConsulta: TTabSheet
        inherited pnTopTabConsulta: TPanel
          inherited lbConsultar: TLabel
            ExplicitLeft = 0
            ExplicitWidth = 569
          end
        end
      end
      inherited TabCadastro: TTabSheet
        inherited pnCentralTabCadastro: TPanel
          ExplicitLeft = 2
          inherited lbCodigo: TLabel
            Width = 569
          end
          object Label1: TLabel [1]
            AlignWithMargins = True
            Left = 3
            Top = 41
            Width = 55
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel [2]
            AlignWithMargins = True
            Left = 289
            Top = 41
            Width = 101
            Height = 13
            Caption = 'Descri'#231#227'o Tecnica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbGrupos: TLabel [3]
            AlignWithMargins = True
            Left = 3
            Top = 82
            Width = 168
            Height = 13
            Caption = 'Grupos (Press F2 P/ Consulta)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lnSubGrupos: TLabel [4]
            AlignWithMargins = True
            Left = 289
            Top = 82
            Width = 192
            Height = 13
            Caption = 'Sub Grupos (Press F2 P/ Consulta)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited edtCodigo: TDBEdit
            DataField = 'codigo'
            TabOrder = 3
          end
          object edtDescricao: TDBEdit
            Tag = 99
            Left = 3
            Top = 58
            Width = 286
            Height = 21
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 0
          end
          object edtDescTecnica: TDBEdit
            Tag = 99
            Left = 289
            Top = 58
            Width = 282
            Height = 21
            DataField = 'desctecnica'
            DataSource = DataSource
            TabOrder = 1
          end
          object edtCodigoGrupos: TDBEdit
            Tag = 99
            Left = 0
            Top = 99
            Width = 43
            Height = 21
            DataField = 'codgrupos'
            DataSource = DataSource
            TabOrder = 2
            OnKeyDown = edtCodigoGruposKeyDown
          end
          object edtdescGrupos: TDBEdit
            Tag = 99
            Left = 44
            Top = 99
            Width = 245
            Height = 21
            DataField = 'descgrupos'
            DataSource = DataSource
            ReadOnly = True
            TabOrder = 4
            OnKeyDown = edtCodigoGruposKeyDown
          end
          object edtCodSubGrupos: TDBEdit
            Tag = 99
            Left = 289
            Top = 99
            Width = 43
            Height = 21
            DataField = 'codsubgrupos'
            DataSource = DataSource
            TabOrder = 5
            OnKeyDown = edtCodSubGruposKeyDown
          end
          object edtDescSubGrupos: TDBEdit
            Tag = 99
            Left = 332
            Top = 99
            Width = 239
            Height = 21
            DataField = 'descsubgrupos'
            DataSource = DataSource
            ReadOnly = True
            TabOrder = 6
            OnKeyDown = edtCodSubGruposKeyDown
          end
        end
      end
    end
  end
end
