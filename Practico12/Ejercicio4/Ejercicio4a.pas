{Insertar un elemento luego del segundo elemento de la lista. 
Si no hubiera segundo, la lista no cambia.}
procedure insertarTercero(elem : integer; var lst : ListaInt);
var p : ListaInt;
begin
    new(p)
    p^.info := elem;
    p^.sig := lst^.sig; {Apunto a la segunda caja}
    lst^.sig := p; {Enlazar el segundo valor}
end;