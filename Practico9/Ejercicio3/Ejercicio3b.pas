{Escriba la funcion llamada ordenado que, dado un arreglo de enteros, 
devuelve true si el arreglo esta ordenado en forma ascendente y false en caso contrario.}
function ordenado(cadn:CadenaN) : boolean;
var 
    i : 1..N;
    actual : integer;
    isOrd : boolean;
begin
    i := 1;
    isOrd := true; {Podemos asumir que esta ordenado}
    actual := cadn[i];
    while (i < N) and (isOrd) do
    begin
        if (cadn[i] < actual) then isOrd := false; {No hace falta un else}
        actual := cadn[i];
        i := i + 1;
    end;
    ordenado := isOrd;
end;

{
0 1 2 3 4 = Esta ordenado
0 1 5 9 8 = No esta ordenado
}