{Retornar una lista con los primeros k multiplos positivos de num. 
La lista debe estar ordenada de menor a mayor. Se supone num > 1}
function multiplos(k : Positivo; num : Positivo) : ListaInt;
var 
    lst : ListaInt;
    i : integer;
begin
    new(lst);
    i := 1;
    while (i <= k) do
    begin
        if (i MOD num = 0) then
            lst^.info := i;
        i := i + 1;
    end;
end;