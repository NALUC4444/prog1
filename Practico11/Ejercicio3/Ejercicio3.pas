program P11Ej3;
const
    MAX = ...; {valor mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo : 0..MAX;
    end;
    Vocales = array[1..5] of char;

{Auxiliares}
procedure mostrar(Texto : Cadena);
var i : 0..MAX;
begin
    writeln('La frase es: ');
    for i := 0 to MAX do
        write(Texto.letras[i], ' ');
    writeln();
end;

{Parte A}
procedure cargarCadena(VAR Frase : Cadena);
var
    i : 0..MAX;
    letra : char;
begin
    read(letra);
    i := 0;
    while (i < MAX) and (letra <> '.') do
    begin
        Frase.letras[i] := letra;
        i := i + 1;
    end;
end;

{Parte B}
function contarOcurrencias(frase : Cadena; letra : char) : integer;

{Parte C}
function existeVocal(frase : Cadena): boolean;

var
    Frase : Cadena;
begin
    writeln('Ingrese la frase: ');
    cargarCadena(Frase);
end.