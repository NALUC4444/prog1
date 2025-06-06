{Una funcion que retorna el ultimo elemento de la lista. Se asume que la lista no es vacia}
function ultimo(lst : ListaInt) : integer;
var valor : integer;
begin
    while (lst <> Nil) do 
        lst := lst^.sig;
    valor := lst^.info;
    ultimo := valor;
end;