(*Letra Ejercicio:
Considere la funcion f tal que: 
f(x, y) = x^2 − 9xy + y^2 
donde x, y son valores enteros,
ambos en el entorno de −n a n (n entero positivo). Escriba un programa en Pascal que lea
el valor para n de la entrada estandar y despliegue en la salida estandar el valor maximo
de f(x, y) para x e y en ese entorno. Incluya mensajes de salida con etiquetas descriptivas
para solicitar y exhibir los valores.*)
program P4Ej12;
var nPositivo, nNegativo, i, j, valorActual, maxValor : integer;
begin
    write('Ingrese un valor para n: ');
    readln(nPositivo);
    nNegativo := nPositivo * -1; //Dado por letra es el opuesto a n
    maxValor := maxint * -1;
    for i := nNegativo to nPositivo do
    begin
        for j := nNegativo to nPositivo do
        begin
            valorActual := sqr(j) - (9*i*j) + (sqr(j));
            if (valorActual > maxValor) then maxValor := valorActual;
        end; //Cierra for j
    end; //Cierra for i
    writeln('El valor maximo para x e y en el entorno de ', nPositivo, ' a ', nPositivo, ' es ', maxValor);
end.

//j = x;  i = y

{Ingrese un valor para n: 4
El valor maximo para x e y en el entorno de -4 a 4 es 176}