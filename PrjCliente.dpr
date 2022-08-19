program PrjCliente;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {frmPrincipal},
  UntCliente in 'UntCliente.pas' {frmCliente},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
