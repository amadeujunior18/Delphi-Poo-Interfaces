unit Controller.Formularios;

interface

 uses
   Interfaces.Controller.Formularios,
   Interfaces.Formularios,
   Model.Formularios;

  type
    TAbrirFormularios = class(TInterfacedObject, iAbrirFormularios)
      private
        FFormProdutos : iFormularios;
        FFormPessoas : iFormularios;
        FFormBancos   : iFormularios;
        FFormFuncionarios   : iFormularios;
        FFormUsuarios   : iFormularios;
        FFormUnidades  : iFormularios;
        FFormGrupos  : iFormularios;
        FFormSubGrupos  : iFormularios;
        FConsulta  : iFormularios;
        FForm          : iFormularios;
      public
        constructor create;
        destructor destroy; override;
      class function New : iAbrirFormularios;
        function CadastroProdutos : iFormularios;
        function CadastroPessoas : iFormularios;
        function CadastroBancos : iFormularios;
        function CadastroUsuarios : iFormularios;
        function CadastroUnidades : iFormularios;
        function CadastroGrupos : iFormularios;
        function CadastroSubGrupos : iFormularios;
        function Consulta : iFormularios;
        function _TipoForm  : iFormularios;
    end;

implementation

uses
  System.SysUtils;

{ TAbrirFormularios }

function TAbrirFormularios.CadastroBancos: iFormularios;
begin
  if not Assigned(FFormBancos) then
    FFormBancos := TFormulario.New;
  Result := FFormBancos;
end;

function TAbrirFormularios.CadastroProdutos: iFormularios;
begin
  if Not Assigned(FFormProdutos) then
    FFormProdutos := TFormulario.New;
  Result := FFormProdutos;
end;

function TAbrirFormularios.CadastroSubGrupos: iFormularios;
begin
  if Not Assigned(FFormSubGrupos) then
    FFormSubGrupos := TFormulario.New;
  Result := FFormSubGrupos;
end;

function TAbrirFormularios.CadastroUnidades: iFormularios;
begin
  if Not Assigned(FFormUnidades) then
    FFormUnidades := TFormulario.New;
  Result := FFormUnidades;
end;

function TAbrirFormularios.CadastroUsuarios: iFormularios;
begin
  if Not Assigned(FFormUsuarios) then
    FFormUsuarios := TFormulario.New;
  Result := FFormUsuarios;
end;

function TAbrirFormularios.Consulta: iFormularios;
begin
  if Not Assigned(FConsulta) then
    FConsulta := TFormulario.New;
  Result := FConsulta;
end;

function TAbrirFormularios.CadastroGrupos: iFormularios;
begin
  if Not Assigned(FFormGrupos) then
    FFormGrupos := TFormulario.New;
  Result := FFormGrupos;
end;

function TAbrirFormularios.CadastroPessoas: iFormularios;
begin
  if Not Assigned(FFormPessoas) then
    FFormPessoas := TFormulario.New;
  Result := FFormPessoas;
end;

constructor TAbrirFormularios.create;
begin

end;

destructor TAbrirFormularios.destroy;
begin

  inherited;
end;

class function TAbrirFormularios.New: iAbrirFormularios;
begin
  Result := Self.create;
end;

function TAbrirFormularios._TipoForm: iFormularios;
begin
  FForm := TFormulario.New;
  Result := FForm;
end;

end.
