program P9Ej6;
const N = ...; {valor mayor estricto a 1}
type
    Matriz = array [1..N, 1..N] of integer;
    TipoMatriz = array [1..N] of integer;

var
    matriz : Matriz;

{$INCLUDE Ejercicio6a.pas}

{$INCLUDE Ejercicio6b.pas}

procedure cargar(VAR mat : Matriz);
var i, j, valor : integer;
begin
    valor := 1;
    for i := 1 to N do
        for j := 1 to N do
        begin
            mat[i, j] := valor;
            valor := valor + 1;
        end;
end;

begin
    cargar(matriz);
end.