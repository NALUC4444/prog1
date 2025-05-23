{ Implemente el procedimiento imprimirArticulosMasRecientes 
tal que para cada idioma imprime el nombre del articulo mas reciente en dicho 
idioma, junto con su cantidad de visitas y la fecha de su ultima actualizacion. 
Asuma que en la wikipedia hay al menos un articulo en cada uno de los tres idiomas.}
procedure mostrar(articuloReciente : TArticulo; idioma : TIdioma);
begin
    write('El articulo mas reciente en ');
    case idioma of
        es : writeln('español tiene: ');
        en : writeln('ingles tiene: ');
        pt : writeln('portugues tiene: ');
    end;
    write('ultima actualizacion: ', articuloReciente.ultima_act.dia);
    writeln('-', articuloReciente.ultima_act.mes, '-', ultima_act.anio);
    write('Tiene ', articuloReciente.visitas, ' visitas');
end;

procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var 
    art1, art2, art3 : TArticulo;
begin
    articuloMasReciente(wiki, es, art1);
    articuloMasReciente(wiki, en, art2);
    articuloMasReciente(wiki, pt, art3);
    mostrar(art1, es);

end;

{(wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo)}
