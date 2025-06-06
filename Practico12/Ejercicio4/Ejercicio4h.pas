{Borrar la primera aparicion de valor en la lista. 
Si no existiera tal elemento, la lista no cambia.}
procedure BorrarPrimeraAparicion(valor : integer; var lst : ListaInt);
var p : ListaInt;
begin
    while (lst <> Nil) and (lst^.info <> valor) do
        lst := lst^.sig;
    if (lst^.info = valor) then
    begin
        p := lst;
        lst := lst^.sig; {Avanzar para no perder contacto}
        dispose(p);
    end;
end;