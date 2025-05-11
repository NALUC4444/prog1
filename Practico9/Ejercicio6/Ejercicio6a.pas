{Letra:
Escriba el procedimiento transpuestaMatrizAB que, dada una matriz 
cuadrada a calcule su matriz transpuesta b.
La transpuesta de una matriz cuadrada a es una matriz b del mismo tipo 
cuyas celdas satisfacen la relacion
b[i,j] = a[j,i] para todos los valores posibles de i y j.}
procedure transpuestaMatrizAB(a:Matriz; VAR b:Matriz);
var 
    i, j : integer;
begin
    for i := 1 to N do
        for j := 1 to N do
        begin
            b[j, i] := a[i, j];
        end;
end;