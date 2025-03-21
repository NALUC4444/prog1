(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un numero natural n y
despliegue en pantalla todos los divisores naturales de n.*)
program P4Ej5;
var n, i : integer;
begin
    write('Ingrese el valor para analizar: '); readln(n);
    for i := 1 to n do
    begin
        if (n MOD i = 0) then write(i, ' '); //Mostrara todos los divisores
    end;
end.