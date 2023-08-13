unit uFrmTudoPronto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.Layouts;

type
  TfrmTudoPronto = class(TForm)
    BemVindodeVolta: TText;
    InsiraSeusDados: TText;
    Login: TRectangle;
    Text4: TText;
    Titulo: TLayout;
    SuaPlataforma: TText;
    Text1: TText;
    Image1: TImage;
    procedure LoginClick(Sender: TObject);
    procedure Text4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTudoPronto: TfrmTudoPronto;

implementation

{$R *.fmx}

uses uFrmLogin;

procedure TfrmTudoPronto.LoginClick(Sender: TObject);
begin
 frmLogin.Visible := True;
 Close;
end;

procedure TfrmTudoPronto.Text4Click(Sender: TObject);
begin
 frmLogin.Visible := True;
 Close;
end;

end.
