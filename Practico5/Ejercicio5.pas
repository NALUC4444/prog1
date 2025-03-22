(*Letra Ejercicio:
Se desea implementar un programa que calcule el saldo final de una cuenta. Suponga que
los datos son leidos de la entrada estandar y que constan de renglones. El primer renglon
contiene el saldo inicial de la cuenta. Los siguientes renglones contienen una letra y un valor
real para indicar las transacciones (posiblemente ninguna). La letra puede ser la D para
efectuar un deposito o la R para efectuar un retiro. El ultimo renglon contiene unicamente la
letra X. Escriba un programa en Pascal que determine el saldo exacto de la cuenta despues
de procesar las transacciones. Incluya mensajes de salida con etiquetas descriptivas para
exhibir los valores.*)
program P5Ej5;
CONST centinela = 'X';
var
    Eleccion : char;
    SaldoActual, Operacion : real;
begin
    write('Ingrese su saldo inicial: ');
    readln(SaldoActual);
    write('Desea depositar "D" o retirar "R": ');
    readln(Eleccion);
    while Eleccion <> centinela do
    begin
        write(Eleccion + ': ');
        readln(Operacion);
        case Eleccion of
            'D', 'd' : SaldoActual := SaldoActual + Operacion;
            'R', 'r' : SaldoActual := SaldoActual - Operacion;
        end; //Cierra case..of
        write('Desea depositar "D" o retirar "R": '); //Actualizar bucle
        readln(Eleccion);
    end; //Cierra while
    writeln(centinela); //Dado por la letra debe mostrar la "X"
    writeln('El saldo final es: ', SaldoActual:7:2);
end.

{1200.35
D 64.12
R 390.00
R 289.67
D 13.02
R 51.07
X
El saldo final es 546.75}

{600.50
X
El saldo final es 600.5}