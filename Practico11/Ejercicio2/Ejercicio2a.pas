{Escriba la funcion cadenasIguales que, dadas dos cadenas, determina si son iguales.}
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var 
    i : 0..maxCad;
    igual : Boolean;
begin
    igual := true;
    i := 0;
    while (i < maxCad) and (igual) do
    begin
        if (cad1[i] <> cad2[i]) then igual := false;
        i := i + 1;
    end;
    cadenasIguales := igual; 
end;