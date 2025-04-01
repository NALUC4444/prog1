(*Letra Ejercicio:
(a) Escriba un programa en Pascal que determine la suma y el promedio de todos los
enteros positivos leidos. Exhiba ambos resultados en la salida estandar.*)
procedure CalcularPromedio();
var
    suma, cantidad, valorActual : integer;
    promedio : real;
begin
    cantidad := 0;
    suma := 0;
    writeln('Ingrese los valores para calcular: ');
    read(valorActual);
    repeat
        suma := suma + valorActual;
        cantidad := cantidad + 1;
        read(valorActual); //Avanzar en el bucle
    until (valorActual = centinela);
    promedio := suma / cantidad;
    writeln('La suma de los valores son: ', suma);
    write('El promedio es: ', promedio:7:2);
end;
{Datos ingresados como ejemplo:
Datos ingresados: 2 4 6 7 8 9 4 8 -1
Suma total: 2+4+6+7+8+9+4+8 = 48
Promedio: 2+4+6+7+8+9+4+8/8 = 6.00}