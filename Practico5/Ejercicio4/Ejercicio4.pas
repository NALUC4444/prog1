(*Letra Ejercicio:
Suponga que se ingresa una secuencia de numeros enteros positivos que debe ser leida de
la entrada estandar. La secuencia contiene al menos un numero entero positivo y se indica
su fin con el entero -1. Para los siguientes programas responda: ¿cual es la instruccion de
iteracion mas adecuada para utilizar (for, while, repeat)? ¿Por que?

La respuesta es obvia, ya que tenemos como fin el -1, significa que tenemos un centinela
Eso significa que tenemos que usar while o repeat*)
program P5Ej4;
CONST centinela = -1;

{$Include Ejercicio4a.pas}

{$Include Ejercicio4b.pas}

{Ya que este ejercicio tiene dos partes las dividimos en dos procedimientos que llamaremos
De esta manera ocupamos menos lugar, para probarlos descarga tanto este como los adicionales}
begin
    CalcularPromedio();
    MaximoMinimo();
end.