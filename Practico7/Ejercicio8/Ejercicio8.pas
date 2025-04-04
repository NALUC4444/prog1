(*En este caso estaran los datos de invocacion*)
program P7Ej8;

{$INCLUDE Ejercicio8a.pas}

var 
    numero : integer;
    resultado : boolean;
begin
    write('Ingrese el valor n: ');
    readln(numero);
    resultado := esPrimo(numero);
    write(resultado);
end.