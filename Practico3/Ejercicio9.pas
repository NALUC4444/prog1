(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar un entero de hasta cuatro
cifras y lo despliegue en la salida estandar con un punto separando la cifra de los millares
(si la hay) de la cifra de las centenas. Su programa no necesita controlar que el entero
ingresado tenga hasta cuatro cifras, asuma que ası sera. Incluya mensajes de salida con
etiquetas descriptivas para el ingreso de datos.*)
program P3Ej9;
CONST PUNTO = '.';
var
    numero, dg1 : integer;

begin
    write('Ingrese un numero decimal de a lo sumo 4 cifras: ');
    readln(numero);
    if numero > 1000 then
    begin
        dg1 := numero DIV 1000; //Solo se necesita este valor
        write('El numero es: ');
        writeln(dg1, PUNTO, numero MOD 1000);
    end
    else //Si es un valor menor a mil se devuelve el valor sin modificar
    begin
        write('El numero es: ');
        writeln(numero);
    end; //Cierra else
end.