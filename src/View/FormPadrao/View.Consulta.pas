unit View.Consulta;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Controller.Crud,
  Interfaces.Crud,
  Funcoes;
type
  TFrmConsultaPadrao = class(TForm)
    pnPrincipal: TPanel;
    lbBusca: TLabel;
    edtBusca: TEdit;
    dbGrid: TDBGrid;
    DataSource: TDataSource;
    procedure edtBuscaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridDblClick(Sender: TObject);
  private
    { Private declarations }
    FOpen : iSQLOpen;
    procedure Busca();
  public
    { Public declarations }
    FCodigo : Integer;
    FDescricao : String;
    FTabela : string;
  end;

var
  FrmConsultaPadrao: TFrmConsultaPadrao;

implementation

{$R *.dfm}

{ TFrmConsultaPadrao }

procedure TFrmConsultaPadrao.dbGridDblClick(Sender: TObject);
begin
  FCodigo := dbGrid.DataSource.DataSet.Fields[0].AsInteger;
  FDescricao := dbGrid.DataSource.DataSet.Fields[1].AsString;
end;

procedure TFrmConsultaPadrao.dbGridKeyPress(Sender: TObject; var Key: Char);
begin
  if (key >= #32) then
  begin
    edtBusca.Text := key;
     key := #0;
     edtBusca.SetFocus;
    edtBusca.SelStart := Length(edtBusca.Text);
  end;
end;

procedure TFrmConsultaPadrao.edtBuscaChange(Sender: TObject);
begin
  Busca();
end;

procedure TFrmConsultaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    close;
  end;
end;

procedure TFrmConsultaPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  TabEnter(key);
end;

procedure TFrmConsultaPadrao.FormShow(Sender: TObject);
begin
  FOpen
    := TControllerCrud
     .New
      ._OpenSQL
        ._Open(FTabela,DataSource);
end;

procedure TFrmConsultaPadrao.Busca;
begin
  dbGrid.DataSource.DataSet.Filter := 'codigo <> 0';
  if edtBusca.Text <> '' then
   dbGrid.DataSource.DataSet.Filter := dbGrid.DataSource.DataSet.Filter +
     ' and (upper('+dbGrid.DataSource.DataSet.Fields[0].FieldName+') like ' + quotedstr('%' + UpperCase(edtBusca.Text) + '%')
       + ' OR upper('+dbGrid.DataSource.DataSet.Fields[1].FieldName+') like ' + quotedstr('%' + UpperCase(edtBusca.Text) + '%') + ')';
  dbGrid.DataSource.DataSet.Filtered := true;
end;
end.
