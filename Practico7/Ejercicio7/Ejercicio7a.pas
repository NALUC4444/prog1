function distancia(x1, x2, y1, y2 : real) : real;
var resultado : real;
begin
    resultado := sqrt((sqr(x2 - x1)) + (sqr(y2 - y1)));
    distancia := resultado;
end;

(*Formula:
sqrt((X2 - X1)^2 + (Y2 - Y1)^2)
*)