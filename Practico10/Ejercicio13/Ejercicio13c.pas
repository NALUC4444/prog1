{Implemente la funcion primerSalonSinAsientos tal que 
devuelve el indice de la celda correspondiente
al primer salon de la facultad que no tiene ningun asiento. 
En caso de que no haya ningun salon sin
asientos, devuelve cero. Su encabezado es el siguiente:}
function primerSalonSinAsientos (facu: TFacultad) : Integer;
var i, sinAsiento, ind : integer;
begin
    while (i < cant_salones) and (facu[i].asientos > 0) do
        i := i + 1;
    if (i < cant_salones) then {Significa que encontro los asientos}
        primerSalonSinAsientos := i
    else
        primerSalonSinAsientos := 0;
end;