{Escriba un procedimiento que dada una matriz de tipo TipoMatriz y 
dos variables enteras m y n, intercambie las filas m y n de la matriz. Es decir, 
todos los valores de la fila m deben quedar en la fila n y viceversa.}
procedure invertir(VAR a : TipoMatriz; m, n : integer);
var
    i : integer;
    aux : arreglo;
begin
    for i := 1 to N do
    begin
        aux[i] := a[m, i];
        a[m, i] := a[n, i];
        a[n, i] := aux[i]
    end;
end;