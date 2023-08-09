unit uFrmProdutos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Grid, FMX.Layouts, uUtils, uFrmCadProdutos, uFrmUpdProdutos,
  FMX.StdCtrls;

type
  TfrmProdutos = class(TForm)
    SuaPlataforma: TText;
    Pesquisa: TRectangle;
    edPesquisa: TEdit;
    btnCadastrar: TRectangle;
    Text1: TText;
    btnAlterar: TRectangle;
    Text2: TText;
    btnDeletar: TRectangle;
    Text3: TText;
    Grid1: TGrid;
    LayPrincipal: TLayout;
    SearchEditButton1: TSearchEditButton;
    procedure btnCadastrarMouseEnter(Sender: TObject);
    procedure btnCadastrarMouseLeave(Sender: TObject);
    procedure Text1MouseEnter(Sender: TObject);
    procedure Text1MouseLeave(Sender: TObject);
    procedure btnAlterarMouseEnter(Sender: TObject);
    procedure btnAlterarMouseLeave(Sender: TObject);
    procedure Text2MouseEnter(Sender: TObject);
    procedure Text2MouseLeave(Sender: TObject);
    procedure btnDeletarMouseEnter(Sender: TObject);
    procedure Text3MouseEnter(Sender: TObject);
    procedure btnDeletarMouseLeave(Sender: TObject);
    procedure Text3MouseLeave(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure Text2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.fmx}

uses uPrincipal;

procedure TfrmProdutos.btnAlterarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);
  uUtils.Free;
end;

procedure TfrmProdutos.btnAlterarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);
  uUtils.Free;
end;

procedure TfrmProdutos.btnCadastrarClick(Sender: TObject);
begin
  frmCadProdutos.ShowModal;
end;

procedure TfrmProdutos.btnCadastrarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmProdutos.btnCadastrarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmProdutos.btnDeletarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnDeletar);
  uUtils.Free;
end;

procedure TfrmProdutos.btnDeletarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnDeletar);
  uUtils.Free;
end;

procedure TfrmProdutos.Text1Click(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(btnCadastrar);
  frmCadProdutos.ShowModal;
end;

procedure TfrmProdutos.Text1MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmProdutos.Text1MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);
  uUtils.Free;
end;

procedure TfrmProdutos.Text2Click(Sender: TObject);
Var
formUpdProdutos : TfrmUpdProdutos;
begin
  formUpdProdutos := TfrmUpdProdutos.Create(Self);
  formUpdProdutos.ShowModal;;
end;

procedure TfrmProdutos.Text2MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);
  uUtils.Free;
end;

procedure TfrmProdutos.Text2MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);
  uUtils.Free;
end;

procedure TfrmProdutos.Text3MouseEnter(Sender: TObject);
Var
  uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnDeletar);
  uUtils.Free;
end;

procedure TfrmProdutos.Text3MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnDeletar);
  uUtils.Free;
end;

end.
