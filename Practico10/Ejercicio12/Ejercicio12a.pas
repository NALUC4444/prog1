{Implemente la funcion esPosterior tal que dadas dos fechas f1 y f2, 
devuelve TRUE si la fecha f1 es posterior que la fecha f2 y FALSE en caso contrario.}
function esPosterior (f1, f2: TFecha) : boolean;
begin
    if (f1.dia > f2.dia) or (f2.dia > f2.mes) then
        esPosterior := TRUE
    else
        esPosterior := FALSE;
end;

{
Usado como ejemplo:
var
    dia1, dia2 : 1..31;
    mes1, mes2 : 1..12;
    fecha1, fecha2 : TFecha;
    resp : boolean;
begin
    write('Ingrese dia y mes primero: ');
    readln(dia1, mes1);
    write('Ingrese dia y mes segundo: ');
    readln(dia2, mes2);
    fecha1.dia := dia1;
    fecha1.mes := mes1;
    fecha2.dia := dia2;
    fecha2.mes := mes2;
    resp := esPosterior(fecha1, fecha2);
    if resp then write('Es posterior')
    else write('No es posterior');
end.
}