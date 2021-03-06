program Nota;

uses
  Vcl.Forms,
  frmPrincipal in 'SCR\VIEW\frmPrincipal.pas' {Form1},
  nota.controller.NotaFiscal in 'SCR\CONTROLLER\nota.controller.NotaFiscal.pas',
  nota.controller.NotaFiscal.Interfaces in 'SCR\CONTROLLER\nota.controller.NotaFiscal.Interfaces.pas',
  nota.controller.notafiscal.Criar in 'SCR\CONTROLLER\nota.controller.notafiscal.Criar.pas',
  nota.controller.notafiscal.Validar in 'SCR\CONTROLLER\nota.controller.notafiscal.Validar.pas',
  nota.controller.notafiscal.Enviar in 'SCR\CONTROLLER\nota.controller.notafiscal.Enviar.pas',
  nota.controller.notafiscal.Gravar in 'SCR\CONTROLLER\nota.controller.notafiscal.Gravar.pas',
  nota.controller.notafiscal.Email in 'SCR\CONTROLLER\nota.controller.notafiscal.Email.pas',
  nota.controller.Invoker in 'SCR\CONTROLLER\nota.controller.Invoker.pas',
  nota.controller.notafiscal.ImportarPedido in 'SCR\CONTROLLER\nota.controller.notafiscal.ImportarPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
