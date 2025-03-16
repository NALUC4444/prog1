(*Letra Ejercicio:
Escriba un programa en Pascal que convierta un numero positivo hexadecimal de tres
digitos tomado de la entrada estandar en su equivalente en base 10. Un digito hexadecimal
es uno de los digitos 0 a 9 o A(10), B(11), C(12), D(13), E(14), o F(15). El equivalente
decimal de un numero hexadecimal de la forma abc se calcula como: 
a × 16^2 + b × 16 + c.
Su programa debera leer por la entrada estandar el numero hexadecimal y realizar las
operaciones aritmeticas necesarias para calcular el numero equivalente en base 10. Como
resultado, exhiba por la salida estandar el valor hexadecimal ingresado junto con el numero
equivalente en base 10. Incluya mensajes de salida con etiquetas descriptivas para el ingreso
y el despliegue de datos.*)
program P3Ej13;
var 
    dg1, dg2, dg3, resultado : integer;
    dato1, dato2, dato3 : char;
begin
    write('Ingrese numero positivo hexadecimal de 3 cifras: ');
    read(dato1);
    read(dato2);
    readln(dato3);
    case dato1 of
        'A'..'F' : dg1 := ord(dato1) - ord('A') + 10;
        '0'..'9' : dg1 := ord(dato1) - ord('0');
    end;
    case dato2 of
        'A'..'F' : dg2 := ord(dato2) - ord('A') + 10;
        '0'..'9' : dg2 := ord(dato2) - ord('0');
    end;
    case dato3 of
        'A'..'F' : dg3 := ord(dato3) - ord('A') + 10;
        '0'..'9' : dg3 := ord(dato3) - ord('0');
    end;
    //Empieza parte de cuentas: a × 16^2 + b × 16 + c
    resultado := (dg1 * sqr(16)) + (dg2 * 16) + dg3;
    writeln('Hexadecimal ', dato1+dato2+dato3, ' = Decimal ', resultado);
end.

//Cambiar los if por case, ya que son casos y en todos se hacen el mismo proceso

{program Hello;
var l1, l2, l3 : char;
begin
    write('Ingresa tres letras separadas por un espacio: ');
    readln(l1, l2, l3);
    writeln (l1+l2+l3);
end.}