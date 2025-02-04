unit Interfaces.Crud;

interface

uses
  Data.DB;

  type
   iSQLOpen = interface
     ['{6C05D1FE-EE28-4029-8083-D56DF4B867E9}']
     function _Open(aTabela : string; aDataSource : TDataSource) : iSQLOpen; overload;
     function _Open(aTabela : string; aParam : String; aDataSource : TDataSource) : iSQLOpen; overload;
     function _Open(aTabela : string; aUsuario : String; aSenha : String; aDataSource : TDataSource) : iSQLOpen; overload;
   end;

   iSQLInsert = interface
     ['{6C05D1FE-EE28-4029-8083-D56DF4B867E9}']
     function _Insert(aTabela : String; aDataSource : TDataSource) : iSQLInsert; overload;
   end;

   iSQLUpdate = interface
     ['{6C05D1FE-EE28-4029-8083-D56DF4B867E9}']
     function _Update : iSQLUpdate; overload;
     function _Update(aTabela : String; aDataSource : TDataSource) : iSQLUpdate; overload;
     function TipoFormulario(aTipoForm : String) : iSQLUpdate;
   end;

   iSQLDelete = interface
     ['{6C05D1FE-EE28-4029-8083-D56DF4B867E9}']
     function _Delete(aTabela : string; aParam : String) : iSQLDelete;
   end;

   iSQLCancelar = interface
     ['{6C05D1FE-EE28-4029-8083-D56DF4B867E9}']
     function _Cancelar(aDataSource : TDataSource) : iSQLCancelar;
   end;

implementation

end.
