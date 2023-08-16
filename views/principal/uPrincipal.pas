unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Objects, FMX.Layouts, FMX.Controls3D, FMX.Layers3D,
  FMX.Controls.Presentation, FMX.StdCtrls, uFrmDashboard, FMX.Ani, uFrmProdutos,
  uFrmTransportadora, uFrmFornecedoras, uFrmRelTransportadora,
  uFrmRelFornecedoras, uFrmRelProdutos, uFrmConfiguracoes;

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
    AnimMenu: TFloatAnimation;
    Principal: TLayout;
    Fornecedoras: TRectangle;
    Text5: TText;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Text6: TText;
    Text7: TText;
    Text8: TText;
    hoverRelatorios: TRectangle;
    Text9: TText;
    Configuracoes: TRectangle;
    Text10: TText;
    Image7: TImage;
    TelaCheia: TImage;
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
    procedure Text5MouseEnter(Sender: TObject);
    procedure FornecedorasMouseEnter(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure seLeave(Sender: TObject);
    procedure FornecedorasMouseLeave(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Text4MouseEnter(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure RelatoriosMouseEnter(Sender: TObject);
    procedure Text4MouseLeave(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure RelatoriosMouseLeave(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure MenuClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure Text2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DashboardClick(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Text3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure TransportadoraClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Text3MouseEnter(Sender: TObject);
    procedure TransportadoraMouseEnter(Sender: TObject);
    procedure TransportadoraMouseLeave(Sender: TObject);
    procedure Text3MouseLeave(Sender: TObject);
    procedure Text5MouseLeave(Sender: TObject);
    procedure Text5Click(Sender: TObject);
    procedure FornecedorasClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Text6MouseEnter(Sender: TObject);
    procedure Text7MouseEnter(Sender: TObject);
    procedure Text8MouseEnter(Sender: TObject);
    procedure Text6MouseLeave(Sender: TObject);
    procedure Text7MouseLeave(Sender: TObject);
    procedure Text8MouseLeave(Sender: TObject);
    procedure Text6Click(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure RelatoriosClick(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Text7Click(Sender: TObject);
    procedure Text8Click(Sender: TObject);
    procedure Text10Click(Sender: TObject);
    procedure Text10MouseEnter(Sender: TObject);
    procedure ConfiguracoesMouseEnter(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Text10MouseLeave(Sender: TObject);
    procedure ConfiguracoesMouseLeave(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure ConfiguracoesClick(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure TelaCheiaClick(Sender: TObject);
  private
    { Private declarations }
    isMenuVIsible : Boolean;
    isDashboardVisible     : Boolean;
    isProdutosVisible      : Boolean;
    isFornecedoraVisible   : Boolean;
    isTransporadoraVisible : Boolean;
    isRelatoriosVisible    : Boolean;
    isConfiguracoesVisible : Boolean;
    isFullScreen           : Boolean;
    procedure mudarCorEnter( Rectangle : TRectangle );
    procedure mudarCorLeave(Rectangle  : TRectangle; Visible : Boolean );
    procedure mudarCorHoverEnter(Texto : TText);
    procedure mudarCorHoverLeave(Texto : TText);
    procedure checarRelatoriosVisible();
    procedure sumirHover();

  public
    { Public declarations }
     procedure limparTela();

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.Macintosh.fmx MACOS}
{$R *.Windows.fmx MSWINDOWS}

{ TfrmPrincipal }

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
limparTela();
end;

procedure TfrmPrincipal.checarRelatoriosVisible;
begin
   if isRelatoriosVisible = False then
   begin
    hoverRelatorios.Visible  := True;
    isRelatoriosVisible      := True;
   end
   else
   begin
    hoverRelatorios.Visible  := False;
    isRelatoriosVisible      := False;
   end;
end;

procedure TfrmPrincipal.ConfiguracoesClick(Sender: TObject);
begin
if isConfiguracoesVisible = False then
 begin
   limparTela();
   frmConfiguracoes                     := TfrmConfiguracoes.Create(Self);
   frmConfiguracoes.LayPrincipal.Parent := Principal;
   frmConfiguracoes.LayPrincipal.Create(Self);
   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;

   if isFornecedoraVisible = True then
   begin
     isFornecedoraVisible := False;
     mudarCorLeave(Fornecedoras,isFornecedoraVisible);
   end;

   if isDashboardVisible = True then
   begin
     isDashboardVisible := False;
     mudarCorLeave(Dashboard,isDashboardVisible);
   end;
   mudarCorEnter(Configuracoes);
   isConfiguracoesVisible := True;
 end;

end;

procedure TfrmPrincipal.ConfiguracoesMouseEnter(Sender: TObject);
begin
  mudarCorEnter(Configuracoes);
end;

procedure TfrmPrincipal.ConfiguracoesMouseLeave(Sender: TObject);
begin
   mudarCorLeave(Configuracoes,isConfiguracoesVisible);
end;

procedure TfrmPrincipal.DashboardClick(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
if isDashboardVisible = False then
    limparTela();
    uFrmDashboard        := TfrmDashboard.Create(Self);
   uFrmDashboard.LayPrincipal.Parent := Principal;
   uFrmDashboard.LayPrincipal.Create(Self);

 begin
   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;

   if isFornecedoraVisible = True then
   begin
     isFornecedoraVisible := False;
     mudarCorLeave(Fornecedoras,isFornecedoraVisible);
   end;

   if isConfiguracoesVisible = True then
   begin
     isConfiguracoesVisible := False;
     mudarCorLeave(Configuracoes,isConfiguracoesVisible)
   end;
   mudarCorEnter(Dashboard);
   isDashboardVisible := True;
 end;
end;

procedure TfrmPrincipal.DashboardMouseEnter(Sender: TObject);
begin
mudarCorEnter(Dashboard)
end;

procedure TfrmPrincipal.DashboardMouseLeave(Sender: TObject);
begin
  mudarCorLeave(Dashboard,isDashboardVisible)
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
  if isProdutosVisible = False then
  begin
     limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
     isConfiguracoesVisible := False;
     mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Dashboard);
     isProdutosVisible := True;
   end;
end;

procedure TfrmPrincipal.Image1MouseEnter(Sender: TObject);
begin
mudarCorEnter(Produtos);
end;

procedure TfrmPrincipal.Image1MouseLeave(Sender: TObject);
begin
mudarCorLeave(Produtos,isProdutosVisible);
end;

procedure TfrmPrincipal.Image2Click(Sender: TObject);
begin
if isTransporadoraVisible = False then
  begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Transportadora);
     isConfiguracoesVisible := True;
   end;
end;

procedure TfrmPrincipal.Image2MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Transportadora)
end;

procedure TfrmPrincipal.Image2MouseLeave(Sender: TObject);
begin
 mudarCorLeave(Transportadora,isTransporadoraVisible)
end;

procedure TfrmPrincipal.Image3Click(Sender: TObject);
begin
 checarRelatoriosVisible
end;

procedure TfrmPrincipal.Image3MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Relatorios);

end;

procedure TfrmPrincipal.Image3MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Relatorios,isRelatoriosVisible);
end;

procedure TfrmPrincipal.Image4Click(Sender: TObject);
begin
if isFornecedoraVisible = False then
  begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isTransporadoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Transportadora);
     isFornecedoraVisible                := True;
   end;
end;

procedure TfrmPrincipal.Image4MouseEnter(Sender: TObject);
begin
mudarCorEnter(Fornecedoras)
end;

procedure TfrmPrincipal.Image4MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Fornecedoras,isFornecedoraVisible)
end;

procedure TfrmPrincipal.Image6Click(Sender: TObject);
begin
  checarRelatoriosVisible;
end;

procedure TfrmPrincipal.Image6MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Relatorios)
end;

procedure TfrmPrincipal.Image6MouseLeave(Sender: TObject);
begin
 mudarCorLeave(Relatorios,isRelatoriosVisible);
end;

procedure TfrmPrincipal.Image7Click(Sender: TObject);
begin
 if isConfiguracoesVisible = False then
 begin
     limparTela();
   frmConfiguracoes                     := TfrmConfiguracoes.Create(Self);
   frmConfiguracoes.LayPrincipal.Parent := Principal;
   frmConfiguracoes.LayPrincipal.Create(Self);
   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;

   if isFornecedoraVisible = True then
   begin
     isFornecedoraVisible := False;
     mudarCorLeave(Fornecedoras,isFornecedoraVisible);
   end;

   if isDashboardVisible = True then
   begin
     isDashboardVisible := False;
     mudarCorLeave(Dashboard,isDashboardVisible);
   end;


   mudarCorEnter(Configuracoes);
   isConfiguracoesVisible := True;
 end;
end;

procedure TfrmPrincipal.Image7MouseEnter(Sender: TObject);
begin
  mudarCorEnter(Configuracoes);
end;

procedure TfrmPrincipal.Image7MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Configuracoes,isConfiguracoesVisible);
end;

procedure TfrmPrincipal.limparTela;
var i : Integer;
begin
while Principal.Controls.Count > 0 do
    Principal.RemoveObject(Principal.Children[0]);

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

procedure TfrmPrincipal.mudarCorHoverEnter( Texto : TText);
begin
 Texto.TextSettings.FontColor := TAlphaColors.White;
end;

procedure TfrmPrincipal.mudarCorHoverLeave(Texto :TText);
begin
  Texto.TextSettings.FontColor := $FF330650;
end;

procedure TfrmPrincipal.mudarCorLeave(Rectangle: TRectangle; Visible : Boolean);
begin
if Visible = False then
begin
    Rectangle.Fill.Kind         := TBrushKind.None;
end;

end;

procedure TfrmPrincipal.ProdutosClick(Sender: TObject);
begin
  if isProdutosVisible = False then
  begin
     limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Produtos);
     isProdutosVisible := True;
     frmProdutos := TfrmProdutos.Create(Self);
     frmProdutos.LayPrincipal.Parent := Principal;
     frmProdutos.LayPrincipal.Create(self);
   end;
end;

procedure TfrmPrincipal.ProdutosMouseEnter(Sender: TObject);
begin
mudarCorEnter(Produtos);
end;

procedure TfrmPrincipal.ProdutosMouseLeave(Sender: TObject);
begin
mudarCorLeave(Produtos,isProdutosVisible);
end;

procedure TfrmPrincipal.Rectangle1Click(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
if isDashboardVisible = False then
  limparTela();
      uFrmDashboard        := TfrmDashboard.Create(Self);
   uFrmDashboard.LayPrincipal.Parent := Principal;
   uFrmDashboard.LayPrincipal.Create(Self);

   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;
   mudarCorEnter(Dashboard);
   isDashboardVisible := True;
end;

procedure TfrmPrincipal.Rectangle2Click(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
if isDashboardVisible = False then
   limparTela();
      uFrmDashboard        := TfrmDashboard.Create(Self);
   uFrmDashboard.LayPrincipal.Parent := Principal;
   uFrmDashboard.LayPrincipal.Create(Self);

   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;
   mudarCorEnter(Dashboard);
   isDashboardVisible := True;
 end;

procedure TfrmPrincipal.Rectangle3Click(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
if isDashboardVisible = False then
limparTela();
      uFrmDashboard        := TfrmDashboard.Create(Self);
   uFrmDashboard.LayPrincipal.Parent := Principal;
   uFrmDashboard.LayPrincipal.Create(Self);

   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;
   mudarCorEnter(Dashboard);
   isDashboardVisible := True;
 end;

procedure TfrmPrincipal.Rectangle4Click(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
if isDashboardVisible = False then
 limparTela();
      uFrmDashboard        := TfrmDashboard.Create(Self);
   uFrmDashboard.LayPrincipal.Parent := Principal;
   uFrmDashboard.LayPrincipal.Create(Self);

 begin
   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;
   mudarCorEnter(Dashboard);
   isDashboardVisible := True;
 end;
end;

procedure TfrmPrincipal.RelatoriosClick(Sender: TObject);
begin
  checarRelatoriosVisible;
end;

procedure TfrmPrincipal.RelatoriosMouseEnter(Sender: TObject);
begin
  mudarCorEnter(Relatorios);
end;

procedure TfrmPrincipal.RelatoriosMouseLeave(Sender: TObject);
begin
  mudarCorLeave(Relatorios,isRelatoriosVisible);
end;

procedure TfrmPrincipal.TelaCheiaClick(Sender: TObject);
begin
  if isFullScreen = True then
  begin
    FullScreen   := False;
    isFullScreen := False;
    TelaCheia.MultiResBitmap[0].Bitmap.LoadFromFile('../../icons/telacheia.png');
  end
  else
  begin
    FullScreen   := True;
    isFullScreen := True;
    TelaCheia.MultiResBitmap[0].Bitmap.LoadFromFile('../../icons/naotelacheia.png');
  end;
end;

procedure TfrmPrincipal.Text10Click(Sender: TObject);
var
  frmConfiguracoes : TfrmConfiguracoes;
begin
 if isConfiguracoesVisible = False then
 begin
     limparTela();
   frmConfiguracoes                     := TfrmConfiguracoes.Create(Self);
   frmConfiguracoes.LayPrincipal.Parent := Principal;
   frmConfiguracoes.LayPrincipal.Create(Self);
   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;

   if isFornecedoraVisible = True then
   begin
     isFornecedoraVisible := False;
     mudarCorLeave(Fornecedoras,isFornecedoraVisible);
   end;

   if isDashboardVisible = True then
   begin
     isDashboardVisible := False;
     mudarCorLeave(Dashboard,isDashboardVisible);
   end;

   mudarCorEnter(Configuracoes);
   isConfiguracoesVisible := True;
 end;

end;

procedure TfrmPrincipal.Text10MouseEnter(Sender: TObject);
begin
mudarCorEnter(Configuracoes);
end;

procedure TfrmPrincipal.Text10MouseLeave(Sender: TObject);
begin
 mudarCorLeave(Configuracoes,isConfiguracoesVisible);
end;

procedure TfrmPrincipal.Text1Click(Sender: TObject);
var
  uFrmDashboard : TfrmDashboard;
begin
 if isDashboardVisible = False then
   limparTela();
   uFrmDashboard        := TfrmDashboard.Create(Self);
   uFrmDashboard.LayPrincipal.Parent := Principal;
   uFrmDashboard.LayPrincipal.Create(Self);

 begin
   if isProdutosVisible = True then
   begin
     isProdutosVisible := False;
     mudarCorLeave(Produtos,isProdutosVisible);
   end;

   if isTransporadoraVisible = True then
   begin
     isTransporadoraVisible := False;
     mudarCorLeave(Transportadora,isTransporadoraVisible);
   end;

   if isRelatoriosVisible = True then
   begin
     isRelatoriosVisible := False;
     mudarCorLeave(Relatorios,isRelatoriosVisible);
   end;

   if isFornecedoraVisible = True then
   begin
     isFornecedoraVisible := False;
     mudarCorLeave(Fornecedoras,isFornecedoraVisible);
   end;

   if isConfiguracoesVisible = True then
   begin
     isConfiguracoesVisible := False;
     mudarCorLeave(Configuracoes,isConfiguracoesVisible)
   end;
   mudarCorEnter(Dashboard);
   isDashboardVisible := True;
 end;

end;

procedure TfrmPrincipal.Text1MouseEnter(Sender: TObject);
begin
mudarCorEnter(Dashboard)
end;

procedure TfrmPrincipal.Text1MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Dashboard,isDashboardVisible)
end;

procedure TfrmPrincipal.Text2Click(Sender: TObject);
begin
  if isProdutosVisible = False then
  begin
    limparTela();
    frmProdutos := TfrmProdutos.Create(Self);
    frmProdutos.LayPrincipal.Parent := Principal;
    frmProdutos.LayPrincipal.Create(self);
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Produtos);
     isProdutosVisible := True;
   end;
end;

procedure TfrmPrincipal.Text2MouseEnter(Sender: TObject);
begin
mudarCorEnter(Produtos);
end;

procedure TfrmPrincipal.Text2MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Produtos,isProdutosVisible);
end;

procedure TfrmPrincipal.Text3Click(Sender: TObject);
begin
if isTransporadoraVisible = False then
  begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     frmTransportadora                     := TfrmTransportadora.Create(Self);
     frmTransportadora.LayPrincipal.Parent := Principal;
     frmTransportadora.LayPrincipal.Create(Self);
     mudarCorEnter(Transportadora);
     isTransporadoraVisible                := True;
   end;
end;

procedure TfrmPrincipal.Text3MouseEnter(Sender: TObject);
begin
mudarCorEnter(Transportadora);
end;

procedure TfrmPrincipal.Text3MouseLeave(Sender: TObject);
begin
 mudarCorLeave(Transportadora,isTransporadoraVisible)
end;

procedure TfrmPrincipal.Text5Click(Sender: TObject);
Var
frmFornecedoras : TFrmFornecedoras;
begin
if isFornecedoraVisible = False then
  begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     frmFornecedoras := TfrmFornecedoras.Create(Self);
     frmFornecedoras.LayPrincipal.Parent := Principal;
     frmFornecedoras.LayPrincipal.Create(Self);
     mudarCorEnter(Fornecedoras);
     isFornecedoraVisible := True;
   end;
end;

procedure TfrmPrincipal.Text5MouseEnter(Sender: TObject);
begin
mudarCorEnter(Fornecedoras)
end;

procedure TfrmPrincipal.Text5MouseLeave(Sender: TObject);
begin
  mudarCorLeave(Fornecedoras,isFornecedoraVisible)
end;

procedure TfrmPrincipal.Text6Click(Sender: TObject);
Var
frmRelTransportadora : TfrmRelTransportadora;
begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Relatorios);
     frmRelTransportadora                     := TfrmRelTransportadora.Create(Self);
     frmRelTransportadora.LayPrincipal.Parent := Principal;
     frmRelTransportadora.LayPrincipal.SendToBack;
     frmRelTransportadora.LayPrincipal.Create(Self);
     hoverRelatorios.Visible := False;
end;

procedure TfrmPrincipal.Text6MouseEnter(Sender: TObject);
begin
  mudarCorHoverEnter(Text6);
end;

procedure TfrmPrincipal.Text6MouseLeave(Sender: TObject);
begin
  mudarCorHoverLeave(Text6);
end;

procedure TfrmPrincipal.Text7Click(Sender: TObject);
Var
frmRelFornecedoras : TfrmRelFornecedoras;
begin
     limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Relatorios);
     frmRelFornecedoras                       := TfrmRelFornecedoras.Create(Self);
     frmRelFornecedoras.LayPrincipal.Parent   := Principal;
     frmRelFornecedoras.LayPrincipal.SendToBack;
     frmRelFornecedoras.LayPrincipal.Create(Self);
     hoverRelatorios.Visible := False;
