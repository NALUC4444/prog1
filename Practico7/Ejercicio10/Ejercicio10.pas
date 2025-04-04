program P7Ej10;

{$INCLUDE Ejercicio10a.pas}

var 
    numero, multiplicidad, factor, residuo : integer;
begin
    write('Ingrese numero: ');
    readln(numero);
    multiplicidad := 0;
    write('Ingrese factor: ');
    readln(factor);
    residuo := 0;
    multiplicidadFactor(numero, factor, multiplicidad, residuo);
end.