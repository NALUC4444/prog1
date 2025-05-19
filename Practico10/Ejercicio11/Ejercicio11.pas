program P10Ej11;
type
    Complejo = record
        re, im : Real;
    end;

{$INCLUDE Ejercicio11a.pas}

{$INCLUDE Ejercicio11b.pas}

var 
    complejo1, complejo2, complejo3, complejo4 : Complejo;
    real1, real2, imaginario1, imaginario2 : real;
begin
    write('Ingrese parte real e imaginaria del primer valor: ');
    readln(real1, imaginario1);
    write('Ingrese parte real e imaginaria del segundo valor: ');
    readln(real2, imaginario2);
    complejo1.re := real1;
    complejo1.im := imaginario1;
    complejo2.re := real2;
    complejo2.im := imaginario2;
    sumaComplejos(complejo1, complejo2, complejo3);
    multComplejos(complejo1, complejo2, complejo4);
    writeln('>>>Suma<<<');
    writeln(complejo3.re:1:2, ' = ', complejo1.re:1:2, ' + ', complejo2.re:1:2);
    writeln(complejo3.im:1:2, ' = ', complejo1.im:1:2, ' + ', complejo2.im:1:2);
    writeln('>>>Multiplicacion<<<'); {Para hacer un espacio vacio}
    writeln(complejo4.re:1:2, ' = ', complejo1.re:1:2, ' * ', complejo2.re:1:2, ' - ', complejo1.im:1:2, ' * ', complejo2.im:1:2);
    writeln(complejo4.im:1:2, ' = ', complejo1.im:1:2, ' * ', complejo2.re:1:2, ' - ', complejo2.im:1:2, ' * ', complejo1.re:1:2);
end.

{
re3 = re1 * re2 - im1 * im2
im3 = im1 * re2 + im2 * re1
}