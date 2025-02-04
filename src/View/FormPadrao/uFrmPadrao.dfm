object FrmPadrao: TFrmPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FormPadrao'
  ClientHeight = 437
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnFundo: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnMenu: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 437
      Align = alLeft
      BevelEdges = [beRight]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      object BtnExcluir: TButton
        AlignWithMargins = True
        Left = 3
        Top = 159
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = BtnExcluirClick
      end
      object BtnCancelar: TButton
        AlignWithMargins = True
        Left = 3
        Top = 107
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = BtnCancelarClick
      end
      object BtnGravar: TButton
        AlignWithMargins = True
        Left = 3
        Top = 55
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Editar'
        TabOrder = 1
        OnClick = BtnGravarClick
      end
      object btnNovo: TButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Novo'
        TabOrder = 0
        OnClick = btnNovoClick
      end
      object BtnSair: TButton
        AlignWithMargins = True
        Left = 3
        Top = 388
        Width = 105
        Height = 46
        Align = alBottom
        Caption = 'Sair'
        TabOrder = 4
        OnClick = BtnSairClick
      end
    end
    object PageControl: TPageControl
      Left = 113
      Top = 0
      Width = 587
      Height = 437
      ActivePage = TabConsulta
      Align = alClient
      TabOrder = 1
      object TabConsulta: TTabSheet
        Caption = 'Consulta'
        object pnTopTabConsulta: TPanel
          Left = 0
          Top = 0
          Width = 579
          Height = 50
          Align = alTop
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 0
          object lbConsultar: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 569
            Height = 13
            Align = alTop
            Caption = 'Consultar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 54
          end
          object edtConsulta: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 272
            Height = 21
            Margins.Right = 300
            Align = alTop
            TabOrder = 0
            TextHint = 'Buscar Por C'#243'digo ou Descri'#231#227'o'
            OnChange = edtConsultaChange
          end
        end
        object pnCentralpnTopTabConsulta: TPanel
          Left = 0
          Top = 50
          Width = 579
          Height = 359
          Align = alClient
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 1
          object dbGrid: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 569
            Height = 351
            Align = alClient
            BorderStyle = bsNone
            DataSource = DataSource
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbGridDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Width = 400
                Visible = True
              end>
          end
        end
      end
      object TabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        object pnCentralTabCadastro: TPanel
          Left = 0
          Top = 0
          Width = 579
          Height = 409
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 0
          object lbCodigo: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 38
            Height = 13
            Align = alTop
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtCodigo: TDBEdit
            Left = 3
            Top = 18
            Width = 108
            Height = 21
            DataSource = DataSource
            TabOrder = 0
          end
        end
      end
    end
  end
  object DataSource: TDataSource
    Left = 792
    Top = 35
  end
end
