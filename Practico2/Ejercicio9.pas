(*Letra:
La funcion exp de Pascal calcula un valor igual a la suma de la serie infinita 
1 + [x/1!] + [(x^2)/2!] + [(x^3)/3!] + [(x^4)/4!],*)
program P2Ej9;
var
    x, suma, valorReal : real;

begin
    write('Ingrese el valor a calcular: ');
    readln(x);
    suma := 1 + (x/1) + (x*x/(2*1)) + ((x*x*x)/(3*2*1)) + ((x*x*x*x)/(4*3*2*1))+ ((x*x*x*x*x)/(5*4*3*2*1));
    valorReal := exp(x);
    writeln('Valor introducido: ', x:7:2, ' = ', x);
    writeln('Suma de los cinco terminos = ', suma);
    writeln('Valor de Exp (', x:7:2,') = ', valorReal);
end.
