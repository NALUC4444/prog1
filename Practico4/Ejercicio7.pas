(*Letra Ejercicio:
Escriba un programa en Pascal que lea de la entrada estandar n enteros positivos, todos
menores que 60 y produzca una grafica de n barras horizontales formadas por asteriscos
(similar a la que se muestra en el ejemplo). La k-esima barra debera tener tantos asteriscos
como indique el k-esimo entero (de entre los n enteros ingresados). Su programa no necesita
controlar que los enteros ingresados sean menores que 60 (asuma que ası sera). Incluya
mensajes de salida con etiquetas descriptivas para solicitar y exhibir los valores.*)
program P4Ej7;
CONST ASTERISCO = '*';
var i, n, j, valor : integer;
begin
    write('Ingrese un valor para n: '); 
    readln(n);
    write('Ingrese ', n, ' enteros positivos: ');
    for i := 1 to n do
    begin
        read(valor); //Para actualizar la variable
        write(valor, ' : ');
        for j := 1 to valor do
            if (j <> valor) then write(ASTERISCO)
            else writeln(ASTERISCO); //Ocupa la linea completa
    end;
end.

{Ingrese un valor para n: 5
Ingrese 5 enteros positivos: 7 12 17 35 8
*******
************
*****************
***********************************
********}