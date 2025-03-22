(*Letra Ejercicio:
(a) Escriba un programa en Pascal que determine la suma y el promedio de todos los
enteros positivos leidos. Exhiba ambos resultados en la salida estandar.*)
procedure CalcularPromedio();
var 
    valorActual, sumaTotal, cantidad : integer;
    promedio : real;
begin
    cantidad := 0; //La letra asume que ingresa un valor al menos entero <> -1
    sumaTotal := 0;
    write('Escriba una secuencia de valores para sumar: ');
    read(valorActual);
    while (valorActual <> centinela) do
    begin
        cantidad := cantidad + 1; //Para usarlo para el promedio
        sumaTotal := sumaTotal + valorActual; //Llevar la suma total
        read(valorActual); //Avanza impidiendo el bucle infinito
    end;
    writeln('La suma total de valores es: ', sumaTotal);
    promedio := sumaTotal/cantidad;
    writeln('El promedio es: ', promedio:7:2);
end;
