(*Letra ejercicio:
Escriba un programa en Pascal que, dados dos enteros de la forma hhmm (ingresados por la
entrada estandar), donde hh representa las horas (menos de 24) y mm los minutos (menos
de 60), determine la suma de estos dos tiempos, y exhiba el resultado en la salida estandar,
en la forma d hhmm, donde d es dias (ya sea cero o uno). Incluya mensajes de salida con
etiquetas descriptivas para el ingreso de datos.*)
program P2Ej6;
CONST
    MaxHoras = 24;
    MaxMinutos = 60;
var
    num1, num2, m1, m2, h1, h2, d, resultadoH, resultadoM : integer;

begin
    write('Ingrese el primer valor: ');
    readln(num1);
    write('Ingrese el segundo valor: ');
    readln(num2);
    m1 := num1 MOD 100; {Primeros dos minutos}
    h1 := num1 DIV 100; {Primeros dos horas}
    m2 := num2 MOD 100; {Segundos dos minutos}
    h2 := num2 DIV 100; {Segundos dos horas}
    resultadoH := h1 + h2;
    resultadoM := m1 + m2;
    if (resultadoH > MaxHoras) then
    begin

        writeln('El resultado es: 1 ', resultadoH, resultadoM);
    end
    else
        writeln('El resultado es: 0 ', resultadoH, resultadoM);
end.


{Entrada     Salida
1345 2153    1 1138


1345
2153+
------
3498}

//No agarrar por separado y tratar el numero entero completo si se pasa de los limites luego
//se analiza