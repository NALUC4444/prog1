{Letra:
Escriba dos procedimientos llamados leerCadenaM y leerCadenaN que carguen una cadena de 
largo M y N respectivamente con caracteres leidos desde la entrada}
procedure leerCadenaM(VAR cadnM : CadenaM);
var 
    i : integer;
    letra : char;
begin
    for i := 1 to M do
    begin
        read(letra);
        cadnM[i] := letra;
    end;
end;

procedure leerCadenaN(VAR cadnN : CadenaN);
var 
    i : integer;
    letra : char;
begin
    for i := 1 to N do
    begin
        read(letra);
        cadnN[i] := letra;
    end;
end;