program P7Ej5b;

{$INCLUDE Ejercicio5a.pas}

var valor1, valor2, valor3 : integer;
begin
    write('Ingrese el valor 1: ');
    readln(valor1);
    write('Ingrese el valor 2: ');
    readln(valor2);
    write('Ingrese el valor 3: ');
    readln(valor3);
    corrimiento(valor1, valor2, valor3);
    writeln('El corrimiento es: ', valor1, valor2, valor3);
end.

{
Ingrese tres numeros: 4 1 7
El corrimiento es: 7 4 1
}