{Letra:
Escriba un procedimiento que dada una matriz de tipo TipoMatriz y 
dos variables enteras m y n,
intercambie las filas m y n de la matriz. Es decir, todos los 
valores de la fila m deben quedar en la fila n y viceversa.}
procedure intercambio(m, n : integer; VAR matriz : TipoMatriz);
var 
    auxMatriz : TipoAuxiliar;
    i : integer;
begin
    for i := 1 to 10 do
    begin
        auxMatriz[i] := matriz[m, i]; {Auxiliar de resplado}
        matriz[m, i] := matriz[n, i];
        matriz[n, i] := auxMatriz[i]; {Ya que el valor lo moví a la anterior línea}
    end;
end;

{
1 2 3 4 5 6 7 8
9 8 7 6 5 4 3 2 = m => m = 2
1 2 3 4 5 6 7 8 = n => n = 3

9 8 7 6 5 4 3 2 = Aux => Aux = m = 2
}