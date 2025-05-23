{Escriba una funcion llamada existeVocal que tenga como 
parametro una cadena de caracteres y determine si en la cadena hay o 
no alguna letra vocal. La funcion devuelve true en caso afirmativo y false en caso negativo.}
function existeVocal(frase : Cadena): boolean;
var
    i : 1..MAX;
    existe : boolean;
    letra : char;
begin
    existe := false; {No podemos asumir que existe}
    i := 0;
    while (i < MAX) and not(existe) do {Puedo usar existe para detener si encuentro vocal}
    begin
        letra := frase.letras[i];
        if (letra = 'a') or (letra = 'e') or (letra = 'e') or (letra = 'i') or (letra = 'u') then
            existe := true;
        i := i + 1;
    end;
    existeVocal := existe;
end;