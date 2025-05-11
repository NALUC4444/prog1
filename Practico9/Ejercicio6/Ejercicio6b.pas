{Letra:
Escriba un procedimiento que calcule nuevamente la transpuesta, pero ahora 
escribiendo el resultado sobre la misma matriz a (sin usar una segunda matriz).}
procedure transpuestaMatrizA(VAR a:Matriz);
var i, j : integer;
begin
    for i := 1 to N do
    begin
        for j := 1 to N do
            a[i, j] := a[j, i];
    end;
end;