program P9Ej8;
const
    N = 5; {valor mayor estricto a 1}
type
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;

var
    numeros : Digitos;
    resultado : integer;

{$INCLUDE Ejercicio8a.pas}

{$INCLUDE Ejercicio8b.pas}

begin
    writeln('Ingrese ', N, ' valores juntos (sin espacios): ');
    leerArreglo(numeros);
    resultado := conversion(numeros);
    write('El numero: ');
    for i := 1 to N do
        write(numeros[i], ' ');
    write(' Fue convertido a: ', resultado);
end.