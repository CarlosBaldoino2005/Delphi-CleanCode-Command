unit nota.controller.NotaFiscal;

interface

uses nota.controller.NotaFiscal.Interfaces,
     nota.controller.notafiscal.Email,
     nota.controller.notafiscal.Enviar,
     nota.controller.notafiscal.Gravar,
     nota.controller.notafiscal.Validar,
     nota.controller.notafiscal.Criar;

type
  TControllerNotaFiscal = class(TInterfacedObject, iNotaFiscal,iNotaFiscalView)
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

uses
  nota.controller.Invoker;

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
  TControllerInvoker
    .New
      .Add(TControllerNotafiscalCriar.New(self))
      .Add(TControllerNotafiscalValidar.New(self))
      .Add(TControllerNotafiscalEnviar.New(self))
      .Add(TControllerNotafiscalGravar.New(self))
      .Add(TControllerNotafiscalEmail.New(self))
      .Execute;
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
