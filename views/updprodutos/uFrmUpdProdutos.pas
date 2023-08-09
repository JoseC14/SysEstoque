unit uFrmUpdProdutos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.DateTimeCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects,
  FMX.Layouts;

type
  TfrmUpdProdutos = class(TForm)
    LayPrincipal: TLayout;
    btnCadastrar: TRectangle;
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
    Validade: TRectangle;
    deValidade: TDateEdit;
    cbTransportadora: TComboBox;
    cbFornecedora: TComboBox;
    cbTipoEntrada: TComboBox;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpdProdutos: TfrmUpdProdutos;

implementation

{$R *.fmx}

end.
