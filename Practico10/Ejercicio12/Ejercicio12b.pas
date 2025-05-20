{Teniendo en cuenta que cada articulo tiene la fecha de su ultima actualizacion,
implemente el procedimiento articuloMasReciente tal que dados la wikipedia y un idioma, 
devuelve el articulo que tiene la fecha mas reciente en el idioma especificado. 
Asuma que en la wikipedia hay al menos un articulo en el idioma especificado.}
procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var 
    i : Integer;
    diaActual : 1..31;
    mesActual : 1..12;
begin
    anioActual := wiki[1].ultima_act.dia;
    for i := 1 to cant_articulos do
    begin
        if (wiki[i].)
    end;
end;