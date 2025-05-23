{Escriba un procedimiento llamado cargarCadena que tenga 
como parametro una cadena de caracteres y la cargue con caracteres 
leidos de la entrada estandar. Al ingresar los caracteres, 
se utilizara un punto (.) para marcar el fin de la cadena 
(el cual no forma parte de la misma, solo sera tipeado para marcar su finalizacion). 
En caso de que se ingresen mas de MAX caracteres,
solamente se cargaran los primeros MAX, descartando los restantes.}
procedure cargarCadena(VAR Frase : Cadena);
var 
    i : 1..MAX
    lectura : char;
begin
    i := 0;
    while (i < MAX) and (lectura <> '.') do
    begin
        read(lectura);
        Frase.letras[i] := lectura;
    end;
end;