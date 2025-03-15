(*Ejercicio 7:
El error relativo en una medicion m es la razon de la diferencia absoluta entre la medicion
y el valor verdadero v al valor verdadero, la cual se calcula como |m − v|/v. Escriba un
programa en Pascal que lea por la entrada estandar dos numeros reales que representan
la medicion m y el valor verdadero v. El programa debe calcular el error relativo de la
medicion y exhibirlo en la salida estandar junto con la medici´on y el valor verdadero.
Incluya mensajes de salida con etiquetas descriptivas para el ingreso y el despliegue de
datos*)
program P2Ej7;
var m, v, resultado : real;
begin
    write('Ingrese el valor de medicion: ');
    readln(m);
    write('Ingrese el valor verdadero: ');
    readln(v);
    resultado := abs(m-v);
    resultado := resultado/v;
    writeln('Medicion = ', m);
    writeln('Valor verdadero = ', v);
    writeln('Error relativo = ', resultado);
end.