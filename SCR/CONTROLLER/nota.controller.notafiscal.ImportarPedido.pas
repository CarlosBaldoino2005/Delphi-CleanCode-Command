unit nota.controller.notafiscal.ImportarPedido;

interface

uses
  nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotafiscalImportarPedido = class(TInterfacedObject,iCommand)
    private
      FParent : iNotaFiscal;
      FPedido : Integer;
    public
      constructor Create(Parent : iNotaFiscal;Pedido : Integer);
      destructor destroy; override;
      class function New(Parent : iNotaFiscal;Pedido : Integer) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TControllerNotafiscalCriar }

constructor TControllerNotafiscalImportarPedido.Create(Parent : iNotaFiscal;Pedido : Integer);
begin
  FParent := Parent;
  FPedido := Pedido;
end;

destructor TControllerNotafiscalImportarPedido.destroy;
begin

  inherited;
end;

function TControllerNotafiscalImportarPedido.Execute: iCommand;
begin
  Result := Self;
  FParent.ImportarPedido(FPedido);
end;

class function TControllerNotafiscalImportarPedido.New(Parent : iNotaFiscal;Pedido : Integer) : iCommand;
begin
  Result := Self.Create(Parent,Pedido);
end;

end.
