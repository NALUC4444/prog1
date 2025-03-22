(*Letra Ejercicio:
(b) Escriba un programa en Pascal que determine el numero mas grande y el mas pequeño
de todos los enteros positivos leidos. Exhiba ambos resultados en la salida estandar.*)
procedure MaximoMinimo();
var maximoValor, minimoValor, valorActual : integer;
begin
    write('Ingrese una secuencia de valores: ');
    read(valorActual);
    maximoValor := maxint * -1;
    minimoValor := valorActual;
    while (valorActual <> centinela) do
    begin
        if (valorActual > maximoValor) then maximoValor := valorActual
        else if (valorActual < minimoValor) then minimoValor := valorActual;
        read(valorActual); //Para avanzar y evitar bucle infinito
    end;
    writeln('El maximo valor es: ', maximoValor);
    writeln('El minimo valor es: ', minimoValor);
end;

{Datos ingresados de ejemplo:
2 4 5 6 8 10 -1
Maximo valor: 10
Minimo valor: 2}