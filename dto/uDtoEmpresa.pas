unit uDtoEmpresa;

interface
  type
    Empresa = class
      private
        FNome       : string;
        FCnpj       : string;
        FCidade     : string;
        FUf         : string;
        FCaminhoNfe : string;
    procedure setCidade(const Value: string);
    procedure setCnpj(const Value: string);
    procedure setNfe(const Value: string);
    procedure setNome(const Value: string);
    procedure setUf(const Value: string);
      public
        property Nome : string read FNome write setNome;
        property Cnpj : string read FCnpj write setCnpj;
        property Cidade : string read FCidade write setCidade;
        property Uf     : string read FUf write setUf;
        property CaminhoNfe : string read FCaminhoNfe write setNfe;
    end;

implementation

{ Empresa }

procedure Empresa.setCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure Empresa.setCnpj(const Value: string);
begin
  FCnpj := Value;
end;

procedure Empresa.setNfe(const Value: string);
begin
  FCaminhoNfe := Value;
end;

procedure Empresa.setNome(const Value: string);
begin
  FNome := Value;
end;

procedure Empresa.setUf(const Value: string);
begin
  FUf := Value;
end;

end.
