{Escriba la funcion llamada cantMayores que, dados un arreglo de enteros y un entero num, 
devuelve la cantidad de valores almacenados en el arreglo que son mayores que num.}
function cantMayores(cadn:CadenaN; num:integer) : integer;
var
    i : 1..N;
    mayores : 0..N;
begin
    mayores := 0;
    for i := 1 to N do
        if (cadn[i] > num) then mayores := mayores + 1;
    cantMayores := mayores;
end;