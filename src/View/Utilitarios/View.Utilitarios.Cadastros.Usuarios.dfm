inherited FrmCadUsuarios: TFrmCadUsuarios
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 316
  ClientWidth = 570
  ExplicitWidth = 576
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 570
    Height = 316
    inherited pnMenu: TPanel
      Height = 316
      inherited BtnSair: TButton
        Top = 267
      end
    end
    inherited PageControl: TPageControl
      Width = 457
      Height = 316
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 449
        ExplicitHeight = 288
        inherited pnTopTabConsulta: TPanel
          Width = 449
          inherited lbConsultar: TLabel
            Width = 439
          end
          inherited edtConsulta: TEdit
            Width = 439
            Margins.Right = 3
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 449
          Height = 238
          inherited dbGrid: TDBGrid
            Width = 439
            Height = 230
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 449
        ExplicitHeight = 288
        inherited pnCentralTabCadastro: TPanel
          Width = 449
          Height = 288
          ExplicitLeft = 2
          inherited lbCodigo: TLabel
            Width = 439
            ExplicitLeft = 0
            ExplicitTop = 45
            ExplicitWidth = 569
          end
          object lbDescricao: TLabel [1]
            AlignWithMargins = True
            Left = 3
            Top = 42
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
          object lbSenha: TLabel [2]
            AlignWithMargins = True
            Left = 306
            Top = 42
            Width = 35
            Height = 13
            Caption = 'Senha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel [3]
            AlignWithMargins = True
            Left = 359
            Top = 3
            Width = 37
            Height = 13
            Caption = 'Status'
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
            Left = 3
            Top = 59
            Width = 302
            Height = 21
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 306
            Top = 59
            Width = 134
            Height = 21
            DataField = 'senha'
            DataSource = DataSource
            TabOrder = 2
          end
          object cbStatus: TDBComboBox
            Left = 359
            Top = 18
            Width = 81
            Height = 21
            DataField = 'flag_status'
            DataSource = DataSource
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 3
          end
        end
      end
    end
  end
end
