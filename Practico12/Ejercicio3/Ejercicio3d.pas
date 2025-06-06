{Una funcion que retorne la cantidad de numeros pares que hay en la lista.}
function cuantosPares(lst : ListaInt) : integer;
var cant : integer;
begin
    cant := 0;
    while (lst <> Nil) do
    begin
        if (lst^.info MOD 2 = 0) then cant := cant + 1;
        lst := lst^.sig;
    end;
    cuantosPares := cant;
end;