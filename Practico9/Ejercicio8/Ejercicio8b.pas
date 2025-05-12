{Letra:
Escriba la funcion llamada conversion que, dado un 
arreglo de digitos, convierta la secuencia de digitos al entero equivalente. Por ejemplo,
si N=5 y el arreglo es ['0','0','1','2','3'], entonces el entero
resultante sera 123.}
function conversion(a:Digitos) : integer;
var
    i, numero, aux : integer;
    digito : char;
begin
    for i := 1 to N do
    begin
        digito := a[i];
        aux := ord(digito) - ord('0');
        case aux of
            0 : numero := numero;
            1..9 : numero := numero * 10 + aux;
        end;
    end;
    conversion := numero;
end;