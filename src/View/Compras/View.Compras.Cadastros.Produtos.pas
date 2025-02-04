unit View.Compras.Cadastros.Produtos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  uFrmPadrao,
  Data.DB,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Controller.Crud,
  Interfaces.Crud;

type
  TFrmCadProdutos = class(TFrmPadrao)
    edtDescricao: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDescTecnica: TDBEdit;
    lbGrupos: TLabel;
    edtCodigoGrupos: TDBEdit;
    edtdescGrupos: TDBEdit;
    lnSubGrupos: TLabel;
    edtCodSubGrupos: TDBEdit;
    edtDescSubGrupos: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure edtCodigoGruposKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodSubGruposKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FOpen     : iSQLOpen;
    FInsert   : iSQLInsert;
    FDelete   : iSQLDelete;
    FUpdate   : iSQLUpdate;
    FCancelar : iSQLCancelar;
  public
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation

{$R *.dfm}

uses Controller.Formularios;

procedure TFrmCadProdutos.BtnCancelarClick(Sender: TObject);
begin
  FCancelar
    := TControllerCrud
      .New
        ._CancelSQL
          ._Cancelar(DataSource);

  inherited;
end;

procedure TFrmCadProdutos.BtnExcluirClick(Sender: TObject);
begin
  FDelete
    := TControllerCrud
      .New
        ._DeleteSQL
          ._Delete('produtos',IntToStr(dbGrid.DataSource.DataSet.Fields[0].AsInteger));
  inherited;
end;

procedure TFrmCadProdutos.BtnGravarClick(Sender: TObject);
begin
  if (BtnGravar.Caption = 'Editar') then
  begin
    FUpdate
      := TControllerCrud
        .New
          ._UpdateSQL
            ._Update;
  end
    else if (BtnGravar.Caption = 'Gravar') then
  begin
    FUpdate
      := TControllerCrud
        .New
          ._UpdateSQL
            ._Update;
  end;
  inherited;
end;

procedure TFrmCadProdutos.btnNovoClick(Sender: TObject);
begin
  FInsert
    := TControllerCrud
      .New
        ._InsertSQL
          ._Insert('produtos',DataSource);

  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmCadProdutos.dbGridDblClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmCadProdutos.edtCodigoGruposKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_F2) then
  begin
    TAbrirFormularios
     .New
      .Consulta
       .Consulta(Self,'grupos','Grupos')
        .ShowModal;
  end;
end;

procedure TFrmCadProdutos.edtCodSubGruposKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_F2) then
  begin
    TAbrirFormularios
     .New
      .Consulta
       .Consulta(Self,'subgrupos','Sub-Grupos')
        .ShowModal;
  end;
end;

procedure TFrmCadProdutos.FormShow(Sender: TObject);
begin
  FOpen
    := TControllerCrud
      .New
        ._OpenSQL
          ._Open('produtos',DataSource);
  inherited;
end;
end.
