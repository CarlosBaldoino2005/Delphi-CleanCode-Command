unit nota.controller.notafiscal.Enviar;

interface

uses
  nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotafiscalEnviar = class(TInterfacedObject,iCommand)
    private
      FParent : iNotaFiscal;
    public
      constructor Create(Parent : iNotaFiscal);
      destructor destroy; override;
      class function New(Parent : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TControllerNotafiscalCriar }

constructor TControllerNotafiscalEnviar.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotafiscalEnviar.destroy;
begin

  inherited;
end;

function TControllerNotafiscalEnviar.Execute: iCommand;
begin
  Result := Self;
  FParent.Enviar;
end;

class function TControllerNotafiscalEnviar.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;


end.
