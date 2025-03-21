(*Letra Ejercicio:
Considere la funcion f tal que:
f(x) = x^2 −18x +5
donde x es un valor entero en el entorno
de m a n, siendo m y n dos enteros tales que m ≤ n.
Escriba un programa en Pascal que lea los valores para m y n de la entrada estandar y
despliegue en la salida estandar el valor maximo de f(x) para x en ese entorno. Incluya
mensajes de salida con etiquetas descriptivas para solicitar y/o exhibir los valores.*)
program P4Ej11;
var m, n, i, menorValor, MaximoValor, resultado : integer;
begin
    write('Ingrese un valor para m: ');
    readln(m);
    write('Ingrese un valor para n mayor a ', m, ' : ');
    readln(n);
    if (m > n) then
        writeln('Valores imposibles: ', m, ' > ', n)
    else
    begin
        writeln('Iniciando...');
    end; //Cierra else
end.


{Debe recorrer de m a n, de manera que la ecuacion dada obtenga un valor mas alto}


{Ingrese un valor para m: -5
Ingrese un valor para n: 10
El valor maximo para x en el entorno de -5 a 10 es 120}