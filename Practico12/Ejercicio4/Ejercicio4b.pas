{Insertar un elemento antes del ultimo. Si no hubiera ultimo, la lista no cambia.}
procedure insertarPenultimo(elem : integer; var lst : ListaInt);
var p : ListaInt;
begin
    new(p);
    p^.info := elem;
    p^.sig := Nil;
    while (lst^.sig^.sig <> Nil) do
        lst := lst^.sig; {Se detiene en el penultimo}
    p^.sig := lst^.sig
    lst^.sig := p; {Para enlazar}
end;