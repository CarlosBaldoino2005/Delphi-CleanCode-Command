unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses nota.controller.NotaFiscal.Interfaces, nota.controller.NotaFiscal,
  nota.controller.notafiscal.Criar;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TControllerNotaFiscal
               .New
               .GerarNotaPedido(10);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
