{Letra:
Escriba el procedimiento llamado leerArreglo que cargue un arreglo de digitos con 
valores leidos desde la entrada.}
procedure leerArreglo(VAR a : Digitos);
var 
    i : integer;
    valor : char;
begin
    for i := 1 to N do
    begin
        read(valor);
        a[i] := valor;
    end;
end;