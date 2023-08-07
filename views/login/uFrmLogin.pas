unit uFrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts, uFrmCadUser,
  uPrincipal, uUtils;

type
  TfrmLogin = class(TForm)
    CardLogin: TLayout;
    InsiraSeusDados: TText;
    BemVindodeVolta: TText;
    Text2: TText;
    Text3: TText;
    Senha: TRectangle;
    edSenha: TEdit;
    btnCadUsuario: TRectangle;
    CadastrarUsuario: TText;
    Login: TRectangle;
    Text4: TText;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Text5: TText;
    Text7: TText;
    Text6: TText;
    Titulo: TLayout;
    SuaPlataforma: TText;
    deEstoque: TText;
    Text1: TText;
    procedure LoginClick(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure CadastrarUsuarioClick(Sender: TObject);
    procedure btnCadUsuarioClick(Sender: TObject);
    procedure LoginMouseEnter(Sender: TObject);
    procedure Text4MouseEnter(Sender: TObject);
    procedure LoginMouseLeave(Sender: TObject);
    procedure Text4MouseLeave(Sender: TObject);
  private
    { Private declarations }
    procedure mostrarCadUsuario();
    procedure mostrarPrincipal();
    procedure mudarCorLoginEnter();
    procedure mudarCorLoginLeave();
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

procedure TfrmLogin.btnCadUsuarioClick(Sender: TObject);
begin
  mostrarCadUsuario;
end;

procedure TfrmLogin.CadastrarUsuarioClick(Sender: TObject);
begin
  mostrarCadUsuario;
end;

procedure TfrmLogin.LoginClick(Sender: TObject);
begin
  mostrarPrincipal;
end;

procedure TfrmLogin.LoginMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(Login);
  uUtils.Free;
end;

procedure TfrmLogin.LoginMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoLeave(Login);
end;

procedure TfrmLogin.mudarCorLoginLeave;
begin
  Login.Fill.Color := TAlphaColors.Blueviolet;
end;

procedure TfrmLogin.mostrarCadUsuario;
var
  frmCadUser : TfrmCadUser;
begin
  frmCadUser := TfrmCadUser.Create(Self);
  frmCadUser.Show;
  Visible := False
end;

procedure TfrmLogin.mostrarPrincipal;
var
  frmPrincipal : TfrmPrincipal;
begin
  frmPrincipal := TfrmPrincipal.Create(Self);
  frmPrincipal.Show;
  Visible      := False

end;

procedure TfrmLogin.mudarCorLoginEnter;
begin
  Login.Fill.Color := $FF9F88AE;
end;

procedure TfrmLogin.Text4Click(Sender: TObject);
begin
  mostrarPrincipal;
end;

procedure TfrmLogin.Text4MouseEnter(Sender: TObject);
begin
  mudarCorLoginEnter;
end;

procedure TfrmLogin.Text4MouseLeave(Sender: TObject);
begin
  mudarCorLoginLeave;
end;

end.
