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
    num1, num2, resultado, restoH, restoM : integer;

begin
    write('Ingrese el primer valor: ');
    readln(num1);
    write('Ingrese el segundo valor: ');
    readln(num2);
    resultado := num1 + num2;
    restoM := resultado MOD 100; //Primeros dos minutos
    restoH := resultado DIV 100; //Primeros dos horas
    if (restoH > MaxHoras) then
    begin
        restoM := restoM - 60; //Obtener valores restantes
        restoH := restoH - 23; //Obtener valores restantes
        writeln('El resultado es: 1 ', restoH, restoM);
    end
    else
        writeln('El resultado es: 0 ', restoH, restoM);
end.


{Entrada     Salida
1345 2153    1 1138
