unit uFrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.StdCtrls, FMX.Layouts,
  FMX.Ani;

type
  TfrmLogin = class(TForm)
    SuaPlataforma: TText;
    Titulo: TLayout;
    deEstoque: TText;
    Text1: TText;
    BemVindodeVolta: TText;
    InsiraSeusDados: TText;
    CardLogin: TLayout;
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
    hoverLogin: TColorAnimation;
    Text5: TText;
    Text6: TText;
    Text7: TText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

end.
