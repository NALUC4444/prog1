{Escriba el procedimiento llamado maxValorPos que, dado un arreglo de enteros, 
devuelve el valor mas grande y el primer indice en que este ocurre.}
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);
var i : 1..N;
begin
    valor := cadn[1];
    for i := 2 to N do
        if (cadn[i] > valor) then
        begin
            pos := i;
            valor := cadn[i];
        end;
end;