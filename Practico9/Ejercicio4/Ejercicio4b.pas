{Escriba un procedimiento que cargue una variable de tipo TipoMatriz con valores 
leidos desde la entrada.}
procedure Cargar(VAR a : TipoMatriz; val : integer);
var 
    i, j : 1..N;
begin
    for i := 1 to N do
        for j := 1 to N do
        begin
            a[i, j] := val;
            val := val + 1;
        end;
end;