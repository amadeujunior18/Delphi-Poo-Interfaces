unit uFrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmPadrao = class(TForm)
    pnFundo: TPanel;
    pnMenu: TPanel;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    BtnGravar: TButton;
    btnNovo: TButton;
    BtnSair: TButton;
    pnTopTabConsulta: TPanel;
    pnCentralpnTopTabConsulta: TPanel;
    pnCentralTabCadastro: TPanel;
    lbConsultar: TLabel;
    edtConsulta: TEdit;
    dbGrid: TDBGrid;
    DataSource: TDataSource;
    lbCodigo: TLabel;
    edtCodigo: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

procedure TFrmPadrao.BtnCancelarClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  TabConsulta.TabVisible := true;
  TabCadastro.TabVisible := false;
end;

procedure TFrmPadrao.btnNovoClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := 1;
  TabConsulta.TabVisible := false;
  TabCadastro.TabVisible := true;
end;

procedure TFrmPadrao.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPadrao.FormActivate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  TabCadastro.TabVisible := false;
end;
end.
