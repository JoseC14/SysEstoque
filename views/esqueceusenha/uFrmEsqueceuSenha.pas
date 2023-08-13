unit uFrmEsqueceuSenha;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, uFrmCodigo,
  uUtils;

type
  TfrmEsqueciSenha = class(TForm)
    CardLogin: TLayout;
    InsiraSeusDados: TText;
    BemVindodeVolta: TText;
    Text2: TText;
    RecuperarSenha: TRectangle;
    Text4: TText;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Text8: TText;
    Titulo: TLayout;
    SuaPlataforma: TText;
    Text1: TText;
    Image1: TImage;
    procedure Text8Click(Sender: TObject);
    procedure RecuperarSenhaClick(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure RecuperarSenhaMouseEnter(Sender: TObject);
    procedure Text4MouseEnter(Sender: TObject);
    procedure RecuperarSenhaMouseLeave(Sender: TObject);
    procedure Text4MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEsqueciSenha: TfrmEsqueciSenha;

implementation

{$R *.fmx}

uses uFrmLogin;

procedure TfrmEsqueciSenha.RecuperarSenhaClick(Sender: TObject);
Var
frmCodigo : TfrmCodigo;
begin
  frmCodigo := TfrmCodigo.Create(Self);
  frmCodigo.Show;
  Visible   := False;
end;

procedure TfrmEsqueciSenha.RecuperarSenhaMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(RecuperarSenha);
end;

procedure TfrmEsqueciSenha.RecuperarSenhaMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.voltaCorBotaoDegrade(RecuperarSenha);
end;

procedure TfrmEsqueciSenha.Text4Click(Sender: TObject);
Var
frmCodigo : TfrmCodigo;
begin
  frmCodigo := TfrmCodigo.Create(Self);
  frmCodigo.Show;
  Visible   := False;
end;

procedure TfrmEsqueciSenha.Text4MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(RecuperarSenha);
end;

procedure TfrmEsqueciSenha.Text4MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.voltaCorBotaoDegrade(RecuperarSenha);
end;

procedure TfrmEsqueciSenha.Text8Click(Sender: TObject);
begin
  uFrmLogin.frmLogin.Visible := True;
  Close;
end;

end.
