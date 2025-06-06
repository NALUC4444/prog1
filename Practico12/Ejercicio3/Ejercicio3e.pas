{Una funcion que retorne la primera posicion en la cual 
aparece valor dentro de la lista lst. Las posiciones se cuentan desde 1 en adelante. 
Si valor no aparece en la lista, la funcion retorna -1.}
function posicion(valor : integer; lst : ListaInt) : integer;
var ind : integer;
begin
    ind := 1;
    while (lst <> Nil) and (lst^.info <> valor) do
    begin
        lst := lst^.sig;
        ind := ind + 1;
    end;
    if (lst^.info = valor) then
        posicion := ind
    else
        posicion := -1;
end;