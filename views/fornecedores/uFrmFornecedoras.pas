unit uFrmFornecedoras;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Objects, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts, uUtils, uFrmCadFornecedores,
  uFrmUpdFornecedoras;

type
  TfrmFornecedoras = class(TForm)
    LayPrincipal: TLayout;
    Pesquisa: TRectangle;
    edPesquisa: TEdit;
    SearchEditButton1: TSearchEditButton;
    SuaPlataforma: TText;
    btnAlterar: TRectangle;
    Text2: TText;
    btnCadastrar: TRectangle;
    Text1: TText;
    btnDeletar: TRectangle;
    Text3: TText;
    Grid1: TGrid;
    procedure Text1MouseEnter(Sender: TObject);
    procedure btnCadastrarMouseEnter(Sender: TObject);
    procedure Text2MouseEnter(Sender: TObject);
    procedure btnAlterarMouseEnter(Sender: TObject);
    procedure Text2MouseLeave(Sender: TObject);
    procedure btnAlterarMouseLeave(Sender: TObject);
    procedure Text3MouseEnter(Sender: TObject);
    procedure btnDeletarMouseEnter(Sender: TObject);
    procedure Text3MouseLeave(Sender: TObject);
    procedure btnDeletarMouseLeave(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure Text2Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCadastrarMouseLeave(Sender: TObject);
    procedure Text1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedoras: TfrmFornecedoras;

implementation

{$R *.fmx}

procedure TfrmFornecedoras.btnAlterarClick(Sender: TObject);
begin
 frmUpdFornecedoras.ShowModal;
end;

procedure TfrmFornecedoras.btnAlterarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.btnAlterarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.btnCadastrarClick(Sender: TObject);
begin
  frmCadFornecedores.ShowModal;
end;

procedure TfrmFornecedoras.btnCadastrarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.btnCadastrarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.btnDeletarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnDeletar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.btnDeletarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnDeletar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.Text1Click(Sender: TObject);
begin
  frmCadFornecedores.ShowModal;
end;

procedure TfrmFornecedoras.Text1MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.Text1MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.Text2Click(Sender: TObject);
begin
  frmUpdFornecedoras.ShowModal;
end;

procedure TfrmFornecedoras.Text2MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.Text2MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.Text3MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnDeletar);
  uUtils.Free;
end;

procedure TfrmFornecedoras.Text3MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnDeletar);
  uUtils.Free;
end;

end.
