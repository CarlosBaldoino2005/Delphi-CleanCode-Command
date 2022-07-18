unit nota.controller.notafiscal.Email;

interface

uses
  nota.controller.NotaFiscal.Interfaces;

type
  TControllerNotafiscalEmail = class(TInterfacedObject,iCommand)
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

constructor TControllerNotafiscalEmail.Create(Parent : iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotafiscalEmail.destroy;
begin

  inherited;
end;

function TControllerNotafiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FParent.Email;
end;

class function TControllerNotafiscalEmail.New(Parent : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;


end.
