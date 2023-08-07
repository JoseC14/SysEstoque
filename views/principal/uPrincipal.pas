unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Objects, FMX.Layouts, FMX.Controls3D, FMX.Layers3D,
  FMX.Controls.Presentation, FMX.StdCtrls, uFrmDashboard, FMX.Ani;

type
  TfrmPrincipal = class(TForm)
    Layout1: TLayout;
    Navbar: TRectangle;
    Gerenciamento: TText;
    de: TText;
    Estoque: TText;
    Dashboard: TRectangle;
    Text1: TText;
    Produtos: TRectangle;
    Text2: TText;
    Image1: TImage;
    Transportadora: TRectangle;
    Text3: TText;
    Image2: TImage;
    Relatorios: TRectangle;
    Text4: TText;
    Image3: TImage;
    Menu: TImage;
    AnimMenu: TFloatAnimation;
    Principal: TLayout;
    AnimPrincipal: TFloatAnimation;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    procedure ProdutosMouseEnter(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Text2MouseEnter(Sender: TObject);
    procedure ProdutosMouseLeave(Sender: TObject);
    procedure Text2MouseLeave(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure DashboardMouseEnter(Sender: TObject);
    procedure Text1MouseEnter(Sender: TObject);
    procedure DashboardMouseLeave(Sender: TObject);
    procedure Text1MouseLeave(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Text3MouseEnter(Sender: TObject);
    procedure TransportadoraMouseEnter(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Text3MouseLeave(Sender: TObject);
    procedure TransportadoraMouseLeave(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Text4MouseEnter(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure RelatoriosMouseEnter(Sender: TObject);
    procedure Text4MouseLeave(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure RelatoriosMouseLeave(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure MenuClick(Sender: TObject);
  private
    { Private declarations }
    isMenuVIsible : Boolean;
  public
    { Public declarations }
    procedure mudarCorEnter( Rectangle : TRectangle );
    procedure mudarCorLeave(Rectangle  : TRectangle );
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.DashboardMouseEnter(Sender: TObject);
begin
mudarCorEnter(Dashboard)
end;

procedure TfrmPrincipal.DashboardMouseLeave(Sender: TObject);
begin
mudarCorLeave(Dashboard)
end;

procedure TfrmPrincipal.Image1MouseEnter(Sender: TObject);
begin
mudarCorEnter(Produtos);
end;

procedure TfrmPrincipal.Image1MouseLeave(Sender: TObject);
begin
mudarCorLeave(Produtos);
end;

procedure TfrmPrincipal.Image2MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Transportadora)
end;

procedure TfrmPrincipal.Image2MouseLeave(Sender: TObject);
begin
 mudarCorLeave(Transportadora)
end;

procedure TfrmPrincipal.Image3MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Relatorios)
end;

procedure TfrmPrincipal.Image3MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Relatorios)
end;

procedure TfrmPrincipal.Image4MouseEnter(Sender: TObject);
begin
mudarCorEnter(Dashboard)
end;

procedure TfrmPrincipal.Image4MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Dashboard)
end;

procedure TfrmPrincipal.MenuClick(Sender: TObject);
begin
  if isMenuVisible = False then
  begin
   AnimMenu.StopValue      := -200;
   AnimMenu.Start;
   isMenuVisible           := True;

  end
  else
  begin

    AnimMenu.StopValue      := 0;
    AnimMenu.Start;
    isMenuVisible           := False;
  end;


end;

procedure TfrmPrincipal.mudarCorEnter(Rectangle: TRectangle);
begin
  Rectangle.Fill.Color        := $FFF8F8F8;
  Rectangle.Fill.Kind         := TBrushKind.Solid;
end;

procedure TfrmPrincipal.mudarCorLeave(Rectangle: TRectangle);
begin
  Rectangle.Fill.Kind         := TBrushKind.None;
end;

procedure TfrmPrincipal.ProdutosMouseEnter(Sender: TObject);
begin
mudarCorEnter(Produtos);
end;

procedure TfrmPrincipal.ProdutosMouseLeave(Sender: TObject);
begin
mudarCorLeave(Produtos);
end;

procedure TfrmPrincipal.RelatoriosMouseEnter(Sender: TObject);
begin
  mudarCorEnter(Relatorios)
end;

procedure TfrmPrincipal.RelatoriosMouseLeave(Sender: TObject);
begin
  mudarCorLeave(Relatorios)
end;

procedure TfrmPrincipal.Text1Click(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
  if Principal.ChildrenCount <> 0 then
  begin
    Principal.Children.CleanupInstance;
    uFrmDashboard        := TfrmDashboard.Create(Self);
    uFrmDashboard.LayPrincipal.Parent := Principal;
    uFrmDashboard.LayPrincipal.Create(Self);
  end;


end;

procedure TfrmPrincipal.Text1MouseEnter(Sender: TObject);
begin
mudarCorEnter(Dashboard)
end;

procedure TfrmPrincipal.Text1MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Dashboard)
end;

procedure TfrmPrincipal.Text2MouseEnter(Sender: TObject);
begin
mudarCorEnter(Produtos);
end;

procedure TfrmPrincipal.Text2MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Produtos);
end;

procedure TfrmPrincipal.Text3MouseEnter(Sender: TObject);
begin
mudarCorEnter(Transportadora)
end;

procedure TfrmPrincipal.Text3MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Transportadora)
end;

procedure TfrmPrincipal.Text4MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Relatorios)
end;

procedure TfrmPrincipal.Text4MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Relatorios)
end;

procedure TfrmPrincipal.TransportadoraMouseEnter(Sender: TObject);
begin
  mudarCorEnter(Transportadora)
end;

procedure TfrmPrincipal.TransportadoraMouseLeave(Sender: TObject);
begin
 mudarCorLeave(Transportadora)
end;

end.
