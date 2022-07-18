unit nota.controller.notafiscal.Validar;

interface

uses
  nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotafiscalValidar = class(TInterfacedObject,iCommand)
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

constructor TControllerNotafiscalValidar.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotafiscalValidar.destroy;
begin

  inherited;
end;

function TControllerNotafiscalValidar.Execute: iCommand;
begin
  Result := Self;
  FParent.Validar;
end;

class function TControllerNotafiscalValidar.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;


end.
