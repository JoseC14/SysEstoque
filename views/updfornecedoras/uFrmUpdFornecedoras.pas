unit uFrmUpdFornecedoras;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, uUtils;

type
  TfrmUpdFornecedoras = class(TForm)
    SuaPlataforma: TText;
    btnAlterar: TRectangle;
    Text8: TText;
    Text4: TText;
    Rectangle2: TRectangle;
    Edit2: TEdit;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Text3: TText;
    Telefone: TRectangle;
    edTelefone: TEdit;
    Text1: TText;
    Text2: TText;
    NomeTransportadora: TRectangle;
    edTransportadora: TEdit;
    procedure Text8MouseEnter(Sender: TObject);
    procedure btnAlterarMouseEnter(Sender: TObject);
    procedure Text8MouseLeave(Sender: TObject);
    procedure btnAlterarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpdFornecedoras: TfrmUpdFornecedoras;

implementation

{$R *.fmx}

procedure TfrmUpdFornecedoras.btnAlterarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);

  uUtils.Free;
end;

procedure TfrmUpdFornecedoras.btnAlterarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);

  uUtils.Free;
end;

procedure TfrmUpdFornecedoras.Text8MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);

  uUtils.Free;
end;

procedure TfrmUpdFornecedoras.Text8MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);

  uUtils.Free;
end;

end.
