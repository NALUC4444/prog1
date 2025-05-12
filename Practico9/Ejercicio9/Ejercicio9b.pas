{Escriba el procedimiento llamado matriz2arreglo que dada una matriz simetrica, 
almacena en el arreglo unidimensional los valores del triangulo superior de la matriz.}
procedure matriz2arreglo(a:MatrizN; VAR arreglo:ArregloUni);
var i, j : integer;
begin
    for i := 1 to N do
    begin
        for j := 1 to N do
            arreglo[i] := a[i, j]; {Guardo todos los valores}
        i := i + 1; {De esta manera la fila avanza uno siempre a la siguiente}
    end;
    arreglo[i] := a[N, N]; {Caso final}
end;

{a[fila, columna]}

{Ejemplo a realizar:
(1 2 3)
(5 6 7)  =   (1 2 3 6 7 1)
(9 0 1)
}