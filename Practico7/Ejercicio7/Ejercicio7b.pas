program P7Ej7b;

{$INCLUDE Ejercicio7a.pas}

var coordX1, coordX2, coordY1, coordY2, resultado : real;
begin
    write('Ingrese el primer par de valores: ');
    readln(coordX1, coordY1);
    write('Ingrese el segundo par de valores: ');
    readln(coordX2, coordY2);
    resultado := distancia(coordX1, coordX2, coordY1, coordY2);
    write('La distancia entre los dos puntos es: ', resultado:7:2);
end.

{
Ingrese las coordenadas del primer punto: 1 2
Ingrese las coordenadas del segundo punto: 5 7
La distancia entre los puntos es: 6.40
}