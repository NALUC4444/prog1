program P9Ej4;
type
    TipoMatriz = array[1..10, 1..10] of integer; {Primero son fila y segundo son columna}
    TipoAuxiliar = array[1..10] of integer; {Se usa en el segundo procedimiento}

var 
    m, n : integer;
    matriz : TipoMatriz;

{$INCLUDE Ejercicio4b.pas}

{$INCLUDE Ejercicio4c.pas}

procedure mostrar(matriz : TipoMatriz);
var i, j : integer;
begin
    writeln();
    for i := 1 to 10 do
    begin
        for j := 1 to 10 do
        begin
            write(matriz[i, j], ' ');
        end;
        readln();
    end;
end;

begin
    cargarMatriz(matriz);
    write('Ingrese fila m: ');
    readln(m);
    write('Ingrese fila n: ');
    readln(n);
    intercambio(m, n, matriz);
    mostrar(matriz);
end.