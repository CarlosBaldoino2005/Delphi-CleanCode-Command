unit nota.controller.notafiscal.Gravar;

interface

uses
  nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotafiscalGravar = class(TInterfacedObject,iCommand)
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

constructor TControllerNotafiscalGravar.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotafiscalGravar.destroy;
begin

  inherited;
end;

function TControllerNotafiscalGravar.Execute: iCommand;
begin
  Result := Self;
  FParent.Gravar;
end;

class function TControllerNotafiscalGravar.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;


end.
