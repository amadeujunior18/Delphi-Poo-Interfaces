unit View.Compras.Cadastros.SubGrupos;

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
  TFrmCadSubGrupos = class(TFrmPadrao)
    edtDescricao: TDBEdit;
    lbDescricao: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
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
  FrmCadSubGrupos: TFrmCadSubGrupos;

implementation

{$R *.dfm}

procedure TFrmCadSubGrupos.BtnCancelarClick(Sender: TObject);
begin
  FCancelar
    := TControllerCrud
      .New
        ._CancelSQL
          ._Cancelar(DataSource);
  inherited;
end;

procedure TFrmCadSubGrupos.BtnExcluirClick(Sender: TObject);
begin
  FDelete
    := TControllerCrud
      .New
        ._DeleteSQL
          ._Delete('produtos',IntToStr(dbGrid.DataSource.DataSet.Fields[0].AsInteger));
  inherited;
end;

procedure TFrmCadSubGrupos.BtnGravarClick(Sender: TObject);
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

procedure TFrmCadSubGrupos.btnNovoClick(Sender: TObject);
begin
  FInsert
    := TControllerCrud
      .New
        ._InsertSQL
          ._Insert('subgrupos',DataSource);
  inherited;
  edtDescricao.SetFocus;
end;

end.
