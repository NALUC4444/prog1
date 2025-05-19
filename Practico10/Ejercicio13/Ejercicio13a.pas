{Implemente el procedimiento informeSalones tal que imprima un 
informe de todos los salones de la facultad, incluyendo, por cada uno de ellos, 
cantidad de asientos, pizarrones, y si tiene proyector o no.}
procedure informeSalones (facu: TFacultad);
var 
    i : integer;
begin
    cantidadAsientos := 0;
    cantPizarrones := 0;
    for i := 1 to cant_salones do
    begin
        cantidadAsientos := facu[i].asientos;
        cantPizarrones := facu[i].pizarrones;
        write('En el salon ', i, ' hay: ');
        writeln(facu[i].asientos, ' asientos.');
        writeln(facu[i].pizarrones, ' pizarrones.');
        if (facu[i].hayProyector) then writeln('Tiene proyector')
        else writeln('No tiene proyector');
    end;
end;