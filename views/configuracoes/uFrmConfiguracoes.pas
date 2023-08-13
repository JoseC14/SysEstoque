unit uFrmConfiguracoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.StdCtrls;

type
  TfrmConfiguracoes = class(TForm)
    SuaPlataforma: TText;
    Usuario: TRectangle;
    edUsuario: TEdit;
    SenhaAntiga: TRectangle;
    edSenhaAntiga: TEdit;
    NovaSenha: TRectangle;
    edNovaSenha: TEdit;
    Email: TRectangle;
    edEmail: TEdit;
    Text1: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text2: TText;
    ConfirmaSenha: TRectangle;
    edConfirmaSenha: TEdit;
    Login: TRectangle;
    Text6: TText;
    btnCadUsuario: TRectangle;
    CadastrarUsuario: TText;
    LayPrincipal: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

{$R *.fmx}

uses uPrincipal;

end.
