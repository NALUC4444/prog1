{Un procedimiento que obtiene el valor del elemento de la lista que esta en la posicion pos. 
Mas precisamente el procedimiento retorna un registro con variante de tipo 
PosibleElem ya que puede no existir el elemento buscado.}
procedure elemEnPos(pos : Positivo; lst : ListaInt; var resultado : PosibleElem);
var valor, ind : integer;
begin
    ind := 1;
    while (lst <> Nil) and (ind < pos) do
    begin
        ind := ind + 1;
        lst := lst^.sig;
    end;
    if (ind = pos) then
    begin
        valor := lst^.info;
        resultado.ok := true;
        resultado.elem := valor;
    end;
end;