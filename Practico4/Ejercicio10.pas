(*Letra Ejercicio:
Escriba un programa en Pascal que calcule el factorial de un numero natural n (leido
de la entrada estandar). Para este ejercicio, solamente se permite utilizar las operaciones
aritmeticas elementales de Pascal (+, -, *, /, DIV, MOD). Incluya mensajes de salida con
etiquetas descriptivas para solicitar y exhibir los valores.*)
program P4Ej10;
var n, i, resultado : integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    resultado := n;
    for i := 1 to n-1 do
    begin
        resultado := i * resultado;
        writeln(resultado);
    end;
    writeln('El factorial de ', n, ' es: ', resultado);
end.

{Ingrese un valor para n: 4
El factorial de 4 es 24}