inherited FrmCadGrupos: TFrmCadGrupos
  Caption = 'Cadastro de Grupos'
  ClientHeight = 273
  ClientWidth = 430
  OnShow = FormShow
  ExplicitWidth = 436
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 430
    Height = 273
    inherited pnMenu: TPanel
      Height = 273
      inherited BtnSair: TButton
        Top = 224
      end
    end
    inherited PageControl: TPageControl
      Tag = 99
      Width = 317
      Height = 273
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 309
        ExplicitHeight = 245
        inherited pnTopTabConsulta: TPanel
          Width = 309
          inherited lbConsultar: TLabel
            Width = 299
          end
          inherited edtConsulta: TEdit
            Width = 299
            Margins.Right = 3
            ExplicitWidth = 254
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 309
          Height = 195
          inherited dbGrid: TDBGrid
            Width = 299
            Height = 187
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 309
        ExplicitHeight = 245
        inherited pnCentralTabCadastro: TPanel
          Width = 309
          Height = 245
          ExplicitWidth = 526
          ExplicitHeight = 245
          inherited lbCodigo: TLabel
            Width = 299
          end
          object lbDescricao: TLabel [1]
            AlignWithMargins = True
            Left = 3
            Top = 40
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
          inherited edtCodigo: TDBEdit
            DataField = 'codigo'
          end
          object edtDescricao: TDBEdit
            Tag = 99
            Left = 3
            Top = 54
            Width = 294
            Height = 21
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 1
          end
        end
      end
    end
  end
end
