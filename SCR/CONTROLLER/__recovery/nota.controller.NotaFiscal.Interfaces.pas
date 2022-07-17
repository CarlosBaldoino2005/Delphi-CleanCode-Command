unit nota.controller.NotaFiscal.Interfaces;

interface

type
  iNotaFiscal = interface
    ['{19D4CB5C-BC15-4FC6-BF29-F5AF42BB41F2}']
    function Criar : iNotaFiscal;
    function Validar : iNotaFiscal;
    function Enviar : iNotaFiscal;
    function Gravar : iNotaFiscal;
    function Email : iNotaFiscal;
    function EnviarNotaSefaz : iNotaFiscal;
  end;

implementation

end.
