program P11Ej3;
const
    MAX = 25; {valor mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo : 0..MAX;
    end;

{Auxiliares}
function esVocal(letra : char) : boolean;
begin
    esVocal := (letra = 'a') or (letra = 'e') or (letra = 'i') or (letra = 'o') or (letra = 'u')
end;

procedure mostrar(Texto : Cadena);
var i : 1..MAX;
begin
    for i := 1 to MAX do
        write(Texto.letras[i]);
    writeln();
end;

{Parte A}
procedure cargarCadena(VAR Frase : Cadena);
var
    i : 1..MAX;
    letra : char;
begin
    read(letra);
    i := 1;
    while (i < MAX) and (letra <> '.') do
    begin
        Frase.letras[i] := letra;
        read(letra);
        i := i + 1;
    end;
end;

{Parte B}
function contarOcurrencias(texto : Cadena; letra : char) : integer;
var
    i : 1..MAX;
    cant : 0..MAX;
    car : char;
begin
    cant := 0;
    for i := 1 to MAX do
    begin
        car := texto.letras[i];
        if (car = letra) then cant := cant + 1;
    end;
    contarOcurrencias := cant;
end;

{Parte C}
function existeVocal(texto : Cadena): boolean;
var 
    i : 1..MAX;
    existe : boolean;
begin
    existe := false;
    i := 1;
    while (i <= MAX) and not(existe) do
    begin
        if (esVocal(texto.letras[i])) then existe := true
        else i := i + 1;
    end;
    existeVocal := existe;
end;


var
    Frase : Cadena;
    cantRep : integer;
    vocal : boolean;
    caracter : char;
begin
    writeln('Ingrese la texto: ');
    cargarCadena(Frase);
    write('Ingrese letra a buscar: ');
    readln(caracter);
    cantRep := contarOcurrencias(Frase, caracter);
    vocal := existeVocal(Frase);
    writeln('La frase es: ');
    mostrar(Frase);
    writeln();
    writeln('La frase repite ', caracter, ', ', cantRep, ' de veces.');
    if vocal then writeln('La frase tiene vocales.')
    else writeln('La frase no tiene vocales.');
end.