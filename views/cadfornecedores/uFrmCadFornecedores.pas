unit uFrmCadFornecedores;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.Edit, uUtils, MaskUtils;

type
  TfrmCadFornecedores = class(TForm)
    NomeTransportadora: TRectangle;
    edTransportadora: TEdit;
    Text2: TText;
    Text1: TText;
    Telefone: TRectangle;
    edTelefone: TEdit;
    SuaPlataforma: TText;
    Text3: TText;
    CNPJ: TRectangle;
    edCNPJ: TEdit;
    Rectangle2: TRectangle;
    Edit2: TEdit;
    Text4: TText;
    btnCadastrar: TRectangle;
    Text8: TText;
    procedure Text8MouseEnter(Sender: TObject);
    procedure btnCadastrarMouseEnter(Sender: TObject);
    procedure btnCadastrarMouseLeave(Sender: TObject);
    procedure Text8MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

{$R *.fmx}

procedure TfrmCadFornecedores.btnCadastrarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);

  uUtils.Free;
end;

procedure TfrmCadFornecedores.btnCadastrarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);

  uUtils.Free;
end;

procedure TfrmCadFornecedores.FormCreate(Sender: TObject);
begin
  edCNPJ.Text := FormatMaskText('000.000.00-00', edCNPJ.Text);
end;

procedure TfrmCadFornecedores.Text8MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);

  uUtils.Free;

end;

procedure TfrmCadFornecedores.Text8MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);

  uUtils.Free;
end;

end.
