unit Model.Conexao;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Phys.SQLite,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  System.SysUtils,
  Vcl.Forms,
  Interfaces.Conexao;

  type
    TConexao = class(TInterfacedObject, iConexao)
      private
        FConexao: TFDConnection;
      public
        Constructor Create;
        destructor destroy; override;
        class function New : iconexao;
        function Conexao : TCustomConnection;
    end;


implementation

{ TConexao }

function TConexao.Conexao: TCustomConnection;
begin
  result := Fconexao;
end;

constructor TConexao.Create;
begin
  if (FileExists(ExtractFilePath(Application.ExeName) + 'Banco\Banco.db')) then
  begin
    FConexao := TFDConnection.Create(nil);
    FConexao.DriverName := 'SQLite';
    FConexao.Params.Add('LockingMode=Normal');
    FConexao.Params.Database := ExtractFilePath(Application.ExeName) + 'Banco\Banco.db';
    FConexao.Connected := True;
  end
   else
     raise Exception.Create('N�o foi encontrado o arquivo: ' + ExtractFilePath(Application.ExeName) + 'Banco.db');
end;

destructor TConexao.destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TConexao.New: iconexao;
begin
  result := Self.Create;
end;

end.
