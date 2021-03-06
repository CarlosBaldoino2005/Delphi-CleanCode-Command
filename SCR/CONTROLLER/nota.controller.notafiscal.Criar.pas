unit nota.controller.notafiscal.Criar;

interface

uses
  nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotafiscalCriar = class(TInterfacedObject,iCommand)
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

constructor TControllerNotafiscalCriar.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotafiscalCriar.destroy;
begin

  inherited;
end;

function TControllerNotafiscalCriar.Execute: iCommand;
begin
  Result := Self;
  FParent.Criar;
end;

class function TControllerNotafiscalCriar.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
