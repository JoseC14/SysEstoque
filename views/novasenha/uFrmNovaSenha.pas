unit uFrmNovaSenha;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, uFrmTudoPronto,
  uUtils;

type
  TfrmNovaSenha = class(TForm)
    CardLogin: TLayout;
    InsiraSeusDados: TText;
    BemVindodeVolta: TText;
    RedefinirSenha: TRectangle;
    Text4: TText;
    Text8: TText;
    Titulo: TLayout;
    SuaPlataforma: TText;
    Text1: TText;
    Image1: TImage;
    NovaSenha: TRectangle;
    edNovaSenha: TEdit;
    Text3: TText;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Text2: TText;
    PasswordEditButton1: TPasswordEditButton;
    PasswordEditButton2: TPasswordEditButton;
    procedure RedefinirSenhaClick(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure Text8Click(Sender: TObject);
    procedure RedefinirSenhaMouseEnter(Sender: TObject);
    procedure Text4MouseEnter(Sender: TObject);
    procedure RedefinirSenhaMouseLeave(Sender: TObject);
    procedure Text4MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovaSenha: TfrmNovaSenha;

implementation

{$R *.fmx}

uses uFrmLogin;

procedure TfrmNovaSenha.RedefinirSenhaClick(Sender: TObject);
Var
frmTudoPronto : TfrmTudoPronto;
begin
  frmTudoPronto := TfrmTudoPronto.Create(Self);

  frmTudoPronto.Show;
  Visible := False;
end;

procedure TfrmNovaSenha.RedefinirSenhaMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(RedefinirSenha)
end;

procedure TfrmNovaSenha.RedefinirSenhaMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.voltaCorBotaoDegrade(RedefinirSenha)
end;

procedure TfrmNovaSenha.Text4Click(Sender: TObject);
Var
frmTudoPronto : TfrmTudoPronto;
begin
  frmTudoPronto := TfrmTudoPronto.Create(Self);

  frmTudoPronto.Show;
  Visible := False;
end;

procedure TfrmNovaSenha.Text4MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(RedefinirSenha);
end;

procedure TfrmNovaSenha.Text4MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.voltaCorBotaoDegrade(RedefinirSenha)

end;

procedure TfrmNovaSenha.Text8Click(Sender: TObject);
begin
  uFrmLogin.frmLogin.Visible := True;
  Close;
end;

end.
