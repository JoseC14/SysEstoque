unit uFrmUpdTransportadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, uUtils;

type
  TfrmUpdTransportadora = class(TForm)
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
    btnAlterar: TRectangle;
    Text8: TText;
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
  frmUpdTransportadora: TfrmUpdTransportadora;

implementation

{$R *.fmx}

procedure TfrmUpdTransportadora.btnAlterarMouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);

  uUtils.Free;
end;

procedure TfrmUpdTransportadora.btnAlterarMouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);

  uUtils.Free;

end;

procedure TfrmUpdTransportadora.Text8MouseEnter(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.mudaCorBotaoEnter(btnAlterar);

  uUtils.Free;
end;

procedure TfrmUpdTransportadora.Text8MouseLeave(Sender: TObject);
Var
uUtils : utils;
begin
  uUtils := utils.Create;

  uUtils.voltaCorBotaoDegrade(btnAlterar);

  uUtils.Free;

end;

end.
