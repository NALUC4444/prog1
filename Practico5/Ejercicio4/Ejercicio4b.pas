(*Letra Ejercicio:
(b) Escriba un programa en Pascal que determine el numero mas grande y el mas pequeño
de todos los enteros positivos leidos. Exhiba ambos resultados en la salida estandar.*)
procedure MaximoMinimo();
var valorActual, minimo, maximo : integer;
begin
    writeln('Ingrese secuencia de valores: ');
    read(valorActual);
    maximo := valorActual;
    minimo := maximo;
    repeat
        if (valorActual > maximo) then maximo := valorActual
        else if (valorActual < minimo) then minimo := valorActual;
        read(valorActual);
    until (valorActual = centinela);
    writeln('El valor maximo es: ', maximo);
    writeln('El valor minimo es: ', minimo);
end;

{Datos ingresados de ejemplo:
2 4 5 6 8 10 -1
Maximo valor: 10
Minimo valor: 2}