{Implemente la funcion esPosterior tal que dadas dos fechas f1 y f2, 
devuelve TRUE si la fecha f1 es posterior que la fecha f2 y FALSE en caso contrario.}
function esPosterior (f1, f2: TFecha) : boolean;
begin
    esPosterior := f1.anio > f2.anio or (f1.anio = f2.anio and f1.mes > f2.mes) or (f1.mes = f2.mes and f1.dia > f2.dia);
end;