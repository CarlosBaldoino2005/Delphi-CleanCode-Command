unit nota.controller.Invoker;

interface

uses nota.controller.NotaFiscal.Interfaces,
     System.Generics.Collections;

type
 TControllerInvoker = Class(TInterfacedObject,iInvoker)
   private
     Flista : TList<iCommand>;
   public
     constructor Create;
     destructor destroy; override;
     class function New : iInvoker;
     function Add ( Value : iCommand) : iInvoker;
     function Execute : iInvoker;
 End;


implementation

{ TControllerInvoker }

function TControllerInvoker.Add(Value: iCommand): iInvoker;
begin
  Flista.Add(Value);
end;

constructor TControllerInvoker.Create;
begin
  Flista := TList<iCommand>.Create;
end;

destructor TControllerInvoker.destroy;
begin
  Flista.Free;
  inherited;
end;

function TControllerInvoker.Execute: iInvoker;
var i:Integer;
begin
  Result := Self;
  for I := 0 to Pred(Flista.Count) do
    Flista[i].Execute;
end;

class function TControllerInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
