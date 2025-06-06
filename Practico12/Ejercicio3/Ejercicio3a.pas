{Una funcion que retorne la suma de todos los elementos de la lista.
Si la lista es vacia retorna 0.}
function suma(lst : ListaInt) : integer;
var resultado : integer;
begin
    resultado := 0;
    while (lst <> Nil) do
    begin
        resultado := resultado + lst^.info;
        lst := lst^.sig; {Para avanzar}
    end;
    suma := resultado;
end;
