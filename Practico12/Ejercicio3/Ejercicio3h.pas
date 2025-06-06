{Una funcion que determina si la lista esta ordenada de menor a mayor:}
function ordenada(lst : ListaInt) : boolean;
var 
    isOrd : boolean;
    valorAnterior : integer;
begin
    isOrd := true;
    while (lst <> Nil) and (isOrd = true) do
    begin
        valorAnterior := lst^.info;
        lst := lst^.sig;
        isOrd := valorAnterior <= lst^.info;
    end;
    ordenada := isOrd;
end;