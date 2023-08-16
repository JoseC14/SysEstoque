unit uDtoTransportadora;

interface
  type
    Transportadora = class
      private
        FCnpj     : String;
        FTelefone : String;
        FEndereco : String;
        procedure setCnpj(const Value: string);
        procedure setTelefone(const Value: string);
        procedure setEndereco(const Value: string);

      public
      property Cnpj     : string read FCnpj write setCnpj;
      property Telefone : string read FTelefone write setTelefone;
      property Endereco : string read FEndereco write setEndereco;

    end;

implementation

{ Transportadora }

procedure Transportadora.setCnpj(const Value: string);
begin
  FCnpj := Value;
end;

procedure Transportadora.setEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure Transportadora.setTelefone(const Value: string);
begin
  FTelefone := Value;
end;

end.
