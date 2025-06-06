{Una funcion que retorne el minimo de todos los elementos de la lista. 
Se asume que la lista no es vacia}
function minimo(lst : ListaInt) : integer;
var menor : integer;
begin
    menor := lst^.info; {Candidato a ser el menor}
    while (lst <> Nil) do
    begin
        if (menor > lst^.info) then menor := lst^.info;
        lst := lst^.sig;
    end;
    minimo := menor;
end;