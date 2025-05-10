{Letra:
Escriba el procedimiento llamado maxValorPos que, dado un arreglo de enteros, devuelve el valor m´as
grande y el primer indice en que este ocurre.}
procedure maxValorPos(cadn : CadenaN; VAR valor, pos : integer);
var i, mayor : integer;
begin
    mayor := 0;
    for i := 0 to N do
    begin
        if (cadn[i] > mayor) then 
        begin
            mayor := cadn[i]; {Actualizar el valor más grande}
            pos := i; {Actualizar la posicion}
        end;
    end;
    valor := mayor; {En este momento ya recorrio todo el arreglo}
end;