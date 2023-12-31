unit uFrmRelProdutos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects,
  FMX.Layouts, uUtils;

type
  TfrmRelProdutos = class(TForm)
    LayPrincipal: TLayout;
    btnGerar: TRectangle;
    Text8: TText;
    Layout1: TLayout;
    SuaPlataforma: TText;
    Text1: TText;
    Text2: TText;
    NomeProduto: TRectangle;
    edProduto: TEdit;
    Preco: TRectangle;
    edPreco: TEdit;
    Pre�o: TText;
    Quantidade: TRectangle;
    edQuant: TEdit;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    cbTransportadora: TComboBox;
    cbFornecedora: TComboBox;
    cbTipoEntrada: TComboBox;
    Edit1: TEdit;
    Validade: TRectangle;
    deValidade: TDateEdit;
    dtDe: TDateEdit;
    Text9: TText;
    Text10: TText;
    dtAte: TDateEdit;
    procedure btnGerarMouseEnter(Sender: TObject);
    procedure Text8MouseEnter(Sender: TObject);
    procedure btnGerarMouseLeave(Sender: TObject);
    procedure Text8MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.fmx}

procedure TfrmRelProdutos.btnGerarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(btnGerar);
end;

procedure TfrmRelProdutos.btnGerarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.voltaCorBotaoDegrade(btnGerar);
end;

procedure TfrmRelProdutos.Text8MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.mudaCorBotaoEnter(btnGerar);
end;

procedure TfrmRelProdutos.Text8MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;
  uUtils.voltaCorBotaoDegrade(btnGerar);
end;

end.
