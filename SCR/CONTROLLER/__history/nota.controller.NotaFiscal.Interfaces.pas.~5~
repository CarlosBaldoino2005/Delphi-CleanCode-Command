unit nota.controller.NotaFiscal.Interfaces;

interface

type
  iCommand = interface
    ['{85D47C3D-54A2-4EBA-8412-31BF45F26658}']
    function Execute : iCommand;
  end;

  iInvoker = interface
    ['{A6E47B63-7E22-4E78-9302-20A8A81970D1}']
    function Add ( Value : iCommand) : iInvoker;
    function Execute : iInvoker;
  end;

  iNotaFiscal = interface
    ['{19D4CB5C-BC15-4FC6-BF29-F5AF42BB41F2}']
    function Criar   : iNotaFiscal;
    function Validar : iNotaFiscal;
    function Enviar  : iNotaFiscal;
    function Gravar  : iNotaFiscal;
    function Email   : iNotaFiscal;

  end;

  iNotaFiscalView = interface
    ['{D7270ABB-EC84-4221-879D-14CF5E332A14}']
    function EnviarNotaSefaz : iNotaFiscal;
  end;

implementation

end.
