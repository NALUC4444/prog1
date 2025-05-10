{Letra:
Escriba la funcion llamada cantMayores que, dados un arreglo de enteros y un entero num, devuelve la
cantidad de valores almacenados en el arreglo que son mayores que num.}

function cantMayores(cadn : CadenaN; num : integer) : integer;
var i, cant : integer;
begin
    cant := 0;
    for i := 1 to N do
    begin
        if (cadn[i] > num) then cant := cant + 1;
    end;
end;