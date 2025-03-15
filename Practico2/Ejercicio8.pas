(*Datos:
dado un numero a, para generar el siguiente numero de la secuencia se extraen los
dıgitos que estan en la posicion de las decenas y las centenas de a^2. Por ejemplo, si a es
53, entonces a^2 es 2809, y el siguiente numero seudoaleatorio sera 80. Se ve que el siguiente
numero seudoaleatorio a 80 es 40. Si se continua este proceso se obtiene 60, 60, 60, . . .*)
program P2Ej8;
var 
    a, cuadrado : integer;
begin
    write('Ingrese el primer valor de dos cifras: ');
    readln(a);
    cuadrado := sqr(a);
    writeln('Numero introducido = ', a);
    writeln(a, '^2 = ', cuadrado);
    writeln('Siguiente numero seudoaleatorio = ', cuadrado DIV 10 MOD 100);
end.