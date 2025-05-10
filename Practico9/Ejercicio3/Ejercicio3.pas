program P9Ej3;
const N = 10; {Este número es arbitrario: N > 1}
type
    CadenaN = array[1..N] of integer;

var
    cadenaReal : CadenaN;
    num, val, cantidad : integer;

procedure cargarValores(VAR cadena : CadenaN);
var i, valor : integer;
begin
    write('Ingrese lista de numeros (Maximo 10 valores): ');
    for i := 1 to N do 
    begin
        read(valor);
        cadena[i] := valor;
    end;
end;

{$INCLUDE Ejercicio3a.pas}

{$INCLUDE Ejercicio3b.pas}

{$INCLUDE Ejercicio3c.pas}

begin
    cargarValores(cadenaReal);
    write('Ingrese el numero para buscar mayores: ');
    readln(num);
    cantidad := cantMayores(cadenaReal, num);
    writeln('La cantidad de ', num, ' en la cadena es: ', cantidad);
    if (ordenado(cadenaReal)) then write('Esta ordenado!')
    else write('No esta ordenado!');
end.