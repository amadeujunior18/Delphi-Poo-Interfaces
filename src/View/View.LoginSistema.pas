unit View.LoginSistema;

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
  Funcoes,
  Controller.Crud,
  Interfaces.Crud, Data.DB;

type
  TFrmLoginSistema = class(TForm)
    pnCentral: TPanel;
    pnMeio: TPanel;
    imgLogo: TImage;
    lbUsuario: TLabel;
    edtUsuario: TEdit;
    lbSenha: TLabel;
    edtSenha: TEdit;
    btnEntrar: TButton;
    btnSair: TButton;
    DataSource: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FOpen : iSQLOpen;
  public
    { Public declarations }
  end;

var
  FrmLoginSistema: TFrmLoginSistema;

implementation

{$R *.dfm}

procedure TFrmLoginSistema.btnEntrarClick(Sender: TObject);
begin
  if (ValidarCampos(self) = True) then
  begin
    aviso('Aten��o... Campo Obrigat�rio ! '+GvarCaption);
    exit;
  end
   else
  begin
   FOpen
    := TControllerCrud
     .New
      ._OpenSQL
       ._Open('usuarios',edtUsuario.Text,edtSenha.Text,DataSource);
  end;
end;

procedure TFrmLoginSistema.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmLoginSistema.FormCreate(Sender: TObject);
begin
  imgLogo.Picture.LoadFromFile('..\Bin\Imagens\imgLogo.jpg');
end;

procedure TFrmLoginSistema.FormKeyPress(Sender: TObject; var Key: Char);
begin
  TabEnter(key);
end;

end.
