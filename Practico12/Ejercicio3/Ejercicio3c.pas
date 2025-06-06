{Una funcion que retorne el producto de todos los elementos de la lista. 
Tenga en cuenta que alguno de los elementos puede ser 0. Si la lista es vacia, devuelve 1.}
function producto(lst : ListaInt) : integer;
var mult : integer;
begin
    mult := 1;
    while (lst <> Nil) do
    begin
        mult := mult * lst^.info;
        lst := lst^.sig;
    end;
    producto := mult;
end;