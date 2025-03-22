(*Letra Ejercicio:
Se desea implementar un programa que realice las funciones de una calculadora simple. Los
datos de entrada son una secuencia de enteros sin signo y los operadores +, *, / y -, seguida
de un signo =. Cada entero de la entrada esta seguido por un operador salvo el ´ultimo que
esta seguido por el sımbolo =. Los operadores se aplican en el orden en que aparecen sin
importar la precedencia. Si bien se ingresa el operador de la division con el sımbolo /, el
comportamiento debe ser el de DIV. Asuma que se ingresa al menos un numero.*)

program P5Ej8;
CONST centinela = '=';

{$INCLUDE Ejercicio8a.pas}

{$INCLUDE Ejercicio8b.pas}

begin
    CalcularSinEspacios();
    CalcularConEspacios();
end.