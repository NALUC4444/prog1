{Letra:
Escriba la funcion llamada ordenado que, dado un arreglo de enteros, devuelve true si el arreglo est´a
ordenado en forma ascendente y false en caso contrario.}
function ordenado(cadn : CadenaN) : boolean;
var 
    i, actual : integer;
    isOrd : boolean;
begin
    isOrd := true; {Podemos asumir que siempre estan ordenados}
    actual := cadn[1];
    for i := 2 to N do
    begin
        if (cadn[i] > actual) then isOrd := true
        else isOrd := false;
        actual := cadn[i];
    end;
    ordenado := isOrd;
end;