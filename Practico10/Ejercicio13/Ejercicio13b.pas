{Implemente el procedimiento salonMasAsientos tal que devuelve 
el indice de la celda correspondiente
al salon con la mayor cantidad de asientos de la facultad junto 
con la cantidad de asientos correspondiente. En caso de haber dos o 
mas salones con la mayor cantidad de asientos, devuelve el primero de ellos.}
procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var i : integer;
begin
    maxAsientos := facu[1].asientos; {Podemos tomar esto como referencia para comparar}
    indSalon := 1;
    for i := 2 to cant_salones do
    begin
        if (facu[i].asientos > maxAsientos) then
        begin
            maxAsientos := facu[i].asientos;
            indSalon := i; {Para actualizar el valor}
        end;
    end;
end;