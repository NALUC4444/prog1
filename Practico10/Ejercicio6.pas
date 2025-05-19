program P10Ej6;
type
    TipoMes = (enero, febrero, marzo, abril, mayo, junio, julio, agosto, setiembre, octubre, noviembre, diciembre);
    TipoMesRango = 1..12;
(*(a) Defina el tipo enumerado TipoMes que represente los meses del año.
(c) Defina un tipo subrango de los enteros TipoMesRango que represente 
los meses del año (entre 1 y 12).*)

(*(b) Escriba un procedimiento que reciba un parametro de entrada del tipo TipoMes 
e imprima el nombre completo del mes correspondiente.*)
procedure mesCorrecto(a : TipoMes);
begin
    readln(a);
    writeln('El mes es: ', ord(a));
end;

(*(d) Escriba un procedimiento que lea de la entrada un mes representado por el numero (entre 1 y 12) y
retorne en un parametro de salida una variable de tipo TipoMes.*)
procedure convertirMes(mes : TipoMesRango);
var x : TipoMes;
begin
    readln(mes);
    x := TipoMes(mes);
    writeln('El mes en base al numero es: ', x);
end;

var
    mesLetra : TipoMes;
    mesNumero : TipoMesRango;
begin
    write('Ingrese un numero de mes con letra: ');
    mesCorrecto(mesLetra);
    write('Ingrese un numero nuevamente: ');
    convertirMes(mesNumero);
end.