end;

procedure TfrmPrincipal.Text7MouseEnter(Sender: TObject);
begin
  mudarCorHoverEnter(Text7);
end;

procedure TfrmPrincipal.Text7MouseLeave(Sender: TObject);
begin
  mudarCorHoverLeave(Text7);
end;

procedure TfrmPrincipal.Text8Click(Sender: TObject);
Var
frmRelProdutos : TfrmRelProdutos;
begin
  limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isTransporadoraVisible = True then
     begin
       isTransporadoraVisible := False;
       mudarCorLeave(Transportadora,isTransporadoraVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     mudarCorEnter(Relatorios);
     frmRelProdutos                           := TfrmRelProdutos.Create(Self);
     frmRelProdutos.LayPrincipal.Parent       := Principal;
     frmRelProdutos.LayPrincipal.SendToBack;
     frmRelProdutos.LayPrincipal.Create(Self);
     hoverRelatorios.Visible := False;
end;

procedure TfrmPrincipal.Text8MouseEnter(Sender: TObject);
begin
  mudarCorHoverEnter(Text8);
end;

procedure TfrmPrincipal.Text8MouseLeave(Sender: TObject);
begin
  mudarCorHoverLeave(Text8);
end;

procedure TfrmPrincipal.seLeave(Sender: TObject);
begin
  mudarCorLeave(Fornecedoras,isFornecedoraVisible)
end;

procedure TfrmPrincipal.sumirHover;
begin
  hoverRelatorios.Visible := False;
end;

procedure TfrmPrincipal.Text4Click(Sender: TObject);
begin
  checarRelatoriosVisible;
end;

procedure TfrmPrincipal.Text4MouseEnter(Sender: TObject);
begin

  mudarCorEnter(Relatorios)
end;

procedure TfrmPrincipal.Text4MouseLeave(Sender: TObject);
begin
mudarCorLeave(Relatorios,isRelatoriosVisible);
end;

procedure TfrmPrincipal.TransportadoraClick(Sender: TObject);
begin
if isTransporadoraVisible = False then
  begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isFornecedoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;
     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     frmTransportadora                     := TfrmTransportadora.Create(Self);
     frmTransportadora.LayPrincipal.Parent := Principal;
     frmTransportadora.LayPrincipal.Create(Self);
     mudarCorEnter(Transportadora);
     isTransporadoraVisible                := True;
   end;
end;

procedure TfrmPrincipal.TransportadoraMouseEnter(Sender: TObject);
begin
mudarCorEnter(Transportadora);
end;

procedure TfrmPrincipal.TransportadoraMouseLeave(Sender: TObject);
begin
  mudarCorLeave(Transportadora,isTransporadoraVisible)
end;

procedure TfrmPrincipal.FornecedorasClick(Sender: TObject);
begin
if isFornecedoraVisible = False then
  begin
    limparTela();
     if isDashboardVisible = True then
     begin
      isDashboardVisible := False;
      mudarCorLeave(Dashboard,isDashboardVisible);
     end;

     if isProdutosVisible = True then
     begin
       isProdutosVisible := False;
       mudarCorLeave(Produtos,isProdutosVisible)
     end;

     if isRelatoriosVisible = True then
     begin
       isRelatoriosVisible := False;
       mudarCorLeave(Relatorios,isRelatoriosVisible)
     end;

     if isTransporadoraVisible = True then
     begin
       isFornecedoraVisible := False;
       mudarCorLeave(Fornecedoras,isFornecedoraVisible);
     end;

     if isConfiguracoesVisible = True then
     begin
      isConfiguracoesVisible := False;
      mudarCorLeave(Configuracoes,isConfiguracoesVisible)
     end;
     frmFornecedoras := TfrmFornecedoras.Create(Self);
     frmFornecedoras.LayPrincipal.Parent := Principal;
     frmFornecedoras.LayPrincipal.Create(Self);
     mudarCorEnter(Transportadora);
     isFornecedoraVisible                := True;
   end;
end;

procedure TfrmPrincipal.FornecedorasMouseEnter(Sender: TObject);
begin
  mudarCorEnter(Fornecedoras)
end;

procedure TfrmPrincipal.FornecedorasMouseLeave(Sender: TObject);
begin
 mudarCorLeave(Fornecedoras,isFornecedoraVisible)
end;

end.
