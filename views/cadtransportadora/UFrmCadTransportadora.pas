unit UFrmCadTransportadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, uUtils;

type
  TfrmCadTransportadora = class(TForm)
    SuaPlataforma: TText;
    NomeTransportadora: TRectangle;
    edTransportadora: TEdit;
    Text2: TText;
    Text1: TText;
    Telefone: TRectangle;
    edTelefone: TEdit;
    Text3: TText;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    Edit2: TEdit;
    Text4: TText;
    btnCadastrar: TRectangle;
    Text8: TText;
    procedure Text8MouseEnter(Sender: TObject);
    procedure btnCadastrarMouseEnter(Sender: TObject);
    procedure btnCadastrarMouseLeave(Sender: TObject);
    procedure Text8MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTransportadora: TfrmCadTransportadora;

implementation

{$R *.fmx}

procedure TfrmCadTransportadora.btnCadastrarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);

  uUtils.Free;
end;

procedure TfrmCadTransportadora.btnCadastrarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);

  uUtils.Free;
end;

procedure TfrmCadTransportadora.Text8MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnCadastrar);

  uUtils.Free;
end;

procedure TfrmCadTransportadora.Text8MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnCadastrar);

  uUtils.Free;
end;

end.