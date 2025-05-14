program P9Ej4;
const N = 10;
type 
    TipoMatriz = array[1..N,1..N] of integer;
    arreglo = array[1..N] of integer;

{$INCLUDE Ejercicio4b.pas}

{$INCLUDE Ejercicio4c.pas}

procedure mostrarMatriz(matriz : TipoMatriz);
var i, j : 1..N;
begin
    for i := 1 to N do
    begin
        for j := 1 to N do
            write(matriz[i, j], ' ');
        readln();
    end;
end;

var
    arr : TipoMatriz;
    num : integer;
    x, y : 1..10; {Para la ultima parte}
begin
    write('Ingrese valor base: ');
    readln(num);
    Cargar(arr, num);
    mostrarMatriz(arr);
    writeln();
    write('Ingrese filas para intercambiar: ');
    readln(x, y);
    invertir(arr, x, y);
    writeln('>>>La matriz invertida<<<');
    mostrarMatriz(arr);
end.