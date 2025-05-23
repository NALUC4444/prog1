{Teniendo en cuenta que cada articulo tiene la fecha de su ultima actualizacion,
implemente el procedimiento articuloMasReciente tal que dados la wikipedia y un idioma, 
devuelve el articulo que tiene la fecha mas reciente en el idioma especificado. 
Asuma que en la wikipedia hay al menos un articulo en el idioma especificado.}
procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var 
    i : 1..cant_articulos;
begin
    {Iniciamos las variables}
    art.ultima_act.dia = wiki[1].ultima_act.dia;
    art.ultima_act.mes = wiki[1].ultima_act.mes;
    art.ultima_act.anio = wiki[1].ultima_act.anio;
    for i := 2 to cant_articulos do
    begin
        if (wiki[i].idioma = idioma) then
            if esPosterior(art.ultima_act, wiki[i].ultima_act) then
            begin
                art.ultima_act.dia = wiki[i].ultima_act.dia;
                art.ultima_act.mes = wiki[i].ultima_act.mes;
                art.ultima_act.anio = wiki[i].ultima_act.anio;
            end;
    end;
end;