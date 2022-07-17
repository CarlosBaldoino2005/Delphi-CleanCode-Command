unit nota.controller.NotaFiscal;

interface

uses nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscal = class(TInterfacedObject, iNotaFiscal)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iNotaFiscal;
      function Criar : iNotaFiscal;
      function Validar : iNotaFiscal;
      function Enviar : iNotaFiscal;
      function Gravar : iNotaFiscal;
      function Email : iNotaFiscal;
      function EnviarNotaSefaz : iNotaFiscal;
  end;

implementation

{ TControllerNotaFiscal }

constructor TControllerNotaFiscal.Create;
begin

end;

function TControllerNotaFiscal.Criar: iNotaFiscal;
begin
  Result := Self;
end;

destructor TControllerNotaFiscal.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscal.Email: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.Enviar: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.EnviarNotaSefaz: iNotaFiscal;
begin
  Result := Self;
end;

function TControllerNotaFiscal.Gravar: iNotaFiscal;
begin
  Result := Self;
end;

class function TControllerNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TControllerNotaFiscal.Validar: iNotaFiscal;
begin
  Result := Self;
end;

end.
