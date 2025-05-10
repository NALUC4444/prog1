{Letra:
Escriba un procedimiento que cargue una variable de tipo TipoMatriz con valores 
leidos desde la entrada.}

procedure cargarMatriz(VAR matriz : TipoMatriz);
var i, j, valor : integer;
begin
    valor := 1;
    for i := 1 to 10 do
        for j := 1 to 10 do
        begin
            matriz[i, j] := valor;
            valor := valor + 1;
        end;
end;

{NOTA:
Para probar directamente se modifica la linea 7 y 8 poniendo:

write('Ingrese un numero para pos ', i, ' , ', j, ': ');
readln(valor);

Borrando la parte que dice:
matriz[i, j] := valor; (Linea 7)

Para poner numeros manualmente, si quieres probar funcionamiento, entonces no hagas cambios}