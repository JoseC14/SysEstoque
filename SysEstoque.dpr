program SysEstoque;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'views\principal\uPrincipal.pas' {Form1},
  uFrmLogin in 'views\login\uFrmLogin.pas' {frmLogin},
  uFrmDashboard in 'views\dashboard\uFrmDashboard.pas' {frmDashboard};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.Run;
end.
