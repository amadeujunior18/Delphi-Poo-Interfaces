object FrmConsultaPadrao: TFrmConsultaPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Padr'#227'o'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lbBusca: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 625
      Height = 13
      Margins.Left = 5
      Margins.Right = 5
      Align = alTop
      Caption = 'Busca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 33
    end
    object edtBusca: TEdit
      Left = 5
      Top = 18
      Width = 314
      Height = 21
      TabOrder = 0
      OnChange = edtBuscaChange
    end
    object dbGrid: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 44
      Width = 625
      Height = 252
      Margins.Left = 5
      Margins.Right = 5
      Align = alBottom
      BorderStyle = bsNone
      DataSource = DataSource
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbGridDblClick
      OnKeyPress = dbGridKeyPress
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
          Width = 500
          Visible = True
        end>
    end
  end
  object DataSource: TDataSource
    Left = 600
    Top = 8
  end
end
