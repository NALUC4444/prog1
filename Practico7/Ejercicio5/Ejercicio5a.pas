(*Letra Ejercicio:
Escriba un procedimiento llamado corrimiento con tres parametros enteros: a, b y c. El procedimiento
debe hacer un corrimiento a la derecha de los valores de los parametros de manera que, despues de la
invocacion, el valor que originalmente estaba en a quede en b, el que estaba en b quede en c y el que
estaba en c quede en a.*)
procedure corrimiento(var a, b, c : integer);
var aux : integer;
begin
    aux := a;
    a := c;
    c := b;
    b := aux;
end;

{
aux := a
a := c
b := aux
c := b
}