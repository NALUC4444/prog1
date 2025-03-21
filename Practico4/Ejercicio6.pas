(*Letra ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un numero natural n. A
continuacion, el programa debera leer n enteros y luego desplegar en pantalla el mayor y
el menor de ellos. Incluya mensajes de salida con etiquetas descriptivas para solicitar y
exhibir los valores.*)
program P4Ej6;
var i, n, mayor, actual, menor : integer;
begin
    write('Ingrese un valor para n: '); 
    readln(n);
    write('Ingrese ', n, ' enteros: ');
    mayor := maxint * -1; //Obtener el menor valor posible
    menor := maxint; //Obtener el mayor valor posible
    for i := 1 to n do //Recorre toda la secuencia de numeros
    begin
        read(actual);
        if (actual > mayor) then mayor := actual
        else if (actual < menor) then menor := actual;
    end;
    writeln('El mayor entero ingresado es: ', mayor);
    writeln('El menor entero ingresado es: ', mayor);
end.

(*Ingrese un valor para n: 8
Ingrese 8 enteros: 5 12 36 4 21 95 12 18
El mayor entero ingresado es: 95
El menor entero ingresado es: 4*)