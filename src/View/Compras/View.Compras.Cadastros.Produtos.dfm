inherited FrmCadProdutos: TFrmCadProdutos
  Caption = 'Cadastro de Produtos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    inherited PageControl: TPageControl
      inherited TabConsulta: TTabSheet
        inherited pnTopTabConsulta: TPanel
          inherited lbConsultar: TLabel
            Width = 569
          end
        end
      end
      inherited TabCadastro: TTabSheet
        inherited pnCentralTabCadastro: TPanel
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
            Left = 288
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
          inherited edtCodigo: TDBEdit
            DataField = 'codigo'
          end
          object edtDescricao: TDBEdit
            Tag = 99
            Left = 3
            Top = 58
            Width = 286
            Height = 21
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 1
          end
          object edtDescTecnica: TDBEdit
            Tag = 99
            Left = 289
            Top = 58
            Width = 283
            Height = 21
            DataField = 'desctecnica'
            DataSource = DataSource
            TabOrder = 2
          end
        end
      end
    end
  end
end
