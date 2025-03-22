(*Letra Ejercicio:
Escriba un programa en Pascal que determine si un numero n es primo o no, siendo n
un entero positivo leido de la entrada estandar. Exhiba un mensaje de salida indicando el
resultado. Incluya mensajes de salida con etiquetas descriptivas para solicitar los valores.*)
program P5Ej7;
var 
    limiteMax : real;
    i, n : integer;
    Primo : boolean;
begin
    i := 1;
    Primo := true;
    write('Ingrese un entero positivo: ');
    readln(n);
    limiteMax := sqrt(n);
    while (i = limiteMax) or (Primo) do
    begin
        i := i + 1; //Para sumar en el bucle
        if (n MOD i = 0) then Primo := false
        else Primo := true;
    end; //Cierra while
    if not Primo then writeln('Es primo')
    else writeln('No es primo')
end.

{Ingrese un entero positivo: 3
Es primo}