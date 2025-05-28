{Escriba el procedimiento desplegarCadena que, dada una cadena, la despliega en la salida}
procedure desplegarCadena (cad: Cadena);
var i : 1..maxCad;
{No se pueden mostrar datos del type salvo que sean char, integer, bool}
begin
    writeln('La cadena dice: ');
    for i := 1 to maxCad do
        write(cad[i]);
end;