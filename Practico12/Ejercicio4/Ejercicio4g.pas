{Procedimiento para borrar el último}
procedure BorrarUltimo (VAR lst : ListaInt);
var p : ListaInt;
begin
    while (lst^.sig <> Nil) do
        lst := lst^.sig;
    p := lst; {Para apuntar al valor que se va a borrar}
    lst := lst^.sig; {Para apuntar a Nil}
    dispose(p);
end;

{Borrar primer valor impar}
procedure BorrarImpar(VAR lst : ListaInt);
var 
    p : ListaInt;
    Borrado : boolean;
begin
    Borrado := false;
    while (lst^.sig <> Nil) and not(Borrado) do
    begin
        if (lst^.info MOD 2 <> 0) then
        begin
            p := lst;
            lst := lst^.sig;
            dispose(p);
            Borrado := true; {Para salir del bucle}
        end
        else lst := lst^.sig;
    end;
end;

{Procedimiento borrar todos los numeros pares}
procedure BorrarImpar(VAR lst : ListaInt);
var p : ListaInt;
begin
    while (lst^.sig <> Nil) do
    begin
        if (lst^.info MOD 2 = 0) then
        begin
            p := lst;
            lst := lst^.sig;
            dispose(p);
        end
        else lst := lst^.sig;
    end;
end;