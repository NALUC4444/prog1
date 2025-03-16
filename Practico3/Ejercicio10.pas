(*Letra Ejercicio:
El costo de enviar por correo un paquete es
- $77 para paquetes que pesan hasta un kilogramo (inclusive)
- $77 mas $56 por kilogramo adicional o fraccion para paquetes que pesan mas de un
kilogramo.
Escriba un programa en Pascal que, lea de la entrada estandar el peso de un paquete como
un numero real de kilogramos y exhiba en la salida estandar dicho peso junto al costo del
envio, segun se muestra en los siguientes ejemplos. Incluya mensajes de salida con etiquetas
descriptivas para el ingreso y el despliegue de datos.*)

program P3Ej10;
CONST 
    envio = 77; //Monto fijo
    Extra = 56; //Tarifa extra
var
    peso, precio : real;
begin
    write('Ingrese peso del paquete: ');
    readln(peso);
    if (peso <= 1.00) then precio := envio //Dado por la letra
    else if (peso > 1.00) and (peso <= 2.00) then precio := envio + Extra //77+56
    else if (peso > 2.00) and (peso <= 3.00) then precio := envio + (Extra*2)
    else //Si vale mas de 2.00
    begin
        precio := envio + (Extra * (trunc(peso))); //77 + (56 * (kg-1))
    end;
    writeln('   Peso ', ' Costo');
    writeln(peso:7:2,precio:7:2);
end.

//Redonear con trunc() y restarle uno