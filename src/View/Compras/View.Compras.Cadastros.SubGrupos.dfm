inherited FrmCadSubGrupos: TFrmCadSubGrupos
  Caption = 'Cadastro de Sub Grupos'
  ClientHeight = 263
  ClientWidth = 502
  ExplicitWidth = 508
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 502
    Height = 263
    inherited pnMenu: TPanel
      Height = 263
      inherited BtnSair: TButton
        Top = 214
      end
    end
    inherited PageControl: TPageControl
      Width = 389
      Height = 263
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 381
        ExplicitHeight = 235
        inherited pnTopTabConsulta: TPanel
          Width = 381
          inherited lbConsultar: TLabel
            Width = 371
          end
          inherited edtConsulta: TEdit
            Width = 371
            Margins.Right = 3
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 381
          Height = 185
          inherited dbGrid: TDBGrid
            Width = 371
            Height = 177
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 381
        ExplicitHeight = 235
        inherited pnCentralTabCadastro: TPanel
          Width = 381
          Height = 235
          inherited lbCodigo: TLabel
            Width = 371
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
            Top = 56
            Width = 369
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
