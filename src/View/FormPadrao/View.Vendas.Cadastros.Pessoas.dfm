inherited FrmCadPessoas: TFrmCadPessoas
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 501
  ClientWidth = 996
  OnShow = FormShow
  ExplicitWidth = 1002
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 996
    Height = 501
    ExplicitWidth = 996
    ExplicitHeight = 501
    inherited pnMenu: TPanel
      Height = 501
      ExplicitHeight = 501
      inherited BtnSair: TButton
        Top = 452
        ExplicitTop = 452
      end
    end
    inherited PageControl: TPageControl
      Width = 883
      Height = 501
      ExplicitLeft = 113
      ExplicitWidth = 883
      ExplicitHeight = 501
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 875
        ExplicitHeight = 473
        inherited pnTopTabConsulta: TPanel
          Width = 875
          ExplicitWidth = 875
          inherited lbConsultar: TLabel
            Width = 865
          end
          inherited edtConsulta: TEdit
            Width = 568
            ExplicitWidth = 568
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 875
          Height = 423
          ExplicitWidth = 875
          ExplicitHeight = 423
          inherited dbGrid: TDBGrid
            Width = 865
            Height = 415
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'razaosocial'
                Title.Caption = 'Descri'#231#227'o'
                Width = 255
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fantasia'
                Title.Caption = 'Fantasia'
                Width = 248
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tipo'
                Title.Caption = 'Tipo'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'telefone'
                Title.Caption = 'Telefone'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'celular'
                Title.Caption = 'Celular'
                Width = 108
                Visible = True
              end>
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 875
        ExplicitHeight = 473
        inherited pnCentralTabCadastro: TPanel
          Width = 875
          Height = 473
          ExplicitWidth = 875
          ExplicitHeight = 473
          inherited lbCodigo: TLabel
            Width = 865
          end
          object lbDescricao: TLabel [1]
            AlignWithMargins = True
            Left = 3
            Top = 44
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
            Left = 3
            Top = 62
            Width = 262
            Height = 21
            DataField = 'razaosocial'
            DataSource = DataSource
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited DataSource: TDataSource
    Left = 944
  end
end
