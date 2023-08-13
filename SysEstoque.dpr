program SysEstoque;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'views\principal\uPrincipal.pas' {Form1},
  uFrmDashboard in 'views\dashboard\uFrmDashboard.pas' {frmDashboard},
  uFrmCadUser in 'views\caduser\uFrmCadUser.pas' {frmCadUser},
  uFrmLogin in 'views\login\uFrmLogin.pas' {frmLogin},
  uFrmProdutos in 'views\produtos\uFrmProdutos.pas' {frmProdutos},
  uUtils in 'uUtils.pas',
  uFrmCadProdutos in 'views\cadprodutos\uFrmCadProdutos.pas' {frmCadProdutos},
  uFrmUpdProdutos in 'views\updprodutos\uFrmUpdProdutos.pas' {frmUpdProdutos},
  uFrmTransportadora in 'views\transportadoras\uFrmTransportadora.pas' {frmTransportadora},
  UFrmCadTransportadora in 'views\cadtransportadora\UFrmCadTransportadora.pas' {frmCadTransportadora},
  uFrmUpdTransportadora in 'views\updtranportadora\uFrmUpdTransportadora.pas' {frmUpdTransportadora},
  uFrmFornecedoras in 'views\fornecedores\uFrmFornecedoras.pas' {frmFornecedoras},
  uFrmCadFornecedores in 'views\cadfornecedores\uFrmCadFornecedores.pas' {frmCadFornecedores},
  uFrmUpdFornecedoras in 'views\updfornecedoras\uFrmUpdFornecedoras.pas' {frmUpdFornecedoras},
  uFrmRelTransportadora in 'views\reltransportadoras\uFrmRelTransportadora.pas' {frmRelTransportadora},
  uFrmRelFornecedoras in 'views\relfornecedoras\uFrmRelFornecedoras.pas' {frmRelFornecedoras},
  uFrmRelProdutos in 'views\relprodutos\uFrmRelProdutos.pas' {frmRelProdutos},
  uFrmConfiguracoes in 'views\configuracoes\uFrmConfiguracoes.pas' {frmConfiguracoes},
  uFrmTudoPronto in 'views\tudopronto\uFrmTudoPronto.pas' {frmTudoPronto},
  uFrmEsqueceuSenha in 'views\esqueceusenha\uFrmEsqueceuSenha.pas' {frmEsqueciSenha},
  uFrmCodigo in 'views\codigo\uFrmCodigo.pas' {frmCodigo},
  uFrmNovaSenha in 'views\novasenha\uFrmNovaSenha.pas' {frmNovaSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.CreateForm(TfrmCadUser, frmCadUser);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmCadProdutos, frmCadProdutos);
  Application.CreateForm(TfrmUpdProdutos, frmUpdProdutos);
  Application.CreateForm(TfrmTransportadora, frmTransportadora);
  Application.CreateForm(TfrmCadTransportadora, frmCadTransportadora);
  Application.CreateForm(TfrmUpdTransportadora, frmUpdTransportadora);
  Application.CreateForm(TfrmFornecedoras, frmFornecedoras);
  Application.CreateForm(TfrmCadFornecedores, frmCadFornecedores);
  Application.CreateForm(TfrmUpdFornecedoras, frmUpdFornecedoras);
  Application.CreateForm(TfrmRelTransportadora, frmRelTransportadora);
  Application.CreateForm(TfrmRelFornecedoras, frmRelFornecedoras);
  Application.CreateForm(TfrmRelProdutos, frmRelProdutos);
  Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  Application.CreateForm(TfrmTudoPronto, frmTudoPronto);
  Application.CreateForm(TfrmEsqueciSenha, frmEsqueciSenha);
  Application.CreateForm(TfrmCodigo, frmCodigo);
  Application.CreateForm(TfrmNovaSenha, frmNovaSenha);
  Application.Run;
end.
