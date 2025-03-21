(*Letra Ejercicio:
Escriba un programa en Pascal que lea dos numeros naturales x, n de la entrada estandar
y calcule la potencia de x elevado a la n. Para este ejercicio, solamente se permite utilizar
las operaciones aritmeticas elementales de Pascal (+, -, *, /, DIV, MOD). Incluya mensajes
de salida con etiquetas descriptivas para solicitar y exhibir los valores.*)
program P4Ej9;
var x, n, i, resultado : integer;
begin
    write('Ingrese un valor para x: ');
    readln(x);
    write('Ingrese un valor para n: ');
    readln(n);
    resultado := x; //Para tener inicializado
    if (x >= n) then //Controlar ingreso de datos
    begin
        for i := 2 to n do
            resultado := x * resultado;
        write('El resultado de ', x, ' elevado a la ', n, ' es: ', resultado);
    end
    else writeln('No posible ', x, ' Debe ser mayor a ', n);
end.


{Ingrese un valor para x: 3
Ingrese un valor para n: 4
El resultado de 3 elevado a la 4 es: 81}