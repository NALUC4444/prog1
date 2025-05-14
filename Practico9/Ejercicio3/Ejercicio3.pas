program P9Ej3;
const
    N = 5; {valor mayor estricto a 1}
type
    CadenaN = array [1..N] of integer;

{$INCLUDE Ejercicio3a.pas}

{$INCLUDE Ejercicio3b.pas}

{$INCLUDE Ejercicio3c.pas}

procedure Cargar(VAR a : CadenaN);
var
    i : 1..N;
    val : integer;
begin
    for i := 1 to N do
    begin
        read(val);
        a[i] := val;
        val := val + 1;
    end;
end;

var 
    arreglo : CadenaN;
    num, posicion, cantidad : integer;
begin
    write('Ingrese ', N, ' numeros: ');
    Cargar(arreglo);
    write('Que valor quieres encontrar mayor: ');
    readln(num);
    cantidad := cantMayores(arreglo, num);
    if ordenado(arreglo) then writeln('Esta ordenado!')
    else writeln('No esta ordenado');
    writeln('Los mayores a ', num, ' son: ', cantidad);
    maxValorPos(arreglo, num, posicion);
    writeln('El valor maximo esta en ', posicion, ' y es el numero: ', num);
end.