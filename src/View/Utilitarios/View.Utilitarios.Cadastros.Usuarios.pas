unit View.Utilitarios.Cadastros.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmCadUsuarios = class(TFrmPadrao)
    edtDescricao: TDBEdit;
    lbDescricao: TLabel;
    DBEdit2: TDBEdit;
    lbSenha: TLabel;
    Label1: TLabel;
    cbStatus: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsuarios: TFrmCadUsuarios;

implementation

{$R *.dfm}

end.
