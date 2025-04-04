program P7Ej9b;
CONST centinela = -1;

{$INCLUDE Ejercicio9a.pas}

var 
    num1, num2 : integer;
    esMultiplo : boolean;
begin
    write('Ingrese pareja de valores: ');
    readln(num1 , num2);
    while (num1 <> centinela) or (num2 <> centinela) do
    begin
        esMultiplo := multiplo(num1, num2);
        if (esMultiplo) then writeln('Si')
        else writeln('No');
        write('Ingrese pareja de valores: ');
        readln(num1 , num2);
    end;
end.

{
4 7
No
4 8
Si
16 8
Si
-1}