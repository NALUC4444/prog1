{Escriba una funcion llamada contarOcurrencias que tenga como 
parametro una cadena de caracteres llamada frase y una 
variable de tipo caracter llamada letra. La funcion devuelve el numero de
apariciones del caracter letra en la cadena frase.}
function contarOcurrencias(frase : Cadena; letra : char) : integer;
var 
    i : 1..MAX;
    contador : 0..MAX;
begin
    contador := 0;
    for i := 1 to MAX do
    begin
        if (frase.letras[i] = letra) then contador := contador + 1;
    end;
    contarOcurrencias := contador;
end;