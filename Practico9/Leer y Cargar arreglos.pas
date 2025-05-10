program test;
type
    CadenaN = array[1..10] of integer;

var cadena : CadenaN;

procedure cargarValores(VAR cadena : CadenaN);
var i, valor : integer;
begin
    write('Ingrese lista de numeros (Maximo 10 valores): ');
    for i := 1 to 10 do 
    begin
        read(valor);
        cadena[i] := valor;
    end;
end;

procedure mostrar(cadn : CadenaN);
var i : integer;
begin
    for i := 1 to 10 do
    begin
        write('El valor en pos ', i, ' es: ', cadn[i]);
        readln()
    end;
end;

begin
    cargarValores(cadena);
    mostrar(cadena);
end.