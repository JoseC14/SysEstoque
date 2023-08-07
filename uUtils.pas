unit uUtils;

interface

uses FMX.Objects, System.UITypes,FMX.Graphics;
  type utils = class

  public
    procedure mudaCorBotaoEnter(Botao : TRectangle);
    procedure voltaCorBotaoDegrade(Botao : TRectangle);
    procedure mudaCorBotaoLeave(Botao : TRectangle);
  end;
implementation

{ utils }

procedure utils.mudaCorBotaoEnter(Botao : TRectangle);
begin
  Botao.Fill.Color := $FF9F88AE;
  Botao.Fill.Kind  := TBrushKind.Solid;
end;

procedure utils.mudaCorBotaoLeave(Botao: TRectangle);
begin
  Botao.Fill.Color := TAlphaColors.Blueviolet;
end;

procedure utils.voltaCorBotaoDegrade(Botao: TRectangle);
begin
  Botao.Fill.Gradient.Color  := $FF955CB8;
  Botao.Fill.Gradient.Color1 := $FF682690;
  Botao.Fill.Kind            := TBrushKind.Gradient;
end;

end.
