unit uFrmRelTransportadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.DateTimeCtrls,
  FMX.Layouts, uUtils;

type
  TfrmRelTransportadora = class(TForm)
    btnGerar: TRectangle;
    Text8: TText;
    NomeTransportadora: TRectangle;
    edTransportadora: TEdit;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    Edit2: TEdit;
    SuaPlataforma: TText;
    Telefone: TRectangle;
    edTelefone: TEdit;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    dtDe: TDateEdit;
    dtAte: TDateEdit;
    LayPrincipal: TLayout;
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
  frmRelTransportadora: TfrmRelTransportadora;

implementation

{$R *.fmx}

procedure TfrmRelTransportadora.btnGerarMouseEnter(Sender: TObject);
Var
Uutils : utils;
begin
 Uutils := utils.Create;
 Uutils.mudaCorBotaoEnter(btnGerar);
end;

procedure TfrmRelTransportadora.btnGerarMouseLeave(Sender: TObject);
Var
Uutils : utils;
begin
 Uutils := utils.Create;
 Uutils.voltaCorBotaoDegrade(btnGerar);
end;

procedure TfrmRelTransportadora.Text8MouseEnter(Sender: TObject);
Var
Uutils : utils;
begin
 Uutils := utils.Create;
 Uutils.mudaCorBotaoEnter(btnGerar);
end;

procedure TfrmRelTransportadora.Text8MouseLeave(Sender: TObject);
Var
Uutils : utils;
begin
 Uutils := utils.Create;
 Uutils.voltaCorBotaoDegrade(btnGerar);
end;

end.
